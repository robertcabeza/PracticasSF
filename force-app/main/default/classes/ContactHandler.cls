/**
 *  
 */
public without sharing class ContactHandler {
   
    public static List<Contact> tiggerNew;
    public static List<Contact> tiggerOld;
    public static Map<Id, Contact> newMap;
    public static Map<Id, Contact> oldMap;

    //detectar si la cuenta cambio el contacto(s)
    //tengo que buscar la direccion(es) de la(s) nueva cuenta(s)
    //actualizar la direccion en el contacto(s)

    private static Map<Id, Account> accountMap = new Map<Id,Account>();
    private static List<Contact> contactWhithNewAccount = new List<Contact>();


    public static Boolean hasAddressChange(){
        Set<Id> accountIds = new Set<Id>();

        for (Contact thisContact :tiggerNew){
            if(thisContact.AccountId != oldMap.get(thisContact.id).AccountId
                && thisContact.AccountId != null ){
                contactWhithNewAccount.add(thisContact);
                accountIds.add(thisContact.AccountId);
            }
        }

        if(!accountIds.isEmpty()){
            fetchAccounts(accountIds);
        }

        if(!contactWhithNewAccount.isEmpty()){
            return true;
        } 
        
        return false;      
    }
    public static void fetchAccounts(Set<Id> accountIds){   
        accountMap = new Map<Id,Account>([SELECT Id, BillingStreet ,BillingAddress, BillingCity, BillingState, BillingPostalCode, BillingCountry 
                                            FROM Account
                                                WHERE id IN: accountIds]);

    }

    public static void setAddress(){
        for (Contact thisContact : contactWhithNewAccount) {
            if(accountMap.containsKey(thisContact.AccountId)){
                Account thisAccount = accountMap.get(thisContact.AccountId);
                thisContact.MailingCity = thisAccount.BillingCity;
                thisContact.MailingStreet = thisAccount.BillingStreet;
                thisContact.MailingState = thisAccount.BillingState;
                thisContact.MailingCountry = thisAccount.BillingCountry;
                thisContact.MailingPostalCode = thisAccount.BillingPostalCode;
            }
        }
    }

}