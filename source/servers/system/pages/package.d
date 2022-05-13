module servers.system.pages;

@safe:
import servers.system;

// Packages
public import servers.system.pages.system;

// Modules
public import servers.system.pages.index;

mixin(PageControllerCalls!("uimSystemAccounts", "SystemAccount", "server"));
mixin(PageControllerCalls!("uimSystemApps", "SystemApp", "server"));
mixin(PageControllerCalls!("uimSystemGroups", "SystemGroup", "server"));
mixin(PageControllerCalls!("uimSystemLogins", "SystemLogin", "server"));
mixin(PageControllerCalls!("uimSystemOrganizations", "SystemOrganization", "server"));
mixin(PageControllerCalls!("uimSystemPasswords", "SystemPassword", "server"));
mixin(PageControllerCalls!("uimSystemPasswordRules", "SystemPasswordRule", "server"));
mixin(PageControllerCalls!("uimSystemRequests", "SystemRequest", "server"));
mixin(PageControllerCalls!("uimSystemRights", "SystemRight", "server"));
mixin(PageControllerCalls!("uimSystemRoles", "SystemRole", "server"));
mixin(PageControllerCalls!("uimSystemSessions", "SystemSession", "server"));
mixin(PageControllerCalls!("uimSystemSites", "SystemSite", "server"));
mixin(PageControllerCalls!("uimSystemTenants", "SystemTenant", "server"));
mixin(PageControllerCalls!("uimSystemUsers", "SystemUser", "server"));
