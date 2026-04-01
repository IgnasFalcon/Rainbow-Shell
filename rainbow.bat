@echo off
cls
:loop
for %%A in (0 1 2 3 4 5 6 7 8 9 A B C D E F) do (
cls
color %%A
type AsciiRainbow.txt
timeout 1 | @echo off 
)
goto loop
