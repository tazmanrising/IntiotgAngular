(function() {
    'use strict';

    angular
        .module('airApp')
        .service('dialogService', dialogService);
    dialogService.$inject = [];
    function dialogService() {
        this.dialogWidget = {};
        this.contentWidget = {};
        this.iFrameWidget = {};

        this.setDialogWidget = function(widget) {
             this.dialogWidget = widget;
        };
        this.setIframeWidget = function(widget) {
            this.IframeWidget = widget;
        }
        this.setContentWidget = function(widget) {
             this.contentWidget = widget;
        };
        this.showDialog = function (title, message) {
            if (this.dialogWidget != null) {
                this.dialogWidget.title(title);

                this.dialogWidget.content( message + "<div style='text-align:center; margin-top: 10px'><button class='k-button' ng-click=\"main.closeDialog();\">Close</button>");
                this.dialogWidget.center();
                this.dialogWidget.open();
            }
        };
      this.showContent = function (title, content) {
            if (this.contentWidget != null) {
                this.contentWidget.title(title);
                this.contentWidget.content(content + "<div style='text-align:center; margin-top: 10px'><button class='k-button' ng-click=\"main.closeContent();\">Close</button>");
                this.contentWidget.center();
                this.contentWidget.open();
            }
      };
      this.showIframe = function (title, url) {
            if (this.IframeWidget != null) {
                this.IframeWidget.title(title);
                this.IframeWidget.refresh(url);
                this.IframeWidget.maximize();
                this.IframeWidget.center();

                this.IframeWidget.open();
            }
        };
    }
})();