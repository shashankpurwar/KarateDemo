package com.api.automation.getrequest;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class ReadDataRunner {
	
	@Test
	public Karate datarun()
	{
		return Karate.run("readdata").relativeTo(getClass());
	}

}
