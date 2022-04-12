package com.api.automation.postRequest;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class TestPostRunner {
	
	@Test
	public Karate postrunner()
	{
		return Karate.run("postrequest").relativeTo(getClass());
	}

}
