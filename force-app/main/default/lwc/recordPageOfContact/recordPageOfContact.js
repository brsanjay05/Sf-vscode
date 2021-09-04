import { LightningElement, api } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';
import Name from '@salesforce/schema/Contact.Name';
import AccountField from '@salesforce/schema/Contact.Account';
import FirstName from '@salesforce/schema/Contact.FirstName';
import LastName from '@salesforce/schema/Contact.LastName';
import Email from '@salesforce/schema/Contact.Email';
 
export default class ContactRecord extends LightningElement {
 
    fields = [Name, AccountField, FirstName,LastName, Email];
 
    nameField = Name;
    accountField=AccountField;
    firstnameField=FirstName;
    lastnameField=LastName;
    emailField=Email;
 
    // Flexipage provides recordId and objectApiName

 
}