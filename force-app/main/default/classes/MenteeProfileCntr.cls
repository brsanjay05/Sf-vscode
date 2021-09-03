public with sharing class MenteeProfileCntr {
    
    @AuraEnabled
    public static Map<String,Object> getMenteeDetailAndAssignmentInfo(){
        Map<String,Object> returnData = new Map<String,Object>();
        List<String> fields_UURJ = new List<String>(); 
        fields_UURJ.add('Functional_Role__c');
        List<String> fields_UR = new List<String>();
        fields_UR.add('Name');        
               List<User> menteeUsers = [SELECT Id,FirstName,LastName,FullPhotoUrl,MobilePhone,Email,Energizers__c,Medals__c,
                                         Joining_Date__c,On_boarding_End_Date__c,
                                         (SELECT Id, Functional_Role__r.Name FROM User_Functional_Role_junctions__r)
                                         FROM User WHERE Id = : UserInfo.getUserId() LIMIT 1];
               if(menteeUsers.size()>0)
                   returnData.put('MENTEE_INFO',menteeUsers.get(0)); 
               MentorProfileCntr.MenteeAssignmentInfo menteeAssignmentInfo = MentorProfileCntr.getMenteeAssignmentInformation(UserInfo.getUserId());
            returnData.put('ASSIGNMENT_INFO',menteeAssignmentInfo);

        return returnData;
    }
} 
public static List<User> getEmployeeAndMentorDetails(){
    List<String> fields_FR = new List<String>(); 
    fields_FR.add('Functional_Role__c');
    List<String> fields_UR = new List<String>();
    fields_UR.add('Name');        
    List<User> ufr = [SELECT Id,Name, FirstName,LastName,MobilePhone,Email,
                        (SELECT Id,Role__c FROM User_functional_role_junction__c)
                       FROM User];
            return ufr;       
    return new List<User>();
}
