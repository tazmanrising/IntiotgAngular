(function () {
    "use strict";

    angular
        .module("hotelApp")
        .controller("FooterController", FooterController);

    FooterController.$inject = [
        '$location', '$state', '$window', '$modal', '$stateParams', 'footerFactory', 'currentSession'
    ];


    function FooterController($location, $state, $window, $modal, $stateParams, footerFactory, currentSession) {

        var footer = this;

        footer.displayOptions = currentSession.display_options.footers;

        //if the footerFactory contains information set it to display for the UI.
        footer.item = footerFactory.getFooterItem || {};
        //console.log(JSON.stringify(footer.item, null, '\t'));

        //get the state parameter for the footer label
        footer.itemId = $stateParams.itemId || '';
        //console.log('item : ' + footer.itemId);
        angular.forEach(footer.displayOptions, function(key, value){
            //if the footer label is found in the footer links then set the footer item to the object that matches
            //this is then passed to the UI where the correct information will be displayed in a new tab or window for that
            //footer item. 
            //it is expected that this won't be used often but instead the footer items will most likely be displayed in a modal. 
            if (key.label == footer.itemId) {
                footer.pageItem = key;
            }
        });

        footer.showText = function (item) {
            console.log('item in call : ' + JSON.stringify(item));
            //if the display_link_in_pop up is set to true then open the information for that footer item in a modal.
            if (item.display_link_in_popup == true || item.display_link_in_popup == 'true') {
                //TODO make this myModal variable have a template
                footer.myModal = $modal({ title: 'My Title', content: item.text_link, show: false });
                footer.myModal.$promise.then(footer.myModal.show);

            }
            //else set the parameter for the URL as the label for the incoming item and show open the footer item in a new tab
            else {
                var params = {itemId : item.link_href};
                var url = $state.href('footerPage', params);
                window.open(url, '_blank');
            }
            //make footer information accessible for the modal. Possibly don't need this.
            footerFactory.update(item);
        };
    };

})();

