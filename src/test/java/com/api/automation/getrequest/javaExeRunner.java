package com.api.automation.getrequest;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class javaExeRunner {
	@Test
	public Karate jsrunner() {

		{
			return Karate.run("javascript").relativeTo(getClass());
		}
	}

}
