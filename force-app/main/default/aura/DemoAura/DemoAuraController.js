({

    doInit : function(component, event, helper) {

        component.find("auraid").set("v.value", "Find Example");
        component.set("v.property", "Set Ex");
         let val = component.get("v.property"); 
    },

})