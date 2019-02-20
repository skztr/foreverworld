### Forever World

Forever World is a custom gamemode for Minecraft, similar to Hardcore Mode.

It acts as normal survival Minecraft, with two key differences:

 - It should be easier to get lost. The compass points "North", rather than
   towards the place you started. The `reducedDebugInfo` option is also set to
   `true`, so coordinates are not available within the F3 info screen. Maps are
   currently unchanged.

 - If you die, you will respawn in a random location, somewhere within 24,000
   blocks of `0 0`. All advancements will be reset, and the contents of Ender
   Chests will be cleared. Other than that, the world remains untouched.

The goal of the above is simple: It is possible to lose your base, if you are
not careful. But it is also possible to discover an old base, if you are lucky.

# Notes

The number "24,000" can be easily modified, to make it more, or less, likely
that a past base could be discovered. The number has been chosen as it should
always place the player within the area of concentric rings containing
strongholds (which generate within 24,192 blocks of `0 0`).

Map behaviour has not been changed for a very simple reason: I don't know how.
The map NBT structure contains a property, `data.unlimitedTracking` which
defaults to `1`. Ideally, we would set this to `0`, but I don't know how to
modify items within a player's inventory in this way.
