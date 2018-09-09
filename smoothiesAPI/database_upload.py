import os
from yaml import load, dump
import mysql.connector

mydb = mysql.connector.connect(
    host=os.environ["AWS_HOST"],
    user=os.environ["AWS_USERNAME"],
    password=os.environ["AWS_PASSWORD"],
    database="smoothiesdb"
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
    try:   
        # print(f"Reading file {filename}...")
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
    except Exception as e:
        print(e)

        
def create_insert(recipes):


    recipe_strs = []
    for recipe in recipes:
        print(f"Parsing recipe {recipe.title}")
        recipe_value = f"""(\"{recipe.title}\", \"{recipe.image}\", {recipe.rating}, \"{recipe.directions}\",
                        {recipe.servings}, {recipe.calories}, {recipe.fat}, {recipe.carbohydrates},
                        {recipe.protein}, \"{recipe.ingredients}\")"""
        recipe_strs.append(recipe_value)
    recipe_sql = ", ".join(recipe_strs)
    # print(recipe_sql)
    return recipe_sql
    # mycursor.execute(recipe_sql, recipe_value)

    # ingredient_sql = "INSERT INTO Ingredient(ingredient_name) VALUES (%d, %s)"
    # ingredient_values = ()


if __name__ == '__main__':

    mycursor = mydb.cursor()
    dirname = "Formatted-Recipes"
    recipes = []
    for filename in os.listdir(dirname):
        # print(os.path.abspath(os.path.join(dirname, filename)))
        parsed_recipe = parse_file(os.path.abspath(os.path.join(dirname, filename)))
        if not parsed_recipe is None:
            recipes.append(parsed_recipe)
    recipe_sql = "INSERT INTO Recipes(title, image, rating, directions, servings, " \
          "calories, fat, carbohydrates, protein, ingredients) VALUES "
    recipe_vals= create_insert(recipes)
    recipe_sql += recipe_vals
    mycursor.execute(recipe_sql)
    print(mycursor.lastrowid)
    mydb.commit()

    mycursor.close()
    mydb.close()