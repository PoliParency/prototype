
import mysql.connector
from mysql.connector.constants import ClientFlag

config = {
    'user': 'root',
    'password': 'ethics',
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
print(cur.fetchone())
cur.close()
cnx.close()
