// client side access uses -> with sharing
public with sharing class ContactController {
	@AuraEnabled
    // the type is Salesforce Object Contact
    public static List<Contact> findAll(){
        return [select id, name, phone from Contact LIMIT 50];
    }
    
    @AuraEnabled
    public static List<Contact> findByName(String searchKey){
        // search with wild characters
        String name = '%'+ searchKey + '%';
        return [select id, name, phone from Contact where name LIKE:name LIMIT 50];
    }
    
    @AuraEnabled
    public static Contact findById(String contactId){
        return [select id, name, title, phone, mobilePhone, Account.Name from Contact where id=:contactId];
    }
}