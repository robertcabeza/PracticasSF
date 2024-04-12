public with sharing class SyncExecutionService {
     
    public static  Map<String,Object> getTimeByProvinceService(){
        HttpRequest req = new HttpRequest();
        req.setEndpoint('https://www.el-tiempo.net/api/json/v2/provincias/01');
        req.setMethod('GET');
        
        Http http = new Http();
        HTTPResponse res = http.send(req);
       // System.debug(res.getBody());
        
        Map<String,Object> rawObj = (Map<String,Object>) JSON.deserializeUntyped(res.getBody());

        for (String variable : rawObj.keySet()) {
            System.debug('*******************');
            System.debug(rawObj.get(variable));
        }

        
        string[] headerkeys = res.getHeaderKeys();
        //create an object to store your header key-value pairs
        Map<string, string> headers = new map<string, string>();
        //iterate through they keys, and populate your map
        for(string s : headerkeys){
           headers.put(s,res.getHeader(s));
           system.debug('header: ' + s + ' value: ' + res.getHeader(s));
        }
        return rawObj;
    }


    public static void getClimate(){
        getTimeByProvinceService();
    }

}