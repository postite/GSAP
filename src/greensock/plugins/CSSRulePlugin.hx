package greensock.plugins;

@:native("CSSRulePlugin")
extern class CSSRulePlugin extends TweenPlugin {
	public static function __init__():Void{
		#if !noEmbedJSPlugin
      trace("CSSRulePlugin included");
        haxe.macro.Tools.includeFile("./greensock/GreenSock-JS/src/minified/plugins/CSSRulePlugin.min.js");
        #end
    }
    public static function getRule(selector:String):Dynamic;
}