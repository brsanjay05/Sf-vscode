public with sharing class VariablePassing {
    
    public static void checkVariablePassing(){
        Integer a=20;
        List<String> stList= new List<String>{'Venerate', 'Solutions'};
        System.debug('>>>Before call:a ='+ a + ', stringList:' + stList);

        VariablePassing.changeVariables(a,stList);

        System.debug('>>>After call:a ='+ a + ', stringList:' + stList);
  }

    private static void changeVariables(integer num, List<string> stList){
        num=40;
        stList.add('Hfs');

    }
    }

