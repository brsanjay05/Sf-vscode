//Querying room object from reservation object (similar to parent from child)
 List <Reservation__c> obj= [select id, name, room__c, room__r.Name, reservation__c.contact__r.Lastname
                           from reservation__c order by Reservation__c.Name];

    for(Reservation__c obj1 : obj){
    System.debug('Reservation'+ obj1.Name + ', Room:' + obj1.Room__r.Name + ', Contact:'+ obj1.contact__r.Lastname); 
     }


//Querying room object from hotel object (similar to children from parent)
List<Hotel__c> ob= [Select Id, Name , (Select Id , name from Rooms__r) from Hotel__c];
   
   for(Hotel__c ob1 : ob){
    System.debug(ob1.Name); 
    
   List<Room__c> ob2 = ob1.Rooms__r; 
   for(Room__c ob3 : ob2){
    System.debug('>>>Room:' + ob3.Name); 
   }
   }