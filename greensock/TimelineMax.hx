packge greensock;

@:native("TimelineMax")
extern class TimelineMax extends TimelineLite {


	public static function __init__():Void{
      trace("TimelineMax included");
        haxe.macro.Tools.includeFile("./greensock/GreenSock-JS/src/minified/TimelineMax.min.js");
    }
   ///from TimeLite




   
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
   public function totalDuration(value:Float):Dynamic;
   public function totalProgress(value:Float):Dynamic;
   public function tweenFromTo(fromTimeOrLabel:Dynamic, toTimeOrLabel:Dynamic, ?vars:Dynamic):TweenLite;
   public function tweenTo(timeOrLabel:Dynamic, ?vars:Dynamic):TweenLite;
   public function yoyo(?value:Bool):Dynamic;
}