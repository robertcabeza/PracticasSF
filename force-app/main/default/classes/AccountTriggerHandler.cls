public class AccountTriggerHandler{
   public static void CreateAccounts(List<Account> acclist){
        for(Account a:acclist){
            System.debug('a External_Id__c:::' + a.External_Id__c);
            if(a.ShippingState!=a.BillingState){
                a.ShippingState = a.BillingState; // you need to update ShippingState
            }
        }
    }
}