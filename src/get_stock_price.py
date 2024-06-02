import requests
from flask import Flask, Request

app = Flask(__name__)

@app.route("/stock_price", methods=["GET"])
def check_stock_price():
    return "150"

if __name__ == "__main__":
    app.run(host='0.0.0.0', port=5000)


