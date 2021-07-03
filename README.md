# WallpaperChanger
Script that changes the wallpaper of the pc

## Overview
With this scripts and some other tasks in your pc, you can download the NASA's Astronomy Picture Of the Day (APOD) to use it as you want or, like me, use it as your wallpaper.

## Prerequisites

I wrote this script in Ruby, so you can run it on CRuby. I did it on JRuby (9.2.17.0 (2.5.8)).
The needed libraries are:
* httparty (0.18.1)
* json (2.5.1 java)
* down (5.2.2)

## Installation

You can get the script by cloning the repo:

```
git clone https://github.com/imarinr/WallpaperChanger.git
```

## Setup

To run the script properly, you have to do these things first:
* [Get a NASA APOD API key (or use the demo key)](https://api.nasa.gov/)
* Create a folder to store the images
* Set the environment variables with the values of APOD_KEY and WALLPAPERS_FOLDER

## Running

To run the script open a terminal, switch to the project folder and run:

```
> jruby apod_main.rb
```
If there is an Internet connection and an image to download (in some cases the content is a video), you will see something like this:

```
APOD wallpaper
Getting APOD info...
200
Downloading image from https://apod.nasa.gov/apod/image/2107/Walk_Milkyway.jpg
 to <your WALLPAPERS_FOLDER>
Finished, you'll see it soon
```
And that's it. Now you have the image and you can configure your system to put it as wallpaper.
