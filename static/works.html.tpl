<!DOCTYPE html>
<html lang="en">
{{static/head.html}}

<body>
    <p><strong>blmayer@computer ~$ </strong>cd works</p>
    {{static/header.html}}

    <h2>WIP</h2>
    <p>
        There are 3 major projects worth mentioning here, they are in early
        stages of development, and if everything works out nice, i'd like
        to publish them, they are:
    </p>
    <ul>
        <li>A X server replacement: using libdrm/kms</li>
        <li>A web browser</li>
        <li>A database visualization/editing tool</li>
    </ul>

    <h2>works</h2>
    <p><strong>blmayer@computer ~/works$ </strong>ls -sh1 | sed -E 's@(\S+)$@<a href="works/\1">\1</a>@'</p>
    <pre>
{{!ls -sh1 static/works | sed -E 's@(\S+)$@<a href="works/\1">\1</a>@'}}
    </pre>
</body>

</html>