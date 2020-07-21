# minecraft-1.14.4-on-manjaro-ARM
this tutorial is modified from: https://www.raspberrypi.org/forums/viewtopic.php?t=249875
This Tutorial will show you how to install minecraft 1.14.4 on Manjaro ARM pretty easily!
While it is for 1.14.4, i am sure that you can get it to 1.16 with some script changes
NOTE: This will install minecraft 1.14.4 scripts at ~/Minecraft, minecraft itself at ~/.minecraft, and LWJGL3 AARCH64 at ~/lwjgl3arm64. Minecraft will always be in .minecraft but the other two you can change in the setup script. Just make sure to update the directories also in the run script!


First we need Java 13.
In terminal do: 
sudo pacman -Sy jdk13-openjdk, if it asks to reinstall cancel out of it.
now make that the default java by doing: sudo archlinux-java set java-13-openjdk


Next Lets get our setup script, run script, and minecraft launcher.
In the terminal run
git clone https://github.com/Ijdtm7/minecraft-1.14.4-on-manjaro-ARM.git ~/Minecraft
then do: cd ~/Minecraft
NOTE: you can change ~/Minecraft to ~/insertnamehere if it is already taken, but it is much easier to just use ~/Minecraft. this also applies to ~/lwjgl3arm64 which gets created from the setup script

Now in Minecraft folder do: sudo chmod +x setupMC1_14_4.sh
You may want to edit this if you are not going into ~/Minecraft and change the line that says DIR=~/Minecraft
then run it by doing ./setupMC1_14_4.sh

We now need the minecraft assets and versions to be created. we will do this by running the minecraft launcher. However you cannot use the launcher for actually launching the game, for that we have the run script.
Run: java -jar launcher.jar
this will open the minecraft launcher. Next select the version to play as 1.14.4 then hit run. The launcher will download the assets, and then crash. do Ctrl +C to terminate the bash process after it crashes.

Now we have our assets, lets make sure optifine is working, otherwise it might not be playable
The setup script also downloaded optifine inside of the Directory. to install it run: java -jar OptiFine_1.14.4_HD_U_F3.jar
this will open the installer. just press install to install it.
Now open minecraft launcher with java -jar launcher.jar. Choose Optifine profile and launch to setup optifine. The launcher will crash and go ahead and terminate with ctrl c. 

Now do nano runMC1_14_4_OptifineF3.sh
find the lines MINECRAFT_LOGIN, MINECRAFT_USERNAME, MINECRAFT_PASSWORD and put in your info. MINECRAFT_LOGIN should be the email for your MC account. and Username should be your actual minecraft username.

Now if your linux username isn't pi, you must change it in MINECRAFT_NATIVE_PATH and the java command at the bottom
in the java command at the bottom, you can also allocate more RAM if you want to.
Now chmod +x the run script
and run it. Minecraft should start! let me know if you had any issues
