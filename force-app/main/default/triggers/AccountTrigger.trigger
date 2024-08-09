/**
 * @Name AccountTrigger
 * @author Robert Cabeza    
 * @version 1.0
 * @since 1.0
 * @description 
 * 
 * 
*/
trigger AccountTrigger on Account (before insert) {

   if (Trigger.isBefore) {
      if(Trigger.isInsert){
         AccountTriggerHandler.CreateAccounts(Trigger.new);
      } else if(Trigger.isUpdate){
         //
      }
 	  
   }

}