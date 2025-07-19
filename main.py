from flask import Flask, render_template, request, redirect, url_for, flash
from flask_mysqldb import MySQL
from config import Config

app = Flask(__name__)
app.config.from_object(Config)
app.secret_key = 'sabido-demais'

mysql = MySQL(app)

@app.route('/')
@app.route('/index')
def index():
    return render_template('index.html')

#def criar_tabelas():
#    with app.app_context():
#        roboLindo = mysql.connection.cursor()
#        roboLindo.execute(""""
#        CREATE TABLE IF NOT EXISTS usuarios(
#        id INT AUTO_INCREMENT PRIMARY KEY,
#        nome VARCHAR(50) NOT NULL,
#        idade ENUM('12-','13-20','21-35','40+') NOT NULL
#        )
#        """)

if __name__ == '__main__':
    app.run(debug=True)