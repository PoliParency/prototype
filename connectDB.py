
import mysql.connector
from mysql.connector.constants import ClientFlag

config = {
    'user': 'root',
    'password': 'Ethics',
    'host': '34.69.21.144',
    'client_flags': [ClientFlag.SSL],
    'ssl_ca': 'ssl/server-ca.pem',
    'ssl_cert': 'ssl/client-cert.pem',
    'ssl_key': 'ssl/client-key.pem',
    'database' : 'TP_DB'
}

# now we establish our connection
cnx = mysql.connector.connect(**config)
cur = cnx.cursor(buffered=True)
cur.execute("SELECT * FROM records")
test = cur.fetchone()
print(test[0])
cur.close()
cnx.close()








# from flask import Flask, render_template, request
# from flask_mysqldb import MySQL

# app = Flask(__name__)

# app.config['MYSQL_HOST'] = '34.69.21.144'
# app.config['MYSQL_USER'] = 'root'
# app.config['MYSQL_PASSWORD'] = 'ethics'
# app.config['MYSQL_DB'] = 'TP_DB'

# mysql = MySQL(app)

# @app.route('/', methods=['GET'])
# def index():
#     if request.method == "GET":
#         # details = request.form
#         cur = mysql.connection.cursor()
#         # cur.execute("INSERT INTO MyUsers(firstName, lastName) VALUES (%s, %s)", (firstName, lastName))
#         # cur.execute("SELECT * FROM records")
#         # out = cur.fetchall()
#         # mysql.connection.commit()
#         cur.close()
#         # return out[0]
#         return 'success'
#     return render_template('index.html')

# if __name__ == '__main__':
#     app.run()