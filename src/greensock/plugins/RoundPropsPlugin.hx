package greensock.plugins;

@:native("RoundPropsPlugin")

extern class RoundPropsPlugin extends TweenPlugin {
public static function __init__():Void{
	#if !noEmbedJSPlugin
      trace("css Plugin");
        haxe.macro.Tools.includeFile("./greensock/GreenSock-JS/src/minified/plugins/RoundPropsPlugin.min.js");
     #end
    }
}