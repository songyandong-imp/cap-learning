const cds = require('@sap/cds');

class HelloService extends cds.ApplicationService{
    sayHello(name){
        return "hello " + name;
    }
}

module.exports = HelloService;