// eslint-disable-next-line no-undef
sap.ui.controller("booksapp.ext.controller.attachment", {
    onInit: function () {
        this.extensionAPI.attachPageDataLoaded(function (oEvent) {
            var data = oEvent.context.getObject();
            this.getView().byId("ui5DocumentTable").getComponentInstance().requestNavigationAndOpen(data.repositoryId, data.folderId);
        }.bind(this));
    }
});