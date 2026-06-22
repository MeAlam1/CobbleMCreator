<#include "procedures.java.ftl">
public class ${name}Procedure {
    public ${name}Procedure() {
        CobblemonEvents.DATA_SYNCHRONIZED.subscribe(data -> {
            <#assign dependenciesCode>
                <@procedureDependenciesCode dependencies, {
                "player": "data",
                }/>
            </#assign>
            execute(${dependenciesCode});
        });
    }
