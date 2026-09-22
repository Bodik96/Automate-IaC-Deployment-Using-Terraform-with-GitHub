from flask import Flask

app = Flask(__name__)


@app.route("/")
def index():
    return "Hello from 3a5fda50! Wow new version available"


@app.route("/health")
def health():
    return "OK"


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=8000)
