public with sharing class AccountUtility {

    public static void viewAnnualRevenue(){
        List<Account> accountsList = [SELECT Name, AnnualRevenue FROM Account ];

        String acctRev = '';
        
        for (Account acc : accountsList){
            acctRev = acc.Name + ':' + acc.AnnualRevenue;
            System.debug(acctRev);
        }
        
    }
}