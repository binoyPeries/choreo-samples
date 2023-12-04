import ballerina/http;

type Greeting record {
    string 'from;
    string to;
    string title;
    string message;
};

configurable string title = "Hello World";
configurable string message = ?;

service / on new http:Listener(8090) {
    resource function get .(string name) returns Greeting {
        Greeting greetingMessage = {"from": "Choreo", "to": name, "title": title, "message": message};
        return greetingMessage;
    }
}
