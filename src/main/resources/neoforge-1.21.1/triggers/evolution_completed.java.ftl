<#include "procedures.java.ftl">
public ${name}Procedure() {
    CobblemonEvents.EVOLUTION_COMPLETE.subscribe(event -> {
    	<#assign dependenciesCode>
    	    <@procedureDependenciesCode dependencies, {
    		"pokemon": "event.getPokemon()",
            "source_pokemon": "event.getSourcePokemon()",
    		}/>
    	</#assign>
    	execute(${dependenciesCode});
    });
}