<#include "procedures.java.ftl">
public class ${name}Procedure {
	public ${name}Procedure() {
		CobblemonEvents.FRIENDSHIP_UPDATED.subscribe(event -> {
			<#assign dependenciesCode>
				<@procedureDependenciesCode dependencies, {
				"pokemon": "event.getPokemon()",
				"new_friendship": "event.getNewFriendship()"
				}/>
			</#assign>
			execute(${dependenciesCode});
		});
	}
