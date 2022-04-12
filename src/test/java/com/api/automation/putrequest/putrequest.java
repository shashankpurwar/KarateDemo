package com.api.automation.putrequest;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class putrequest {
	
	@Test
	public Karate putrunner()
	{
		return Karate.run("putrequest2").relativeTo(getClass());
	}

}
