package greensock;
import GSAP.SimpleTimeline;


@:native("TimelineLite")
extern class TimelineLite extends SimpleTimeline {


	public static function __init__():Void{
        #if !noEmbedJSPlugin
      trace("TimeLineLite included");
        haxe.macro.Tools.includeFile("./greensock/GreenSock-JS/src/minified/TimelineLite.min.js");
        #end
    }
    public function new(?vars:Dynamic):Void;
      
    
    public function addLabel(label:String, time:Float):Dynamic;
    public function append(value:Dynamic, offset:Float):Dynamic; //deprecated in favor of add
    public function appendMultiple(tweens:Array<Dynamic>, offset:Float, align:String, stagger:Float):Dynamic; //deprecated in favor of add
    public function call(_callback:Func, ?params:Array<Dynamic>, ?scope:Dynamic, ?offset:Float, ?baseTimeOrLabel:Dynamic):Dynamic;
    public function clear(?labels:Bool):Dynamic;
   	override  public function duration(value:Float):Dynamic;
    public static function exportRoot(?vars:Dynamic, ?omitDelayedCalls:Bool):TimelineLite;
    public function from(target:Dynamic, duration:Float, vars:Dynamic, offset:Float, ?baseTimeOrLabel:Dynamic):Dynamic;
    public function fromTo(target:Dynamic, duration:Float, fromVars:Dynamic, toVars:Dynamic, offset:Float, ?baseTimeOrLabel:Dynamic):Dynamic;
    public function getChildren(?nested:Bool, ?tweens:Bool, ?timelines:Bool, ?ignoreBeforeTime:Float):Array<Dynamic>;
    public function getLabelTime(label:String):Float;
    public function getTweensOf(target:Dynamic, ?nested:Bool):Array<Dynamic>;
  	override   public function insert(value:Dynamic, timeOrLabel:Dynamic):Dynamic;//deprecated in favor of add
    public function insertMultiple(tweens:Array<Dynamic>, timeOrLabel:Dynamic, align:String, stagger:Float):Dynamic;//deprecated in favor of add
  	override   public function invalidate():Dynamic;
    public function progress(value:Float):Dynamic;
    public function remove(value:Dynamic):Dynamic;
    public function removeLabel(label:String):Dynamic;
   	override public function seek(timeOrLabel:Dynamic, ?suppressEvents:Bool):Dynamic;
    public function set(target:Dynamic, vars:Dynamic, offset:Float, ?baseTimeOrLabel:Dynamic):Dynamic;
    public function shiftChildren(amount:Float, ?adjustLabels:Bool, ?ignoreBeforeTime:Float):Dynamic;
    public function staggerFrom(targets:Array<Dynamic>, duration:Float, vars:Dynamic, stagger:Float, offset:Float, ?baseTimeOrLabel:Dynamic, ?onCompleteAll:Func, ?onCompleteAllParams:Array<Dynamic>, ?onCompleteAllScope:Dynamic):Dynamic;
    public function staggerFromTo(targets:Array<Dynamic>, duration:Float, fromVars:Dynamic, toVars:Dynamic, stagger:Float, offset:Float, ?baseTimeOrLabel:Dynamic, ?onCompleteAll:Func, ?onCompleteAllParams:Array<Dynamic>, ?onCompleteAllScope:Dynamic):Dynamic;
    public function staggerTo(targets:Array<Dynamic>, duration:Float, vars:Dynamic, stagger:Float, offset:Float, ?baseTimeOrLabel:Dynamic, ?onCompleteAll:Func, ?onCompleteAllParams:Array<Dynamic>, ?onCompleteAllScope:Dynamic):Dynamic;
    public function stop():Dynamic;
    public function to(target:Dynamic, duration:Float, vars:GSAP.Params, offset:Float, ?baseTimeOrLabel:Dynamic):Dynamic;
   	override  public function totalDuration(?value:Float):Dynamic;
    public var  usesFrames(default,never):Bool;
}