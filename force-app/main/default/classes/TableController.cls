public with sharing class TableController {
	@AuraEnabled(cacheable=true)
	public static List<Account> getAccounts() {
		try {
			return [SELECT Id, Name, AnnualRevenue, Industry, Phone FROM Account LIMIT 10];
		} catch (Exception e) {
			throw new AuraHandledException(e.getMessage());
		}
	}
}
