public with sharing class TimeZoneServiceConsumer {
   
    //TimeZoneWS.getTimeZone('Amsterdam')

    public static void createAccount(String name, String extenal){
        Account acc = new Account();
        acc.Name = name;
        acc.External_Id__c = extenal;
        insert acc;
    }

    @Future(callout=true)
    public static void getTimeZone(String city){

        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://timeapi.io/api/Time/current/zone?timeZone=Europe/'+ city);
        request.setMethod('GET');
        HttpResponse response = http.send(request);
        Map<String, Object> results = new Map<String, Object>(); 
        try {
            if (response.getStatusCode() == 200) {
                results = (Map<String, Object>) JSON.deserializeUntyped(response.getBody());
                System.debug('strResp >>>>>>' + results );
            }
        } catch (Exception  ex) {
            System.debug(ex.getMessage());
        }  
              
        //return null ;
   }
}