import ballerina/http;

service /hello on new http:Listener(809) {
    resource function get greeting() returns string {
        return "Hello, World!"
    }
}
