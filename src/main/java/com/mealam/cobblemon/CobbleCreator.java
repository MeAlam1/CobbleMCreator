package com.mealam.cobblemon;

import net.mcreator.plugin.JavaPlugin;
import net.mcreator.plugin.Plugin;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import java.util.HashSet;
import java.util.Set;

public class CobbleCreator extends JavaPlugin {

	private static final Logger LOGGER = LogManager.getLogger(CobbleCreator.class);
	public static Set<Plugin> PLUGIN_INSTANCE = new HashSet<>();

	public CobbleCreator(Plugin pPlugin) {
		super(pPlugin);
		PLUGIN_INSTANCE.add(pPlugin);

		LOGGER.info("Plugin was loaded");
	}


}