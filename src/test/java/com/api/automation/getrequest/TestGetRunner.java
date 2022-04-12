package com.api.automation.getrequest;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class TestGetRunner {
	
	@Test
	public Karate testrun()
	{
		return Karate.run("getrequest","getResponse","validateJsonArray").relativeTo(getClass());
	}
	
	//@Test
	//public Karate testrunusingclassPath()
	//{
		//return Karate.run("classpath:com/api/automation/getrequest/getrequest.feature");
	//}
	
	

}
