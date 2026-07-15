<#include "procedures.java.ftl">
public class ${name}Procedure {
	public ${name}Procedure() {
		CobblemonEvents.POKEMON_CATCH_RATE.subscribe(event -> {
			<#assign dependenciesCode>
				<@procedureDependenciesCode dependencies, {
				"thrower": "event.getThrower()",
				"pokeball": "event.getPokeballEntity()",
				"pokemon": "event.getPokemonEntity()",
				"catch_rate": "event.getCatchRate()"
				}/>
			</#assign>
			execute(${dependenciesCode});
		});
	}
