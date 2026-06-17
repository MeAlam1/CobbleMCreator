<#include "procedures.java.ftl">
public ${name}Procedure() {
    CobblemonEvents.POKEMON_NICKNAMED.subscribe(event -> {
    	<#assign dependenciesCode>
    	    <@procedureDependenciesCode dependencies, {
    		"pokemon": "event.getPokemon()",
            "player": "event.getPlayer()",
            "nickname": "event.getNickname().getString()",
    		}/>
    	</#assign>
    	execute(${dependenciesCode});
    });
}