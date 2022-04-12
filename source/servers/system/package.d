module servers.system;

@safe:
mixin ImportPhobos;
mixin ImportDubs;
mixin ImportUim;

public import colored;

// Additional imports
public import uim.systems;
public import uim.jsonbase;
public import uim.entities;
public import uim.entitybase;

// Library
public import uim.system;

// server-system packages
public import servers.system.actions;
public import servers.system.apis;
public import servers.system.pages;
public import servers.system.settings;

public import models.systems;
public import models.system;

public import layouts.tabler;

// mixin(ImportLocal!("cms"));

DAPPApplication serverSystem;
string[size_t] errorMessages;
static this() {
  serverSystem = new class DAPPApplication {
    this() { super(); 
      this
      .layout(SystemLayout)
      .scripts.addLinks(
        "/js/apps/system/app.js");
    }
  };
}