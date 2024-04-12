/**
* @author           :   Robert Cabeza <rober@calibre360.io>
* @Descripcion      :   Test de servicio web Pv2_WebService_WS
* @Created          :   05-09-2022
*/
@isTest 
global with sharing class ServiceMockTest implements HttpCalloutMock{
   
    global HTTPResponse respond(HTTPRequest iHTTPRequest) {
        HttpResponse res = new HttpResponse();
        res.setHeader('TEST', 'Test');
        res.setStatus('Accepted');
        res.setStatusCode(200);
        res.setBody('{}');
        return res;
    }
 }