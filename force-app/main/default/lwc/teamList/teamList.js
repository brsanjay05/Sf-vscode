import { LightningElement, api } from 'lwc';

export default class teamList extends LightningElement {
    @api recordId
    objectApiName = 'Team__c'
    fields = ['Name', 'Team_Coach__c', 'Captain_Name__c']
}