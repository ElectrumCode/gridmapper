Gridmapper
==========

Open the `gridmapper.svg` file using your browser and you have a very
simple dungeon mapping tool.

If you click into the empty space and move your mouse, you will be
drawing dungeon floor tiles. If you click on a dungeon floor tile and
move your mouse, you will be erasing them instead.

`d` draws a door on the left edge. If you press `d` again within two
seconds, the door moves to the upper edge, then on to the right edge
and finally to the bottom edge. To add more doors, just wait two
seconds before hitting `d` again. Use `D` to remove the last door
added.

`s` will eventually draw a secret door. This has not been implemented,
yet.

`t` draws a trap door. Hitting `t` again replaces the trap door with
an empty dungeon floor tile.

`l` draws some stairs. If you press `l` again, the stairs are rotated
by 90°. Use `L` to remove the stairs.

The code was the result of admiring Daniel R. Collins' [original
GridMapper 1.0](http://www.superdan.net/software/gridmapper/).

See Also
--------

This originally started a s a Clojure project. You can find the
original code on the
[clojure](https://github.com/kensanata/gridmapper/tree/clojure)
branch.

There is also a branch called
[c2](https://github.com/kensanata/gridmapper/tree/c2) which uses
[C2](https://keminglabs.com/c2/) to create a web application.
Unfortunately, it doesn't scale well: when you use a 30×30 grid, it's
too slow. I decided to move to [VanillaJS](http://vanilla-js.com/).
