
# BUG: leave on same tick as place
- consider the case where the player leaves immediately after placing a placeit block.
- possible solution is to summon proxy entity immediately when a player places a block and use it as the source for place logic