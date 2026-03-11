const cds  = require("@sap/cds");
class customer extends cds.ApplicationService {
  init() {
    const {Customers} = this.entities;

    this.before ('READ','Customers',req=>{
        debugger;
    })
  }
}
module.exports = customer