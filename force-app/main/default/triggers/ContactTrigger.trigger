/**
 * 
 */
trigger ContactTrigger on Contact (before update) {
    
    ContactHandler.tiggerNew = Trigger.new;
    ContactHandler.tiggerOld = Trigger.old;
    ContactHandler.newMap = Trigger.newMap;
    ContactHandler.oldMap = Trigger.oldMap;

    switch on Trigger.OperationType {
        when BEFORE_UPDATE {
            if(ContactHandler.hasAddressChange()){
                ContactHandler.setAddress();
            }
        }
    }



}