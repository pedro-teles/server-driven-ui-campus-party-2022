from flask import Flask
from app import controller

app = Flask(__name__)


@app.route('/<path:string_route>', methods=['GET', 'POST', 'PUT'])
def get_route(string_route):
    return controller.get_response_for_route(string_route)


if __name__ == '__main__':
    app.run(host='0.0.0.0')
