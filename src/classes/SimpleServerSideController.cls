public with sharing class SimpleServerSideController {
    @AuraEnabled
    public static String serverEcho(String firstName){
        return ('hello from the server, ' + firstName );
    }
}