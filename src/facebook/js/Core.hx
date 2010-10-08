package facebook.js;
@:native("FB")
extern class Core {

	static function api(path:String,method:String="GET",params:Dynamic=null,cb:Dynamic->Void):Void;

	static function getLoginStatus(cb:LoginStatus->Void,force:Bool=false):Void;

	static function getSession():Null<Dynamic>;

	static function init(options:{
		appId:String,
		cookie:Bool,
		logging:Bool,
		session:Dynamic,
		status:Bool,
		xfbml:Bool
	}):Void;

	static function login(cb:Dynamic->Void,?opt: {
		perms:String
	}):Void;

	static function logout(cb:Dynamic->Void):Void;
	
	static function ui(params:Dynamic,cb:Dynamic->Void):Void;

}
