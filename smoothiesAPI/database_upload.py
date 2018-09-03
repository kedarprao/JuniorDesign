import os
from yaml import load, dump
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
        self.directions = kwargs.pop('directions')
        self.servings = kwargs.pop('servings')
        self.calories = kwargs.pop('calories')
        self.fat = kwargs.pop('fat')
        self.carbohydrates = kwargs.pop('carbohydrates') 
        self.protein = kwargs.pop('protein')
        self.ingredients = kwargs.pop('ingredients')


def parse_file(filename):
    with open(filename, 'r') as recipe:
        data = load(recipe)
        new_recipe = Recipe(
            title=data['title'],
            image=data['image'],
            rating=data['rating'],
            directions=data['directions'],
            servings=data['servings'],
            calories=data['calories'],
            fat=data['fat'],
            carbohydrates=data['carbohydrates'],
            protein=data['protein'],
            ingredients=data['ingredients']
            )
        return new_recipe
        
def create_insert(recipe):



if __name__ == '__main__':

    mycursor = mydb.cursor()

    sql = """insert into city(name, countrycode, district, population)\
            VALUES(%s, %s, %s, %s)"""