from flask import Flask, app,render_template, request
from pymysql import NULL
from db import db
import os
page = Flask(__name__)

@page.route('/')
def myStore():
    return render_template('myStore.html')

@page.route('/sales')
def sales():
    return render_template('sales.html')

@page.route('/sales', methods=["GET","POST"])
def insert_sale():
    id_shelver= db.database.get_last_id_with_containers(request.form["quantity"])
    db.database.insert_sale(id_shelver, request.form["quantity"])
    db.database.update_quantity(request.form["quantity"], db.database.get_id_fruit(id_shelver))
    list = db.database.get_shelves()
    shelves=[]
    for n in list:
        c=int(db.database.get_containers(n[0]))
        f=int(db.database.get_total_fruits(n[0]))
        m={"id":n[0], "containers": c,"fruits": f}
        shelves.append(m)
        print(db.database.get_containers(n[0]))
        print(m)

    return render_template('sales.html', list=shelves)


@page.route('/', methods=["GET","POST"])
def insert_fruit():
    db.database.insert_fruit(request.form["name"], request.form["price"], request.form["container"])
    id = db.database.get_last_id("fruits")
    id_shelver= db.database.get_last_id("shelves")
    if id_shelver==NULL:
        db.database.insert_shelver()
        id_shelver= db.database.get_last_id("shelves")

    if db.database.get_containers(id_shelver)>=50:
         db.database.insert_shelver()
         id_shelver= db.database.get_last_id("shelves")
         db.database.insert_shelves_fruits(id, id_shelver)
    else:
         db.database.insert_shelves_fruits(id, id_shelver)

    return render_template('myStore.html')



if __name__ == '__main__':
  
    page.run(debug=True)