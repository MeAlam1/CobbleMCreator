<#-- @formatter:off -->
/*
 *	MCreator note: This file will be REGENERATED on each build.
 */
 
package ${package}.cobblemon;

public final class ${JavaModName}Cobblemon {

    private ${JavaModName}Cobblemon() {}

    public static void register() {
		<#if w.getGElementsOfType('procedure')?filter(e -> !e.procedurexml?contains('no_ext_trigger'))?size != 0>${JavaModName}Procedures.load();</#if>
    }

}
<#-- @formatter:on -->

