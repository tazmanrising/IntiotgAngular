(function() {
    "use strict";

    angular
        .module("hotelApp")
        .controller("agentController", agentController);

    agentController.$inject = [
        "$scope", "$location", "$timeout", "$state", "$anchorScroll", "usSpinnerService", "currentSession", "dialogService"
    ];

    function agentController($scope, $location, $timeout, $state, $anchorScroll, usSpinnerService, currentSession, dialogService, confirmationFactory) {
        var agent = this;
        var i, j, k, l, m, n, o;
        agent.currentSession = currentSession;
        agent.disableRenewButton = false;
        agent.disableUpgradeableButton = true;
        agent.disableRecissionButton = true;
        agent.member = {
            street1: null,
            street2: null,
            line3: null,
            emails: [
                {

                }
            ],
            phones: [
                {

                }
            ]

    };

        agent.tabOptions = {
            activate: function(e) {
                $scope.main.viewMaximize();
            }
        };
        function startSpin() {
            usSpinnerService.spin("spinner-1");
        };
        function stopSpin() {
            usSpinnerService.stop("spinner-1");
        };
        agent.showGuide = function (guideName) {
            if (guideName === "product") {
                dialogService.showIframe("Hotel Agent Guide", "/apps/assets/content/products/hotelagentguide.html");
            };
            if (guideName === "brand") {
                dialogService.showIframe("Brand Guide", "/apps/assets/brands/sears/content/searstermsandconditions.html");
            };
            if (guideName === "memberclass") {
                dialogService.showIframe("Member Class Guide", "/apps/assets/brands/sears/content/searstermsandconditions.html");
            };
        };

                if (agent.currentSession.member_info.addresses) {
            for (j = 0; j < agent.currentSession.member_info.addresses.length; j++) {
                if (agent.currentSession.member_info.addresses[j].is_primary === true || agent.currentSession.member_info.addresses[j].is_primary === "true") {
                    agent.member.street1 = agent.currentSession.member_info.addresses[j].street1;
                    agent.member.street2 = agent.currentSession.member_info.addresses[j].street2;
                    agent.member.line3 = agent.currentSession.member_info.addresses[j].city + ", " + agent.currentSession.member_info.addresses[j].state_province + " " + agent.currentSession.member_info.addresses[j].postal_code +" - " + agent.currentSession.member_info.addresses[j].country;

                    break;
                }
            };
        };

        if (agent.currentSession.member_info.email_addresses) {
            for (k = 0; k < agent.currentSession.member_info.email_addresses.length; k++) {

                var email =  agent.currentSession.member_info.email_addresses[k].address;
                if (agent.currentSession.member_info.email_addresses[k].is_primary === true || agent.currentSession.member_info.email_addresses[k].is_primary === "true") {
                    email = email + " (primary)";
                };
                var emailentry = { address: email };
                agent.member.emails.pop(emailentry);
            };
        };

        if (agent.currentSession.member_info.phone_numbers) {
            for (l = 0; l < agent.currentSession.member_info.phone_numbers.length; l++) {
                var phone = agent.currentSession.member_info.phone_numbers[l].Number;
                if (agent.currentSession.member_info.phone_numbers[l].IsPrimary === true || agent.currentSession.member_info.phone_numbers[l].IsPrimary === "true") {
                    phone = phone + " (primary)";
                }
                var phoneentry = { phonenumber: phone };
                    agent.member.phones.pop(phoneentry);
                };
        };

    }
})();