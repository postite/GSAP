package greensock;
import GSAP.Animation;

//import greensock.easing.Ease;
import GSAP.Func;

@:native("TweenLite")
extern class TweenLite extends Animation {
    //public var defaultEase:Ease;
    public static var defaultOverwrite:String;
    public var target(default,never):Dynamic;
    public var ticker:Dynamic;

    public static function __init__():Void{
    	trace("TweenLite included");
        
       // haxe.macro.Tools.includeFile("./greensock/GreenSock-JS/src/minified/easing/EasePack.min.js");
        haxe.macro.Tools.includeFile("./greensock/GreenSock-JS/src/minified/TweenLite.min.js");

    }
    public function new(target:Dynamic,duration:Float,vars:Dynamic):Void;
  
    
    public static  function delayedCall(delay:Float, _callback:Func, ?params:Array<Dynamic>, ?scope:Dynamic, ?useFrames:Bool):TweenLite;
    public static  function from(target:Dynamic, duration:Float, vars:Dynamic):TweenLite;
    public static function fromTo(target:Dynamic, duration:Float, fromVars:Dynamic, toVars:Dynamic):TweenLite;
    public static function getTweensOf(target:Dynamic):Array<Dynamic>;
    override  public function invalidate():Dynamic;
    public  static function killDelayedCallsTo(func:Func):Void;
    public static function killTweensOf(target:Dynamic, ?vars:Dynamic):Void;
    public static function set(target:Dynamic, vars:Dynamic):TweenLite;
    public static function to(target:Dynamic, duration:Float, vars:Dynamic):TweenLite;
}