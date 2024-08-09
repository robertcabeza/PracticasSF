({
    sumar : function(component, event, helper) {
		let num1 = component.get("v.numero1");
        let num2 = component.get("v.numero2");
        let resultado = num1 + num2;
        component.set("v.suma", resultado );
    }
})