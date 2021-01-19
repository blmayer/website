const mimes = {
    "html": "text/html",
    "txt": "text/plain",
    "xml": "application/xml"
};

const morningColours = ["AliceBlue", "DarkSlateBlue", "IndianRed"];
const dayColours = ["BlanchedAlmond", "Teal", "Salmon"];
const nightColours = ["#101010", "LawnGreen", "Fuchsia"];

addEventListener("fetch", event => {
    event.respondWith(handleRequest(event.request));
});

async function handleRequest(request) {
    let path = request.url.slice(request.url.lastIndexOf("/")+1);
    if (!path) {
        path = "index.html";
    }

    let page = await pages.get(path);
    let status = 200;
    if (!page) {
        page = await pages.get("404.html");
	path = "404.html";
	status = 404;
    }

    // Style content
    const now = new Date();
    const hour = now.getHours();
    let colours;
    if (hour > 20 || hour < 5) {
        colours = nightColours;
    } else if (hour > 11) {
        colours = dayColours;
    } else {
        colours = morningColours;
    }

    page = page.replace("$COLOR0", colours[0]);
    page = page.replace("$COLOR1", colours[1]);
    page = page.replace("$COLOR2", colours[2]);

    // Special cases
    if (path === "htop.html") {
        const age = (now - new Date("1992/02/19 14:00:00")) / 1000;
        const y = age / (60 * 60 * 24 * 365.25);
        page = page.replace("$UPTIME", `${~~y} years`);
    }

    let res = new Response(page, {"status": status});
    let mime = mimes[path.split(".")[1]];
    if (!mime) {
	mime = mimes["txt"];
    }
    res.headers.set("Content-Type", mime);

    return res;
}
