/**
 * 
 * 
 * 
 * 
 */
public class AsyncExecutionExample implements Queueable {
    public void execute(QueueableContext context) {
        Account a = new Account(Name='Acme', FirstName ='FirstName', LastName='LastName', Phone='(415) 555-1212');
        insert a;        
    }
}