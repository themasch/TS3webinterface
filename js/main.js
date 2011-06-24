
var TS3Webinterface = {
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
    $('.btn_start').click(function() {
        var vsid = parseInt($(this).data('vsid'));
        TS3Webinterface.startServer(vsid);
    });

    $('.btn_stop').click(function() {
        var vsid = parseInt($(this).data('vsid'));
        TS3Webinterface.stopServer(vsid);
    });

    $('.btn_create').click(function() {
        $('#form_create').show();
    });
});
