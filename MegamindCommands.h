//
// Created by tales.luna on 22/09/17.
//

#ifndef MEGAMIND_COMMANDS_H
#define MEGAMIND_COMMANDS_H


char luminosityStr[10], temperatureStr[10];


// Default responses for unknown commands
String unknownResponses[5] = {
        "Eu não conheço esse comando",
        "Não fui programado para responder isso",
        "Não entendi",
        "Esse comando não tem registro",
        "Seja mais específico"
};

// About me (the code)
String whoami =
        "Sou só um código programado que executa alguns comando e usa serviços de inteligência artificial do google para falar. sou meros zeros e uns";


// Receive commands from serial port
String getCommand() {

    String command;

    while(Serial.available()) {
        command = Serial.readString();
    }

    return command;
}

/**
 * Send response via serial port in JSON format
 * @param response
 * @param positive
 */
void sendResponse(String response, bool positive) {

    String statusResponse = "false";

    if (positive ) {
        statusResponse = "true";
    }

    Serial.println("{\"status\": \"" + statusResponse + "\", \"message\": \"" + response  + "\"}");

}

// Loop serial commands
void loopCommands() {
    String command = getCommand();


    if (command == "") {

        // No do nothing...

    } else if(command == "hello") {

        // Send hello too
        sendResponse("Olá", true);

    } else if(command == "how_are_you") {

        // Send just this
        sendResponse("Não sou capaz de sentir, então posso dizer que estou bem.", true);

    } else if(command == "who_are_you") {

        // Send whoami text (about the code)
        sendResponse(whoami, true);

    } else if (command == "lights_on") {

        // Turn ON and send response
        onOffLights(HIGH);
        sendResponse("Luzes acesas", true);


    } else if (command == "lights_off") {

        // Turn OFF lights and send response
        onOffLights(LOW);
        sendResponse("Luzes apagadas", true);

    } else if (command == "info_temperature") {

        // Get temperature and send response
        dtostrf(getTemperature(), 4, 2, temperatureStr);
        sprintf(temperatureStr, "%s° C", temperatureStr);

        sendResponse(temperatureStr, true);

    } else if (command == "info_luminosity") {

        sprintf(luminosityStr, "%d", getLuminosity());
        sendResponse(luminosityStr, true);

    } else {

        sendResponse(unknownResponses[random(0, 4)], false);

    }

}


#endif //MEGAMIND_COMMANDS_H