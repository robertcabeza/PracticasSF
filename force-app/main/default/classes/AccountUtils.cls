public class AccountUtils {

      public static List<Account> accountsByState(String str){
        List<Account> acclst  = new List<Account>([SELECT Id, Name  FROM  Account WHERE BillingState =: str ]);
        return acclst;

      }

}