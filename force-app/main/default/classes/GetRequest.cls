public class GetRequest {
    
    public static void getUsersList()
    {
        HttpRequest req = HttpRequestUtil.createRequest('GET',EndpointManager.GOREST_USERS);
        Http http = new Http();
        HttpResponse res;
        try {
            res = http.send(req);
            // Handle the response
            System.debug('Response: ' + res.getBody());
        } catch (System.CalloutException e) {
            // Handle exceptions
            System.debug('Callout error: ' + e);
        }
    }
    
    public static void getUsersWithId(String Id)
    {
        HttpRequest req = HttpRequestUtil.createRequest('GET',EndpointManager.GOREST_USERS + '/' + Id);
        Http http = new Http();
        HttpResponse res;
        try {
            res = http.send(req);
            // Handle the response
            System.debug('Response: ' + res.getBody());
        } catch (System.CalloutException e) {
            // Handle exceptions
            System.debug('Callout error: ' + e);
        }
    }

}