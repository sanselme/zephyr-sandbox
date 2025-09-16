# out-of-tree drivers for custom types
add_subdirectory_ifdef(CONFIG_BLINK blink)

# out-of-tree drivers for existing driver types
add_subdirectory_ifdef(CONFIG_SENSOR sensor)
