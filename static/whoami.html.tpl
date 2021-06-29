<!DOCTYPE html>
<html lang="en">
{{static/head.html}}

<body>
    <p><strong>blmayer@computer ~$ </strong></p>
    {{static/header.html}}

    <p><strong>blmayer@computer ~$ </strong>htop</p>
    <htop>
        <pre class="diff">
Golang      [||||||||||||||       66%]
C           [|||||||||||          52%]
R           [||||||||||           50%]
JavaScript  [||||||||             35%]
MongoDB     [||||||||             38%]
AWS Lambda  [|||||||||||||||||    79%]
Shell/Linux [|||||||||||||||      74%]
Mathematica [|||||||||||          55%]
GCP         [|||||||||            42%]
MySQL       [|||||||||||          52%]
Flutter     [|||||||              30%]</pre>
        <pre class="diff">
Battery:  100%
Uptime:   29 years
        </pre>
    </htop>
    <p><strong>blmayer@computer ~$ </strong>journalctl</p>
    <div>
        <h2 id="licentiate">licentiate degree</h2>
        <p>
            <diff>@@ -2010-01-01 +2014-01-01 @@</diff><br />
            Licentiate degree in Mathematics by Universidade
            Presbiteriana Mackenzie.
        </p>

        <h3>monography</h3>
        <p>
            <diff>@@ title @@</diff> Integrando Alguns Conteúdos do
            Ensino Médio com Equações Diferença
        </p>

        <h2 id="bachelor">bachelor degree</h2>
        <p>
            Bachelor degree in Mathematics by Universidade Presbiteriana
            Mackenzie.
        </p>

        <h3>article</h3>
        <p>
            <diff>@@ title @@</diff> Equações de Diferenças aplicadas em
            Séries e em outras áreas do conhecimento
        </p>

        <h2 id="masters">master of science</h2>
        <p>
            <diff>@@ -2015-06-01 +2016-06-01 @@</diff><br />
            MsC in Electrical engineering and computing by Universidade
            Presbiteriana Mackenzie.
        </p>
        <p>Supervisor: Dr. Luiz Henrique Alves Monteiro.</p>

        <h3>article</h3>
        <p>
            <diff>@@ title @@</diff> Sincronismo entre Redes Neurais
            Complexas: Um Modelo de Sistema Visual de Mamíferos
        </p>
        <p>
            <diff>@@ journal @@ </diff> Proceeding Series of the
            Brazilian Society of Computational and Applied Mathematics
        </p>
        <p>
            <diff>@@ DOI @@</diff>
            <a href="http://dx.doi.org/10.5540/03.2016.004.01.0007">
                DOI
            </a>
        </p>

        <h3>article</h3>
        <p>
            <diff>@@ title @@</diff> On Synchronizing Coupled
            Retinogeniculocortical Pathways: A Toy Model
        </p>
        <p>
            <diff>@@ journal @@</diff> Computational Intelligence and
            Neuroscience
        </p>
        <p>
            <diff>@@ DOI @@</diff>
            <a href="https://www.hindawi.com/journals/cin/2018/6858176/">
                DOI
            </a>
        </p>

        <h3>wolfram summer school</h3>
        <p>
            <diff>@@ project @@</diff> UNICODE OCR with Neural Networks
        </p>

        <h3>neural networks lecture</h3>
        <p>
            <diff>@@ -2016-11-06 +2016-11-06 @@</diff><br />
            Gave a lecture about the new, at the time, Wolfram Mathematica
            neural networks framework features, during the Brazilian Wolfram
            Conference at Universidade Presbiteriana Mackenzie.
        </p>

        <h3>neural networks workshop</h3>
        <p>
            <diff>@@ -2016-11-20 +2016-11-20 @@</diff><br />
            Ministered a workshop about the Wolfram Mathematica neural networks
            framework features and applications, during the Semana da Computação
            Natural given by the Natural Computing Laboratory at Universidade
            Presbiteriana Mackenzie.
        </p>

        <h3>master's thesis</h3>
        <p>
            <diff>@@ title @@</diff> Redes de Newman-Watts Acopladas
            Como Modelo de Sistema Visual de Mamíferos
        </p>

        <h2 id="looqbox">looqbox</h2>
        <p>
            <diff>@@ -2017-02-01 +2019-02-01 @@</diff><br />
            Looqbox is a business intelligence startup situated in São
            Paulo, Brazil. I worked there for 2 years, mostly as data
            scientist, and back-end developer. I developed
            skills in R, Python, Docker and Java, during the data
            scientist period I stayed very close to many clients,
            acting like project manager for some cases.
        </p>
        <p>Some projects worth mentioning are:</p>
        <diff>Developer docker image ++++</diff>
        <dd>
            Built a docker image with RStudio and all configs/assets
            needed for devs, the intention was to provide a uniform
            and complete environment for developers.
        </dd>

        <diff>ODBC Support +++++++++</diff>
        <dd>
            This project installed drivers and made all integrations
            on the platform so the clients could use ODBC databases
            seamlesly.
        </dd>

        <h2 id="poupachef">poupachef</h2>
        <p>
            <diff>@@ -2019-03-01 +2020-10-01 @@</diff><br />
            Poupachef is a startup that connects food distributors to
            restaurants, bakeries and bars I co-founded. During the two
            years of work I developed the whole cloud infrastructure,
            micro-services, android app, intranet and data routines.
        </p>
        <p>
            Micro-services where written in Golang and deployed as
            lambda functions using cloud formation, and data routines
            in Python, using MySQL and MongoDB as data bases.
        </p>
        <p>
            The cloud was a hibrid of AWS/GCP, with back-end services
            in AWS and data routine/MySQL on GCP. The Android app had
            its first version in Kotlin, then it was converted to React
            Native.
        </p>

        <h2 id="phd">phd</h2>
        <p>
            <diff>@@ -2019-06-01 +now @@</diff><br />
            PhD in Electrical Engineering and computing by Universidade
            Presbiteriana Mackenzie.
        </p>

        <h3 id="mentor">mentor at HACKCOVID19</h3>
        <p>
            <diff>@@ -2020-05-06 +2020-05-22 @@</diff><br />
            Tech mentoring during a hackaton about COVID19, check the
            official website
            <a href="https://hackcovid-19.devpost.com">devpost website</a>.
        </p>

        <h3 id="medium">medium post</h3>
        <p>
            <diff>@@ title @@</diff> Running and debugging Go Lambda
            functions locally<br />
            <diff>@@ link @@</diff>
            <a
                href="https://medium.com/nagoya-foundation/running-and-debugging-go-lambda-functions-locally-156893e4ed0d">
                Medium post
            </a>
        </p>

        <h3>article</h3>
        <p>
            <diff>@@ title @@</diff> A Numerical Study on the Regularity of d-Primes
            via Informational Entropy and Visibility Algorithms
        </p>
        <p>
            <diff>@@ journal @@</diff> Complexity
        </p>
        <p>
            <diff>@@ DOI @@</diff>
            <a href="https://www.hindawi.com/journals/complexity/2020/1480890/">
                DOI
            </a>
        </p>

        <h2 id="tradersclub">tradersclub</h2>
        <p>
            <diff>@@ -2020-10-01 +now @@</diff><br />
            I'm currently working as a Golang back-end developer,
            developing the payment micro-service and working on
            projects like Hubspot and service invoices integrations.
        </p>

    </div>
</body>

</html>