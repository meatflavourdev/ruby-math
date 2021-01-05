# Math Game



### Objects

**Game**

Responsibilities: Execution, Turns, Questions, User I/O

The game object takes two player objects and loops through turns. Each turn, a question is created and posed and the players are asked back and forth one after the other. Upon answering the question wrong, player loses one point. When a player runs out of point, the game ends and a winner is declared.

**Player**

Responsibilities: Lives, Name

A player object maintains the state of each player which consists of the player's current remaining lives and, perhaps, the player's name.