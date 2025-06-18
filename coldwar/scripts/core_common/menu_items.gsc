function init_menus() {
    // Tool Menu
    self add_menu("tool_menu", "Tool Menu", "start_menu", true);
    self add_menu_item_modswitch("tool_menu", "Fly Mode", "fly");
    self add_menu_item("tool_menu", "Invulnerability", &func_invulnerability);
    self add_menu_item_modswitch("tool_menu", "Max Ammo", "maxammo");
    self add_menu_item_modswitch("tool_menu", "Max Points", "maxpoints");
    self add_menu_item("tool_menu", "Debug Quit", &debug_quit);

    // SubMenu 2
    self add_menu("submenu_2", "SubMenu 2", "start_menu", true);
    self add_menu_item("submenu_2", "Option 1", &test_option_function);
    self add_menu_item("submenu_2", "Option 2", &test_option_function);
    self add_menu_item("submenu_2", "Option 3", &test_option_function);
    self add_menu_item("submenu_2", "Option 4", &test_option_function);
    self add_menu_item("submenu_2", "Option 5", &test_option_function);

    // SubMenu 3
    self add_menu("submenu_3", "SubMenu 3", "start_menu", true);
    self add_menu_item("submenu_3", "Option 1", &test_option_function);
    self add_menu_item("submenu_3", "Option 2", &test_option_function);
    self add_menu_item("submenu_3", "Option 3", &test_option_function);
    self add_menu_item("submenu_3", "Option 4", &test_option_function);
    self add_menu_item("submenu_3", "Option 5", &test_option_function);

    // SubMenu 4
    self add_menu("submenu_4", "SubMenu 4", "start_menu", true);
    self add_menu_item("submenu_4", "Option 1", &test_option_function);
    self add_menu_item("submenu_4", "Option 2", &test_option_function);
    self add_menu_item("submenu_4", "Option 3", &test_option_function);
    self add_menu_item("submenu_4", "Option 4", &test_option_function);
    self add_menu_item("submenu_4", "Option 5", &test_option_function);

    // SubMenu 5
    self add_menu("submenu_5", "SubMenu 5", "start_menu", true);
    self add_menu_item("submenu_5", "Option 1", &test_option_function);
    self add_menu_item("submenu_5", "Option 2", &test_option_function);
    self add_menu_item("submenu_5", "Option 3", &test_option_function);
    self add_menu_item("submenu_5", "Option 4", &test_option_function);
    self add_menu_item("submenu_5", "Option 5", &test_option_function);

    // Player Menu
    self add_menu("player_menu", "Player Menu", "start_menu", true);
}