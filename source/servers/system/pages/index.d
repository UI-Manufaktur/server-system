module servers.system.pages.index;

@safe:
import servers.system;

void uimIndex(HTTPServerRequest req, HTTPServerResponse res) {
  debugMethodCall(moduleName!uimIndex~":uimIndex");

  APPPageController(server).request(req, res);
}