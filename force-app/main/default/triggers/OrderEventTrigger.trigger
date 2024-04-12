trigger OrderEventTrigger on Order_Event__e (after insert) {
   /* if (trigger.isAfter && trigger.isInsert){
        OrderEventTriggerHandler.orderTaskEvent(trigger.new);
    }*/
    new OrderEventTriggerHandler().run();

}