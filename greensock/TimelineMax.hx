package greensock;
import greensock.GSAP;

@:native("TimelineMax")
extern class TimelineMax extends greensock.GSAP.SimpleTimeline {


	public static function __init__():Void{
      trace("TimelineMax included");
        haxe.macro.Tools.includeFile("./greensock/GreenSock-JS/src/minified/TimelineMax.min.js");
    }
   ///from TimeLite
   	public function addLabel(label:String, time:Float):Dynamic;
    public function append(value:Dynamic, offset:Float):Dynamic; //deprecated in favor of add
    public function appendMultiple(tweens:Array<Dynamic>, offset:Float, align:String, stagger:Float):Dynamic; //deprecated in favor of add
    public function call(_callback:Func, ?params:Array<Dynamic>, ?scope:Dynamic, ?offset:Float, ?baseTimeOrLabel:Dynamic):Dynamic;
    public function clear(?labels:Bool):Dynamic;
   	override  public function duration(value:Float):Dynamic;
    public static function exportRoot(?vars:Dynamic, ?omitDelayedCalls:Bool):TimelineMax;
    public function from(target:Dynamic, duration:Float, vars:Dynamic, offset:Float, ?baseTimeOrLabel:Dynamic):Dynamic;
    public function fromTo(target:Dynamic, duration:Float, fromVars:Dynamic, toVars:Dynamic, offset:Float, ?baseTimeOrLabel:Dynamic):Dynamic;
    public function getChildren(?nested:Bool, ?tweens:Bool, ?timelines:Bool, ?ignoreBeforeTime:Float):Array<Dynamic>;
    public function getLabelTime(label:String):Float;
    public function getTweensOf(target:Dynamic, ?nested:Bool):Array<Dynamic>;
  	override   public function insert(value:Dynamic, timeOrLabel:Dynamic):Dynamic;//deprecated in favor of add
    public function insertMultiple(tweens:Array<Dynamic>, timeOrLabel:Dynamic, align:String, stagger:Float):Dynamic;//deprecated in favor of add
    public function remove(value:Dynamic):Dynamic;
    public function removeLabel(label:String):Dynamic;
   	override public function seek(timeOrLabel:Dynamic, ?suppressEvents:Bool):Dynamic;
    public function set(target:Dynamic, vars:Dynamic, offset:Float, ?baseTimeOrLabel:Dynamic):Dynamic;
    public function shiftChildren(amount:Float, ?adjustLabels:Bool, ?ignoreBeforeTime:Float):Dynamic;
    public function staggerFrom(targets:Array<Dynamic>, duration:Float, vars:Dynamic, stagger:Float, offset:Float, ?baseTimeOrLabel:Dynamic, ?onCompleteAll:Func, ?onCompleteAllParams:Array<Dynamic>, ?onCompleteAllScope:Dynamic):Dynamic;
    public function staggerFromTo(targets:Array<Dynamic>, duration:Float, fromVars:Dynamic, toVars:Dynamic, stagger:Float, offset:Float, ?baseTimeOrLabel:Dynamic, ?onCompleteAll:Func, ?onCompleteAllParams:Array<Dynamic>, ?onCompleteAllScope:Dynamic):Dynamic;
    public function staggerTo(targets:Array<Dynamic>, duration:Float, vars:Dynamic, stagger:Float, offset:Float, ?baseTimeOrLabel:Dynamic, ?onCompleteAll:Func, ?onCompleteAllParams:Array<Dynamic>, ?onCompleteAllScope:Dynamic):Dynamic;
    public function stop():Dynamic;
    public function to(target:Dynamic, duration:Float, vars:Params, offset:Float, ?baseTimeOrLabel:Dynamic):Dynamic;
   	

    //TimelineMAx specific


   public function addCallback(_callback:Func, timeOrLabel:Dynamic, ?params:Array<Dynamic>, ?scope:Dynamic):TimelineMax;
   public function currentLabel(?value:String):Dynamic;
   public function getActive(?nested:Bool, ?tweens:Bool, ?timelines:Bool):Array<Dynamic>;
   public function getLabelAfter(time:Float):String;
   public function getLabelBefore(time:Float):String;
   public function getLabelsArray():Array<Dynamic>;
    override public function invalidate():Dynamic;
   public function progress(value:Float):Dynamic;
   public function removeCallback(_callback:Func, ?timeOrLabel:Dynamic):TimelineMax;
   public function repeat(value:Float):Dynamic;
   public function repeatDelay(value:Float):Dynamic;
   override public function time(value:Float, ?suppressEvents:Bool):Dynamic;
   override public function totalDuration(value:Float):Dynamic;
   public function totalProgress(value:Float):Dynamic;
   public function tweenFromTo(fromTimeOrLabel:Dynamic, toTimeOrLabel:Dynamic, ?vars:Dynamic):Animation;
   public function tweenTo(timeOrLabel:Dynamic, ?vars:Dynamic):Animation;
   public function yoyo(?value:Bool):Dynamic;
}