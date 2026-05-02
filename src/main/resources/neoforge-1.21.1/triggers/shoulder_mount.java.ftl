<#include "procedures.java.ftl">
public ${name}Procedure() {
    CobblemonEvents.SHOULDER_MOUNT.subscribe(event -> {
    	<#assign dependenciesCode>
    	    <@procedureDependenciesCode dependencies, {
    		"x": "event.getPos().getX()",
    		"y": "event.getPos().getY()",
    		"z": "event.getPos().getZ()",
            "player": "event.getPlayer()",
    		"world": "event.getLevel()",
    		"pokemon": "event.getPokemon()",
    		"is_left": "event.getIsLeft()"
    		}/>
    	</#assign>
    	execute(${dependenciesCode});
    });
}