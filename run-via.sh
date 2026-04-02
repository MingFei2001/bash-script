#!/bin/bash
# This allow me to run via on Niri
# Some wayland environment variables leaked over when running the appimage
# This will ignore all env var and run clean

env -i DISPLAY=$DISPLAY XAUTHORITY=$XAUTHORITY ./via-3.0.0-linux.AppImage
