import { LightningElement, api } from 'lwc';

export default class ViewSource extends LightningElement {
    baseURL =
        'https://github.com/robertcabeza/PracticasSF';

    @api source;

    get sourceURL() {
        return this.baseURL + this.source;
    }
}