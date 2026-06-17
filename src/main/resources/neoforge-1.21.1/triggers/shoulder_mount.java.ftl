<#include "procedures.java.ftl">
public ${name}Procedure() {
    CobblemonEvents.SHOULDER_MOUNT.subscribe(event -> {
    	<#assign dependenciesCode>
    	    <@procedureDependenciesCode dependencies, {
    		"x": "event.getPlayer().getX()",
    		"y": "event.getPlayer().getY()",
    		"z": "event.getPlayer().getZ()",
            "player": "event.getPlayer()",
    		"world": "event.getPlayer().level()",
    		"pokemon": "event.getPokemon()",
    		"is_left": "event.isLeft()"
    		}/>
    	</#assign>
    	execute(${dependenciesCode});
    });
}