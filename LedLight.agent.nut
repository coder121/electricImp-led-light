
#THE AGENT CODE

server.log("Turn LED On: " + http.agenturl() + "?led=1&&r=<NUMBER>&g=<NUMBER>&b=<NUMBER>");
server.log("Turn LED Off: " + http.agenturl() + "?led=0&r=<NUMBER>&g=<NUMBER>&b=<NUMBER>");

function requestHandler(request, response) {
    try {
        // Check if the user sent led as a query parameter
        local table=request.body;
         //server.log(request.query.b)
        if ("led" in request.query) {
            // If they did, and led=1.. set our variable to 1
            if (request.query.led == "1" || request.query.led == "0") {
                // Convert the led query parameter to an integer
                 local r=request.query.r;
                 local g=request.query.g;
                 local b=request.query.b;
                 
               server.log("r,g,b:"+r+","+g+","+b);
                //server.log(request.query.led);
                local ledState = (request.query.led == "0") ?  false:true;
                local colorTable={"r":r,"g":g,"b":b,"state":ledState};
                 //server.log("LedState:"+ledState);
                // Send "set.led" message to device, and send ledState as the data
                //device.send("set.led", ledState); 
                device.send("set.color",colorTable);
            }
        }
    
        // Send a response back to the browser saying everything was OK.
        response.send(200, "OK");
    } catch (ex) {
        response.send(500, "Internal Server Error: " + ex);
    }
}

// Register the HTTP handler to begin watching for HTTP requests from your browser
http.onrequest(requestHandler);