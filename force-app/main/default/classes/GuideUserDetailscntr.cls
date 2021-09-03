public with sharing class GuideUserDetailscntr {

    public List<User_Assigned_Task__c> getEmployeeTask(){
        RecordTypeInfo  businessRecordTypeInfo = Schema.SObjectType.Onboarding_Step__c.getRecordTypeInfosByName().get('Business Type');
        if(businessRecordTypeInfo.isAvailable()){
            Id businessRecordTypeId = businessRecordTypeInfo.getRecordTypeId();
            List<String> fieldNames_AT = new List<String>();
            fieldNames_AT.add('Target_Date__c');
            fieldNames_AT.add('Assigning_Date__c');
            fieldNames_AT.add('Employee_completed__c');
            fieldNames_AT.add('Status__c');
            fieldNames_AT.add('Assigned_To__c');
            fieldNames_AT.add('Overdue__c');
            List<String> fieldNameTK = new List<String>();
            fieldNameTK.add('Name');
            fieldNameTK.add('Duration_Type__c');
            fieldNameTK.add('Duration__c');
            fieldNameTK.add('Description__c');
                List<User_Assigned_Task__c> atc = [SELECT Id,Assigned_To__c,Target_Date__c,Assigning_Date__c , 
                                                   Employee_completed__c, Status__c, Overdue__c
                                                    FROM User_Assigned_Task__c];
                System.debug(atc);
        }        
        return new List<User_Assigned_Task__c>();
    }
} 
