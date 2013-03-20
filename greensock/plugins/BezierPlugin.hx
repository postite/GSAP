package greensock.plugins

@:native("BezierPlugin")
extern class BezierPlugin extends TweenPlugin {



	public static function __init__():Void{
      trace("BezierPlugin included");
        haxe.macro.Tools.includeFile("./greensock/GreenSock-JS/src/minified/plugins/BezierPlugin.min.js");
    }
    public static function bezierThrough(values:Array<Dynamic>, ?curviness:Float, ?quadratic:Bool, ?correlate:String, ?prepend:Dynamic, ?calcDifs:Bool):Dynamic;
    public static function cubicToQuadratic(a:Float, b:Float, c:Float, d:Float):Array<Dynamic>;
    public static function quadraticToCubic(a:Float, b:Float, c:Float):Dynamic;
}
