import ballerina/http;

type Greeting record {
    string 'from;
    string to;
    string message;
};

service /hello on new http:Listener(8099) {
    resource function get .(string name) returns Greeting {
        Greeting greetingMessage = {"from": "Choreo v1.2 with hello", "to": name, "message": "Welcome to Choreo!"};
        return greetingMessage;
    }
}
