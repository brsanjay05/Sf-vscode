trigger ClosedOpportunityTrigger on Opportunity (after insert, after update) {
	
    List<Task> taskList = new List <Task>();
   
    //Grab the Opportunity Id's from Opps that are Closed Won from the Context Variable and store them in opp
    for(Opportunity opp : Trigger.New){
        if(opp.StageName == 'Closed Won'){
            taskList.add(new Task(Subject = 'Follow up test Task',WhatId = opp.Id));
            
        }
    }
    if(taskList.size()>0){
        insert taskList;
    }
    
}