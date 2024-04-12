public class TestDataAccountVisualForce {

    public String parentId {get;set;}
    public AcccountWrapper accountWrapper {get;set;}
    public List<Account> lacctWrapper {get;set;}


    public TestDataAccountVisualForce(ApexPages.StandardController controller) {
        parentId = controller.getId();
        System.debug('parentId::::'+parentId);        
        //Account acc = [SELECT Id , Name FROM Account /*WHERE Id =:parentId LIMIT 1*/];
        lacctWrapper = new List<Account>([SELECT Id , Name FROM Account /*WHERE Id =:parentId LIMIT 1*/]);
       /* System.debug('acc::::'+acc);
        
        accountWrapper = new AcccountWrapper();       
        accountWrapper.name = acc.Name;*/
        
        // lacctWrapper = new List<Account>();
        // lacctWrapper.add(acc);

    }
    public String[] getStrings() {
        return new String[]{'ONE','TWO','THREE'};
    }

    /**
    * @author           : Robert Cabeza <robe
    * @Descripcion      :
    */
    public class AcccountWrapper {
        // public AssetWrapper(){}

        public string name {get;set;}
    
    
    }
}