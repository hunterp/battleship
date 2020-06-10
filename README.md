# Battleship

Implementation of a Battleship board

## Dependencies
Depends on `minitest` only for tests, install with `bundle install`

## Tests
Run tests with `bundle exec ruby test/test_boat.rb`

## Playing a game

Run `ruby battleship.rb` to run through a sample game.

Here's the output:


```
Putting boat 0 at 3,1
Putting boat 0 at 3,2
Putting boat 0 at 3,3
Putting boat 0 at 3,4
Putting boat 1 at 8,2
Putting boat 1 at 9,2
 _  _  _  _  _  _  _  _  _  _  _
 _  _  _  0  _  _  _  _  _  _  _
 _  _  _  0  _  _  _  _  1  1  _
 _  _  _  0  _  _  _  _  _  _  _
 _  _  _  0  _  _  _  _  _  _  _
 _  _  _  _  _  _  _  _  _  _  _
 _  _  _  _  _  _  _  _  _  _  _
 _  _  _  _  _  _  _  _  _  _  _
 _  _  _  _  _  _  _  _  _  _  _
 _  _  _  _  _  _  _  _  _  _  _
 _  _  _  _  _  _  _  _  _  _  _

Attacking 0,0 ->
Miss
 M  _  _  _  _  _  _  _  _  _  _
 _  _  _  0  _  _  _  _  _  _  _
 _  _  _  0  _  _  _  _  1  1  _
 _  _  _  0  _  _  _  _  _  _  _
 _  _  _  0  _  _  _  _  _  _  _
 _  _  _  _  _  _  _  _  _  _  _
 _  _  _  _  _  _  _  _  _  _  _
 _  _  _  _  _  _  _  _  _  _  _
 _  _  _  _  _  _  _  _  _  _  _
 _  _  _  _  _  _  _  _  _  _  _
 _  _  _  _  _  _  _  _  _  _  _

Attacking 3,1
Hit
 M  _  _  _  _  _  _  _  _  _  _
 _  _  _ X0X _  _  _  _  _  _  _
 _  _  _  0  _  _  _  _  1  1  _
 _  _  _  0  _  _  _  _  _  _  _
 _  _  _  0  _  _  _  _  _  _  _
 _  _  _  _  _  _  _  _  _  _  _
 _  _  _  _  _  _  _  _  _  _  _
 _  _  _  _  _  _  _  _  _  _  _
 _  _  _  _  _  _  _  _  _  _  _
 _  _  _  _  _  _  _  _  _  _  _
 _  _  _  _  _  _  _  _  _  _  _

Attacking 3,2 ->
Hit
Attacking 3,2 ->
Hit
Attacking 3,2 ->
Sunk
 M  _  _  _  _  _  _  _  _  _  _
 _  _  _ X0X _  _  _  _  _  _  _
 _  _  _ X0X _  _  _  _  1  1  _
 _  _  _ X0X _  _  _  _  _  _  _
 _  _  _ X0X _  _  _  _  _  _  _
 _  _  _  _  _  _  _  _  _  _  _
 _  _  _  _  _  _  _  _  _  _  _
 _  _  _  _  _  _  _  _  _  _  _
 _  _  _  _  _  _  _  _  _  _  _
 _  _  _  _  _  _  _  _  _  _  _
 _  _  _  _  _  _  _  _  _  _  _

Attacking 8,2 ->
Hit
Attacking 9,2 ->
Game Over
 M  _  _  _  _  _  _  _  _  _  _
 _  _  _ X0X _  _  _  _  _  _  _
 _  _  _ X0X _  _  _  _ X1XX1X _
 _  _  _ X0X _  _  _  _  _  _  _
 _  _  _ X0X _  _  _  _  _  _  _
 _  _  _  _  _  _  _  _  _  _  _
 _  _  _  _  _  _  _  _  _  _  _
 _  _  _  _  _  _  _  _  _  _  _
 _  _  _  _  _  _  _  _  _  _  _
 _  _  _  _  _  _  _  _  _  _  _
 _  _  _  _  _  _  _  _  _  _  _
```
