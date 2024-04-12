import { LightningElement } from 'lwc';

export default class HelloWorldTest extends LightningElement {
    username = new URLSearchParams(window.location.search).get("username");
}