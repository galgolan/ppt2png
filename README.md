# Ppt2Png

Ppt2Png is an AutoIt script which exports all slides of a Power Point presentation as PNG files.
It differs from Power Point's build-in option to export images by the way it treats animations;
While Power Point's export function will save any slide to a single image,
Ppt2Png will save an image after each space bar press, so animations will be exported correctly.
Essentially, Ppt2Png loops space bar press & a screen capture, until the slideshow ends.

For more information, see: [AutoIt](https://www.autoitscript.com/site/autoit/)

# Running

You have a few options to run the script:

  - Run the source file with AutoIt
  - Use *build.ps1* PowerShell script to build a standalone executable
  - Download a pre-built release from this repository

# Usage

  - Start the script and press 'yes' when the popup shows
  - You will now notice the camera icon in the system tray, this means the script is waiting for a slideshow to start.
  - Open Power Point, open a presentation file and start a slideshow (by pressing F5 for example).
  - Sit back and relax; the script will click through the slideshow, until the end.
  - The captured images are saved under: *My Documents\Captures*

>the resolution of the saved images will match the screen resolution used to display the slideshow.

# Known Issues

- The script does not work with *Presenter View*. Disable it by unchecking *Slide Show -> Use Presenter View*.