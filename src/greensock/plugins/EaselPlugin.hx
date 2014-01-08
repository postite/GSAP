package greensock.plugins;
@:native("EaselPlugin")

extern class EaselPlugin extends TweenPlugin {
public static function __init__():Void{
	#if !noEmbedJSPlugin
      trace("EaselPlugin included");
        haxe.macro.Tools.includeFile("./greensock/GreenSock-JS/src/minified/plugins/EaselPlugin.min.js");
        #end
    }
}