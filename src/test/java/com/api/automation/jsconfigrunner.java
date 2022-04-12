package com.api.automation;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class jsconfigrunner {
	
	@Test
	public Karate jsrunner()
	{
		return Karate.run("jsconfig" , "basicsecureGetrequest").relativeTo(getClass());
	}

}
