public class POSTRequest {
    
    public static void CreateUser()
    {
        HttpRequest req = HttpRequestUtil.createRequest('POST',EndpointManager.GOREST_USERS);
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
        user.name = 'Created User';
        user.gender = 'male';
        user.email = 'tested.user@gmail.com';
        user.status = 'active';
        return JSON.serialize(user);
    }

}