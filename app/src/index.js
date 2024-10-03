var os = require('os')
var http = require('http')
var dotenv = require('dotenv')

const envFile = `.env.${process.env.NODE_ENV || '.env'}`;
dotenv.config({ path: envFile });

function handleRequest(req, res) {
  res.write(`Hi there! I\'m being served from  ${os.hostname()}  Environment: ${process.env.NODE_ENV} Message: ${process.env.MESSAGE}`)
  res.end()
}

const server = http.createServer(handleRequest).listen(process.env.PORT||3000)

process.on("SIGTERM", () => {
  console.debug("SIGTERM signal received: closing HTTP server");
  server.close(() => {
    console.debug("HTTP server closed");
  });
});
