
var fwescortparts = {
    load: function(timer) {
        var timer = timer;

        // If we look ten times, and don't find fwescort, clear out
        if(timer === 10) return clearTimeout(fwescortparts.timerHold);

        if(typeof fwescort !== "undefined" && typeof fwescort.fw_i === "function") {
            fwescort.fw_i({"al":0,"prov":0,"ll":17757,"pa":false,"np":0,"fr":-1,"te":0,"un":"carolyncline","dr":0,"cd":14059});
        } else {
            fwescortparts.timerHold = setTimeout(function() {
                fwescortparts.load(timer++);
            }, 300);
        }
    },

    timerHold: null
};

(function() { fwescortparts.load(1); })();