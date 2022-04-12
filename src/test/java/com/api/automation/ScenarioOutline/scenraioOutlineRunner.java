package com.api.automation.ScenarioOutline;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class scenraioOutlineRunner {
	
	@Test
	public Karate soutrunner()
	{
		return Karate.run("scenariooutline").relativeTo(getClass());
	}

}
