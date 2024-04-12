public with sharing class TestFuture {

        @Future(callout=true)
        public static void getTimeByProvince(){

            HttpRequest req = new HttpRequest();
            req.setEndpoint('https://www.el-tiempo.net/api/json/v2/provincias/01');
            req.setMethod('GET');
            
            // Specify the required user name and password to access the endpoint
            // As well as the header and header information
       
            // String username = 'myname';
            // String password = 'mypwd';
            
            // Blob headerValue = Blob.valueOf(username + ':' + password);
            // String authorizationHeader = 'Basic ' +
            // EncodingUtil.base64Encode(headerValue);
            // req.setHeader('Authorization', authorizationHeader);
            
            // Create a new http object to send the request object
            // A response object is generated as a result of the request  
            
            Http http = new Http();
            HTTPResponse res = http.send(req);
            System.debug(res.getBody());

            string[] headerkeys = res.getHeaderKeys();

            //create an object to store your header key-value pairs
            Map<string, string> headers = new map<string, string>();
            
            //iterate through they keys, and populate your map
            for(string s : headerkeys){
               headers.put(s,res.getHeader(s));
               system.debug('header: ' + s + ' value: ' + res.getHeader(s));
            }

        }


}