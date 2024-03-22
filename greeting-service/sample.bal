import ballerina/http;

type Greeting record {
    string 'from;
    string to;
    string message;
};

service / on new http:Listener(8090) {
    resource function get .(string name) returns Greeting {
        Greeting greetingMessage = {"from": "Choreo", "to": name, "message": "Welcome to Choreo!"};
        return greetingMessage;
    }
}

service /hz on new http:Listener(8091) {
    resource function get .(string name) returns Greeting {
        Greeting greetingMessage = {"from": "health", "to": name, "message": "Welcome to Choreo!"};
        return greetingMessage;
    }
}
