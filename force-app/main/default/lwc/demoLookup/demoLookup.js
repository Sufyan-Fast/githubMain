import { LightningElement,api } from 'lwc';

export default class DemoLookup extends LightningElement {
    parentAccountSelectedRecord;
    @api accountId;
    @api contactEmailField
    handleValueSelectedOnAccount(event) {
        this.parentAccountSelectedRecord = event.detail;
        console.log('Selected');
    }
}