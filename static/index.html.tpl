<!DOCTYPE html>
<html lang="en">
{{static/head.html}}

<body>
    <p><strong>blmayer@~ $ </strong>ls </p>
    {{static/header.html}}

    <h2>Hello World!</h2>
    <p>Welcome to my portfolio website. Thank you for taking your time.</p>
    <p>
        Here you'll find my projects and my CV, I will try to update it once
        in a while. This website is somewhat strange but very convenient to
        work with due to a bash script that builds it. I wrote about it in
        the <em>meta</em> page.
    </p>
    <p>
        I'm a back-end developer, I like programming in C, Golang and Python
        for my back-end stuff, shell script and Linux are my daily tools, it's
        a pleasure working in this environment. You can check my CV in the
        <em>whoami</em> page.
    </p>
    <p>
        Currently I am adventuring into the front-end world, learning HTML,
        CSS and Javascript, on the road some projects came along and some
        are previous to that time. I must warn you that they are in general
        useless, or dumb, but some I think are useful. If interested make
        yourself out on the <em>works</em> folder.
    </p>
    <br>

    <h2>Contents</h2>
    <p>
        <strong>blmayer@computer ~$ </strong>
        tree -H "." static | tail -n +32 | head -n -14 | sed 's/.tpl//g'
    </p>
    {{! tree -H "." static | tail -n +32 | head -n -14 | sed 's/.tpl//g'}}

    <hr class="line" />
    <p><strong>blmayer@~ $ </strong>cat footer.html</p>
    {{static/footer.html}}
</body>

</html>