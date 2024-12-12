# Project DVN - Example Application

This is the source code and Windows x64 build for an application example of DVN.

You may use the Windows x64 build directly to make your game without compiling and building the application.

This can help up speed the development process. Just note that you will only be able to develop it for x64 on Windows then.

However you can later build the application to appropriate platforms.

For the full source code visit the main repo for the dvn package here: https://github.com/ProjectDVN/dvn

## Development

To develop your Visual Novel you must add your resources/edit files in the *data* folder that comes with the build folder.

The following folders can be used to develop your visual novel:

* data/backgrounds for the loading background and the main menu/settings menu background image.
* data/fonts for font files.
* data/images for the SDL logo image.
* data/music for music and sound effects.
* data/resources for the main resource file which contains the main menu background and the logo for the game.
* data/game for resource files that contains animations, game backgrounds, character images and music/sound effects.
* data/game/animations for animation files.
* data/game/backgrounds for game background files.
* data/game/characters for character image files.
* data/game/images for image files used in the game, by default it contains the logo.
* data/game/scripts for visual novel script files used to develop the visual novel story.
* data/game/views for the main menu view files used to modify the main menu and its appearance.

## Building

To build the application simply run `dub build -a=x86_64` for a 64 bit build in the source folder.

On Windows you can use the *build.bat* batch file to build which automatically builds the application and runs it.

## Guides

### Changing fonts

* In the data/fonts folder add the font files.
* Open data/settings.json
* Add the fonts to the *fonts* object with a given name and their path.
* Additionally add backup fonts that are used when fonts aren't found or doesn't support specific characters.
* You may also change the default font using the "defaultFont" property.

### Adding music/sound effects

* In the data/music folder add your mp3 (for music) and wav (for sound effects) files.
* Open data/game/music.json
* Add your music and sound effect entries there with a given name and their path.

### Scripting

#### Creating script files

In the folder data/game/scripts add your .vns files (short for Visual Novel Script)

The file structure of a .vns file is simply an expanded upon INI file.

You may add folders to keep your files structured etc.

*main* is by default the main script executed when a new game is started.

Example:

```ini
[main]
background=Home
music=Game
char=Rin_Casual_Smile
charName=Rin
charColor=d7bde2
char=Sumi_Casual_Smile
charName=Sumi
charNamePos=right
charColor=85c1e9
charPos=bottomRight
text:dialogue-1=Welcome to DVN, a visual novel engine written in D.

[dialogue-1]
background=Home
music=Game
char=Rin_Casual_Smile
charName=Rin
charNamePos=right
charColor=d7bde2
charPos=bottomRight
animation:150,150:false=Test
text:dialogue-2=DVN is free to use.

[dialogue-2]
background=Home
music=Game
char=Rin_Casual_Smile
charName=Rin
charNamePos=right
charColor=d7bde2
charPos=bottomRight
animation:0,0:true:topLeft=Test
text:school=This example demonstrates the basic functionality of DVN.

[school]
background=School
music=Game
char=Sumi_Casual_Smile
charName=Sumi
charColor=85c1e9
charPos=bottomLeft
image:12,12=Logo
text:school-1=What would you like to do?

[school-1]
background=School
music=Game
char=Sumi_Casual_Smile
charName=Sumi
charColor=85c1e9
image:0,0:topRight=Logo
option:school-2=This is option 1 (ending)
option:school-3=This is option 2
option:school-4=This is option 3
option:school-5=This is option 4

[school-2]
background=School
music=Ending
char=Sumi_Casual_Smile
charName=Sumi
charColor=85c1e9
charPos=bottomRight
textColor=58d68d
text:end=This is the end of the story! (1)

[school-3]
background=School
music=Game
sound=Hit
char=Sumi_Casual_Smile
charName=Sumi
charColor=85c1e9
textColor=e74c3c
text:school=This is NOT the end of the story! (2)

[school-4]
background=School
music=Game
sound=Hit
char=Sumi_Casual_Smile
charName=Sumi
charColor=85c1e9
textColor=e74c3c
text:school=This is NOT the end of the story! (3)

[school-5]
background=School
music=Game
sound=Hit
char=Sumi_Casual_Smile
charName=Sumi
charColor=85c1e9
textColor=e74c3c
text:school=This is NOT the end of the story! (4)
```

Properties that must be present every time are:

* background, music and text/option.

It's important that background and music is present for each entry, otherwise save files will not display backgrounds and play music properly.

#### Properties

*background=VALUE* where *VALUE* is the name given for a background entry within the resource file data/game/backgrounds.json

*music=VALUE* where *VALUE* is the name given for a music entry within the resource file data/game/music.json

*sound=VLAUE* where *VALUE* is the name given for a sound effect entry within the resource file data/game/music.json

*char=VALUE* where *VALUE* is the name given for a character entry within the resource file data/game/characters.json - Creates a new character entry within the scene.

*charName=VALUE* where *VALUE* is the name of the character speaking.

*charNamePos=VALUE* where *VALUE* is a given value for the position of the name. Values supported are *left*, *center* and *right*

*charColor=VALUE* where *VALUE* is a given hex code ex. fff for white; this sets the character name color.

*charPos=VALUE* where *VALUE* is a given value for the position of the character. Values supported are *topLeft*, *topCenter*, *topRight*, *left*, *center*, *right*, *bottomLeft*, *bottomCenter*, *bottomRight*

*text:SCENE=VALUE* where *SCENE* is the next scene entry and *VALUE* is the text to display.

*animation:X,Y* where *X* and *Y* are given x and y coordinates for the animation to be displayed. Remember to add the animation to the resource file data/game/animations.json

*animation:X,Y:REPEAT* where *REPEAT* is a boolean value of whether the animation repeats until next scene. Values supported are *true* and *false*.

*animation:X,Y:REPEAT:POSITION* where *POSITION* is a given position for the animation. Values supported are *topLeft*, *topCenter*, *topRight*, *left*, *center*, *right*, *bottomLeft*, *bottomCenter*, *bottomRight*

*image:X,Y* where *X* and *Y* are given x and y coordinates for the image to be displayed. Remember to add the image to the resource file data/resources/main.json

*image:X,Y:POSITION* where *POSITION* is a given position for the image. Values supported are *topLeft*, *topCenter*, *topRight*, *left*, *center*, *right*, *bottomLeft*, *bottomCenter*, *bottomRight*

*option:SCENE=VALUE* where *SCENE* is the next scene entry when the option is chosen and *VALUE* is the text to display for the option.