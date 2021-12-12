import pymysql

class Database:
    def __init__(self):
      self.connection = pymysql.connect(
          host='localhost',
          user='id18110720_admin',
          password= 'Proyect12345.',
          db='id18110720_orange_store'
      )   

    
      self.cursor = self.connection.cursor()
    

    def insert_fruit(self, name, price, containers):
        sql = "INSERT INTO `fruits` (name, price, containers, quantity_var) VALUES ('{}','{}','{}',{})".format(name, price, containers, int(containers)*6)

        try:
            self.cursor.execute(sql)
            self.connection.commit()
        except Exception as e:
            print(e)
    
    def insert_shelver(self):
        sql = "INSERT INTO `shelves` (`id`) VALUES (NULL)"

        try:
            self.cursor.execute(sql)
            self.connection.commit()
        except Exception as e:
            raise

    def insert_shelves_fruits(self,fruits, shelves):
        sql = "INSERT INTO `shelves_fruits` (id_fruit, id_shelve ) VALUES ({},{})".format(fruits,shelves)

        try:
            self.cursor.execute(sql)
            self.connection.commit()
        except Exception as e:
            raise

    def update_shelver(self,containers):
        sql = "SELECT id FROM shelves_fruits  ORDER BY id DESC LIMIT 1"

        self.cursor.execute(sql)
        id = self.cursor.fetchone()
        sql = "UPDATE `shelves` set fruits={} WHERE id_shelve={}".format(containers, id[0])

        try:
            self.cursor.execute(sql)
            self.connection.commit()
        except Exception as e:
            raise

    def get_last_id_with_containers(self, quantity):
        sql = "select s.id from fruits f inner join shelves_fruits s WHERE f.id= s.id_fruit and f.quantity_var>0 and quantity_var>={} ORDER BY s.id DESC LIMIT 1".format(quantity)

        self.cursor.execute(sql)
        return self.cursor.fetchone()[0]    
    

    def get_last_id(self, table):
        sql = "SELECT id FROM {} ORDER BY id DESC LIMIT 1".format(table)

        self.cursor.execute(sql)
        return self.cursor.fetchone()[0]

    def get_shelves(self):
        sql = "SELECT * FROM shelves"

        self.cursor.execute(sql)
        return self.cursor.fetchall()
    
    def get_id_fruit(self, id):
        sql = "SELECT id_fruit from shelves_fruits where id={}".format(id)

        self.cursor.execute(sql)
        return self.cursor.fetchone()[0]

    def get_containers(self, id):
        sql = "SELECT sum(containers) from fruits f inner join shelves_fruits s where id_fruit=f.id and s.id_shelve={}".format(id)

        self.cursor.execute(sql)
        return self.cursor.fetchone()[0]
    
    def get_total_fruits(self, id):
        sql = "SELECT sum(quantity_var) from fruits f inner join shelves_fruits s where id_fruit=f.id and s.id_shelve={}".format(id)

        self.cursor.execute(sql)
        return self.cursor.fetchone()[0]
    
    def insert_sale(self, id, quantity):
        sql = "INSERT INTO `sale` (id, quantity) VALUES ({},{})".format(id,quantity)

        try:
            self.cursor.execute(sql)
            self.connection.commit()
        except Exception as e:
            raise

    def update_quantity(self, quantity, id):
        sql = "UPDATE  fruits set quantity_var=quantity_var-{} where id={}".format(quantity, id)

        try:
            self.cursor.execute(sql)
            self.connection.commit()
        except Exception as e:
            raise

database = Database()
