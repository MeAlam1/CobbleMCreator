<#include "procedures.java.ftl">
public class ${name}Procedure {
    public ${name}Procedure() {
        CobblemonEvents.COBBLEMON_INITIALISED.subscribe(event -> {
            <#assign dependenciesCode>
            </#assign>
            execute(${dependenciesCode});
        });
    }
