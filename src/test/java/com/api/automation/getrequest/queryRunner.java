package com.api.automation.getrequest;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class queryRunner {
	
	@Test
	public Karate jsonrunner()
	{
		return Karate.run("queryparam").relativeTo(getClass());
	}

}
