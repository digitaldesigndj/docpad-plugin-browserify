## Browserify for Docpad

Runs Browserify on JavaScript files specified with the extension `.b`, `.bfy`, `.bwsrfy` or `.bowserify`


### Installation

`npm install -g docpad-plugin-browserify`

### Syntax Highlighting

If you are using Sublime Text You can add the following file to `Packages/User` and restart Sublime Text

`JavaScript.sublime-settings`

```JavaScript
{
    "extensions":
    [
        "b","bfy","bwsrfy","browserify"
    ]
}
```

This will keep the JavaScript syntax highlighting intact when you change the extensions to `example.js.b` etc...

### Issues!

This plugin does not really work like I hoped it would. Because Docpad only builds files that have changed, you need to be working on your main app file to get a complete rebuild. If you are working on one of the submodules, Docpad can't sense the dependancy tree. This means that it will not build the correct files and will probably break things on the next reload/live-reload.

Instead take baluptons advice from the Docpad site itself: https://gist.github.com/balupton/4398093

### License 

MIT
