public without sharing class AuraControllerDemo {
    @AuraEnabled
    public static String getNameUser(){
        String idUser = UserInfo.getUserId();
        User userDetail = [SELECT Name FROM User WHERE Id=:idUser];
        return userDetail.Name;
    }
}