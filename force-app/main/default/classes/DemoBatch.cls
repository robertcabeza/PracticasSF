global class DemoBatch implements Schedulable, Database.Batchable<sObject>, Database.AllowsCallouts, Database.Stateful {
    
    public String query{get;set;}
    public Boolean processActive{get;set;}
    public Integer batchSize{get;set;}

    public DemoBatch() {
        this.query = 'SELECT Id FROM Account';//Label
        this.processActive = true;
        this.batchSize = 100;
    }

    global  Database.querylocator start(Database.BatchableContext bc){
        return Database.getQueryLocator(query);
    }

    global void execute(Database.BatchableContext BC, List<SObject> scope) {
        List<Account> lAccount =  (List<Account>) scope;
        Savepoint sp = Database.setSavepoint();
    }

    global void execute(SchedulableContext scon) {
        Database.executeBatch(new DemoBatch(), batchSize);
    }
    global void finish(Database.BatchableContext BC){

    }
}