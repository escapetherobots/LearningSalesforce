({
	searchKeyChange : function(component, event, helper) {
		// detect input change
		// get the attribute of the event component file called SearchKeyChange
		var myEvent = $A.get("e.c:SearchKeyChange");
		//set the params based on the updated attribute found in the custom event
		myEvent.setParams({"searchKey": event.target.value});
		myEvent.fire();

	}
})