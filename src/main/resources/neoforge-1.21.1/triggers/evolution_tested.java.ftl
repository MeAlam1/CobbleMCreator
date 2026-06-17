<#include "procedures.java.ftl">
public ${name}Procedure() {
    CobblemonEvents.EVOLUTION_TESTED.subscribe(event -> {
    	<#assign dependenciesCode>
    	    <@procedureDependenciesCode dependencies, {
    		"pokemon": "event.getPokemon()",
            "original_result": "event.getOriginalResult()",
            "result": "event.getResult()"
    		}/>
    	</#assign>
    	execute(${dependenciesCode});
    });
}