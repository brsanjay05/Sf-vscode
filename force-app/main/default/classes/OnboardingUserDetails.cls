public without sharing class OnboardingUserDetails {
    
    /** Return's list of Mentees whose onboarding is ongoing **/
    @AuraEnabled 
    public static List<UserWrapper> getMenteeUsers(){
        List<UserWrapper> menteeUserWrappers = new List<UserWrapper>();
        List<User> menteeUsers =  [SELECT FirstName,LastName,FullPhotoUrl,On_boarding_End_Date__c,
                                   (SELECT Id, Functional_Role__r.Name FROM User_functional_role_junctions__r)
                                   FROM USER WHERE ManagerId = :UserInfo.getUserId() AND 
                                   On_boarding_End_Date__c >= :System.today() AND Onboarding_Completed__c = false];
        for(User menteeUser : menteeUsers){
            Integer daysLeft = System.today().daysBetween(menteeUser.On_boarding_End_Date__c); 
            menteeUserWrappers.add(new UserWrapper(menteeUser,daysLeft));
        }
        return menteeUserWrappers;
    }
}