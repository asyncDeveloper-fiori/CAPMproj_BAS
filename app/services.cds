
using CustomerService as service from './customer_orders_app/annotations';

annotate service.Customers with @(
    UI : {
        SelectionFields  : [
            ID,
            address,
            email,
            phoneno,
            status
        ],
        LineItem : [
            {
                $Type:'UI.DataField',
                Value:ID
            },
            {
                $Type:'UI.DataField',
                Value:email
            },
            {
                $Type:'UI.DataField',
                Value:address
            },
            {
                $Type:'UI.DataField',
                Value:phoneno
            },
            {
                $Type : 'UI.DataField',
                Value:status
            }
        ]
    }
);
