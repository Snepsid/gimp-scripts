# GIMP Scripts Collection

A collection of utility scripts for GIMP to enhance your image editing workflow.

## Scripts

### Add Top Layer to All Layers

Takes the topmost layer of your image and adds it to every other layer below it, merging it down. This is useful for applying a consistent overlay or effect to multiple layers/frames at once.

## Installation

1. Find your GIMP scripts directory:
   - Windows: `%APPDATA%\GIMP\2.10\scripts\`
   - Linux: `$HOME/.config/GIMP/2.10/scripts/`
   - macOS: `$HOME/Library/Application Support/GIMP/2.10/scripts/`
   
2. Copy the desired script(s) into this folder
3. Restart GIMP

## Usage

### Add Top Layer to All Layers
1. Open your image in GIMP
2. Ensure your top layer contains the effect/overlay/image you want to apply
3. Go to Filters > Snepsid > Add Top Layer to All Layers...
4. The script will copy the top layer to each layer below it and merge down

## Contributing

Feel free to open issues or submit pull requests with improvements!

## License

This work is dedicated to the public domain under CC0 1.0 Universal. See the LICENSE file for details.
