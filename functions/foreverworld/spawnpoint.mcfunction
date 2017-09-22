# When a player sleeps, their spawnpoint is reset. This means the player's
# original (random) spawnpoint goes away, and will not be restored if the bed
# breaks.
# Instead, set the spawnpoint (manually) whenever we detect a player in a bed.
# This isn't perfect: A player can right-click a bed without sleeping, which
# would still set their spawnpoint, while we wouldn't detect it. So long as that
# bed doesn't break, we should still be fine. If that bed *does* break, or is
# otherwise obstructed, then the player will be sent back to the death chamber.
scoreboard players set @a fwsleeping 0 {Sleeping:0b}
scoreboard players add @a fwsleeping 1 {Sleeping:1b}
spawnpoint @p[score_fwsleeping_min=1]
