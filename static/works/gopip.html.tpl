<!DOCTYPE html>
<html lang="en">
{{static/head.html}}

<body>
    {{static/header.html}}
    <h3><a name="gopip">gopip</a></h3>
    <p>
        gopip is a container that builds python3 packages and return
        a zip archive for you. It is able to build more than one package
        in the same request and a form can help with packages from git
        repositories. This web service is currently available at
        <a href="https://gopip-vjz2keikqq-uc.a.run.app">gopip</a>.
    </p>
    <p>
        The interface features light/dark mode based on your system's
        preferences, also, I designed it to be minimalist, the page is
        basically a form. The back-end is currently running on Google
        cloud run and costs nothing for me, it consists of a container
        and a pip install command.
    </p>
    <p>
        This is the <a href="https://github.com/blmayer/gopip">repo</a>
        with the source code.
    </p>
</body>

</html>