package greensock;
import GSAP.TweenPlugin;
extern class CSSPlugin extends TweenPlugin {
    public static function __init__():Void{
      trace("css Plugin");
        haxe.macro.Tools.includeFile("./greensock/GreenSock-JS/src/minified/plugins/CSSPlugin.min.js");
    }
}