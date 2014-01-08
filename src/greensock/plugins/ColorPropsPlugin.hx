package greensock.plugins;
@:native("ColorPropsPlugin")
extern class ColorPropsPlugin extends TweenPlugin {

	public static function __init__():Void{
		#if !noEmbedJSPlugin
      trace("ColorPropsPlugin included");
        haxe.macro.Tools.includeFile("./greensock/GreenSock-JS/src/minified/plugins/ColorPropsPlugin.min.js");
        #end
    }

}