namespace customer.data.model;

using {managed} from '@sap/cds/common';
using {cuid} from '@sap/cds/common';

// define a custom data type using standard data type
type commonDataType : String(20);

// calling and using custom asects
using {customer.custom.aspect as customAspect} from './data/customAspect';
entity Customers : customAspect.customCustomer{
    key customerId : UUID;
    // firstname : commonDataType;
    // lastname : commonDataType;
    email : commonDataType;
    address : String(30);
    phoneno : Integer;
    // using enums
    status : Integer enum {
        submitted=1;
        pending=2;
        cancelled=3;
    }
    order : Association to many Orders on order.customer = $self;
}

entity Orders : cuid {
    orderDate : Date;
    status : String enum {placed; dispatched; arriving; cancelled;}
    orderType : String(10);
    customer : Association to Customers;
    products : Association to Products;
}

entity Products : cuid {
    name : String(20);
    type : String(20);
    category : String(20);
    price : Decimal(10, 2);
}