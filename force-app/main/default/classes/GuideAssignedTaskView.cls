public class GuideAssignedTaskView {
  List<User_Assigned_Task__c> task() { 
        return( [SELECT Name, Assigned_To__c, Assigning_Date__c, Mentor_Name__c, Step_name__c, Target_Date__c
                                                    FROM User_Assigned_Task__c]);
             }
}              
      
        