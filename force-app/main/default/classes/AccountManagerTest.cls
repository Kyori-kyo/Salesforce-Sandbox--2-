@isTest
private class AccountManagerTest {

    @isTest
    static void testGetAccount() {
        Account a = new Account(Name='TestAccount');
        insert a;

        Contact c = new Contact(AccountId=a.Id, FirstName='Test', LastName='Test');
        insert c;

        RestRequest request = new RestRequest();
        request.requestURI = 'https://yourInstance.salesforce.com/services/apexrest//Accounts/'+a.id+'/contacts';
        request.httpMethod = 'GET';
        RestContext.request = request;

        Account myAcct = AccountManager.getAccount();
        //verify results
        System.assert(myAcct != null);
        System.assertEquals('TestAccount', myAcct.Name);
    }
}