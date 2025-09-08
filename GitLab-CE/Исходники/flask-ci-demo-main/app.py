from flask import Flask, render_template
#new
app = Flask(__name__)

@app.route("/")
def home():
    return render_template("index.html")
