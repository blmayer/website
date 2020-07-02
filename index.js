const pages = {
	"feitaemcasa.html": `FEITAEMCASAFILE`,
	"deep.html": `DEEPFILE`,
	"asciichartr.html": `ASCIICHARTRFILE`,
	"404.html": `404FILE`,
	"index.html": `INDEXFILE`
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

	let content = pages[path];
	if (!content) {
		content = pages['404.html'];
	}
	
	let res = new Response(content);
	res.headers.set("Content-Type", "text/html");

	return res
}
