package greensock.plugins;

@:native("RaphaelPlugin")
extern class RaphaelPlugin extends TweenPlugin {
public static function __init__():Void{
      trace("RaphaelPlugin included");
        haxe.macro.Tools.includeFile("./greensock/GreenSock-JS/src/minified/plugins/RaphaelPlugin.min.js");
    }
}