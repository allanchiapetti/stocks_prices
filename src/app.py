from flask import Flask, Request

app = Flask(__name__)

@app.route("/stock_price", methods=["GET"])
def check_stock_price():
    return "150"
