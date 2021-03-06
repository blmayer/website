<!DOCTYPE html>
<html lang="en">
{{static/head.html}}

<body>
    <p><strong>blmayer@~ $ </strong>cat meta</p>
    {{static/header.html}}
    <h2>About this site</h2>
    <p>
        This website is generated using some thicks I find interesting,
        for example, in the index page the tree is created using a shell
        command, namely <kbd>tree</kbd>. The funny part is that this code
        is actually part of the HTML file, and the command is run on the
        build process. For some commands I included it before the output,
        for fun.
    </p>
    <p>
        The main thing here is the <kbd>build.sh</kbd> script that injects
        shell commands directly into the file, so I can use simple programs
        to help creating the content. Do not use it in production, it is not
        secure, but fine for this simple website that I have control.
    </p>
    <p>
        I hope you find this interesting, if so take a look at the source code
        on my <a href="https://github.com/blmayer/website">GitHub account</a>.
    </p>
    <br>

    <p>Here's an example:</p>

    <p><strong>blmayer@~ $ </strong>fortune | cowsay -W 30</p>
    <pre>
{{!fortune | cowsay -W 30}}
    </pre>
</body>

</html>