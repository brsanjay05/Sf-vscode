public with sharing class GuidedDetailscntr {
    @AuraEnabled(cacheable=true)
        public static List<User> getUser() {
            return [
                SELECT Name, UserRole.Name 
                FROM User
                WHERE userRole.Name = 'guides'
                WITH SECURITY_ENFORCED
                ORDER BY Name
            ];
        }
    }
