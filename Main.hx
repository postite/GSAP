import js.JQuery;
import greensock.GSAP;
class Main 
{
	var tween:TweenLite;
	var doc:js.Dom.Document;
	function new()
	{
		trace("helleo");


		//new JQuery(js.Lib.document).ready(init);
		new JQuery(js.Lib.window).load(init);

	}
	function init(e) 
	{
		trace("ready");
		doc=js.Lib.document;
		var logo = doc.getElementById("logo");
		logo.style.background="yellow";
		logo.style.left="300px";
		//untyped __js__("TweenLite.to('#logo',1,{left:'300px'})");
		trace("yo");
		 tween= TweenLite.to(logo,1,{x:300,ease:Back.easeOut,onComplete:end,onCompleteParams:["{self}"]});
		
		//TweenLite.set("#logo",{rotation:"+400"});

	}
	function end(r:TweenLite) 
	{
		//trace("end "+r);
		r.reverse();
	}

	static public function main()
	{
		var app = new Main();
	}
}