import os
import re

dir_name = "Smoothie-Recipes"
new_dir = "Formatted_Recipes"

i_pattern = r"Ingredient\:.+"
oi_pattern = r"Ingredients\:.+"
d_pattern = r"Directions\:.+"
s_pattern = r"Step\:.+"


if __name__ == "__main__":
    for filename in os.listdir("Smoothie-Recipes"):
        new_file = []
        with open(os.path.join(dir_name, filename)) as recipe:
            lines = recipe.readlines()

            ingredient_list = []
            for line in lines:
                match = re.search(i_pattern, line)
                if match:
                    # print(f"In file {filename}, these are the ingredients:\n")
                    # print(match.group()[12:])
                    ing = match.group()[12:]
                    if "," in ing:
                        ing = ing[:ing.index(",")]
                    ingredient_list.append(ing)
                    continue
                elif match is None and len(ingredient_list) != 0:
                    print(f"Replacing Ingredient list with {ingredient_list}")
                    new_str = "Ingredients: " + ",".join(ingredient_list) + "\n"
                    new_file.append(new_str)
                    ingredient_list = []
                    continue

                match = re.search(oi_pattern, line)
                if match:
                    continue

                match = re.search(d_pattern, line)
                if match:
                    continue
                
                match = re.search(s_pattern, line)
                if match:
                    steps = match.group()[6:]
                    steps = ";".join(filter(None, steps.split(".")))
                    new_str = "Directions: " + steps + "\n"
                    print(f"Replacing steps {match.group()} with {new_str}")
                    new_file.append(new_str)
                else:
                    new_file.append(line)
        with open(os.path.join(new_dir, filename),"w+") as f:
            print(f"Writing to file {os.path.join(new_dir, filename)}.")
            f.seek(0)
            f.writelines(new_file)

