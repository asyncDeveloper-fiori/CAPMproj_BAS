using CustomerService as service from '../../srv/service';
annotate service.Customers with @(
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : '{i18n>CustomerDetails}',
            ID : 'i18nCustomerDetails',
            Target : '@UI.FieldGroup#i18nCustomerDetails',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : '{i18n>Orderdeatils}',
            ID : 'i18nOrderdeatils',
            Target : 'order/@UI.LineItem#i18nOrderdeatils',
        },
    ],
    UI.FieldGroup #i18nCustomerDetails : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : firstname,
                Label : '{i18n>Firstname}',
            },
            {
                $Type : 'UI.DataField',
                Value : lastname,
                Label : '{i18n>Lastname}',
            },
            {
                $Type : 'UI.DataField',
                Value : address,
            },
            {
                $Type : 'UI.DataField',
                Value : email,
                Label : '{i18n>Email}',
            },
            {
                $Type : 'UI.DataField',
                Value : phoneno,
                Label : '{i18n>Phoneno}',
            },
            {
                $Type : 'UI.DataField',
                Value : status,
                Label : '{i18n>Status}',
            },
        ],
    },
);

annotate service.Orders with @(
    UI.LineItem #i18nOrderdeatils : [
        {
            $Type : 'UI.DataField',
            Value : customer_ID,
            Label : '{i18n>Customerid}',
        },
        {
            $Type : 'UI.DataField',
            Value : ID,
            Label : '{i18n>Id}',
        },
        {
            $Type : 'UI.DataField',
            Value : orderDate,
            Label : '{i18n>Orderdate}',
        },
        {
            $Type : 'UI.DataField',
            Value : orderType,
            Label : '{i18n>Ordertype}',
        },
        {
            $Type : 'UI.DataField',
            Value : products_ID,
            Label : '{i18n>Productsid}',
        },
        {
            $Type : 'UI.DataField',
            Value : status,
            Label : '{i18n>Status1}',
        },
    ]
);

annotate service.Orders with {
    products @(
        Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Products',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : products_ID,
                    ValueListProperty : 'ID',
                },
            ],
            Label : 'Products',
        },
        Common.ValueListWithFixedValues : true,
)};

