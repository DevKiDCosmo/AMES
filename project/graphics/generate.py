# IMG Generator for PLACEHOLDING-ONLY

from PIL import Image
import random
import os

def get_int_input(prompt):
    while True:
        try:
            return int(input(prompt))
        except ValueError:
            print("Invalid input. Please enter an integer.")

def get_grid_size(prompt):
    while True:
        grid = input(prompt)
        parts = grid.split('x')
        if len(parts) == 2 and all(part.isdigit() for part in parts):
            return grid
        print("Invalid grid size format. Please use the format _x_.")

def inputs():

    # Ask for the length of the image
    length = get_int_input("Enter the length of the image: ")

    # Ask for the row of the image
    row = get_int_input("Enter the row of the image: ")

    # Ask for the grid size (Format: _x_)
    grid = get_grid_size("Enter the grid size (Format: _x_): ")

    # Ask for the output file name
    output = input("Enter the output file name: ")

    # Calculate the size of image
    x = length * int(grid.split('x')[0]) * 32
    y = row * int(grid.split('x')[1]) * 32

    print(f"Image size: {x}x{y}")
    return length, row, grid, output

def generate_image(length, row, grid, output):
    x = length * int(grid.split('x')[0]) * 32
    y = row * int(grid.split('x')[1]) * 32

    # Generate blank image with the size of x and y in white only
    image = Image.new("RGB", (x, y), "white")

    # Generate each tile of the image with a random color
    for i in range(0, x, 32):
        for j in range(0, y, 32):
            color = (random.randint(0, 255), random.randint(0, 255), random.randint(0, 255))
            for k in range(i, i + 32):
                for l in range(j, j + 32):
                    image.putpixel((k, l), color)

    # Ensure the output file name has a valid image file extension
    if not os.path.splitext(output)[1]:
        output += ".png"

    # Save the image to the output file
    image.save(output)

def main():
    length, row, grid, output = inputs()
    generate_image(length, row, grid, output)

    print(f"Image generated successfully! Please insert the following code information. Size for entity: {int(grid.split('x')[0]) * 32}, {int(grid.split('x')[1]) * 32}")

if __name__ == "__main__":
    main()