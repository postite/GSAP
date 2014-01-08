// GreenSock Animation Platform (GSAP) - http://www.greensock.com/get-started-js/
// JavaScript Docs http://api.greensock.com/js/
// Version 1.0
package greensock;
//import greensock.easing.Ease;
typedef Func=Dynamic

typedef Shape=Dynamic

// typedef TLProperties={
// var delay : Float ;//- Amount of delay in seconds (or frames for frames-based tweens) before the tween should begin.
// var ease : Ease ;//(or Function or String) - You can choose from various eases to control the rate of change during the animation, giving it a specific "feel". For example, Elastic.easeOut or Strong.easeInOut. For best performance, use one of the GreenSock eases (Linear, Power0, Power1, Power2, Power3, Power4, Quad, Cubic, Quart, Quint, and Strong, each with their .easeIn, .easeOut, and .easeInOut variants are included in the TweenLite, and you can load EasePack to get extras like Elastic, Back, Bounce, SlowMo, SteppedEase, Circ, Expo, and Sine). For linear animation, use the GreenSock Linear.easeNone ease. You can also define an ease by name (string) like "Strong.easeOut" or reverse style (like jQuery uses) "easeOutStrong". The default is Quad.easeOut.
// var onComplete : Func ;//- A function that should be called when the tween has completed
// var onCompleteParams : Array<Dynamic> ;//- An Array of parameters to pass the onComplete function. For example, TweenLite.to(element, 1, {left:"100px", onComplete:myFunc, onCompleteParams:[element, "param2"]}); To self-reference the tween instance itself in one of the parameters, use "{self}", like: onCompleteParams:["{self}", "param2"]
// var onCompleteScope : Dynamic ;//- Defines the scope of the onComplete function (what "this" refers to inside that function).
// var useFrames : Bool ;//- If useFrames is true, the tweens's timing will be based on frames instead of seconds because it is intially added to the root frames-based timeline. This causes both its duration and delay to be based on frames. An animations's timing mode is always determined by its parent timeline.
// var immediateRender : Bool ;//- Normally when you create a tween, it begins rendering on the very next frame (update cycle) unless you specify a delay. However, if you prefer to force the tween to render immediately when it is created, set immediateRender to true. Or to prevent a from() from rendering immediately, set immediateRender to false. By default, from() tweens set immediateRender to true.
// var onStart : Func ;//- A function that should be called when the tween begins (when its time changes from 0 to some other value which can happen more than once if the tween is restarted multiple times).
// var onStartParams : Array<Dynamic> ;//- An Array of parameters to pass the onStart function. For example, TweenLite.to(element, 1, {left:"100px", delay:1, onStart:myFunc, onStartParams:[mc, "param2"]}); To self-reference the tween instance itself in one of the parameters, use "{self}", like: onStartParams:["{self}", "param2"]
// var onStartScope : Dynamic;// - Defines the scope of the onStart function (what "this" refers to inside that function).
// var onUpdate : Func;// - A function that should be called every time the tween updates (on every frame while the tween is active)
// var onUpdateParams : Array<Dynamic>;// - An Array of parameters to pass the onUpdate function. For example, TweenLite.to(element, 1, {left:"100px", onUpdate:myFunc, onUpdateParams:[mc, "param2"]}); To self-reference the tween instance itself in one of the parameters, use "{self}", like: onUpdateParams:["{self}", "param2"]
// var onUpdateScope : Dynamic ;//- Defines the scope of the onUpdate function (what "this" refers to inside that function).
// var onReverseComplete : Func;// - A function that should be called when the tween has reached its beginning again from the reverse direction. For example, if reverse() is called the tween will move back towards its beginning and when its time reaches 0, onReverseComplete will be called. This can also happen if the tween is placed in a TimelineLite or TimelineMax instance that gets reversed and plays the tween backwards to (or past) the beginning.
// var onReverseCompleteParams : Array<Dynamic>;// - An Array of parameters to pass the onReverseComplete function. For example, TweenLite.to(element, 1, {left:"100px", onReverseComplete:myFunction, onReverseCompleteParams:[mc, "param2"]}); To self-reference the tween instance itself in one of the parameters, use "{self}", like: onReverseCompleteParams:["{self}", "param2"]
// var onReverseCompleteScope : Dynamic;// - Defines the scope of the onReverseComplete function (what "this" refers to inside that function).
// var paused : Bool ;//- If true, the tween will pause itself immediately upon creation.
// var autoCSS : Bool ;//- Animating css-related properties of DOM elements requires the CSSPlugin which means that normally you'd need to wrap css-related properties in a css:{} object like TweenLite.to(element, 2, {css:{left:"200px", top:"100px"}, ease:Linear.easeNone}); to indicate your intent (and to tell GSAP to feed those values to the CSSPlugin), but since animating css-related properties is so common, GSAP implements some logic internally that allows you to omit the css:{} wrapper (meaning you could rewrite the above tween as TweenLite.to(element, 2, {left:"200px", top:"100px", ease:Linear.easeNone});). By default, it will check to see if the target is a DOM element. If so, and if you haven't defined a css:{} object, it will create one for you and populate it with any properties that aren't reserved (like onComplete, ease, etc. or other plugin properties) and that don't already exist directly on the target itself (like if you created a custom "xpos" property on your element, that won't get added to the css:{} object). To prevent GSAP from automatically creating the css wrapper for you, simply set autoCSS:false. This is rarely useful, but if you suspect that GSAP is interpreting certain properties as css-related when it shouldn't be, try setting autoCSS:false or manually define your own css:{} object. It is perfectly acceptable to always create css:{} wrappers for your css-related properties. In fact, that results in a slight speed boost because it avoids some parsing logic when the tween gets rendered for the first time (the speed boost is probably imperceptible unless you're tweening thousands of DOM elements simultaneously).
// var overwrite : String ;/*(or integer) - Controls how (and if) other tweens of the same target are overwritten. There are several modes to choose from, but "auto" is the default (although you can change the default mode using the TweenLite.defaultOverwrite property):
// "none" (0) (or false) - no overwriting will occur.
// "all" (1) (or true) - immediately overwrites all existing tweens of the same target even if they haven't started yet or don't have conflicting properties.
// "auto" (2) - when the tween renders for the first time, it will analyze tweens of the same target that are currently active/running and only overwrite individual tweening properties that overlap/conflict. Tweens that haven't begun yet are ignored. For example, if another active tween is found that is tweening 3 properties, only 1 of which it shares in common with the new tween, the other 2 properties will be left alone. Only the conflicting property gets overwritten/killed. This is the default mode and typically the most intuitive for developers.
// "concurrent" (3) - when the tween renders for the first time, it kills only the active (in-progress) tweens of the same target regardless of whether or not they contain conflicting properties. Like a mix of "all" and "auto". Good for situations where you only want one tween controling the target at a time.
// "allOnStart" (4) - Identical to "all" but waits to run the overwrite logic until the tween begins (after any delay). Kills tweens of the same target even if they don't contain conflicting properties or haven't started yet.
// "preexisting" (5) - when the tween renders for the first time, it kills only the tweens of the same target that existed BEFORE this tween was created regardless of their scheduled start times. So, for example, if you create a tween with a delay of 10 and then a tween with a delay of 1 and then a tween with a delay of 2 (all of the same target), the 2nd tween would overwrite the first but not the second even though scheduling might seem to dictate otherwise. "preexisting" only cares about the order in which the instances were actually created. This can be useful when the order in which your code runs plays a critical role.

// */
// }
class GSAP{}
typedef Params=Dynamic
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
    public function time(?value:Float, ?suppressEvents:Bool):Dynamic;
    public function timeScale(value:Float):Dynamic;
    public function totalDuration(?value:Float):Float;
    public function totalTime(time:Float, ?suppressEvents:Bool):Dynamic;
}
@:native("SimpleTimeline")
extern class SimpleTimeline extends Animation {
   public var autoRemoveChildren:Bool;
   public var smoothChildTiming:Bool;

    public function insert(tween:Dynamic, time:Dynamic):Dynamic;
    public function render(time:Float, ?suppressEvents:Bool, ?force:Bool):Void;
}






