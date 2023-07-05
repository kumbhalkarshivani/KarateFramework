function fn() {
var env = karate.env; // get system property 'karate.env' karate.log('karate.env system property was:', env);
if (!env) {
env = 'stage';
}

var config = {
env: env,
myVarName: 'hello karate',
baseUrl: 'https://gorest.co.in',
tokenID: 'ae18ae79708914ecf239011d55f986690eca3453798e694c05402874da0e18e8'
}

if (env == 'stage') {
// customize
// e.g. config.foo = 'bar';
} else if (env == 'e2e') {
// customize
}
return config;
}