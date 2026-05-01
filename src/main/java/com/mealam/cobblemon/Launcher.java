package com.mealam.cobblemon;

import net.mcreator.plugin.JavaPlugin;
import net.mcreator.plugin.Plugin;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import java.util.HashSet;
import java.util.Set;

public class Launcher extends JavaPlugin {

	public static final Logger LOG = LogManager.getLogger("Cobblemon Plugin");
	public static Set<Plugin> PLUGIN_INSTANCE = new HashSet<>();

	public Launcher(Plugin pPlugin) {
		super(pPlugin);
		PLUGIN_INSTANCE.add(pPlugin);

		LOG.info("Plugin was loaded");
	}


}