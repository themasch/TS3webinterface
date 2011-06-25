function sec2date(s) {var sec=s,min=sec/60,hour=min/60,day=hour/24;return[~~day,~~hour%24,~~min%60,~~sec%60]};
var TS3Webinterface = {
    updateServers: function() {
        this.executePost(
            { "do": "serverinfo" }, 
            function(data) {
                var rows = {};
                $('tr[data-vid]').each(function() {
                    rows[$(this).data('vid')] = this;
                });
                for(var idx in data[1]) {
                    var dat = data[1][idx];
                    var sid = dat.virtualserver_id;
                    var row = rows[sid];
                    if(!row) {
                        //TODO: add row for new server
                    } else {
                       if(dat.virtualserver_status == 'online') {
                           var time = sec2date(dat.virtualserver_uptime);
                           var time_str = time[0] + 'd ';
                           time_str += ((time[1] < 10) ? '0' + time[1] : time[1]) + ":";
                           time_str += ((time[2] < 10) ? '0' + time[2] : time[2]) + ":";
                           time_str += ((time[3] < 10) ? '0' + time[3] : time[3]);
                           $('.uptime', row).text(time_str);
                           $('.clients', row).text(dat.virtualserver_clientsonline + ' / ' + dat.virtualserver_maxclients);
                           $('.status', row).attr('src', './images/green.png');
                       } else {
                            $('.uptime, .clients', row).text('');
                           $('.status', row).attr('src', './images/red.png');
                       }

                    }
                }
            }
        );
    }, 
    deleteServer: function(sid) {
        sid = parseInt(sid);
        if(!sid) return;
        var self = this;
        $.prompt('Are you sure you want to delete Server #' + sid + '?', { 
            buttons: { Ok: true, Cancel: false }, 
            callback: function(act) {
                if(!act) return;
                self.executePost(
                    {do: "deleteserver", serverid: sid}, 
                    function(data) {
                        console.log(data);
                    }
                );
            }
        });
    }, 
    startServer: function(sid) {
        sid = parseInt(sid);
        if(!sid) return;
        this.executePost(
            { "do": "startserver", serverid: sid }, 
            function(data) {
                if(data[0] == "OK") {
                    $('#serverstatus' + sid).attr('src', './images/green.png');
                } else {
                    console.log(data);
                    console.log(data[0]);
                }

            }
        );
    }, 
    stopServer: function(sid) {
        sid = parseInt(sid);
        if(!sid) return;
        this.executePost(
            { "do": "stopserver", serverid: sid }, 
            function(data) {
                if(data[0] == "OK") {
                    $('#serverstatus' + sid).attr('src', './images/red.png');
                } else {
                    console.log(data);
                    console.log(data[0]);
                }

            }
        );
    }, 

    getInfo: function() {
        this.executePost({
            do: "serverinfo"
        }, function(data) {
            console.log(data);
        });
    },

    executePost: function(options, callback) {
        options.ajaxRequest = 1;
        $.post('index.php', options, function(data) {
            var json = JSON.parse(data);
            if(!json) return false;
            callback(json);
        });
    }, 
}


$(function() {
    $('.btn_delete').click(function() {
        var vsid = parseInt($(this.parentElement.parentElement).data('vid'));
        TS3Webinterface.deleteServer(vsid);
    });
    $('.btn_start').click(function() {
        var vsid = parseInt($(this.parentElement.parentElement).data('vid'));
        TS3Webinterface.startServer(vsid);
    });

    $('.btn_stop').click(function() {
        var vsid = parseInt($(this.parentElement.parentElement).data('vid'));
        TS3Webinterface.stopServer(vsid);
    });

    $('.btn_create').click(function() {
        $.blockUI({ message: $('#form_create'), css: {  cursor: ''} }); 
    });

    setInterval(function() {
        TS3Webinterface.updateServers();
    }, 5000);
});
