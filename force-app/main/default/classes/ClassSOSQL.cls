/**
 * 
 * 
 * 
 */
public class ClassSOSQL {
   
    public static void getDataSOSL(){

        List<Account> lAccount = new List<Account>();
        List<Contact> lContact = new List<Contact>();
        List<Lead> lLead = new List<Lead>();

        String Name = 'Robert Cabeza';
        List<List<sObject>> searchList = [FIND :Name IN ALL FIELDS RETURNING Account(Id, Name) ,Contact(Id, Name), Lead(Id, Name)];
        
        if(!searchList.isEmpty()){
            for (List<sObject> lObjects : searchList) {
                System.debug('*************************TYPE'+ lObjects.getSObjectType() ); 
                if(lObjects.getSObjectType().toString() =='Account'){
                    lAccount = (List<Account>)lObjects;
                } else if(lObjects.getSObjectType().toString() =='Lead'){
                    lLead = (List<Lead>)lObjects;
                } else if(lObjects.getSObjectType().toString() =='Contact'){
                   lContact = (List<Contact>)lObjects;
                }
                
            }
        }
        System.debug('*************************LIST ACC::'+ lAccount ); 
        System.debug('*************************LIST CONTACT::'+lContact ); 
        System.debug('*************************LIST LEAD::'+ lLead); 
        /*Account[] searchAccounts = (Account[])searchList[0];
        Contact[] searchContacts = (Contact[])searchList[1];
        System.debug('Found the following accounts.');
        for (Account a : searchAccounts) {
            System.debug(a.Name);
        }
        System.debug('Found the following contacts.');
        for (Contact c : searchContacts) {
            System.debug(c.LastName + ', ' + c.FirstName);
        }*/

    }
    
}