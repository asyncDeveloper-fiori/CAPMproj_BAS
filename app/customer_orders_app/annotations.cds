using CustomerService as service from '../../srv/service';
annotate service.Customers with @(
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : '{i18n>CustomerDetails}',
            ID : 'i18nCustomerDetails',
            Target : '@UI.FieldGroup#i18nCustomerDetails',
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
        ],
    },
);

