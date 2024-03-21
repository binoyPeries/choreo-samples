import ballerina/http;

type Greeting record {
    string 'from;
    string to;
    string message;
};

service /'order on new http:Listener(8099) {
    resource function get .(string age) returns Greeting {
        Greeting greetingMessage = {"from": "Choreo v2 with order", "to": age, "message": "Welcome to Choreo!"};
        return greetingMessage;
    }
}
