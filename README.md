#Electric Imp LED LIGHT

Created LEG light controlled useing Electic IMP device and REST.

## Overview
Skill Level: Beginner

Below are detailed steps on how to connect an Electric Imp with environmental sensors to the Watson IoT Platform in order to visualize and monitor your refrigerator in real time.

## Ingredients

 1. Your WIFI *network name* and *password*
 2. A computer with a web browser
 3. Smartphone with the Electric Imp app ([iOS](https://itunes.apple.com/us/app/electric-imp/id547133856) or [Android](https://play.google.com/store/apps/details?id=com.electricimp.electricimp))
 4. A free [Electric Imp developer account](https://ide.electricimp.com/login)
 5. An Electric Imp Explorer kit - purchase from [Amazon](https://www.amazon.com/dp/B01N47J61L/ref=cm_sw_r_cp_ep_dp_bzBwybD8TBQ36)
 6. Three AA batteries

## Step-by-step

### Step 1 - What is demonstrated in this example?
Use an Electric Imp to switch on/off light sensor and change the color of light using combination of RGB.  


### Step 2 - Connect your Electric Imp to the Internet

#### Set Up Hardware

1. Plug the Imp001 into the Explorer Kit Board
3. Power up your Imp with the AA batteries.

![Explorer Kit](http://i.imgur.com/6JssX74.png)

When the imp is first powered on it will blink amber/red.

#### Electric Imp BlinkUp

Use the Electric Imp mobile app to BlinkUp your device

1. In the app log into your Electric Imp developer account
2. Enter your WIFI credentials
3. Follow the instructions in the app to BlinkUp your device

When BlinkUp is successful the imp will blink green and the app will show you the device's unique ID.

<img src="http://i.imgur.com/rljkSnI.png" width="250">

For more information on BlinkUp visit the Electric Imp [Dev Center](https://electricimp.com/docs/gettingstarted/blinkup/).

### Step 3 - Connect your Electric Imp 

In your web browser log into the [Electric Imp IDE](https://ide.electricimp.com/login) using your Electric Imp developer account.

Click the **+** button to create a new model

![Empty IDE](http://i.imgur.com/Ui7w8eG.png)

In the pop-up enter the following information:

1. A name for your code model (ie LED Smart Light)
2. Select the checkbox next to your device ID, this assigns your device to this code model
3. Click **Create Model** button



Copy and paste the  code into the agent and device coding windows.  The agent.nut file should go in the agent coding window, the device.nut file in the device coding window.

![IDE code windows](http://i.imgur.com/yiCmQZu.png)



Click **Build and Run** to save and launch the code

![IDE with code](http://i.imgur.com/zlJaIaw.png)

