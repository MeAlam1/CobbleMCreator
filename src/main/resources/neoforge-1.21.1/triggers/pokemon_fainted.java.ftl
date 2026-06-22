<#include "procedures.java.ftl">
public class ${name}Procedure {
	public ${name}Procedure() {
		CobblemonEvents.POKEMON_FAINTED.subscribe(event -> {
			<#assign dependenciesCode>
				<@procedureDependenciesCode dependencies, {
				"pokemon": "event.getPokemon()",
				"fainted_timer": "event.getFaintedTimer()"
				}/>
			</#assign>
			execute(${dependenciesCode});
		});
	}
