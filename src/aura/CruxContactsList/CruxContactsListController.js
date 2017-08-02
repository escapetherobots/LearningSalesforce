({
	doInit : function(component, event, helper) {
		// call apex controller and run the findAll Method
		// and display results in component
		
		var action = component.get("c.findAll");
		action.setCallback(this, function(a) {
			// component set method takes the component's attribute name
			component.set("v.contacts", a.getReturnValue());
		});

		// Add the action to the lifecycle queue
		$A.enqueueAction(action);


	},
	searchKeyChange: function(component, event, helper){
		var searchKey = event.getParam("searchKey");
		var action = component.get("c.findByName");
		action.setParams({"searchKey": searchKey});
		action.setCallback(this, function(a){
			component.set("v.contacts", a.getReturnValue());
		});
		$A.enqueueAction(action);
	}
})