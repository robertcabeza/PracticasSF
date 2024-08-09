/**
*/
public without sharing class GetAllAccounts {
  
  @AuraEnabled
  public static List<Account> getAccounts(String name){
    return [SELECT Id, Name, type, Rating, AnnualRevenue 
                FROM Account 
                    WHERE Name LIKE :'%'+ name + '%'];
  }

}