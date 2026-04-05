@echo off
cls
:loop
for %%A in (0 1 2 3 4 5 6 7 8 9 A B C D E F) do (
cls
color %%A
echo ooooooooo.         .o.       ooooo ooooo      ooo oooooooooo.    .oooooo.   oooooo   oooooo     oooo 
echo .888   .Y88.      .888.      .888. .888b.     .8. .888.   .Y8b  d8P.  .Y8b   .888.    .888.     .8.  
echo  888   .d88.     .88888.      888   8 .88b.    8   888     888 888      888   .888.   .8888.   .8.   
echo  888ooo88P.     .8. .888.     888   8   .88b.  8   888oooo888. 888      888    .888  .8..888. .8.    
echo  888.88b.      .88ooo8888.    888   8     .88b.8   888    .88b 888      888     .888.8.  .888.8.     
echo  888  .88b.   .8.     .888.   888   8       .888   888    .88P .88b    d88.      .888.    .888.      
echo o888o  o888o o88o     o8888o o888o o8o        .8  o888bood8P.   .Y8bood8P.        .8.      .8.       
timeout 1 | @echo off 
)
goto loop
