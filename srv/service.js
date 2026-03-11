const cds  = require("@sap/cds");
class customer extends cds.ApplicationService {
  init() {
    const {Customers} = this.entities;

    this.before('UPDATE',Customers.drafts,(req)=>{
        debugger;
        const {email} = req.data;
        if(email){
            if(!email.includes('@')){
                req.error(400,"Invalid email format");
            }
        }
    })

    return super.init();
  }
}
module.exports = customer;