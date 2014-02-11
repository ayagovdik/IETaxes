
function SwsUi_Contacts(options) {
    var self = this;

    self.table = $('#contacts_table');
    self.loader = $('#loader');

    self.options = $.extend({
        search_min_length: 0,
        search_start_timeout: 300
    }, options);

    self.timer = 0;
    self.filtered = false;

    self.init = function () {
	};
};

var CurrencyUi = (function(my) {
    

    my.init = function () {
        my.contacts.init();
    };

    return my;

}(CurrencyUi || {}));

$(document).ready(
    function() {
        CurrencyUi.init();
    }
);
