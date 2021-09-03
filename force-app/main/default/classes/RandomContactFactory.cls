public class RandomContactFactory {
    public static List<Contact> generateRandomContacts (Integer numOfCon, String ConLastName){
        List<Contact> conList = new List<Contact>();
        for(Integer i=0; i<numOfCon;i++){
            conList.add(new Contact(FirstName='Test ' + i, LastName= string.valueof(ConLastName)));
                   }
        system.debug(conlist);
        return conlist;
    }
}