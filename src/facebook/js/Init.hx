package facebook.js;
class Init {
	public static function load(?locale:String='en_US',?id:String="fb-root") {
		var e = js.Lib.document.createElement("script");
		untyped  {
			e.async = true;
			e.src = js.Lib.window.location.protocol + '//connect.facebook.net/'+locale+'/all.js';
		}
		js.Lib.document.getElementById(id).appendChild(e);
	}
	
	public static function start(start:Void->Void) {
		untyped js.Lib.window.fbAsyncInit = start;
	}
}
