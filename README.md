docpad-plugin-multiplex
==================

*Not ready for release.*

This plugin allows you to control extensions and generate multiple outputs from one source file.
For example, you can generate code.html and code.cpp from one code.cpp file.


You need to patch the file.js in docpad module.
```
...
FileModel.prototype.normalize = function(opts, next) {
	...
	extensions = meta.get('extensions') || null;
	...
	changes.extensions = (extensions ||
		(extensions = this.getExtensions({filename: filename}))
	      );
```
