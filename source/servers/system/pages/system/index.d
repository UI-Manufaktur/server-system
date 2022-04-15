module servers.system.pages.system.index;

@safe:
import servers.system;

void uimSystemIndex(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimSystemIndex~":uimSystemIndex");

  APPPageController(server).request(req, res);
}