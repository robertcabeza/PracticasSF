@isTest
public class SyncExecutionServiceTest {
   
    @TestSetup
    static void makeData(){
        
    }

    @isTest
    public static void testService(){
        Test.setMock(HttpCalloutMock.class, new ServiceMockTest());
        SyncExecutionService.getClimate();
    }

   
}