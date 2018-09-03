import os

import mysql.connector

mydb = mysql.connector.connect(
    host="localhost",
    user="yourusername",
    passwd="yourpassword",
    database="mydatabase"
    )

class Recipe():
    def __init__(self, **kwargs):
        self.title = kwargs.pop('title')
        self.image = kwargs.pop('image')
        self.rating = kwargs.pop('rating')
        self.direction = kwargs.pop('direction')
        self.serving = kwargs.pop('serving')
        self.cal = kwargs.pop('cal')
        self.fat = kwargs.pop('fat')
        self.carb = kwargs.pop('carb') 
        self.protein = kwargs.pop('protein')
        self.ingredients = kwargs.pop('ingredients')


def parse_file(filename):
    with open(filename) as f:
        






if __name__ == '__main__':

    mycursor = mydb.cursor()
