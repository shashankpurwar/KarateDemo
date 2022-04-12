package com.api.automation.postRequest.fileUpload;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class fileUploadRunner {

	@Test
	public Karate postrunner()
	{
		return Karate.run("fileupload").relativeTo(getClass());
	}
}
