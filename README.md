## Martian Robots

1. [Guide to installing Ruby](https://www.ruby-lang.org/en/documentation/installation/)

2. In your command line

to run tests:
```
bundle install
rspec
```

to give it a go:
```
ruby interact.rb
```

and see the beautiful error when it can't take commands!

#### What works
* You can create a grid
* You can create a robot

#### What it doesn't do (yet)
* take commands in a string format "RFRFRFRF"
* take any commands through command line interface
* record dead robots

#### Things which I know I could have done better
* the entire interact.rb file
* stubbing out classes in spec files
* recording the dead robots
* My priorities: I could have gotten the commands working without worrying about  the dead robots just yet.

#### Overall
* I got way closer than I thought I would, so now I'm annoyed I need to call time!

## Run down at each half hour break

##### 00:00
spent some time looking at the brief.

Following notes:

````
grid_coord = [0,0]
orientation = ["N", "E", "S", "W"]
instructions = ["L", "R", "F"]
instructions = {
  L: turnLeft(1),
  R: turnRight(1),
  F: moveForward(1)
}


class Grid
  gridPoints: [GridPoint, GridPoint]
  setupGrid([5,3])
  northOf([0,0])
  southOf([0,0])
  eastOf([0,0])
  westOf([0,0])
class Robot
  orientation: "N"
  turnLeft() /// go anti-clockwise
  turnRight() /// go clockwise
  moveForward() ## eeeh....
  processInstructions()
class GridPoint
  coordinate: [0,0]
  contents: Robot/Scent
class Scent
````

````
# The first line of input is the upper-right coordinates of the rectangular world, the lower-left coordinates are assumed to be 0, 0.
$ 5 3
# The remaining input consists of a sequence of robot positions and instructions (two lines per robot).
# A position consists of two integers specifying the initial coordinates of the robot and an orientation (N, S, E, W), all separated by whitespace on one line.
$ 1 1 E
# A robot instruction is a string of the letters “L”, “R”, and “F” on one line.
$ RFRFRFRF

#The Output
For each robot position/instruction in the input, the output should indicate the final grid position and orientation of the robot. If a robot falls off the edge of the grid the word “LOST” should be printed after the position and orientation.
> 1 1 E
> 3 3 N LOST
> 2 3 S
````


##### 00:30
break! have a robot that can spin all around. I'm worried about how I'm gonna move it around the grid in a nice object-orientated way. Should the robot know it's own position? Probably. Or should the Position know if it has a robot? fun fun fun.

turnLeft turnRight code is not as slick as it probably could be. But it works, and as I have been TDD'ing, it passes all the tests. So there goes too much thinking I guess!

##### 01:00
I was right to worry about moving the robot...

##### 01:30
coordinates should be an object and algebra is better than arithmetic.

##### 02:00
core done. ish. maybe. here goes with tying it together

##### 02:30
no not yet not done why is this if statment not working

retrospectively: it was the test that was wrong.

##### 03:00
ok.
