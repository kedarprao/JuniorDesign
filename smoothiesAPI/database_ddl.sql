use smoothiesdb;

DROP TABLE Qty_Ingredients;

DROP TABLE Recipes;  

DROP TABLE Ingredient;

CREATE TABLE Recipes(
	recipe_id INT auto_increment PRIMARY KEY,
    title VARCHAR(255),
    image VARCHAR(255),
    rating float,
    directions VARCHAR(255),
    servings int,
    calories int,
    fat int,
    carbohydrates int,
    protein int, 
    ingredients VARCHAR(8000)
    );
    
CREATE TABLE Ingredient(
	ingredient_id int auto_increment PRIMARY KEY,
    ingredient_name VARCHAR(255)
	);
    

CREATE TABLE Qty_Ingredients(
	step_id int auto_increment PRIMARY KEY,
    recipe_id int NOT NULL,
    ingredient_id int NOT NULL,
    quantity float NOT NULL,
    FOREIGN KEY (recipe_id) REFERENCES Recipes(recipe_id),
    FOREIGN KEY (ingredient_id) REFERENCES Ingredient(ingredient_id)
	);
use smoothiesdb;

DROP TABLE Qty_Ingredients;

DROP TABLE Recipes;  

DROP TABLE Ingredient;

CREATE TABLE Recipes(
	recipe_id INT auto_increment PRIMARY KEY,
    title VARCHAR(255),
    image VARCHAR(255),
    rating float,
    directions VARCHAR(255),
    servings int,
    calories int,
    fat int,
    carbohydrates int,
    protein int, 
    ingredients VARCHAR(8000)
    );
    
CREATE TABLE Ingredient(
	ingredient_id int auto_increment PRIMARY KEY,
    ingredient_name VARCHAR(255)
	);
    

CREATE TABLE Qty_Ingredients(
	step_id int auto_increment PRIMARY KEY,
    recipe_id int NOT NULL,
    ingredient_id int NOT NULL,
    quantity float NOT NULL,
    FOREIGN KEY (recipe_id) REFERENCES Recipes(recipe_id),
    FOREIGN KEY (ingredient_id) REFERENCES Ingredient(ingredient_id)
	);
