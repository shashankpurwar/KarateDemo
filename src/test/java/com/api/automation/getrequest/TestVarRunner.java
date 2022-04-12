package com.api.automation.getrequest;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class TestVarRunner {
	
	@Test
	public Karate testvarrun() {
		 return Karate.run("variable").relativeTo(getClass());
	}

}
