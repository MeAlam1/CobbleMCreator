<#include "procedures.java.ftl">
public class ${name}Procedure {
	public ${name}Procedure() {
		CobblemonEvents.EVOLUTION_TESTED.subscribe(event -> {
			<#assign dependenciesCode>
				<@procedureDependenciesCode dependencies, {
				"pokemon": "event.getPokemon()",
				"original_result": "event.getOriginalResult()",
				"result": "event.getResult()"
				}/>
			</#assign>
			execute(${dependenciesCode});
		});
	}
