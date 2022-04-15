import vibe.vibe;
import servers.system;

mixin DefaultConfig!("server-system");
//mixin ReadConfig;
void main(string[] args) {
	debug writeln("readConfig()");
  // readConfig();

	debug writeln("mixin GetoptConfig");
  //mixin GetoptConfig;
  
	auto router = new URLRouter;	
	debug writeln("SetRouterDefault!()");
  mixin(SetRouterDefault!());

debug writeln("Setting router");
router // Pages
		.get("/system", &uimSystemIndex);

	mixin(AddRoutes!("router", "/system/accounts", "uimSystemAccounts"));
	mixin(AddRoutes!("router", "/system/apps", "uimSystemApps"));
	mixin(AddRoutes!("router", "/system/groups", "uimSystemGroups"));
	mixin(AddRoutes!("router", "/system/logins", "uimSystemLogins"));
	mixin(AddRoutes!("router", "/system/organizations", "uimSystemOrganizations"));
	mixin(AddRoutes!("router", "/system/passwords", "uimSystemPasswords"));
	mixin(AddRoutes!("router", "/system/passwordrules", "uimSystemPasswordRules"));
	mixin(AddRoutes!("router", "/system/requests", "uimSystemRequests"));
	mixin(AddRoutes!("router", "/system/rights", "uimSystemRights"));
	mixin(AddRoutes!("router", "/system/roles", "uimSystemRoles"));
	mixin(AddRoutes!("router", "/system/sessions", "uimSystemSessions"));
	mixin(AddRoutes!("router", "/system/sites", "uimSystemSites"));
	mixin(AddRoutes!("router", "/system/tenants", "uimSystemTenants"));
	mixin(AddRoutes!("router", "/system/users", "uimSystemUsers"));

	router
		.get("/", &uimIndex)
		.get("/login", &uimLoginPage)
		.get("/login2", &uimLogin2Page)
		.get("/register", &uimRegister)
		.get("/logout", &uimLogout)
		.get("/server", &uimServer)
		.get("/sites", &uimSites);

	router // actions
		.post("/login_action", &uimLoginAction)
		.post("/login2_action", &uimLogin2Action)
		.post("/sites/select", &uimSiteSelectAction);


	debug writeln("Create Database");
	auto database = ETBBase.importDatabase(JSBFileBase("../../DATABASES/uim"));
	debug writeln("Found Tenants:", database.count);

	debug writeln("auto dbTentant = database[system]");
	if (auto dbTentant = database["systems"]) {
		debug writeln("Found tentant");

		foreach(name; dbTentant.collectionNames) {
			debug writeln("uimEntityRegistry name:", name, " path:", name);
		
			if (auto entityTemplate = uimEntityRegistry[name]) {
				debug writeln("entityid = ", uimEntityRegistry[name].id);
		
				dbTentant[name].entityTemplate(entityTemplate);
	}}}

	debug writeln("database.tenantNames -> ", database.tenantNames);
	foreach(tenant; database.tenantNames) {
		debug writeln(tenant, " with ", database[tenant].collectionNames);
	}

	debug writeln("serverModeller.database(database)");
  server.database(database);
	// servermodeller.rootPath(rootPath).registerApp(router); 

  mixin(SetHTTP!());
	runApplication();
}
