<#include "procedures.java.ftl">
public ${name}Procedure() {
    CobblemonEvents.COBBLEMON_INITIALISED.subscribe(event -> {
    	<#assign dependenciesCode>
    	</#assign>
    	execute(${dependenciesCode});
    });
}