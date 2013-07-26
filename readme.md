## Browserify for Docpad

Runs Browserify on JavaScript files specified with the extension `.b`, `.bwsrfy` or `.bowserify`

### Installation

It's not on npm yet, so install it to the `plugins` directory of your docpad site.

From within your docpad project:

`mkdir plugins`

`cd plugins`

`git clone https://github.com/digitaldesigndj/docpad-plugin-browserify browserify`

### Syntax Highlighting

If you are using Sublime Text You can add the following file to `Packages/User` and restart Sublime Text

`JavaScript.sublime-settings`

```JavaScript
{
    "extensions":
    [
        "b","bwsrfy","browserify"
    ]
}
```

This will keep the JavaScript syntax highlighting intact when you change the extensions to `example.js.b` etc...


### License 

MIT