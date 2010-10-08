package facebook.js;

@:native("FB.Event")
extern class Event {

	public static function subscribe(name:String,cb:Dynamic->Void):Void;
	
	public static function unsubscribe(name:String,cb:Dynamic->Void):Void;

}
