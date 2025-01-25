from flask import Flask, render_template
import os

app = Flask(__name__)

@app.route("/")
def index():
    name = os.getenv("NAME", "DefaultName")
    print(name)
    return render_template("index.html", name=name)

if __name__ == "__main__":
    print("Running on port 5000")
    app.run(host="0.0.0.0", port=5000)
