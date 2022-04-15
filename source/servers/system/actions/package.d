module servers.system.actions;

@safe:
import servers.system;

mixin(ActionCalls!("uimSystemAccounts", "SystemAccount", "server"));
mixin(ActionCalls!("uimSystemApps", "SystemApp", "server"));
mixin(ActionCalls!("uimSystemGroups", "SystemGroup", "server"));
mixin(ActionCalls!("uimSystemLogins", "SystemLogin", "server"));
mixin(ActionCalls!("uimSystemOrganizations", "SystemOrganization", "server"));
mixin(ActionCalls!("uimSystemPasswords", "SystemPassword", "server"));
mixin(ActionCalls!("uimSystemPasswordRules", "SystemPasswordRule", "server"));
mixin(ActionCalls!("uimSystemRequests", "SystemRequest", "server"));
mixin(ActionCalls!("uimSystemRights", "SystemRight", "server"));
mixin(ActionCalls!("uimSystemRoles", "SystemRole", "server"));
mixin(ActionCalls!("uimSystemSessions", "SystemSession", "server"));
mixin(ActionCalls!("uimSystemSites", "SystemSite", "server"));
mixin(ActionCalls!("uimSystemTenants", "SystemTenant", "server"));
mixin(ActionCalls!("uimSystemUsers", "SystemUser", "server"));
