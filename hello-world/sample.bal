import ballerina/http;

service / on new http:Listener(8999) {
    resource function get greeting() returns string {
        return "Hello, World!";
    }
}

service / on new http:Listener(8099) {
    resource function get health() returns string {
        return "Health check!";
    }
}

