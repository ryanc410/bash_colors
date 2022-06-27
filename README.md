# bash_colors
> Easy way to implement colors in BASH.

# Installation
The auto.sh script can take care of setting things up for you. When you run the script, it will move the .bash_colors file to your home directory. This file contains the variables of the different color codes. Next the script adds an if statement to the end of your .bashrc file that sources the .bash_colors file so that the color variables will be persistent even after you logout and log back in.

Run these commands:
````bash
chmod +x auto.sh
./auto.sh
````

<br>

# Start/End Code Reference

| Variable | Description |
|----------|-------------|
| `"${start}...` | Begins the color code sequence following `echo -e "` and is used for normal text |
| `"${START}...` | Begins the color code sequence following `echo -e"` and is used for Bold Text |
| `...${end}"` | Finishes the color code sequence |

# Background or No Background

| Variable | Description |
|----------|-------------|
| `...${nobg}...` | Immediately follows the text color variable and is used if no background color is desired |

**IF YOU WANT TO SPECIFY A BACKGROUND COLOR YOU MUST SPECIFY THE BACKGROUND COLOR VARIABLE IMMEDIATELY FOLLOWING THE TEXT COLOR VARIABLE**

# Color Code Reference

| Variable | Color | Text/Background |
|----------|-------|-----------------|
| `${31}` | Red | Text |
| `${32}` | Green | Text |
| `${33}` | Orange | Text |
| `${34}` | Purple | Text |
| `${36}` | Cyan | Text |
| `${37}` | Light Gray | Text |
| `${bg0}` | Black | Background |
| `${bg1}` | Red | Background |
| `${bg2}` | Green | Background |
| `${bg3}` | Orange | Background |
| `${bg4}` | Purple | Background |
| `${bg5}` | Cyan | Background |
| `${bg6}` | Light Gray | Background |

<br>

# Usage

<br>

Every time you want to use colors you must start with this command:
````bash
echo -e
````

<br>

Next, you surround everything else in double quotes, and specify whether you want Regular text or Bold text.
````bash
# Regular text
echo -e "${start}..."

# Bold Text
echo -e "${START}..."
````

<br>

Then you specify what color you want the text to be.
````bash
echo -e "${start}${color}..."

# Or 
echo -e "${START}${color}..."
````

<br>

If you are not using a custom background color..
````bash
echo -e "${start}${color}${nobg}..."
````

<br>

If you wish to change the background color..
````bash
echo -e "${start}${color}${bg0-bg6}
````

<br>

Then comes the actual text you want to echo..
````bash
echo -e "${start}${color}${nobg}This is the text I want to echo.."

# Or

echo -e "${start}${color}${bg0-bg-6}This is the text I want to echo.."
````

<br>

And then finally end it with:
````bash
echo -e "${start}${color}${nobg}This is the text I want to echo${end}"

# Or
echo -e "${start}${color}${bg0-bg-6}This is the text I want to echo${end}"
````

# Examples

