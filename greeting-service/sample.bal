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

service /health on new http:Listener(9099) {
    resource function get .() returns string {
        return "heatlh v1.2";
    }

}
