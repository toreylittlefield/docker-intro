import * as http from 'http'

http
  .createServer(function(request, response) {
    console.log("request received", request);
    response.end("omg hi", "utf-8");
  })
  .listen(3000);
console.log("server started");