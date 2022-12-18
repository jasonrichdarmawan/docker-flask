from flask import Flask

app = Flask(__name__)

@app.route(rule="/", methods=["GET"])
def get_hello_world():
    return "Hello World"