:: Clear output
cls

:: Sets the names of the projects
set CLIENT_OUTPUT="DVN.exe"

cd source
cd client

:: Shuts down the client if it's running
taskkill /F /IM %CLIENT_OUTPUT%

:: Builds the client project
dub build -a=x86_64

:: Moves the path to the server output
cd ..
cd ..
cd build
cd client

:: Starts the client in a new instance
start "" %CLIENT_OUTPUT%

:: Moves the path to the source path
cd ..
cd ..
