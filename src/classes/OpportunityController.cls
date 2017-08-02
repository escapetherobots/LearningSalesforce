public with sharing class OpportunityController {
    
    // aura enabled allows it to be used by lightning component
    @AuraEnabled
    public static List<Opportunity> getOpportunities(){
        List<Opportunity> opportunities = [select id, name, type from opportunity];
        return opportunities;
    }
    
}