package com.api.automation;

import org.junit.jupiter.api.Test;

import com.intuit.karate.Runner;

public class parallerRunner {
	
	@SuppressWarnings("deprecation")
	@Test
	public void parRunner()
	{
		Runner.parallel(getClass(), 5);
	}

}
