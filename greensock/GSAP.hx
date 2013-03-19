// GreenSock Animation Platform (GSAP) - http://www.greensock.com/get-started-js/
// JavaScript Docs http://api.greensock.com/js/
// Version 1.0
package greensock;

typedef Func=Dynamic

typedef Shape=Dynamic

typedef TLProperties={
var delay : Float ;//- Amount of delay in seconds (or frames for frames-based tweens) before the tween should begin.
var ease : Ease ;//(or Function or String) - You can choose from various eases to control the rate of change during the animation, giving it a specific "feel". For example, Elastic.easeOut or Strong.easeInOut. For best performance, use one of the GreenSock eases (Linear, Power0, Power1, Power2, Power3, Power4, Quad, Cubic, Quart, Quint, and Strong, each with their .easeIn, .easeOut, and .easeInOut variants are included in the TweenLite, and you can load EasePack to get extras like Elastic, Back, Bounce, SlowMo, SteppedEase, Circ, Expo, and Sine). For linear animation, use the GreenSock Linear.easeNone ease. You can also define an ease by name (string) like "Strong.easeOut" or reverse style (like jQuery uses) "easeOutStrong". The default is Quad.easeOut.
var onComplete : Func ;//- A function that should be called when the tween has completed
var onCompleteParams : Array<Dynamic> ;//- An Array of parameters to pass the onComplete function. For example, TweenLite.to(element, 1, {left:"100px", onComplete:myFunc, onCompleteParams:[element, "param2"]}); To self-reference the tween instance itself in one of the parameters, use "{self}", like: onCompleteParams:["{self}", "param2"]
var onCompleteScope : Dynamic ;//- Defines the scope of the onComplete function (what "this" refers to inside that function).
var useFrames : Bool ;//- If useFrames is true, the tweens's timing will be based on frames instead of seconds because it is intially added to the root frames-based timeline. This causes both its duration and delay to be based on frames. An animations's timing mode is always determined by its parent timeline.
var immediateRender : Bool ;//- Normally when you create a tween, it begins rendering on the very next frame (update cycle) unless you specify a delay. However, if you prefer to force the tween to render immediately when it is created, set immediateRender to true. Or to prevent a from() from rendering immediately, set immediateRender to false. By default, from() tweens set immediateRender to true.
var onStart : Func ;//- A function that should be called when the tween begins (when its time changes from 0 to some other value which can happen more than once if the tween is restarted multiple times).
var onStartParams : Array<Dynamic> ;//- An Array of parameters to pass the onStart function. For example, TweenLite.to(element, 1, {left:"100px", delay:1, onStart:myFunc, onStartParams:[mc, "param2"]}); To self-reference the tween instance itself in one of the parameters, use "{self}", like: onStartParams:["{self}", "param2"]
var onStartScope : Dynamic;// - Defines the scope of the onStart function (what "this" refers to inside that function).
var onUpdate : Func;// - A function that should be called every time the tween updates (on every frame while the tween is active)
var onUpdateParams : Array<Dynamic>;// - An Array of parameters to pass the onUpdate function. For example, TweenLite.to(element, 1, {left:"100px", onUpdate:myFunc, onUpdateParams:[mc, "param2"]}); To self-reference the tween instance itself in one of the parameters, use "{self}", like: onUpdateParams:["{self}", "param2"]
var onUpdateScope : Dynamic ;//- Defines the scope of the onUpdate function (what "this" refers to inside that function).
var onReverseComplete : Func;// - A function that should be called when the tween has reached its beginning again from the reverse direction. For example, if reverse() is called the tween will move back towards its beginning and when its time reaches 0, onReverseComplete will be called. This can also happen if the tween is placed in a TimelineLite or TimelineMax instance that gets reversed and plays the tween backwards to (or past) the beginning.
var onReverseCompleteParams : Array<Dynamic>;// - An Array of parameters to pass the onReverseComplete function. For example, TweenLite.to(element, 1, {left:"100px", onReverseComplete:myFunction, onReverseCompleteParams:[mc, "param2"]}); To self-reference the tween instance itself in one of the parameters, use "{self}", like: onReverseCompleteParams:["{self}", "param2"]
var onReverseCompleteScope : Dynamic;// - Defines the scope of the onReverseComplete function (what "this" refers to inside that function).
var paused : Bool ;//- If true, the tween will pause itself immediately upon creation.
var autoCSS : Bool ;//- Animating css-related properties of DOM elements requires the CSSPlugin which means that normally you'd need to wrap css-related properties in a css:{} object like TweenLite.to(element, 2, {css:{left:"200px", top:"100px"}, ease:Linear.easeNone}); to indicate your intent (and to tell GSAP to feed those values to the CSSPlugin), but since animating css-related properties is so common, GSAP implements some logic internally that allows you to omit the css:{} wrapper (meaning you could rewrite the above tween as TweenLite.to(element, 2, {left:"200px", top:"100px", ease:Linear.easeNone});). By default, it will check to see if the target is a DOM element. If so, and if you haven't defined a css:{} object, it will create one for you and populate it with any properties that aren't reserved (like onComplete, ease, etc. or other plugin properties) and that don't already exist directly on the target itself (like if you created a custom "xpos" property on your element, that won't get added to the css:{} object). To prevent GSAP from automatically creating the css wrapper for you, simply set autoCSS:false. This is rarely useful, but if you suspect that GSAP is interpreting certain properties as css-related when it shouldn't be, try setting autoCSS:false or manually define your own css:{} object. It is perfectly acceptable to always create css:{} wrappers for your css-related properties. In fact, that results in a slight speed boost because it avoids some parsing logic when the tween gets rendered for the first time (the speed boost is probably imperceptible unless you're tweening thousands of DOM elements simultaneously).
var overwrite : String ;/*(or integer) - Controls how (and if) other tweens of the same target are overwritten. There are several modes to choose from, but "auto" is the default (although you can change the default mode using the TweenLite.defaultOverwrite property):
"none" (0) (or false) - no overwriting will occur.
"all" (1) (or true) - immediately overwrites all existing tweens of the same target even if they haven't started yet or don't have conflicting properties.
"auto" (2) - when the tween renders for the first time, it will analyze tweens of the same target that are currently active/running and only overwrite individual tweening properties that overlap/conflict. Tweens that haven't begun yet are ignored. For example, if another active tween is found that is tweening 3 properties, only 1 of which it shares in common with the new tween, the other 2 properties will be left alone. Only the conflicting property gets overwritten/killed. This is the default mode and typically the most intuitive for developers.
"concurrent" (3) - when the tween renders for the first time, it kills only the active (in-progress) tweens of the same target regardless of whether or not they contain conflicting properties. Like a mix of "all" and "auto". Good for situations where you only want one tween controling the target at a time.
"allOnStart" (4) - Identical to "all" but waits to run the overwrite logic until the tween begins (after any delay). Kills tweens of the same target even if they don't contain conflicting properties or haven't started yet.
"preexisting" (5) - when the tween renders for the first time, it kills only the tweens of the same target that existed BEFORE this tween was created regardless of their scheduled start times. So, for example, if you create a tween with a delay of 10 and then a tween with a delay of 1 and then a tween with a delay of 2 (all of the same target), the 2nd tween would overwrite the first but not the second even though scheduling might seem to dictate otherwise. "preexisting" only cares about the order in which the instances were actually created. This can be useful when the order in which your code runs plays a critical role.

*/
}
typedef Params={

    >TLProperties,
    
}
//com.greensock.core
@:native("Animation")
extern class Animation {
    public var data:Dynamic;
    public static var ticker:Shape;
    public var timeline(default,never):SimpleTimeline;
    public var vars:Dynamic;

    public function Animation(duration:Float, ?vars:Dynamic):Void;
    public function delay(value:Float):Dynamic;
    public function duration(value:Float):Dynamic;
    public function eventCallback(type:String, ?__callback:Func, ?params:Array<Dynamic>, ?scope:Dynamic):Dynamic;
    public function invalidate():Dynamic;
    public function kill(?vars:Dynamic, ?target:Dynamic):Dynamic;
    public function pause(?atTime:Dynamic, ?suppressEvents:Bool):Dynamic;
    public function paused(?value:Bool):Dynamic;
    public function play(?from:Dynamic, ?suppressEvents:Bool):Dynamic;
    public function restart(?includeDelay:Bool, ?suppressEvents:Bool):Dynamic;
    public function resume(?from:Dynamic, ?suppressEvents:Bool):Dynamic;
    public function reverse(?from:Dynamic, ?suppressEvents:Bool):Dynamic;
    public function reversed(?value:Bool):Dynamic;
    public function seek(time:Dynamic, ?suppressEvents:Bool):Dynamic;
    public function startTime(value:Float):Dynamic;
    public function time(value:Float, ?suppressEvents:Bool):Dynamic;
    public function timeScale(value:Float):Dynamic;
    public function totalDuration(value:Float):Dynamic;
    public function totalTime(time:Float, ?suppressEvents:Bool):Dynamic;
}
@:native("SimpleTimeline")
extern class SimpleTimeline extends Animation {
   public var autoRemoveChildren:Bool;
   public var smoothChildTiming:Bool;

    public function insert(tween:Dynamic, time:Dynamic):Dynamic;
    public function render(time:Float, ?suppressEvents:Bool, ?force:Bool):Void;
}

//com.greensock
@:native("TimelineLite")
extern class TimelineLite extends SimpleTimeline {
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
    public function to(target:Dynamic, duration:Float, vars:Params, offset:Float, ?baseTimeOrLabel:Dynamic):Dynamic;
   override  public function totalDuration(value:Float):Dynamic;
    public var  usesFrames(default,never):Bool;
}

@:native("TimelineMax")
extern class TimelineMax {
   public function addCallback(_callback:Func, timeOrLabel:Dynamic, ?params:Array<Dynamic>, ?scope:Dynamic):TimelineMax;
   public function currentLabel(?value:String):Dynamic;
   public function getActive(?nested:Bool, ?tweens:Bool, ?timelines:Bool):Array<Dynamic>;
   public function getLabelAfter(time:Float):String;
   public function getLabelBefore(time:Float):String;
   public function getLabelsArray():Array<Dynamic>;
   public function invalidate():Dynamic;
   public function progress(value:Float):Dynamic;
   public function removeCallback(_callback:Func, ?timeOrLabel:Dynamic):TimelineMax;
   public function repeat(value:Float):Dynamic;
   public function repeatDelay(value:Float):Dynamic;
   public function time(value:Float, ?suppressEvents:Bool):Dynamic;
   public function totalDuration(value:Float):Dynamic;
   public function totalProgress(value:Float):Dynamic;
   public function tweenFromTo(fromTimeOrLabel:Dynamic, toTimeOrLabel:Dynamic, ?vars:Dynamic):TweenLite;
   public function tweenTo(timeOrLabel:Dynamic, ?vars:Dynamic):TweenLite;
   public function yoyo(?value:Bool):Dynamic;
}

@:native("TweenLite")
extern class TweenLite extends Animation {
    public var defaultEase:Ease;
    public static var defaultOverwrite:String;
    public var target(default,never):Dynamic;
    public var ticker:Dynamic;

    public static function __init__():Void{

        
        haxe.macro.Tools.includeFile("./greensock/GreenSock-JS/src/minified/easing/EasePack.min.js");
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

@:native("TweenMax")
extern class TweenMax extends TweenLite {
    public static function __init__():Void{

        
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

//com.greensock.easing

@:native("Back") extern class Back {
    public static var easeIn;
    public static var easeInOut;
    public static var easeOut;
}
@:native("Bounce") extern class Bounce {
    public static var easeIn;
    public static var easeInOut;
    public static var easeOut;
}
@:native("Circ") extern class Circ {
    public static var easeIn;
    public static var easeInOut;
    public static var easeOut;
}
@:native("Cubic") extern class Cubic {
    public static var easeIn:Ease;
    public static var easeInOut:Ease;
    public static var easeOut:Ease;
}

@:native("Ease") extern class Ease {
    public function getRatio(p:Float):Float;
}

@:native("EaseLookup") extern class EaseLookup {
    public static function find(name:String):Ease;
}
@:native("Elastic") extern class Elastic {
    public static var easeIn;
    public static var easeInOut;
    public static var easeOut;
}
@:native("Expo") extern class Expo {
    public static var easeIn;
    public static var easeInOut;
    public static var easeOut;
}
@:native("Linear") extern class Linear {
    public static var ease:Linear;
    public static var easeIn:Linear;
    public static var easeInOut:Linear;
    public static var easeNone:Linear;
    public static var easeOut:Linear;
}
@:native("Power0") extern class Power0 {
    public static var easeIn:Ease;
    public static var easeInOut:Ease;
    public static var easeOut:Ease;
}
@:native("Power1") extern class Power1 {
    public static var easeIn:Ease;
    public static var easeInOut:Ease;
    public static var easeOut:Ease;
}
@:native("Power2")
extern class Power2 {
    public static var easeIn:Ease;
    public static var easeInOut:Ease;
    public static var easeOut:Ease;
}
@:native("Power3") extern class Power3 {
    public static var easeIn:Ease;
    public static var easeInOut:Ease;
    public static var easeOut:Ease;
}
@:native("Power4") extern class Power4 {
    public static var easeIn:Ease;
    public static var easeInOut:Ease;
    public static var easeOut:Ease;
}
@:native("Quad") extern class Quad {
    public static var easeIn:Ease;
    public static var easeInOut:Ease;
    public static var easeOut:Ease;
}
@:native("Quart") extern class Quart {
    public static var easeIn:Ease;
    public static var easeInOut:Ease;
    public static var easeOut:Ease;
}
@:native("Quint") extern class Quint {
    public static var easeIn:Ease;
    public static var easeInOut:Ease;
    public static var easeOut:Ease;
}
@:native("Sine") extern class Sine {
    public static var easeIn;
    public static var easeInOut;
    public static var easeOut;
}
@:native("SlowMo") extern class SlowMo extends Ease{
    public static var ease:SlowMo;

    public  function SlowMo(linearRatio:Float, power:Float, yoyoMode:Bool):Void;
    public  function config(linearRatio:Float, power:Float, yoyoMode:Bool):SlowMo;
    override public  function getRatio(p:Float):Float;
}
@:native("SteppedEase") extern class SteppedEase extends Ease {

    public static function config(steps:Float):SteppedEase;
    override public function getRatio(p:Float):Float;
}
@:native("Strong") extern class Strong {
    public static var easeIn:Ease;
    public static var easeInOut:Ease;
    public static var easeOut:Ease;
}
/*
//com.greensock.plugins
extern class BezierPlugin extends TweenPlugin {
    bezierThrough(values:Array<Dynamic>, ?curviness:Float, ?quadratic:Bool, ?correlate:String, ?prepend:Dynamic, ?calcDifs:Bool):Dynamic;
    cubicToQuadratic(a:Float, b:Float, c:Float, d:Float):Array<Dynamic>;
    quadraticToCubic(a:Float, b:Float, c:Float):Dynamic;
}
extern class ColorPropsPlugin extends TweenPlugin {

}
*/
extern class CSSPlugin extends TweenPlugin {
    public static function __init__():Void{
        haxe.macro.Tools.includeFile("./greensock/GreenSock-JS/src/minified/plugins/CSSPlugin.min.js");
    }
}
/*
extern class CSSRulePlugin extends TweenPlugin {
    getRule(selector:String):Dynamic;
}
extern class EaselPlugin extends TweenPlugin {

}
extern class RaphaelPlugin extends TweenPlugin {

}
extern class RoundPropsPlugin extends TweenPlugin {

}
extern class ScrollToPlugin extends TweenPlugin {

}
*/
extern class TweenPlugin {
    public function activate(plugins:Array<Dynamic>):Bool;
}
/*



*/