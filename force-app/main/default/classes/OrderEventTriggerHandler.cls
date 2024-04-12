public class OrderEventTriggerHandler extends TriggerHandler {
    // private static final Logger LOG = Logger.getLogger(OrderEventTriggerHandler);

    public override void beforeInsert(){
        List<Order_Event__e> olistEvent = trigger.new;
        
        List<Task> lTaskInsert = new List<Task>();
        for (Order_Event__e event : olistEvent) {
            if (event.Has_Shipped__c == true){
                Task task = new Task();
                task.Priority = 'Medium';
                task.Subject  = 'Follow up on shipped order 105';
                task.OwnerId  = event.CreatedById;
                lTaskInsert.add(task);
            }
        }
        if(!lTaskInsert.isEmpty()) {
            insert lTaskInsert;
        }
    }
   /* public static void orderTaskEvent(List<Order_Event__e> olistEvent) {
        if (!olistEvent.isEmpty()) {
            List<Task> lTaskInsert = new List<Task>();
            for (Order_Event__e event : olistEvent) {
                if (event.Has_Shipped__c == true){

                    Task task = new Task();
                    task.Priority = 'Medium';
                    task.Subject  = 'Follow up on shipped order 105';
                    task.OwnerId  = event.CreatedById;
                    lTaskInsert.add(task);

                }
            }
            if(!lTaskInsert.isEmpty()) {
                insert lTaskInsert;
            }
        }
    }*/
}