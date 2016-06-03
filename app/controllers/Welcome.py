"""
    Sample Controller File

    A Controller should be in charge of responding to a request.
    Load models to interact with the database and load views to render them to the client.

    Create a controller using this template
"""
from system.core.controller import *

class Welcome(Controller):
    def __init__(self, action):
        super(Welcome, self).__init__(action)
        """
            This is an example of loading a model.
            Every controller has access to the load_model method.
        """
        self.load_model('Welcome')
        self.db = self._app.db

        """
        
        This is an example of a controller method that will load a view for the client 

        """
   
    def index(self):

        return self.load_view('index.html')
    def logout(self):
        if 'id' in session:
            session.pop('id')
        return redirect('/')

    def register(self):
        print '---------- contorller register ------------'
        
        info = {
                'name' : request.form['name'],
                'aliad': request.form['aliad'],
                'email':request.form['email'],
                'password':request.form['password'],
                'comfirm_pw':request.form['comfirm_pw'],
                'bday':request.form['bday']
            }
        print info
        check = self.models['Welcome'].add_user(info)

        if check['status'] == False:
            errors = check['errors']
            print errors
            return self.load_view('index.html', errors= errors)
        else:
            user = check['userdata']
            session['id'] = user['id']
            return redirect('/pokes')

    def login(self):
        info ={
            'email':request.form['email'],
            'password':request.form['password']
        }
        check = self.models['Welcome'].login(info)
        if check['status'] == False:
            return self.load_view('index.html', errors= check['errors'])
        else:
            user = check['userdata']
            session['id'] = user['id']
            return redirect('/pokes')

    def pokes(self):        
        user = self.models['Welcome'].user(session['id'])
        users = self.models['Welcome'].all_users()
        counter = self.models['Welcome'].counter(session['id'])
        whoPoke = self.models['Welcome'].who_poke(session['id'])
        return self.load_view('user.html', user = user[0], users= users, counter = counter, whoPoke = whoPoke)

    def poke_user(self, user_id):
        print '------------ I poked you!! ----------------'
        self.models['Welcome'].add_poke(user_id, session['id'])
        return redirect('/pokes')

