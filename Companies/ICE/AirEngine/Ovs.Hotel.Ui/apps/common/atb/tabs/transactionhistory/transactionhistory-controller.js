(function() {
    "use strict";

    angular
        .module("hotelApp")
        .controller("transactionHistoryController", transactionHistoryController);

    transactionHistoryController.$inject = [
        "$scope", "$location", "$timeout", "$state", "$anchorScroll",   "usSpinnerService", "currentSession",   "dialogService"
    ];

    function transactionHistoryController($scope, $location, $timeout, $state, $anchorScroll, usSpinnerService, currentSession, dialogService) {
        var transactionHistory = this;

        transactionHistory.currentSession = currentSession;
        transactionHistory.gridOptions = {
                dataSource: {
                    type: "json",
                    transport: {
                        read: "/api/v1/transactionhistory?nameid=" + currentSession.identity.ice_name_id + "&memberid=" + currentSession.identity.ice_member_id,
                        timeout: 1000
                    },
                     error: function (e) {
        // handle error
        alert(" Error Retrieving Transactions - Status: " + e.status + "; Error message: " + e.errorThrown);
    },
                    schema: {
                        model: {
                            id: "transactionHistory",
                            fields: {
                                transactionDate : {
                                    editable: false,
                                    filterable: true,
                                    type: "date"
                                },

                                type : {
                                    editable: false,
                                    filterable: true,
                                    type: "string"
                                },
                                status: {
                                    editable: false,
                                    filterable: true,
                                    type: "string"
                                },
                                checkinDate: {
                                    editable: false,
                                    filterable: true,
                                    type: "date"
                                },
                                
                                description: {
                                    editable: false,
                                    type: "string"
                                },
                                agent: {
                                    editable: false,
                                    type: "string"
                                },
                                id: {
                                    editable: false,
                                    type: "string"
                                },
                                isRefundable: {
                                    editable: false,
                                    type: "bool"
                                },
                                checkOutDate: {
                                    editable: false,
                                    type: "date"
                                },
                                contactName: {
                                    editable: false,
                                    type: "string"
                                },
                                iceBookingId: {
                                    editable: false,
                                    type: "string"
                                },
                                supplier: {
                                    editable: false,
                                    type: "string"
                                },
                                supplierConfirmationNumber: {
                                    editable: false,
                                    type: "string"
                                },
                                propertyName: {
                                    editable: false,
                                    type: "string"
                                },
                                marketRate: {
                                    editable: false,
                                    type: "number"
                                },
                                marketTax: {
                                    editable: false,
                                    type: "number"
                                },
                                memberRate: {
                                    editable: false,
                                    type: "number"
                                },
                                vacationCash: {
                                    editable: false,
                                    type: "number"
                                },
                                dbc: {
                                    editable: false,
                                    type: "number"
                                },
                                ccCharge: {
                                    editable: false,
                                    type: "number"
                                },
                                ccDigits: {
                                    editable: false,
                                    type: "string"
                                },
                                ccType: {
                                    editable: false,
                                    type: "string"
                                },
                                eMessage: {
                                    editable: false,
                                    type: "string"
                                }
                            }
                        }
                    }
                },
                sortable: true,
                filterable: true,
                pageable: false,
                dataBound: function() {
                    this.expandRow(this.tbody.find("tr.k-master-row").first());
                },
                columns: [
                {
                    field: "transactionDate",
                    format: "{0: yyyy-MMM-dd}",
                    title: "Trx Date",
                    width: "60px",
                    filterable: true
                },

                {
                    field: "type",
                    title: "Type",
                    width: "60px",
                    filterable: true
                },


                    {
                    field: "status",
                    title: "Status",
                        filterable: true,
                    width: "60px"
                    },
                    {
                        field: "description",
                        title: "Description",
                        filterable: true,
                    width: "200px"
                    },{
                        field: "agent",
                        title: "Agent",
                        filterable: true,
                    width: "40px"
                    },
                        { width: "30px", "template": "<kendo-button class='k-command' ng-click=\"transactionHistory.showDetail(dataItem)\">Detail</kendo-button>" }

                ]
        };

        transactionHistory.showDetail = function (d) {
            var s = "    Date:                    " + moment(d.transactionDate).format('YYYY-MM-DD HH:m') + "\n";
            s = s + "    Type:                    " + d.type + "\n";
            s = s + "    Status:                  " + d.status + "\n";
            s = s + "    Non-Refundable: " + d.nonRefundable + "\n";
            s = s + "    Agent:                   " + d.agent + "\n";
            s = s + "    Message:                 " + d.eMessage + "\n\n";
            s = s + "    Property:                " + d.propertyName + '\n';
            s = s + "    Contact:                 " + d.contactName + "\n";
            s = s + "    Check-In:                " + moment(d.checkinDate).format('YYYY-MM-DD') + '\n';
            s = s + "    Check-Out:               " + moment(d.checkoutDate).format('YYYY-MM-DD') + '\n\n';

            s = s + "    Ice Booking Id:          " + d.iceBookingId + '\n';
            s = s + "    Supplier:                " + d.supplier + '\n';
            s = s + "    Supplier Conf#:          " + d.supplierConfirmationNumber + '\n\n';
            s = s + "    Market Rate:             " + d.marketRate + '\n';
            s = s + "    Tax:                     " + d.marketTax + '\n';
            s = s + "    Member Rate:             " + d.memberRate + '\n\n';
            s = s + "    VC Applied:              " + d.vacationCash + "\n";
            s = s + "    DBC Applied:             " + d.dbc + "\n";
            s = s + "    Charged to CC:           " + d.ccCharge + "\n";
            s = s + "    CC Digits:               " + d.ccDigits + "\n";
            s = s + "    CC Type:                 " + d.ccType + "\n";



            







            alert(s);
        }
        function startSpin() {
            usSpinnerService.spin("spinner-1");
        };
        function stopSpin() {
            usSpinnerService.stop("spinner-1");
        };
    }
})();