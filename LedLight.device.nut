// Import Electric Imp’s WS2812 library
#require "WS2812.class.nut:2.0.2"

// Set up global variables
spi <- null;
led <- null;

// Define the loop flash function
function setLedState(state) {
    local color = state ? [255,0,0] : [0,0,0];
    led.set(0, color).draw();
}
function setColor(colors) {
    local state=colors.state;
    local color = state?[colors.r.tointeger(),colors.g.tointeger(),colors.b.tointeger()]:[0,0,0] ;
    led.set(0, color).draw();
}

// Set up the SPI bus the RGB LED connects to
spi = hardware.spi257;
spi.configure(MSB_FIRST, 7500);
hardware.pin1.configure(DIGITAL_OUT, 1);

// Set up the RGB LED
led = WS2812(spi, 2);

// Register a handler function for incoming "set.led" messages from the agent
//agent.on("set.led", setLedState);
agent.on("set.color",setColor);