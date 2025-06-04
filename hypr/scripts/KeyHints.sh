#!/bin/bash
# /* ---- 💫 https://github.com/JaKooLit 💫 ---- */  ##

# GDK BACKEND. Change to either wayland or x11 if having issues
BACKEND=wayland

# Check if rofi or yad is running and kill them if they are
if pidof rofi > /dev/null; then
  pkill rofi
fi

if pidof yad > /dev/null; then
  pkill yad
fi

# Launch yad with calculated width and height
GDK_BACKEND=$BACKEND yad \
    --center \
    --title="KooL Quick Cheat Sheet" \
    --no-buttons \
    --list \
    --column=Key: \
    --column=Description: \
    --column=Command: \
    --timeout-indicator=bottom \
"ESC" "close this app" "" "WIN" "SUPER KEY (Windows Key Button)" "(SUPER KEY)" \
"WIN SHIFT K" "Searchable Keybinds" "(Search all Keybinds via rofi)" \
"WIN SHIFT E" "KooL Hyprland Settings Menu" "" \
"" "" "" \
"WIN enter" "Terminal" "(kitty)" \
"WIN SHIFT enter" "DropDown Terminal" "WIN Q to close" \
"WIN A" "Desktop Overview" "(AGS - if opted to install)" \
"WIN D" "Application Launcher" "(rofi-wayland)" \
"WIN E" "Open File Manager" "(Dolphin)" \
"WIN S" "Google Search using rofi" "(rofi)" \
"WIN Q" "close active window" "(not kill)" \
"WIN Shift Q " "kills an active window" "(kill)" \
"WIN ALT mouse scroll up/down   " "Desktop Zoom" "Desktop Magnifier" \
"WIN Alt V" "Clipboard Manager" "(cliphist)" \
"WIN W" "Choose wallpaper" "(Wallpaper Menu)" \
"WIN Shift W" "Choose wallpaper effects" "(imagemagick + swww)" \
"WIN CTRL B" "Choose waybar styles" "(waybar styles)" \
"WIN ALT B" "Choose waybar layout" "(waybar layout)" \
"WIN ALT R" "Reload Waybar swaync Rofi" "CHECK NOTIFICATION FIRST!!!" \
"WIN SHIFT N" "Launch Notification Panel" "swaync Notification Center" \
"WIN Print" "screenshot" "(grim)" \
"WIN Shift Print" "screenshot region" "(grim + slurp)" \
"WIN Shift S" "screenshot region" "(swappy)" \
"WIN CTRL Print" "screenshot timer 5 secs " "(grim)" \
"WIN CTRL SHIFT Print" "screenshot timer 10 secs " "(grim)" \
"ALT Print" "Screenshot active window" "active window only" \
"CTRL ALT P" "power-menu" "(wlogout)" \
"CTRL ALT L" "screen lock" "(hyprlock)" \
"CTRL ALT Del" "Hyprland Exit" "(NOTE: Hyprland Will exit immediately)" \
"WIN SHIFT F" "Fullscreen" "Toggles to full screen" \
"WIN CTL F" "Fake Fullscreen" "Toggles to fake full screen" \
"WIN ALT L" "Toggle Dwindle | Master Layout" "Hyprland Layout" \
"WIN SPACEBAR" "Toggle float" "single window" \
"WIN ALT SPACEBAR" "Toggle all windows to float" "all windows" \
"WIN ALT O" "Toggle Blur" "normal or less blur" \
"WIN CTRL O" "Toggle Opaque ON or OFF" "on active window only" \
"WIN Shift A" "Animations Menu" "Choose Animations via rofi" \
"WIN CTRL R" "Rofi Themes Menu" "Choose Rofi Themes via rofi" \
"WIN CTRL Shift R" "Rofi Themes Menu v2" "Choose Rofi Themes via Theme Selector (modified)" \
"WIN SHIFT G" "Gamemode! All animations OFF or ON" "toggle" \
"WIN ALT E" "Rofi Emoticons" "Emoticon" \
"WIN H" "Launch this Quick Cheat Sheet" "" \
"" "" "" \
"More tips:" "https://github.com/JaKooLit/Hyprland-Dots/wiki" ""\