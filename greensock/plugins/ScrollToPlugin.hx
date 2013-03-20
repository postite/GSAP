package greensock.plugins;

@:native("ScrollToPlugin")

extern class ScrollToPlugin extends TweenPlugin {
public static function __init__():Void{
      trace("ScrollToPlugin included");
        haxe.macro.Tools.includeFile("./greensock/GreenSock-JS/src/minified/plugins/ScrollToPlugin.min.js");
    }
}