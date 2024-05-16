import 'package:easy_localization/easy_localization.dart';
import 'package:webman_ps3/core/init/lang/locale_keys.g.dart';

class AppStrings {
  final settings = Settings();
  final game = GameCommands();
  final system = SystemCommands();
  final controller = Controller();
  final misc = Misc();
  final logic = Logics();
  final navbar = NavBar();
  final tabbar = TabBars();
}

class TabBars {
  final String system = LocaleKeys.tabBars_system.tr();
  final String game = LocaleKeys.tabBars_game.tr();
  final String misc = LocaleKeys.tabBars_misc.tr();
}

class NavBar {
  final String commands = LocaleKeys.pages_commandsHeader.tr();
  final String info = LocaleKeys.pages_systemInfoHeader.tr(); 
  final String controller = LocaleKeys.pages_controllerHeader.tr();
  final String settings = LocaleKeys.pages_settingsHeader.tr();
}
class Settings {
  final String title = LocaleKeys.pages_settings_title.tr();
  final String systemSettings = LocaleKeys.pages_settings_systemSettingsTitle.tr();
  final String theme = LocaleKeys.pages_settings_theme.tr();
  final String currentDark = LocaleKeys.pages_settings_currentDark.tr();
  final String currentLight = LocaleKeys.pages_settings_currentLight.tr();
  final String language = LocaleKeys.pages_settings_language.tr();
  final String subLanguage = LocaleKeys.pages_settings_subLanguage.tr();
  final String appSettings = LocaleKeys.pages_settings_applicationSettingsTitle.tr();
  final String troubleshoot = LocaleKeys.pages_settings_troubleshoot.tr();
  final String subTroubleshoot = LocaleKeys.pages_settings_subTroubleshoot.tr();
  final String aboutApp = LocaleKeys.pages_settings_aboutApp.tr();
  final String subAboutApp = LocaleKeys.pages_settings_subAboutApp.tr();
  final String aboutAppDialog = LocaleKeys.pages_settings_aboutAppDialog.tr();
}

class Controller {
  final String rotate = LocaleKeys.pages_controller_rotate.tr();
}

class GameCommands {
  final String reload = LocaleKeys.commands_gameCommands_reload.tr();
  final String subReload = LocaleKeys.commands_gameCommands_subReload.tr();
  final String quit = LocaleKeys.commands_gameCommands_quit.tr();
  final String subQuit = LocaleKeys.commands_gameCommands_subQuit.tr();
  final String rescan = LocaleKeys.commands_gameCommands_rescan.tr();
  final String subRescan = LocaleKeys.commands_gameCommands_subRescan.tr();
  final String mount = LocaleKeys.commands_gameCommands_mount.tr();
  final String subMount = LocaleKeys.commands_gameCommands_subMount.tr();
  final String eject = LocaleKeys.commands_gameCommands_eject.tr();
  final String subEject = LocaleKeys.commands_gameCommands_subEject.tr();
}

class SystemCommands {
  final String reboot = LocaleKeys.commands_system_reboot.tr();
  final String subReboot = LocaleKeys.commands_system_subReboot.tr();
  final String shutdown = LocaleKeys.commands_system_shutdown.tr();
  final String subShutdown = LocaleKeys.commands_system_subShutdown.tr();
  final String fanSettings = LocaleKeys.commands_system_fanSettings.tr();
  final String subFanSettings = LocaleKeys.commands_system_subFanSettings.tr();
}

class Misc {
  final String browser = LocaleKeys.commands_internet_browser.tr();
  final String subBrowser = LocaleKeys.commands_internet_subBrowser.tr();
}

class Logics {
  final String redirectDone = LocaleKeys.browserLogic_done.tr();
  final String redirectFailed = LocaleKeys.browserLogic_failed.tr();
  final String cdEjectDone = LocaleKeys.cdLogic_done.tr();
  final String cdEjectFailed = LocaleKeys.cdLogic_failed.tr();
  final String fanSyscon = LocaleKeys.fanLogic_syscon.tr();
  final String fanAuto = LocaleKeys.fanLogic_manual.tr();
  final String fanDynamic = LocaleKeys.fanLogic_dynamic.tr();
  final String fanFailed = LocaleKeys.fanLogic_failed.tr();
  final String gameReloadDone = LocaleKeys.gameLogic_reloadDone.tr();
  final String gameReloadFailed = LocaleKeys.gameLogic_reloadFailed.tr();
  final String gameExit = LocaleKeys.gameLogic_exit.tr();
  final String gameExitFailed = LocaleKeys.gameLogic_exitFailed.tr();
  final String gameRescanDone = LocaleKeys.gameLogic_rescan.tr();
  final String gameRescanFailed = LocaleKeys.gameLogic_rescanFailed.tr();
  final String joystickFailed = LocaleKeys.joystickLogic_failed.tr();
  final String rebootDone = LocaleKeys.systemLogic_rebootDone.tr();
  final String rebootFailed = LocaleKeys.systemLogic_rebootFailed.tr();
  final String shutdownDone = LocaleKeys.systemLogic_shutdown.tr();
  final String shutdownFailed = LocaleKeys.systemLogic_shutdownFailed.tr();
}
