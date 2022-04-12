function fn() {
  var env = karate.env; // get system property 'karate.env'
  karate.log('karate.env system property was:', env);
  if (!env) {
    env = 'dev';
  }
  var config = {
    env: env,
    myVarName: 'someValue',
    userName: 'admin11',
    password: 'password11',
    _url: 'http://localhost:9891'
  }
  if (env == 'dev') {
	userName =  'admin11',
    password = 'password11'    // e.g. config.foo = 'bar';
  } else if (env == 'e2e') {
	userName = 'admin11',
    password ='password11'  }
  return config;
}