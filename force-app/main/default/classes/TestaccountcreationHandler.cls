@isTest
private class TestaccountcreationHandler{

	@testSetup static void setup(){

		Opportunity opportunityObj = new Opportunity (
			//AccountId = 'Here is reference id', 
			Name = 'test value', 
			StageName ='Prospecting', 
			CloseDate = Date.today()
		);
		insert opportunityObj;
		 
	}

	@isTest static void testMethod1() {
		// code_block	
	}

	@isTest static void testMethod2() {
		// code_block	
	}
}