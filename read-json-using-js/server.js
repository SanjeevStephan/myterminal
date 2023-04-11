// Import the Node.js http, fs, and path modules
const http = require('http');
const fs = require('fs');
const path = require('path');

// Create a Node.js http server that listens for incoming requests
const server = http.createServer((req, res) => {
  // Get the requested file path from the request URL
  let filePath = '.' + req.url;
  
  // If the file path is just '/', default to serving index.html
  if (filePath === './') {
    filePath = './index.html';
  }

  // Determine the file extension based on the file path
  const extname = String(path.extname(filePath)).toLowerCase();
  
  // Define a map of MIME types for different file extensions
  const mimeTypes = {
    '.html': 'text/html',
    '.js': 'text/javascript',
    '.css': 'text/css',
    '.json': 'application/json',
    '.png': 'image/png',
    '.jpg': 'image/jpg',
    '.gif': 'image/gif',
    '.svg': 'image/svg+xml',
    '.wav': 'audio/wav',
    '.mp4': 'video/mp4',
    '.woff': 'application/font-woff',
    '.ttf': 'application/font-ttf',
    '.eot': 'application/vnd.ms-fontobject',
    '.otf': 'application/font-otf',
    '.wasm': 'application/wasm'
  };

  // Look up the MIME type for the file extension, or default to 'application/octet-stream'
  const contentType = mimeTypes[extname] || 'application/octet-stream';

  // Read the file content from the file system
  fs.readFile(filePath, (err, content) => {
    if (err) {
      // If the file is not found, serve a custom 404 page
      if (err.code == 'ENOENT') {
        fs.readFile('./404.html', (err, content) => {
          res.writeHead(404, { 'Content-Type': 'text/html' });
          res.end(content, 'utf-8');
        });
      } else {
        // If there is a server error, send a 500 response
        res.writeHead(500);
        res.end('Sorry, check with the site admin for error: ' + err.code + ' ..\n');
      }
    } else {
      // If the file is found, serve it with the appropriate MIME type
      res.writeHead(200, { 'Content-Type': contentType });
      res.end(content, 'utf-8');
    }
  });
});

// Set the server port to the environment variable PORT, or default to 3000
const PORT = process.env.PORT || 3000;

// Start the server listening on the configured port
server.listen(PORT, () => console.log(`Server running on port ${PORT}`));

