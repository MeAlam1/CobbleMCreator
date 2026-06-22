<#include "procedures.java.ftl">
public class ${name}Procedure {
	public ${name}Procedure() {
		CobblemonEvents.EVOLUTION_ACCEPTED.subscribe(event -> {
			<#assign dependenciesCode>
				<@procedureDependenciesCode dependencies, {
				"pokemon": "event.getPokemon()"
				}/>
			</#assign>
			execute(${dependenciesCode});
		});
	}
