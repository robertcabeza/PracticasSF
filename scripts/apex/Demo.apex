// Use .apex files to store anonymous Apex.
// You can execute anonymous Apex in VS Code by selecting the
//     apex text and running the command:
//     SFDX: Execute Anonymous Apex with Currently Selected Text
// You can also execute the entire file by running the command:
//     SFDX: Execute Anonymous Apex with Editor Contents

// string tempvar = 'Enter_your_name_here';
// System.debug('Hello World!');
// System.debug('My name is ' + tempvar);
// TimeZoneServiceConsumer.createAccount('Name 001', 'Name 002');
// TimeZoneServiceConsumer.getTimeZone('Amsterdam');

// ID jobID = System.enqueueJob(new AsyncExecutionExample());
// System.debug('jobID:' + jobID);



// Id rtId = [SELECT Id FROM RecordType WHERE IsPersonType = FALSE AND SObjectType='Account' LIMIT 1].Id;
// Account a = new Account(RecordTypeId=rtId);
// a.FirstName = 'Test';
// a.LastName = 'Test';
// insert a;

// Id PersonAccount = SObjectType.Account.getRecordTypeInfosByDeveloperName().get('PersonAccount').getRecordTypeId();
// System.debug('PersonAccount:' + PersonAccount);

// Id BussinesAccount = SObjectType.Account.getRecordTypeInfosByDeveloperName().get('BussinesAccount').getRecordTypeId();
// System.debug('BussinesAccount:' + BussinesAccount);

// Id devRecordTypeId = Schema.getGlobalDescribe().get('Case').getDescribe().getRecordTypeInfosByName().get('Billing').getRecordTypeId();
// System.debug('devRecordTypeId:' + devRecordTypeId);

// Id devRecordTypeId = RecordTypeHelper.getAccountRecordTypeIdbyName('Account', 'PersonAccount');
// System.debug('devRecordTypeId:' + devRecordTypeId);

System.debug('*******LIMIT BEFORE::::'+ System.Limits.getLimitQueries());
System.debug('*******LIMIT BEFORE::::'+ System.Limits.getQueries());
ClassSOQL.getDataSOQL();
System.debug('*******LIMIT BEFORE::::'+ System.Limits.getLimitQueries());
System.debug('*******LIMIT AFTER::::'+ System.Limits.getQueries());

