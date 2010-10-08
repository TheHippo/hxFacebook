package facebook.php;
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
	
	public function getSession():Session {
		var d:Dynamic = inst.getSession();
		return if (d==null)
			null;
		else
			this.buildObject({},d);
	}
	
	public function setSession(session:Session,?cookie:Bool=true) {
		var h = new Hash<Dynamic>();
		for (f in Reflect.fields(session))
			h.set(f,Reflect.field(session,f));
		inst.setSession(Lib.associativeArrayOfHash(h),cookie);
	}
	
	inline function isIndexed(d:Dynamic):Bool
		return untyped __physeq__(__call__('array_values',d),d)
	
	inline function isArray(d:Dynamic):Bool
		return untyped __call__('is_array',d)
		
	function getValue(d:Dynamic)
		return if (this.isArray(d))
			this.buildObject({},d)
		else
			d
	
	function buildObject(dest:Dynamic,source:Dynamic):Dynamic {
		untyped {
			__php__('foreach ($source as $key=>$value) {');
				if (!this.isArray(value)) {
					Reflect.setField(dest,key,value);
				}
				else {
					if (this.isIndexed(value)) {
						var a = new Array<Dynamic>();
						__php__('foreach ($value as $v){');
							a.push(this.getValue(v));
						__php__('}');
						Reflect.setField(dest,key,a);
					}
					else
						Reflect.setField(dest,key,this.buildObject({},value));
				}			
			__php__('}');		
		}
		return dest;
	}
	
	public inline function api<T>(query:String):T
		return this.buildObject({},inst.api(query))
	
	public inline function getUser():Int
		return inst.getUser()
		
	public inline function getLogoutUrl():String
		return inst.getLogoutUrl()
		
	public inline function getLoginUrl():String
		return inst.getLoginUrl()

}
