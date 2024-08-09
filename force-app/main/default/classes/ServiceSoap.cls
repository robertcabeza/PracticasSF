/**
 * 
 * Service Demo Soap
 * 
 */
global with sharing  class ServiceSoap {

    webservice static List<AccountResult> getAccount(String accountId){
        List<AccountResult> listResult = new List<AccountResult>();
        for (Account iAcc : [Select Id, Name From Account Where Id = :accountId]) {
            AccountResult acc = new AccountResult();
            acc.id = iAcc.Id;
            acc.Name = iAcc.Name;
            listResult.add(acc);
        }
        return listResult;
       
    }
    
    global class AccountWrapper{
        webservice String accId {get;set;}
        
    }

    global class AccountResult {
      webservice String id {get; set;}
      webservice String Name {get; set;}
    }
   
   
}