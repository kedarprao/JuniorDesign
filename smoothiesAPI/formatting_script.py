import os
import re

dir_name = "Smoothie-Recipes"
new_dir = "Formatted-Recipes"

i_pattern = r"ingredient\:.+"
oi_pattern = r"ingredients\:.+"
d_pattern = r"directions\:.+"
s_pattern = r"step\:.+"

global_ing_list = []
measure_words = ["cup", "scoop", "teaspoon", "teaspoons", "cups", "frozen", "tablespoon", "tablespoons", "can" , "ounce", "ounce)","ounces", "ounces)", "pinches","pinch", "piece", "container", "containers"]

if __name__ == "__main__":
    for filename in os.listdir("Smoothie-Recipes"):
        new_file = []
        with open(os.path.join(dir_name, filename)) as recipe:
            lines = recipe.readlines()

            ingredient_list = []
            step_list = []
            for line in lines:
                line = line[0].lower() + line[1:]
                match = re.search(i_pattern, line)
                if match:
                    # print(f"In file {filename}, these are the ingredients:\n")
                    # print(match.group()[12:])
                    ing = match.group()[12:]
                    if "," in ing:
                        ing = ing[:ing.index(",")]
                    ingredient_list.append(ing)
                    if ing not in global_ing_list:
                        global_ing_list.append(ing)
                    continue
                elif match is None and len(ingredient_list) != 0:
                    print(f"Replacing Ingredient list with {ingredient_list}")
                    new_str = "ingredients: " + ",".join(ingredient_list) + "\n"
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
                    step = match.group()[5:]
                    step_list.append(step)
                    continue
                elif match is None and len(step_list) != 0:
                    print(f"Replacing Step list with {step_list}")
                    new_str = "directions: " + ";".join(step_list) + "\n"
                    new_file.append(new_str)
                    step_list = []
                    """
                    steps = match.group()[6:]
                    steps = ";".join(filter(None, steps.split(".")))
                    new_str = "Directions: " + steps + "\n"
                    print(f"Replacing steps {match.group()} with {new_str}
                    """
                else:
                    new_file.append(line)

        filename = filename[:-4] + ".yaml"
        if not os.path.exists(new_dir):
            os.mkdir(new_dir)
        # elif not os.path.isdir(new_dir):
        #     throw Exception("Could not find folder")
        with open(os.path.join(new_dir, filename),"w+") as f:
            print(f"Writing to file {os.path.join(new_dir, filename)}.")
            f.seek(0)
            f.writelines(new_file)

    fin_list = list(set([" ".join([word for word in ing.split(" ")[1:] if word not in measure_words]) + "\n" for ing in global_ing_list]))
    with open("ingredient_list.txt", "w+") as f:
        f.writelines(fin_list)
    # print([x for x in ing.split(" ")[1:] for ing in global_ing_list if x not in measure_words])


        # for x in global_ing_list:
        #     lis_x = x.split()
            


