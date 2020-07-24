const pages = {
	"feitaemcasa.html": {
		"content": `FEITAEMCASAFILE`,
		"mime": "text/html"
	},
	"deep.html": {
		"content": `DEEPFILE`,
		"mime": "text/html"
	},
	"asciichartr.html": {
		"content": `ASCIICHARTRFILE`,
		"mime": "text/html"
	},
	"404.html": {
		"content": `404FILE`,
		"mime": "text/html"
	},
	"index.html": {
		"content": `INDEXFILE`,
		"mime": "text/html"
	},
	"robots.txt": {
		"content": `ROBOTSFILE`,
		"mime": "text/plain"
	},
	"sitemap.xml": {
		"content": `SITEMAPFILE`,
		"mime": "application/xml"
	}
};

addEventListener('fetch', event => {
	event.respondWith(handleRequest(event.request))
})

async function handleRequest(request) {
	let path = request.url.match('/([A-z.]+)$');
	if (!path) {
		path = 'index.html';
	}  else {
		path = path[1];
	}

	let page = pages[path];
	if (!page) {
		page = pages['404.html'];
	}
	
	let res = new Response(page["content"]);
	res.headers.set("Content-Type", page["mime"]);

	return res
}
