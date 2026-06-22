<#include "procedures.java.ftl">
public class ${name}Procedure {
	public ${name}Procedure() {
		CobblemonEvents.THROWN_POKEBALL_HIT.subscribe(event -> {
			<#assign dependenciesCode>
				<@procedureDependenciesCode dependencies, {
				"pokemon": "event.getPokemon()",
				"pokeball": "event.getPokeball()"
				}/>
			</#assign>
			execute(${dependenciesCode});
		});
	}
