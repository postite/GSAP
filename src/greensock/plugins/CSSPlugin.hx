package greensock.plugins;

extern class CSSPlugin extends TweenPlugin {
    public static function __init__():Void{
    	#if !noEmbedJSPlugin
      trace("CSSPlugin included");
        haxe.macro.Tools.includeFile("./greensock/GreenSock-JS/src/minified/plugins/CSSPlugin.min.js");
        #end
    }
}