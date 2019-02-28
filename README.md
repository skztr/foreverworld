### Forever World

Forever World is a custom gamemode for Minecraft, similar to Hardcore Mode.

It acts as normal survival Minecraft, with two key differences:

 - It should be easier to get lost. The compass points "North", rather than
   towards the place you started. The `reducedDebugInfo` option is also set to
   `true`, so coordinates are not available within the F3 info screen. Maps are
   unchanged by the datapack itself, but a
   [resourcepack](http://www.github.com/skztr/foreverworld-resourcepack) is
   provided (separately) to remove the "map edge" marker.

 - If you die, you will respawn in a random location, somewhere within 24,000
   blocks of `0 0`. All advancements and recipes will be reset, and the contents
   of Ender Chests will be cleared. Other than that, the world remains
   untouched.

 - If you die after defeating the dragon, the dragon will automatically respawn
   when you return to The End, and The End's return portal will be closed until
   the dragon is defeated.

The goal of the above is simple: It is possible to lose your base, if you are
not careful. But it is also possible to discover an old base, if you are lucky.

# Quickstart

To begin, add this datapack to your server. Once the first player has joined,
the initialization will run, and you will be prompted to restart the server.
(restarting the server is required to update the compass position). Restart the
server, and the game will begin.

# Notes

The number "24,000" can be easily modified, to make it more, or less, likely
that a past base could be discovered. The number has been chosen as it should
always place the player within the area of concentric rings containing
strongholds (which generate within 24,192 blocks of `0 0`).

Map behaviour has not been changed for a very simple reason: I don't know how.
The map NBT structure contains a property, `data.unlimitedTracking` which
defaults to `1`. Ideally, we would set this to `0`, but I don't know how to
modify items within a player's inventory in this way.

# Testing

A test suite is included. To test the datapack, run the function
`foreverworld:test` repeatedly, following instructions when noted, and observing
whether the state expectations are met. Once all tests have been run, a message
indicating this will be displayed.

These tests are not automated: it is up to the player to perform almost all
steps. The test functions are intended to make the process of testing the
datapack easier. Testing should not be required for normal play.
