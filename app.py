from flask import Flask
import antigravity  # built-in, do NOT install

app = Flask(__name__)

@app.route("/")
def home():
    return "🚀 Antigravity imported successfully. Deployment is working."

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=8080)
  
