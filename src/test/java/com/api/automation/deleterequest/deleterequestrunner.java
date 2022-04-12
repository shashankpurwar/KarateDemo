package com.api.automation.deleterequest;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class deleterequestrunner {

	@Test
	public Karate delreuuner() {

		{
			return Karate.run("deleterequest").relativeTo(getClass());
		}

	}
}