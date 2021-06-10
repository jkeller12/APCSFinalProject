# APCSFinalProject
Group Name: The JDrippsters
Group Number: 19
Group Members: Jonah Keller
Prototype Link: https://tinyurl.com/4kpv9dkk

Compile Instructions: Load Chess.pde file in Processing and click play.

Brief Project Description: I will be making a game of Chess. I will hopefully have a timer, orientation options, and all the regular rules of chess.






Outline:
chess class
-Initialize game and start drawing
Board class
-Initialize pieces (Actor class) and getActor/setActor etc methods.
Actor classe
-Will contain methods necessary for all child classes
Pawn/Rook/Knight...King classes
-Will contain method to provide all available moves for the piece.

Game class
-Will initialize, track/play, and end the game, including graphics.

Player class
-Will track eligible moves and

Development Log:
05/28/21: I finished up the prototype and built a sketch file that projects a basic chessboard.

06/01/21:
-Finished the prototype (including UML drawings and updated the class structure). I began writing the board and pieces classes.
-I decided the board and piece class structure might be a tad messy, so I'm attempting to do it without those elements. I've started by attempting to draw a board in blue and white and place the pieces on that board. I've also attempted to work on checks, movement, possible moves and other things.


06/02/21
-The object oriented approach was most definetely clearer and better. I'm deleting my current structure and restarting.
-Implementing Board = cell[][], cell contains piece, piece is abstract for ind. pieces OOP structure. Game class for running game, move class for implementing moves, and player class for keeping white/black sides

06/04/21
-Implemented castling method
-Implemented en-passant
-Checked all pieces for each move type so no faults
-Cleared up
-Debugging error in init of Game class
-Projecting board image properly
-Board works

06/05/21
-Implemented queen fix
-Fixing pawn promotion (and trying out graphics for it)
-Fixed final error of castling (w/o incheck or indanger methods yet)

06/07/21
-Combined piece and cell class into actor classe
-Rewrote the game, and board classes to accomodate.
-Cleared up instance variables.
-Cleared up castling methods, incheck methods
-Board/game graphics implemented.

06/08/21
-Piece movement graphics implmeneted.
-Fixing issue with endgame scenario and endgame graphic projection

06/09/21
-Fixed endgame scenario/king movement error and endgame projection
-Castling still doesn't work, en-passant needs installing, and king next to king move error
-Fixed castling and implemented en-passant. Have issue w/ castling through danger.

06/09/21 Afternoon
-Fixed castling in danger issue.
```
