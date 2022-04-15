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
public import uim.systems;

// server-system packages
public import servers.system.actions;
public import servers.system.apis;
public import servers.system.pages;

public import models.systems;

public import layouts.tabler;

// mixin(ImportLocal!("cms"));

string[size_t] errorMessages;
static this() {
  server = APPApplication
    .layout(SystemLayout)
    .scripts.addLinks(
      "/js/apps/system/app.js");
}