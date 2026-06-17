<#include "procedures.java.ftl">
public ${name}Procedure() {
    CobblemonEvents.FULLNESS_UPDATED.subscribe(event -> {
    	<#assign dependenciesCode>
    	    <@procedureDependenciesCode dependencies, {
    		"pokemon": "event.getPokemon()",
            "new_fullness": "event.getNewFullness()"
    		}/>
    	</#assign>
    	execute(${dependenciesCode});
    });
}