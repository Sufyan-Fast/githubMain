public class DeleteRequest {
    
     public static void deleteUser(String Id)
    {
        HttpRequest req = HttpRequestUtil.createRequest('DELETE',EndpointManager.GOREST_USERS + '/' + Id);
        Http http = new Http();
        HttpResponse res;
        try {
            res = http.send(req);
            System.debug('Response: ' + res.getBody());
        } catch (System.CalloutException e) {
            // hanndle the response here and there also
            System.debug('Callout error: ' + e);
        }
    }

}