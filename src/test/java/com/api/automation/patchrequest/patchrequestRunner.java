package com.api.automation.patchrequest;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class patchrequestRunner {

	@Test
	public Karate patchRunner()
	{
		return Karate.run("patchrequest").relativeTo(getClass());
	}
}
