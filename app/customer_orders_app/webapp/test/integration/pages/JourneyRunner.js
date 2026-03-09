sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"com/sam/cap/customerordersapp/test/integration/pages/CustomersList",
	"com/sam/cap/customerordersapp/test/integration/pages/CustomersObjectPage"
], function (JourneyRunner, CustomersList, CustomersObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('com/sam/cap/customerordersapp') + '/test/flp.html#app-preview',
        pages: {
			onTheCustomersList: CustomersList,
			onTheCustomersObjectPage: CustomersObjectPage
        },
        async: true
    });

    return runner;
});

