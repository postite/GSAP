package greensock;


@:native("TweenMax")
extern class TweenMax extends TweenLite {
    public static function __init__():Void{

        trace("include TweenMax");
        haxe.macro.Tools.includeFile("./greensock/GreenSock-JS/src/minified/easing/EasePack.min.js");
        haxe.macro.Tools.includeFile("./greensock/GreenSock-JS/src/minified/TweenMax.min.js");

    }
    public static function delayedCall(delay:Float, _callback:Func, ?params:Array<Dynamic>, ?scope:Dynamic, ?useFrames:Bool):TweenMax;
    public static function from(target:Dynamic, duration:Float, vars:Dynamic):TweenMax;
    public static function fromTo(target:Dynamic, duration:Float, fromVars:Dynamic, toVars:Dynamic):TweenMax;
    public static function getAllTweens(?includeTimelines:Bool):Array<Dynamic>;
    public static function getTweensOf(target:Dynamic):Array<Dynamic>;
    override public function invalidate():Dynamic;
    public static function isTweening(target:Dynamic):Bool;
    public static function killAll(?complete:Bool, ?tweens:Bool, ?delayedCalls:Bool, ?timelines:Bool):Void;
    public static function killChildTweensOf(parent:Dynamic, ?complete:Bool):Void;
    public static function killDelayedCallsTo(func:Func):Void;
    public static function killTweensOf(target:Dynamic, ?vars:Dynamic):Void;
    public static function pauseAll(?tweens:Bool, ?delayedCalls:Bool, ?timelines:Bool):Void;
    public function progress(value:Float):Dynamic;
    public  function repeat(value:Float):Dynamic;
    public  function repeatDelay(value:Float):Dynamic;
    public static function resumeAll(?tweens:Bool, ?delayedCalls:Bool, ?timelines:Bool):Void;
    public static function set(target:Dynamic, vars:Dynamic):TweenMax;
    public static function staggerFrom(targets:Array<Dynamic>, duration:Float, vars:Dynamic, stagger:Float, ?onCompleteAll:Func, ?onCompleteAllParams:Array<Dynamic>, ?onCompleteAllScope:Dynamic):Array<Dynamic>;
    public static function staggerFromTo(targets:Array<Dynamic>, duration:Float, fromVars:Dynamic, toVars:Dynamic, stagger:Float, ?onCompleteAll:Func, ?onCompleteAllParams:Array<Dynamic>, ?onCompleteAllScope:Dynamic):Array<Dynamic>;
    public static function staggerTo(targets:Array<Dynamic>, duration:Float, vars:Dynamic, stagger:Float, ?onCompleteAll:Func, ?onCompleteAllParams:Array<Dynamic>, ?onCompleteAllScope:Dynamic):Array<Dynamic>;
    override public function time(value:Float, ?suppressEvents:Bool):Dynamic;
    public static function to(target:Dynamic, duration:Float, vars:Dynamic):TweenMax;
    override public  function totalDuration(value:Float):Dynamic;
     public  function totalProgress(value:Float):Dynamic;
     public  function updateTo(vars:Dynamic, ?resetDuration:Bool):Dynamic;
     public  function yoyo(?value:Bool):Dynamic;
}
