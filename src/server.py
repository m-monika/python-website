from flask import Flask

from config import DEBUG

app = Flask(__name__)

@app.route('/')
def index():
    return 'Home page'

app.run(debug=DEBUG, host='0.0.0.0')
