import { LightningElement, track, api, wire } from "lwc";

export default class LwcAsesorMainContainer extends LightningElement {

    @api recordId = new URLSearchParams(window.location.search).get('c__recordId');

}