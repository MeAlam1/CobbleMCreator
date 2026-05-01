<#include "procedures.java.ftl">
public ${name}Procedure() {
    CobblemonEvents.POKEMON_CAPTURED.subscribe(event -> {
    	<#assign dependenciesCode>
    	    <@procedureDependenciesCode dependencies, {
    		"x": "event.getPos().getX()",
    		"y": "event.getPos().getY()",
    		"z": "event.getPos().getZ()",
            "player": "event.getPlayer()",
    		"world": "event.getLevel()",
    		"pokemon": "event.getPokemon()",
    		"poke_ball": "event.getPokeBallEntity()",
    		"item": "event.getPlayer().level().itemRegistry.wrapAsHolder(event.getPokeBallEntity().getPokeBall().item).asMoLangValue(Registries.ITEM)"
    		}/>
    	</#assign>
    	execute(${dependenciesCode});
    });
}