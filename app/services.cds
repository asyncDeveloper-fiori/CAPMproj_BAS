
using CustomerService as service from './customer_orders_app/annotations';

annotate service.Customers with @(
    UI : {
        SelectionFields  : [
            customerId,
            address,
            email,
            phoneno
        ],
        LineItem : [
            {
                $Type:'UI.DataField',
                Value:customerId
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
