<#include "procedures.java.ftl">
public ${name}Procedure() {
    CobblemonEvents.POKEMON_PROPERTY_INITIALISED.subscribe(event -> {
    	<#assign dependenciesCode>
    	</#assign>
    	execute(${dependenciesCode});
    });
}