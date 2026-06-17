<#include "procedures.java.ftl">
public ${name}Procedure() {
    CobblemonEvents.EVOLUTION_DISPLAY.subscribe(event -> {
    	<#assign dependenciesCode>
    	    <@procedureDependenciesCode dependencies, {
    		"pokemon": "event.getPokemon()"
    		}/>
    	</#assign>
    	execute(${dependenciesCode});
    });
}