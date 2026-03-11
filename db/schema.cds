namespace customer.data.model;

using {managed} from '@sap/cds/common';
using {cuid} from '@sap/cds/common';

// define a custom data type using standard data type
type commonDataType : String(20);

// calling and using custom asects
using {customer.custom.aspect as customAspect} from './data/customAspect';
entity Customers : managed, customAspect.customCustomer,cuid{
    // key customerId : UUID;
    // firstname : commonDataType;
    // lastname : commonDataType;
    // email : commonDataType default 'sam@gmail.com';
    email : commonDataType;
    address : String(30) @title : '{i18n>address}';
    phoneno : commonDataType;
    // using enums
    status : Integer enum {
        submitted=1;
        pending=2;
        cancelled=3;
    }
    order : Composition of many Orders on order.customer = $self;
}
// after making componsition orders and products will only appear if there is customers

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

// unmanaged association 
entity Employees {
    address : Association to Addresses on address.ID = address_ID;
    address_ID : Integer;
}

entity Addresses{
    key ID : Integer;
}