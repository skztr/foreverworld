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

## QuickStart

To play ForeverWorld, create a folder under the Minecraft "saves" folder, with
the name of a new world you wish to create, eg:
`~/.minecraft/saves/myWorld`, and copy this project to a `data` directory
within, such that the directory structure looks similar to:

    myWorld
    └── data
        ├── advancements
        │   └── foreverworld
        │       └── ...
        └── functions
            └── foreverworld
                └── ...

Next, create a new world within Minecraft, with the same name you used for the
new folder under the "saves" folder. Options such as Large Biomes and Superflat
should be compatible, though "Bonus Chest" is not.

When you first enter the world, the foreverworld functions should automatically
trigger, teleporting you to a new random starting location.

# Notes

The number "24,000" can be easily modified, to make it more, or less, likely
that a past base could be discovered. The number has been chosen as it should
always place the player within the area of concentric rings containing
strongholds (which generate within 24,192 blocks of `0 0`).

Map behaviour has not been changed for a very simple reason: I don't know how.
The map NBT structure contains a property, `data.unlimitedTracking` which
defaults to `1`. Ideally, we would set this to `0`, but I don't know how to
modify items within a player's inventory in this way.
