#NoTrayIcon
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
#Hotstring t

::closegreet::If there is anything else you need or if you have any questions, just let us know and we’d be happy to help.
::saletick::I’ve opened ticket #XXXXXX to process this addition to your account.

::darv::DaVinci Resolve
::convgif::ffmpeg -i input.mp4 -loop 0 -filter_complex "[0:v]fps=30,split[a][b]; [a]palettegen=stats_mode=diff[palette]; [b][palette]paletteuse=dither=bayer:bayer_scale=5" final.gif

::eshruggie::¯\\\_(ツ)\_/¯
::shruggie::¯\_(ツ)_/¯
::lennyface::( ͡° ͜ʖ ͡°)

::td::
     SendInput, %A_yyyy%-%A_MM%-%A_dd%
return
