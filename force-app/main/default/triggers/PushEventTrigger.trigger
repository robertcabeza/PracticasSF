trigger PushEventTrigger on X911_Push_Event__e (after insert) {

    Boolean isAsyn =  Limits.getLimitQueries() == 200 ? true : false; 
    System.debug('is isAsyn ? '+ isAsyn);
    System.debug('How many SOSL Statamet can we make ? '+ Limits.getLimitQueries());
    System.debug('who is runner user ? '+ UserInfo.getUserId());
}