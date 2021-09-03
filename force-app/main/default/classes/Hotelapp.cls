public with sharing class Hotelapp {
    public static void Hotelmethod() {
        List <Reservation__c> obj= [select id, name, room__c, room__r.Name, reservation__c.contact__r.Lastname
        from reservation__c order by Reservation__c.Name];

for(Reservation__c obj1 : obj){
System.debug('Reservation'+ obj1.Name + ', Room:' + obj1.Room__r.Name + ', Contact:'+ obj1.contact__r.Lastname); 
}
}

    }

