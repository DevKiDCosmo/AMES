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

def get_icon_size(prompt):
    while True:
        size = get_int_input(prompt)
        if size in [64, 128]:
            return size
        print("Invalid size. Please enter 64 or 128.")

def inputs():
    # Ask for the icon size (64 or 128)
    icon_size = get_icon_size("Enter the icon size (64 or 128): ")

    # Ask for the output file name
    output = input("Enter the output file name: ")

    print(f"Icon size: {icon_size}x{icon_size}")
    return icon_size, output

def generate_icon(icon_size, output):
    # Generate blank icon with the size of icon_size in white only
    image = Image.new("RGB", (icon_size, icon_size), "white")

    # Select two base colors for the checkerboard pattern
    color1 = (random.randint(0, 255), random.randint(0, 255), random.randint(0, 255))
    color2 = (random.randint(0, 255), random.randint(0, 255), random.randint(0, 255))

    # Generate the icon with a checkerboard pattern
    for i in range(icon_size):
        for j in range(icon_size):
            if (i // (icon_size // 8) + j // (icon_size // 8)) % 2 == 0:
                image.putpixel((i, j), color1)
            else:
                image.putpixel((i, j), color2)

    # Ensure the output file name has a valid image file extension
    if not os.path.splitext(output)[1]:
        output += ".png"

    # Save the icon to the output file
    image.save(output)

def main():
    icon_size, output = inputs()
    generate_icon(icon_size, output)

    print(f"Icon generated successfully! Size: {icon_size}x{icon_size}")

if __name__ == "__main__":
    main()