public with sharing class MyController {
   public Integer count {
     get {
       if(count == null) {
          count = 10;
       } else {
          count ++;
       }
       System.debug('PASO POR AQUI:::'+ count);
       return count;
     }
     private set;
    }

    public MyController(){
        if(count == null) {
           count = 20;
        }
         
    }    

    public void logCount(){
        System.debug('count:::'+ count);
    }
    
}