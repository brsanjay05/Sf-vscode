import { LightningElement } from 'lwc';
import { NavigationMixin } from 'lightning/navigation'
export default class SampleNavToRecord extends NavigationMixin (LightningElement){

    navigateToRecord(){
        this [NavigationMixin.Navigate](
            {
                type: 'custom__recordPage',
                attributes: {
                    recordId: 'a050w000003HFbjAAG',
                    objectApiName: 'User_functional_role_junction__c',
                    actionName:'view'
            
                }
            }
        )
    }
}