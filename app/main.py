from flask import Flask 
import socket, os

app = Flask(__name__) 

@app.route('/')
def print_ip(): 
    hostname = socket.gethostname()
    local_ip = socket.gethostbyname(hostname)
    return local_ip
    # return "This is homepage or root /"

@app.route('/login')
def print_login(): 
    return "This is login page or path /login"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=80)    
