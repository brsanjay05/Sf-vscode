/*******Trigger Name : TriggerMPV2GeocodeHotel  Author : Shilpa kamble Date : 25/8/2015 Details : Dynamically generated tigger on object to insert,update & delete the map point *********************************/ Trigger TriggerMPV2GeocodeHotel on Hotel__c(after Update,before delete,after insert,after undelete,after delete){String strTriggerEvent;List < ApexPage > pageList = [SELECT Name FROM ApexPage WHERE Name IN ('Map_Plotter_Setting', 'Extentia_SIM__Map_Plotter_Setting')];if(!pageList.isempty()){if(trigger.isUpdate){strTriggerEvent = Extentia_SIM.Helper_MPConstants.EVENT_UPDATE;Extentia_SIM.Helper_Geocode.TriggerHandler(Trigger.new,strTriggerEvent);}if(trigger.isInsert){strTriggerEvent =Extentia_SIM.Helper_MPConstants.EVENT_INSERT;Extentia_SIM.Helper_Geocode.TriggerHandler(Trigger.new,strTriggerEvent);}if(trigger.isDelete){strTriggerEvent = Extentia_SIM.Helper_MPConstants.EVENT_DELETE;Extentia_SIM.Helper_Geocode.TriggerHandler(Trigger.old,strTriggerEvent);}if(trigger.isUndelete){strTriggerEvent = Extentia_SIM.Helper_MPConstants.EVENT_UNDELETE;Extentia_SIM.Helper_Geocode.TriggerHandler(Trigger.new,strTriggerEvent);}}}