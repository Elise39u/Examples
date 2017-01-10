var Npcname = "Mother Lieke";

$(function() {
    document.getElementById('Bio').innerHTML = "BIO: I am Lieke i am mother of 2 kids  <br> " +
        "There are my only thing lefr now so <br> " +
        "But they are thisrty and i cant do anything <br>" +
        "I loved new yoerk but the outbreak was a pain in the ass";

    $( "#dialog-2" ).dialog({
        autoOpen: false,
        width: 600,
        buttons: {
            Do_you_need_help: function() {
                $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Well I dont trust you <br>" +
                    "If you come here with Marieke i tell you more<br>" +
                    "else NOTHING </p>");
                $('#dialog-2').dialog({
                    autoOpen: true,
                    width: 600,
                    buttons: {
                        Okey_i_go_look_For_her: function () {
                            $( "#Story" ).replaceWith("<p id='Story'> Come Back with her</p>");
                            $('#dialog-2').dialog({
                                autoOpen: true,
                                width: 600,
                                buttons: {
                                  Okey_until_then: function () {$(this).dialog('close');},
                                },
                            })},
                    }
                })},
            How_is_parenting: function () {
                $( "#Story" ).replaceWith(Npcname + "<p id='Story'> I Tell You more with Marieke Now GO to her  </p>");
                $('#dialog-2').dialog({
                    autoOpen: true,
                    buttons: {
                        Okey_Easy: function () {
                            $( "#Story" ).replaceWith("<p id='Story'> No get to Coach marieke  </p>");
                            $('#dialog-2').dialog({
                                autoOpen: true,
                                width: 600,
                                buttons: {
                                    Okey: function () {$(this).dialog('close');}
                                }
                            })},
                        Okey_bye: function () {$(this).dialog('close');}
                    }
                })},
            Well_bye: function () {$(this).dialog('close');}
        },
        title: "Conversation",
        position: {
            my: "left center",
            at: "left center",
            width: 600
        }
    });
    $( "#opener-2" ).click(function() {
        $( "#dialog-2" ).dialog( "open" );
    });
});