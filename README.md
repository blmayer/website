# blmayer.dev

> This is the code to deploy my website on cloudflare


## Commands

It is a two step process:

- To build the worker code run `make` and the webpages are put into the javaScript file *index-loaded.js*.
- To deploy run `wrangler publish`.


### Notes

Each page must have an entry on the makefile and on the *pages* object in *index.js*.
