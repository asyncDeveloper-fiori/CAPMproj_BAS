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
}