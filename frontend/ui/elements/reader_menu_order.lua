local Device = require("device")

local order = {
    ["KOMenu:menu_buttons"] = {
        "navi",
        "typeset",
        "setting",
        "tools",
        "search",
        "filemanager",
        "main",
    },
    navi = {
        "table_of_contents",
        "bookmarks",
        "toggle_bookmark", -- if not Device:isTouchDevice()
        "bookmark_browsing_mode",
        "navi_settings",
        "----------------------------",
        "page_map",
        "hide_nonlinear_flows",
        "----------------------------",
        "book_map", -- if Device:isTouchDevice()
        "page_browser", -- if Device:isTouchDevice()
        "----------------------------",
        "go_to",
        "skim_to",
        "autoturn",
        "----------------------------",
        "go_to_previous_location",
    },
    navi_settings = {
        "toc_alt_toc",
        "----------------------------",
        "toc_ticks_level_ignore",
        "----------------------------",
        "toc_items_per_page",
        "toc_items_font_size",
        "toc_items_with_dots",
        "----------------------------",
        "bookmarks_settings",
    },
    typeset = {
        "reset_document_settings",
        "----------------------------",
        "set_render_style",
        "style_tweaks",
        "----------------------------",
        "change_font",
        "typography",
        "----------------------------",
        "switch_zoom_mode",
        "----------------------------",
        "page_overlap",
        "speed_reading_module_perception_expander",
        "----------------------------",
        "highlight_options",
        "selection_text", -- if Device:hasDPad()
        "panel_zoom_options",
        "djvu_render_mode",
        "start_content_selection", -- if Device:hasDPad(), put this as last one so it is easy to select with "press" and "up" keys
    },
    setting = {
        -- common settings
        -- those that don't exist will simply be skipped during menu gen
        "frontlight", -- if Device:hasFrontlight()
        "night_mode",
        "----------------------------",
        "network",
        "screen",
        "----------------------------",
        "taps_and_gestures", -- if Device:isTouchDevice()
        "navigation",
        "document",
        "----------------------------",
        "language",
        "device",
        "----------------------------",
        "status_bar",
    },
    document = {
        "document_auto_save",
        "document_save",
        "document_end_action",
        "language_support",
    },
    device = {
        "keyboard_layout",
        "font_ui_fallbacks",
        "----------------------------",
        "time",
        "device_status_alarm",
        "charging_led", -- if Device:canToggleChargingLED()
        "autostandby",
        "autosuspend",
        "autoshutdown",
        "ignore_sleepcover",
        "ignore_open_sleepcover",
        "ignore_battery_optimizations",
        "mass_storage_settings", -- if Device:canToggleMassStorage()
        "file_ext_assoc",
        "screenshot",
    },
    navigation = {
        "back_to_exit",
        "back_in_filemanager",
        "back_in_reader",
        "backspace_as_back",
        "----------------------------",
        "page_turns_non_touch",
        "android_volume_keys",
        "android_camera_key",
        "android_haptic_feedback",
        "android_back_button",
        "----------------------------",
        "opening_page_location_stack",
    },
    network = {
        "network_wifi",
        "network_proxy",
        "network_powersave",
        "network_restore",
        "network_info",
        "network_before_wifi_action",
        "network_after_wifi_action",
        "network_dismiss_scan",
        "----------------------------",
        "ssh",
    },
    screen = {
        "screensaver",
        "coverimage",
        "----------------------------",
        "screen_rotation",
        "----------------------------",
        "screen_dpi",
        "screen_eink_opt",
        "autodim",
        "autowarmth",
        "color_rendering",
        "----------------------------",
        "screen_timeout",
        "fullscreen",
        "----------------------------",
        "screen_notification",
    },
    taps_and_gestures = {
        "gesture_manager",
        "gesture_intervals",
        "----------------------------",
        "ignore_hold_corners",
        "screen_disable_double_tab",
        "----------------------------",
        "follow_links",
        "----------------------------",
        "menu_activate",
        "page_turns",
        "scrolling",
        "long_press",
    },
    tools = {
        "read_timer",
        "calibre",
        "exporter",
        "statistics",
        "progress_sync",
        "move_to_archive",
        "wallabag",
        "news_downloader",
        "send2ebook",
        "text_editor",
        "qrclipboard",
        "profiles",
        "----------------------------",
        "more_tools",
    },
    more_tools = {
        "auto_frontlight",
        "battery_statistics",
        "book_shortcuts",
        "synchronize_time",
        "keep_alive",
        "doc_setting_tweak",
        "terminal",
        "----------------------------",
        "plugin_management",
    },
    search = {
        "dictionary_lookup",
        "dictionary_lookup_history",
        "vocabulary_builder",
        "dictionary_settings",
        "----------------------------",
        "wikipedia_lookup",
        "wikipedia_history",
        "wikipedia_settings",
        "----------------------------",
        "translation_settings",
        "----------------------------",
        "find_book_in_calibre_catalog",
        "fulltext_search",
        "bookmark_search",
    },
    filemanager = {},
    main = {
        "history",
        "open_previous_document",
        "----------------------------",
        "collections",
        "----------------------------",
        "book_status",
        "book_info",
        "----------------------------",
        "mass_storage_actions", -- if Device:canToggleMassStorage()
        "----------------------------",
        "ota_update", -- if Device:hasOTAUpdates()
        "help",
        "----------------------------",
        "exit_menu",
    },
    help = {
        "quickstart_guide",
        "----------------------------",
        "report_bug",
        "----------------------------",
        "system_statistics",  -- if enabled (Plugin)
        "version",
        "about",
    },
    exit_menu = {
        "restart_koreader", -- if Device:canRestart()
        "----------------------------",
        "sleep", -- if Device:canSuspend()
        "poweroff", -- if Device:canPowerOff()
        "reboot", -- if Device:canReboot()
        "----------------------------",
        "start_bq", -- if Device:isCervantes()
        "exit",
    }
}

if not Device:hasExitOptions() then
    order.exit_menu = nil
end

return order
