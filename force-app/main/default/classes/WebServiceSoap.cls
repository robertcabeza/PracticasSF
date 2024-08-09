/**
 * 
 * */

global class WebServiceSoap {
    webservice static Account getAccount(String Id){
        return [SELECT Id FROM Account WHERE Id=:Id];
    }
}