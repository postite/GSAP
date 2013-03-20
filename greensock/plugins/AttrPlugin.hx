package greensock.plugins;

extern class AttrPlugin extends TweenPlugin {
	public static function __init__():Void{
      trace("css Plugin");
        haxe.macro.Tools.includeFile("./greensock/GreenSock-JS/src/minified/plugins/AttrPlugin.min.js");
        #error "not implemented yet"
    }
}