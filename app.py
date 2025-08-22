from flask import Flask
from datetime import datetime

app = Flask(__name__)

@app.route("/date")
def get_date():
    now = datetime.now().strftime("%H:%M:%S")
    seconds = datetime.now().second
    status = "EVEN" if seconds % 2 == 0 else "ODD"
    return f"{now} {status}\n"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
