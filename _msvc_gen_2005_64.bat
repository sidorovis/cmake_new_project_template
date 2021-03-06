@echo off

set SOLUTION_NAME=project_example

rem set BOOST_ROOT=d:\usr\boost_1_47_0
rem set BOOST_PROCESS_ROOT=d:\usr\boost.process
rem set SYSTEM_UTILITIES_ROOT=d:\usr\system_utilities

set BUILD_TYPE=Debug
if [%1]==[Release] (
	set BUILD_TYPE=Release
)
set BUILD_FOLDER=_build_%BUILD_TYPE%_64

if not exist %BUILD_FOLDER% (
	mkdir %BUILD_FOLDER%
)

cd %BUILD_FOLDER%
cmake -DVERBOSE=OFF -DCMAKE_BUILD_TYPE=%BUILD_TYPE% -DSOLUTION_NAME=%SOLUTION_NAME% -G "Visual Studio 8 2005 Win64" ../ 
cd ../

echo "%BUILD_FOLDER%/%SOLUTION_NAME%.sln" > _start_msvc.bat
