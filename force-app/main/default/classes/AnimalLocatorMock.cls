@isTest
global class AnimalLocatorMock implements HttpCalloutMock {
    // Implement this interface method
    global HttpResponse respond(HttpRequest request) {
        // Create a fake response
        HttpResponse response = new HttpResponse();
        response.setHeader('Content-Type', 'application/json');
        response.setBody('{"animal": {"id":1, "name":"moose","eats":"plants","says":"bellows"}}');
        response.setStatusCode(200);
        return response; 
    }
}

