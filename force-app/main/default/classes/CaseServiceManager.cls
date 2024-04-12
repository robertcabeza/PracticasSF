/**
 * @Name CaseServiceManager
 * @author Robert Cabeza    
 * @version 1.0
 * @since 1.0
 * @description 
 * 
 * 
*/
@RestResource(urlMapping='/Cases/*')
global class CaseServiceManager {
   
    /**
     * Metodo que devuelve caso por Id /Id o todos los caso si no se le indica nada 
     *  
    */
    @HttpGet
    global static List<Case> getCases() {
        RestRequest request = RestContext.request;
        // grab the caseId from the end of the URL
        String caseId = request.requestURI.substring(request.requestURI.lastIndexOf('/')+1);
        if (String.isBlank(caseId)){
            return [SELECT CaseNumber,Subject,Status,Origin,Priority FROM Case];
        } else {
            return [SELECT CaseNumber,Subject,Status,Origin,Priority FROM Case  WHERE Id = :caseId];
        }
        
    }
    /**
     *  
     * 
     */
    @HttpPost
    global static Case createCase(String subject, String status,
        String origin, String priority) {
        Case thisCase = new Case(
            Subject=subject,
            Status=status,
            Origin=origin,
            Priority=priority);
        insert thisCase;
        return thisCase;
    }  
    /**
     *  
     * 
     */ 
    @HttpDelete
    global static ResponseData deleteCase() {
        ResponseData response = new ResponseData();

        try {
            RestRequest request = RestContext.request;
            String caseId = request.requestURI.substring( request.requestURI.lastIndexOf('/')+1);
            List<Case> thisCase = new  List<Case>([SELECT Id FROM Case WHERE Id = :caseId]);
            if(!thisCase.isEmpty()){
                delete thisCase;
                response.codigo = '0000';
                response.mensaje = 'OK';
            } else {
                response.codigo = '0000';
                response.mensaje = 'No existe Datos';
            }
        } catch (Exception ex){
            response.codigo = '9999';
            response.mensaje = ex.getMessage();
        }
        
        return response;
    }     
    @HttpPut
    global static Case upsertCase(String Subject, String Status,  String Origin, String Priority, String Id) {
        Case thisCase = new Case(
                Id=Id,
                Subject=Subject,
                Status=Status,
                Origin=Origin,
                Priority=Priority);
        upsert thisCase;
        return thisCase;
    }
    /*@HttpPatch
    global static ID updateCaseFields() {
        RestRequest request = RestContext.request;
        String caseId = request.requestURI.substring(
            request.requestURI.lastIndexOf('/')+1);
        Case thisCase = [SELECT Id FROM Case WHERE Id = :caseId];
        // Deserialize the JSON string into name-value pairs
        Map<String, Object> params = (Map<String, Object>)JSON.deserializeUntyped(request.requestbody.tostring());
        // Iterate through each parameter field and value
        for(String fieldName : params.keySet()) {
            // Set the field and value on the Case sObject
            thisCase.put(fieldName, params.get(fieldName));
        }
        update thisCase;
        return thisCase.Id;
    }    */


    global class ResponseData {
       
        private string codigo {get; set;}
        private string mensaje {get; set;}
        
    }
}