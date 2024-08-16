public class TimeZoneWS {


    //TimeZoneWS.getTimeZone('Amsterdam')

    public static void createAccount(){
        Account acc = new Account();
        acc.Name ='Name 001';
        acc.External_Id__c ='Name 001';
        insert acc;
    }

    public static String getTimeZone(String city){

        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://timeapi.io/api/Time/current/zone?timeZone=Europe/'+ city);
        request.setMethod('GET');
        HttpResponse response = http.send(request);
          String strResp = '';
           system.debug('******response '+response.getStatusCode());
           system.debug('******response '+response.getBody());
        // If the request is successful, parse the JSON response.
        if (response.getStatusCode() == 200) 
        {
         // Deserializes the JSON string into collections of primitive data types.
           Map<String, Object> results = (Map<String, Object>) JSON.deserializeUntyped(response.getBody());
            // Cast the values in the 'animals' key as a list
           //Map<string,object> animals = (map<string,object>) results.get('animal');
           // System.debug('Received the following animals:' + animals );
            //strResp = string.valueof(animals.get('name'));
            //System.debug('strResp >>>>>>' + strResp );
            System.debug('strResp >>>>>>' + results );
        }
        return strResp ;
   }
}