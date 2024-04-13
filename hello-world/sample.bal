import ballerina/http;

service /hello2 on new http:Listener(8080) {
    resource function get greeting() returns string {
        return "Hello, World!";
    }
}
