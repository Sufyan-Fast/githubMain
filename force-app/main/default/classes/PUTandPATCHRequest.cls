public class PUTandPATCHRequest {
    
     public static void updateUser(String Id)
    {
        HttpRequest req = HttpRequestUtil.createRequest('PATCH',EndpointManager.GOREST_USERS + '/' + Id);
        req.setBody(toJSON());
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
    
    public static String toJSON() {
        UserDetailsWrapper user = new UserDetailsWrapper();
        user.name = 'New Update User';
        user.email = 'tested1.user@gmail.com';
        user.gender = 'female';
        user.status = 'active';
        return JSON.serialize(user);
    }

}