# java-education

Experimentation with tools that could be useful for teaching newbies.

### Packages

- `gui` &mdash; A library on top of `javafx` with simple interfaces for
getting keyboard and mouse input and drawing shapes to a canvas.

- `ask` &mdash; Very simple bindings for command-line IO. No `Scanner`
objects and the like.

- `guiExamples`, `askExamples` &mdash; Example programs using `gui` or `ask`,
which could be written by or with the newbies during newbie education.

### Building and running

To compile:

```
$ ant compile
```

To run:

```
$ ant run -Dclass=<CLASS>
```

E.g.:

```
$ ant compile
$ ant run -Dclass=guiExamples.BouncingXY
```

To generate JARs, compile and then run one of

```
$ ant dist-ask # Creates dist/ask.jar
$ ant dist-gui # Creates dist/gui.jar
$ ant dist # Creates both
```
