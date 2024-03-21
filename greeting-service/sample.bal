import ballerina/http;

type Greeting record {
    string 'from;
    string to;
    string message;
};

service / on new http:Listener(8092) {
    resource function get .(string name) returns Greeting {
        Greeting greetingMessage = {"from": "Choreo v1.2", "to": name, "message": "Welcome to Choreo!"};
        return greetingMessage;
    }
}
