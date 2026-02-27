namespace customer.data.model;

entity Customers{
    key customerId : UUID;
    firstname : String(20);
    lastname : String(20);
    email : String(20);
    address : String(30);
    phoneno : Integer;
}