//import js.JQuery;
import greensock.GSAP;
import js.Lib;
import js.Dom;
import greensock.TweenLite;
import greensock.CSSPlugin;
class Main 
{
	var tween:TweenLite;
	var doc:js.Dom.Document;
	var b:Int;
	var logo:HtmlDom;
	function new()
	{
		trace("helleo");


		//new JQuery(js.Lib.document).ready(init);
		//new JQuery(js.Lib.window).load(init);
		Lib.window.onload=init;
	}
	function init(e:js.Event)
	{
		trace("ready");
		doc=js.Lib.document;
		logo = doc.getElementById("logo");
		logo.style.background="yellow";
		logo.style.left="300px";
		//untyped __js__("TweenLite.to('#logo',1,{left:'300px'})");
		trace("yo");
		b=0;
		//tween= TweenLite.to(this,1,{b:300,ease:Back.easeOut,onUpdate:update,onUpdateParams:[logo],onComplete:end,onCompleteParams:["{self}"]});
		TweenLite.to(logo,1,{x:"+600",onComplete:end});
		//TweenLite.set("#logo",{rotation:"+400"});

	}
	function update(logo:HtmlDom) 
	{
		//trace("b="+logo);
		//logo.style.left=b+"px";
	}
	function end(?r:TweenLite) 
	{
		trace("end "+untyped(logo.style["-webkit-transform"]));
		trace("end "+untyped(logo.style["left"]));

		//r.reverse();
	}

	static public function main()
	{
		var app = new Main();
	}
}