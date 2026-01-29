from flask import Flask
app = Flask(__name__)

@app.route("/")
def home():
    return "Hello from GitHub Actions Azure  CI/CD Pipeline!"

if __name__ == "__main__":
    # Bind to 0.0.0.0 so it is reachable from outside the container
    app.run(host="0.0.0.0", port=5000)
