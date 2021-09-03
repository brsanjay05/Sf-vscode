public with sharing class ContactsController {
  public class CustomException extends Exception {
  }
  @AuraEnabled(Cacheable=true)
  public static List<Contact> getContacts() {
    List<Contact> contacts = [
      SELECT Id, Name, Email, CreatedDate
      FROM Contact
      ORDER BY CreatedDate DESC
    ];

    return (contacts);
  }

  @AuraEnabled
  public static Contact saveContact(Contact cont) {
    insert (cont);

    return (cont);
  }
}