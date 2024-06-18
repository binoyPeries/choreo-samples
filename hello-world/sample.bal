import ballerina/http;

service / on new http:Listener(8999) {
    resource function get greeting() returns string {
        return "Hello, World!";
    }
}

service /hz on new http:Listener(8099) {
    resource function get check() returns string {
        return "Health check!";
    }
}

