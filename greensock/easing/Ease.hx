package greensock.easing;

@:native("Ease") extern class Ease {

    public static function __init__():Void{
      trace("easing included");
        haxe.macro.Tools.includeFile("./greensock/GreenSock-JS/src/minified/easing/EasePack.min.js");
    }
    public function getRatio(p:Float):Float;
}
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