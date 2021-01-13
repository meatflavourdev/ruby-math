# Math Game



> ## Game 
>
> ---
>
> #### **State**
>
> `players[Player]` Array of players
>
> `currentPlayer(Number) = 0` Index of the current player
>
> #### **Action**
>
> `start() : null` Begins the game loop
>
> (Assorted Private Methods for Game Logic and Output)

The game object takes two player objects and loops through turns. Each turn, a question is created and posed and the players are asked back and forth one after the other. Upon answering the question wrong, player loses one point. When a player runs out of point, the game ends and a winner is declared.

**Responsibilities** : Execution / Turns / Questions / User I/O




> ## Player 
>
> ---
>
> #### **State**
>
> `lives(Number) = 3`
>
> #### **Action**
>
> `decrementLife() : (Number)` Take one life away on loss and return remaining lives
>
> `getLives() : (Number)` Get the current number of lives

A player object maintains the state of each player which consists of the player's current remaining lives and, perhaps, the player's name.

**Responsibilities** : Lives / Name




> ## Question 
>
> ---
>
>#### **State**
> 
>`answer(Number)` The correct answer for this question
> 
>#### **Action**
> 
>`getQuestion() : (String)` Get the question string
> 
>`checkAnswer(Number) : (Boolean)` Check a number against the expected answer

**Responsibilities** : Generate Question / Check Answers