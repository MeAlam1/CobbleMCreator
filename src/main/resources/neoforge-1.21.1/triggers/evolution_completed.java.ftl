<#include "procedures.java.ftl">
public class ${name}Procedure {
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
