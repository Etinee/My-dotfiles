#!/usr/bin/env bash

scrot ~/tmp/screenlock.png
magick ~/tmp/screenlock.png -blur 0x6 ~/tmp/screenlock.png
i3lock -i ~/tmp/screenlock.png
rm ~/tmp/screenlock.png
