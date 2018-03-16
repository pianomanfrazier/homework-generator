# Latex Homework Generator

These scripts generate a latek homework project. This all assumes you are using Linux. You could probably get this all to work for Windows using a bash shell or Mac.

```bash
./new_hw <hw name>
```

To make using this script easy, place the `new_hw.sh` script and the `hwtemp` directory in your shell path. The script assumes you place it in `~/bin`.

The script will look for a config file `class.cfg` in the directory you call the script to descibe information about the class for each assignment.

```bash
# class.cfg
NAME="Cookie Monster"
COURSE_NUM="MATH 1010"
COURSE_NAME="Super Duper Math Class"
SEMESTER="Spring 2018"
INSTRUCTOR="Dr. Albert Einstein"
```

## Usage

```bash
#copy script and template directory to your path
cp -r new_hw.sh hwtemp ~/bin

#create homework directory with and place a .cfg file in it
mkdir math1010
cp class.cfg math1010
cd math1010
new_hw 1 hw1
```
