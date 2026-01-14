from flask import Flask
import antigravity  # built-in, no install needed

app = Flask(__name__)

@app.route("/")
def home():
    return "🚀 Flask is installed. Antigravity imported. Render deploy works."

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=8080)
    
