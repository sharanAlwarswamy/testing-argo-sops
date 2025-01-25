from flask import Flask, render_template
import os
from dotenv import load_dotenv

app = Flask(__name__)

load_dotenv()

@app.route("/")
def index():
    name = os.getenv("NAME", "DefaultName")
    print(name)
    return render_template("index.html", name=name)

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
