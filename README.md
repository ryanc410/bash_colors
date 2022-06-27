# bash_colors
> Easy way to implement colors in bash scripts

# Installation
The auto.sh script can take care of setting things up for you.

Run these commands:
````bash
chmod +x auto.sh
./auto.sh
````

<br>

# Background Color Codes

**Black BG**<br>
`bg0`<br>
**Red BG**<br>
`bg1`<br>
**Green BG**<br>
`bg2`<br>
**Orange BG**<br>
`bg3`<br>
**Purple BG**<br>
`bg4`<br>
**Cyan BG**<br>
`bg5`<br>
**Light Gray BG**<br>
`bg6`<br>

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
