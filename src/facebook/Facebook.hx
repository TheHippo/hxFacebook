package facebook;
import php.Lib;

using Lambda;

class Facebook {
	
	//do some magic
	static function __init__()
		untyped __php__("require 'facebook.php'")
		
	var inst:Dynamic;
	
	public function new(appId:String,secret:String,?cookie:Bool,?domain:String,?fileUpload:String) {
		var config = new Hash<Dynamic>();
		config.set("appId",appId);
		config.set("secret",secret);
		if (cookie!=null)
			config.set("cookie",cookie);
		if (domain!=null)
			config.set("domain",domain);
		if (fileUpload!=null)
			config.set("fileUpload",fileUpload);
		inst = untyped __call__('new Facebook',Lib.associativeArrayOfHash(config));
	}
	
	public function getSession() {
		return untyped inst.getSession();
	}
	
	public function api<T>(query:String):T {
		var d = inst.api(query);
		Lib.dump(d);
		var res = Lib.hashOfAssociativeArray(d);
		var ret:Dynamic = {};
		for (k in res.keys())
			Reflect.setField(ret,k,res.get(k));
		return ret;	
	}
	
	public function getUser():Int
		return inst.getUser()

}
