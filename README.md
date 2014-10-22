# Robot

## Setup

1. Clone the repo `git clone git@github.com:adammiribyan/robot.git`.
2. Go to the downloaded directory `cd ./robot` and run `irb`.
3. Run `require './robot.rb'` inside your irb session.

## Usage

First off, create a new robot instance, e.g. `r = Robot.new`. The default coordinates are set to 0,0 and the facing is set to north.

1. `r.move` will move the robot one step forward in the direction its facing.
2. `r.right` and `r.left` will change the facing clockwise or counter-clockwise respectively.
3. `r.report` will print out the robot's current coordinates and facing.
4. `r.place` will take the arguments, e.g. `r.place(0, 10, 'east')` and place the robot to X: 0, Y: 10, facing east.

## [Watch The Screencast](https://www.dropbox.com/s/mpcdbnlt0lmz7cn/robot_screencast.mov?dl=0)