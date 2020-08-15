const pages = {
    "feitaemcasa.html": {
        content: `FEITAEMCASAFILE`,
        mime: "text/html"
    },
    "deep.html": {
        content: `DEEPFILE`,
        mime: "text/html"
    },
    "asciichartr.html": {
        content: `ASCIICHARTRFILE`,
        mime: "text/html"
    },
    "404.html": {
        content: `404FILE`,
        mime: "text/html"
    },
    "index.html": {
        content: `INDEXFILE`,
        mime: "text/html"
    },
    "awslambdarpc.html": {
        content: `AWSLAMBDARPCFILE`,
        mime: "text/html"
    },
    "htop.html": {
        content: `HTOPFILE`,
        mime: "text/html"
    },
    "robots.txt": {
        content: `ROBOTSFILE`,
        mime: "text/plain"
    },
    "sitemap.xml": {
        content: `SITEMAPFILE`,
        mime: "application/xml"
    }
};

const morningColours = ["AliceBlue", "DarkSlateBlue", "IndianRed"];
const dayColours = ["BlanchedAlmond", "Teal", "Salmon"];
const nightColours = ["#101010", "LawnGreen", "Fuchsia"];

addEventListener("fetch", event => {
    event.respondWith(handleRequest(event.request));
});

async function handleRequest(request) {
    let path = request.url.match("/([A-z.]+)$");
    if (!path) {
        path = "index.html";
    } else {
        path = path[1];
    }

    let page = pages[path];
    if (!page) {
        page = pages["404.html"];
    }

    // Style content
    const now = new Date();
    const hour = now.getHours();
    let colours;
    if (hour > 18 || hour < 5) {
        colours = nightColours;
    } else if (hour > 11) {
        colours = dayColours;
    } else {
        colours = morningColours;
    }

    page["content"] = page["content"].replace("$COLOR0", colours[0]);
    page["content"] = page["content"].replace("$COLOR1", colours[1]);
    page["content"] = page["content"].replace("$COLOR2", colours[2]);

    // Special cases
    if (path === "htop.html") {
        const age = now - new Date("1992/02/19 14:00:00");
        page["content"] = page["content"].replace("$UPTIME", age.toString());
    }

    let res = new Response(page["content"]);
    res.headers.set("Content-Type", page["mime"]);

    return res;
}
