class Main {
	static function main()
		new Main()
		
	function new() {
		trace("hallo");
		var fb = new facebook.Facebook('155589657799304','51a52a0247335f98c0e11d631c5eb1dd',true);
		trace("getSession");
		php.Lib.dump(fb.getSession());
		trace("Query");
		trace(fb.api("/philipp.klose"));
		trace("user");
		trace(fb.getUser());
		
		php.Lib.print(untyped fb.inst.getLoginUrl());
	}
}
