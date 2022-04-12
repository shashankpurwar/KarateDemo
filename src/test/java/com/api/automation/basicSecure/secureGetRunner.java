package com.api.automation.basicSecure;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class secureGetRunner {
	
	@Test
	public Karate secgetRunner()
	{
		return Karate.run("basicsecureGetrequest").relativeTo(getClass());
	}

}
