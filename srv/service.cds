using { customer.data.model as model } from '../db/schema';

service CustomerService {
    @odata.draft.enabled
    entity Customers as projection on model.Customers;
    entity Products as projection on model.Products;
    entity Orders as projection on model.Orders;

}

// annotate CustomerService.Customers with @odata.draft.enabled ;
