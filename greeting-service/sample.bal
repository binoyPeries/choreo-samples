import ballerina/http;

type Greeting record {
    string 'from;
    string to;
    string message;
};

service /health on new http:Listener(8090) {
    resource function get .(string name, int age) returns Greeting {
        Greeting greetingMessage = {"from": "Choreo", "to": name, "message": age.toBalString()};
        return greetingMessage;
    }
}
