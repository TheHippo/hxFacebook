package facebook.js;

typedef Query = Dynamic;

@:native("FB.Data")
class Data {

	public static function query(template:String,data:Dynamic):Query;
	
	public static function waitOn(dependencies:Array<Query>,cb:Array<Dynamic>->Void):Void;

}
