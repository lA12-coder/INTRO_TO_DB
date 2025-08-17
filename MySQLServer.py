import mysql.connector
from mysql.connector import Error

try:
    connection = mysql.connector.connect(
        host='localhost',
        user='root',
        password='lidet1623',
    )
    if connection.is_connected():
        cursor = connection.cursor()
        cursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
        print(" Database 'alx_book_store' created successfully!")
except Error as e:
    print(f"Error while connecting to MySQL: {e}")
    
finally:
    cursor.execute("SHOW DATABASES")
    for db in cursor:
        print(db)
        
    if 'cursor' in locals():
        cursor.close()
    if 'connection' in locals() and connection.is_connected():
        connection.close() 
        
