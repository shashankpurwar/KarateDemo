package com.api.automation.getrequest;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class SchemaValidateRunner {
	
	@Test
	public Karate svalidaterun()
	{
		return  com.intuit.karate.junit5.Karate.run("schemaValidation").relativeTo(getClass());
	}

}
