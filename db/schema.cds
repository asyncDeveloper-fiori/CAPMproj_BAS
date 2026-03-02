namespace customer.data.model;

using {managed} from '@sap/cds/common';
using {cuid} from '@sap/cds/common';

// define a custom data type using standard data type
type commonDataType : String(20);
entity Customers {
    key customerId : UUID;
    firstname : commonDataType;
    lastname : commonDataType;
    email : commonDataType;
    address : String(30);
    phoneno : Integer;
}