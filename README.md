# KillProcessWindows
A script in perl that can kill a list of process name that you don't want have in background {ONLY WINDOWS OS]

1) Install an interpreter for the perl language with which the script was made. You can find the file here https://strawberryperl.com/
2) Once the installation on the desktop is finished, press the WINDOWS + R key and a run/execute window will open
3) Write the text "cmd" in the "execute"
4) The command prompt will open
5) Type "perl -v", if you receive the response "This is perl 5, version etc..." then perl has been installed correctly
6) Open the Killer folder and write the names of the processes you want to interrupt inside the KillList text file, exactly like the one left as "Postman.exe"
7) Once filled the txt file just double click on killer.bat and the script will start.
8) Leave the command prompt in the background, as soon as a process is interrupted you will be notified


Bonus) if you want to change the time interval and not keep the standard 30 sec, just right click on "Killer" -> "show more options" -> "edit", and change the number after "starter.pl ", be careful not to set a time period that is too low, I recommend staying at least above 5 sec
