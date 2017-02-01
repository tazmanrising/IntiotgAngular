(function() {
    "use strict";

    angular
        .module("hotelApp")
        .controller("shoppingHistoryController", shoppingHistoryController);

    shoppingHistoryController.$inject = [
        "$scope", "$location", "$timeout", "$state", "$anchorScroll",   "usSpinnerService", "currentSession",   "dialogService"
    ];

    function shoppingHistoryController($scope, $location, $timeout, $state, $anchorScroll, usSpinnerService, currentSession, dialogService) {
        var shoppingHistory = this;

        shoppingHistory.currentSession = currentSession;
        shoppingHistory.disableRenewButton = true;
        shoppingHistory.disableUpgradeableButton = true;
        shoppingHistory.disableRecissionButton = true;
        var url = "/api/v1/searchhistory?nameid=" + currentSession.identity.ice_name_id + "&agentid=" + currentSession.identity.ng_agent_id + "&allactivity=false";
        shoppingHistory.gridOptions = {
                dataSource: {
                    type: "json",
                    transport: {
                        read: url,
                        timeout: 1000
                    },
                    error: function (e) {
        // handle error
        alert(" Error Retrieving Search History - Status: " + e.status + "; Error message: " + e.errorThrown);
    },
                    schema: {
                        model: {
                            id: "searchHistory",
                            fields: {
                                activityOccurredAt : {
                                    editable: false,
                                    filterable: true,
                                    type: "date"
                                },
                                longAgo : {
                                    editable: false,
                                    filterable: false,
                                    type: "string"
                                },

                                action : {
                                    editable: false,
                                    type: "string"
                                },
                                subAction : {
                                    editable: false,
                                    type: "string"
                                },                              
                                name : {
                                    editable: false,
                                    type: "string"
                                },
                                browser : {
                                    editable: false,
                                    type: "string"
                                },
                                agentName : {
                                    editable: false,
                                    type: "string"
                                },
                                searchStorageId : {
                                    editable: false,
                                    type: "string"
                                }
                            }
                        }
                    }
                },
                        requestStart: function () {
                //kendo.ui.progress($("#loading"), true); <-- this works on initial load, but gives two spinners on every page or sort change
            },
            requestEnd: function () {
                //kendo.ui.progress($("#loading"), false);

            },
                sortable: true,
                filterable: true,
                pageable: false,
                columns: [
                {
                    field: "activityOccurredAt",
                    format: "{0: yyyy-MM-dd h:mm:ss tt}",
                    title: "When",
                    width: "100px",
                    filterable: true
                },
                    {
                    field: "longAgo",
                    title: "Freshness",
                    width: "60px",
                    filterable: false
                    },{
                    field: "action",
                    title: "Product",
                        filterable: true,
                    width: "40px"
                    },{
                        field: "subAction",
                        title: "Search Type",
                        filterable: true,
                    width: "100px"
                    },{
                        field: "name",
                        title: "Details",
                    width: "240px"
                    }, {
                    field: "agentName",
                    title: "Agent",
                    width: "80px",
                    filterable: false

                },{
                        field: "browser",
                        title: "Browser",
                        width: "30px",
                        filterable: false
                }, 
                                      { width:"30px", "template": "<kendo-button class='k-command' ng-click=\"shoppingHistory.showDetail('#=searchStorageId#')\">Detail</kendo-button>" }
                ]
        };

        shoppingHistory.showDetail = function (i) {
            var res = i.split(":");
            alert(res[0]);
        }
        shoppingHistory.refreshHistory = function() {
            shoppingHistory.shoppingHistoryGrid.dataSource.read();
        };
        function startSpin() {
            usSpinnerService.spin("spinner-1");
        };
        function stopSpin() {
            usSpinnerService.stop("spinner-1");
        };
    }
})();