/*
*
*/
public class ClassSOQL {
    

    public static void getDataSOQL(){

        for ( Account acc : [SELECT Id, Name, FirstName, LastName, RecordTypeId,  RecordType.DeveloperName, 
                (SELECT Id FROM Contacts), 
                (SELECT id FROM Opportunities) 
                    FROM Account]){
            System.debug('**acc:'+ acc);
            System.debug('**Contacts:'+ acc.Contacts);
            System.debug('**Opportunities:'+ acc.Opportunities);
        }

        for ( Account acc : [SELECT Id, Name, FirstName, LastName, RecordTypeId,  RecordType.DeveloperName, 
                (SELECT Id FROM Contacts), 
                (SELECT id FROM Opportunities) 
                    FROM Account]){
            System.debug('**acc:'+ acc);
            System.debug('**Contacts:'+ acc.Contacts);
            System.debug('**Opportunities:'+ acc.Opportunities);
        }

    }


}