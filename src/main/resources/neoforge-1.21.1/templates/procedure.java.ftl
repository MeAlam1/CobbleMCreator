<#-- @formatter:off -->
package ${package}.procedures;

<#assign nullableDependencies = []/>
<#if !(data.skipDependencyNullCheck)>
	<#list dependencies as dependency>
		<#if dependency.getRawType() != "number"
			&& dependency.getRawType() != "world"
			&& dependency.getRawType() != "itemstack"
			&& dependency.getRawType() != "blockstate"
			&& dependency.getRawType() != "actionresulttype"
			&& dependency.getRawType() != "logic"
			&& dependency.getRawType() != "cmdcontext">
			<#assign nullableDependencies += [dependency.getName()]/>
		</#if>
	</#list>
</#if>

<@javacompress>

public class ${name}Procedure {

<#if trigger_code?has_content>
	${trigger_code}
</#if>

	public static <#if return_type??>${return_type.getJavaType(generator.getWorkspace())}<#else>void</#if> execute(
		<#list dependencies as dependency>
				${dependency.getType(generator.getWorkspace())} ${dependency.getName()}<#sep>,
		</#list>
	) {
		<#if nullableDependencies?has_content>
			if(
			<#list nullableDependencies as dependency>
			${dependency} == null <#sep>||
			</#list>
			) return <#if return_type??>${return_type.getDefaultValue(generator.getWorkspace())}</#if>;
		</#if>

		<#list localvariables as var>
			<@var.getType().getScopeDefinition(generator.getWorkspace(), "LOCAL")['init']?interpret/>
		</#list>

		${procedurecode}
	}

	${extra_templates_code}
}
</@javacompress>
<#-- @formatter:on -->