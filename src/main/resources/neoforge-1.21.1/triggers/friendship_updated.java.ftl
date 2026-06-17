<#include "procedures.java.ftl">
public ${name}Procedure() {
    CobblemonEvents.FRIENDSHIP_UPDATED.subscribe(event -> {
    	<#assign dependenciesCode>
    	    <@procedureDependenciesCode dependencies, {
    		"pokemon": "event.getPokemon()",
            "new_friendship": "event.getNewFriendship()"
    		}/>
    	</#assign>
    	execute(${dependenciesCode});
    });
}