# blmayer.dev

> This is the code to deploy my website on cloud run


## Usage

Run `./build.sh` and the resulting pages will be inside *web/*. Git push triggers
the build on cloud run.

To import files to the page use ``` `import <path/to/page>` ```, e.g.:
[index.html](https://github.com/blmayer/website/blob/master/static/index.html#L7),
the import function defined in *build.sh* will do the job. Backticks runs commands
and pastes the output, this is not safe, every file is interpreted as a shellscript and run.

