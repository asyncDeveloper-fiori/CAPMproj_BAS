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

    const {Products} = this.entities;

    this.after('READ',Products,(results,req)=>{
        let data = results.map((itm)=>{
            itm.price=100;
            return itm;
        })
        return req.data = data;
    })

    return super.init();
  }
}
module.exports = customer;