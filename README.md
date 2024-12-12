# Project DVN - Example Application

This is the source code and Windows x64 build for an application example of DVN.

You may use the Windows x64 build directly to make your game without compiling and building the application.

This can help up speed the development process. Just note that you will only be able to develop it for x64 on Windows then.

However you can later build the application to appropriate platforms.

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

(Coming soon!)