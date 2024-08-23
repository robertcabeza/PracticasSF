/**
 * 
 */
public class RecordTypeHelper {
    
    /**
    * @author           : Robert Cabeza 
    * @Descripcion      : get Id RecordType for DeveloperName 
    */
    // public static Id getAccountIdByDeveloperName(String developerName){
    //     return SObjectType.Account.getRecordTypeInfosByDeveloperName().get(developerName).getRecordTypeId();
    // }

    public static Id getAccountRecordTypeIdbyName(String objectName, String strRecordTypeName){
        //return  Schema.getGlobalDescribe().get(objectName).getDescribe().getRecordTypeInfosByName().get(strRecordTypeName).getRecordTypeId();
        return SObjectType.Account.getRecordTypeInfosByDeveloperName().get(strRecordTypeName).getRecordTypeId();
    }

    public static String getRecordTypeNameById(String objectName, Id strRecordTypeId){
        return Schema.getGlobalDescribe().get(objectName).getDescribe().getRecordTypeInfosById().get(strRecordTypeId).getName();
    }  

}