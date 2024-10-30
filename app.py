from flask import Flask, jsonify

app = Flask(__name__)

@app.route('/')
def hello_world():
    return jsonify(message="Hello, World!")

@app.route('/status')
def status():
    return jsonify(status="Running", version="1.0")

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)

