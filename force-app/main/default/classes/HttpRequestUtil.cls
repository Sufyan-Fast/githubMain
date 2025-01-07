public class HttpRequestUtil {
    
     public static HttpRequest createRequest(String requestType, String endpoint) {
        HttpRequest req = new HttpRequest();
        req.setEndpoint(endpoint);
        req.setMethod(requestType);
        req.setHeader('Accept', 'application/json');
        req.setHeader('Content-Type', 'application/json');
        req.setHeader('Authorization', 'Bearer ' + AuthConstants.GOREST_ACCESS_TOKEN);
        return req;
    }

}