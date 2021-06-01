# APCSFinalProject
Group Name: The JDrippsters
Group Number: 19
Group Members: Jonah Keller
Prototype Link: https://tinyurl.com/4kpv9dkk

Brief Project Description: I will be making a game of Chess Puzzles (similar to the puzzle section of chess.com). I will hopefully have a timer, a series of puzzles (or levels), orientation options, and a section for marking your "correctness."

Expanded Descriptions:
Critical Features: Chess board with movable pieces that follow the rules of chess; series of predetermined chess boards with pre-determined solutions to puzzles.
Nice to have: timer, “correctness” tracker, and orientation options.

Outline:
I’ll have a Board.java class where I’ll create the board.
The board will be -1 for occupied by white, 0 for nothing, and 1 for black.
I’ll have a subclass of board that i
I’ll have a super class of pieces and create subclasses for each piece in chess.
The pieces class will have instance variables of color and position (col and row)
The pieces class will have a constructor that takes in int color, int col, int row.
The subclass for each piece will have an instance variable that stores possible moves based on the piece’s position (w/o location of other pieces).`
I’ll then have a methods file with the following methods:
A piece mover method that’ll move pieces around



Development Log:
05/28/21: I finished up the prototype and built a sketch file that projects a basic chessboard.

06/01/21: I finished the prototype (including UML drawings and updated the class structure). I began writing the board and pieces classes.
I decided the board and piece class sturcutre might be a tad messy, so I'm attempting to do it without those elements. I've started by attempting to draw a board in blue and white and place the pieces on that board. I've also attempted to work on checks, movement, possible moves and other things. 
