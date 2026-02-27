using { customer.data.model as model } from '../db/schema';

service CustomerService {

    entity Customers as projection on model.Customers;

}