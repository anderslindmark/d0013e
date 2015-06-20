# d0013e

Vagrant environment for doing the lab assignments in D0013 (Microcomputer Engineering). 
Contains a copy of the course homepage, http://www.sm.luth.se/csee/courses/smd/D0013E/

## Instructions
First you need vagrant and an X server. Then you run
```
git clone https://github.com/anderslindmark/d0013e.git
cd d0013e
vagrant up
vagrant ssh -- -Y
```
and then you can compile the labs and use SyncSim etc.

The coursepage mirror can be accessed from http://localhost:8123/
