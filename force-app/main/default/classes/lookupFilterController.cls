public class lookupFilterController {
    
    @AuraEnabled(cacheable=true)
    public static List<Contact> searchContacts(String AccountId, String searchTerm) {
        return [
            SELECT Id
            FROM Contact
            WHERE AccountId = :AccountId
            AND Name LIKE :('%' + searchTerm + '%')
            LIMIT 10
        ];
    }

    @AuraEnabled(cacheable=true)
    public static List<Contact> getFilteredContacts(Id accountId, String searchTerm) {
        List<Contact> contacts = [
            SELECT Id, Name, Email
            FROM Contact
            WHERE AccountId = :accountId
            AND Email LIKE :('%' + searchTerm + '%')
            ORDER BY Email ASC
            LIMIT 10
        ];

        return contacts;
    }

}