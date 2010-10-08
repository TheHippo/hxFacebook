package facebook.js;
@:native("FB.Canvas")
extern class Canvas {
	
	public static function setAutoResize(onOrOff:Bool=true,interval:Int=1000):Void;
	public static function setSize(params:{
		x:Int,
		y:Int
	}):Void;
	
}
