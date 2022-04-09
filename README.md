NewerSMBW Source Code for windows support python3

RedStoneMatt found a way to compile clang for windows and make it work with newer sources and Ninji (or Treeki if you prefer) fix an awful error.

To be able to install newer sources, you need to install Python 2.7 or Python 3.x  on your computer, and install pyyaml and pyelftools on it 
The best way to do that is by using pip:

pip install pyyaml

pip install pyelftools


when it's done, you can compile newer sources by just running the makeNewerKP.bat or makeSummerSun.bat file with windows's CMD and wait for it to compile,
after the compiling is finished, you'll find compiled files in the Build folder.

You can also use makeNewerKPMulti.bat or makeSummMulti.bat after modifying the code fast rebuild.Skip the step of reopening the cmd.

Have fun !
