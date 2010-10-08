class Main {
	static function main()
		new Main()
		
	function new() {
		trace("hallo");
		var fb = new facebook.Facebook('155589657799304','51a52a0247335f98c0e11d631c5eb1dd',true);
		trace("getSession");
		
		var session:facebook.Session = {
			session_key : "2.gcgazgwSnS6w2mH168wsWg__.3600.1286384400-1154673536", 
			uid : "1154673536", 
			expires : 1286384400, 
			secret : "0WctSVerG5EXsIq6D1b3sA__", 
			base_domain : "thehippo.de", 
			access_token : "155589657799304|2.gcgazgwSnS6w2mH168wsWg__.3600.1286384400-1154673536|3-RXzrX4CM7kZAEsnX7Ez-D8qOk", 
			sig : "686715be9137d1f4cd5c46ba288cff08"
		}
		fb.setSession(session);
		trace(fb.getSession());
		trace("Query");
		trace(fb.api("/me/photos?fields=source,picture&until=now&since=0"));
		trace("user");
		trace(fb.getUser());
		
		php.Lib.print(untyped fb.inst.getLoginUrl());
	}
}
