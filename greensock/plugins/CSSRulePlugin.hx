package greensock.plugins;

@:native("CSSRulePlugin")
extern class CSSRulePlugin extends TweenPlugin {
	public static function __init__():Void{
      trace("CSSRulePlugin included");
        haxe.macro.Tools.includeFile("./greensock/GreenSock-JS/src/minified/plugins/CSSRulePlugin.min.js");
    }
    public static function getRule(selector:String):Dynamic;
}