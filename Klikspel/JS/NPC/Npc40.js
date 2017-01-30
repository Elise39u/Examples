var Npcname = "Kirsten";

$(function() {
    document.getElementById('Bio').innerHTML = "BIO: Well i am Kirsten <br>" +
        "I lived in this part of new york for 25 years now <br>" +
        "I was born here studied here even had my job here <br>" +
        "its so sad that this happen so i went directly to the church";

    $( "#dialog-2" ).dialog({
        autoOpen: false,
        buttons: {
            Do_you_need_help: function() {
                $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Well perhaps you can do anything for the church</p>");
                $('#dialog-2').dialog({
                    autoOpen: true,
                    buttons: {
                        So_as: function () {
                            $( "#Story" ).replaceWith("<p id='Story'> Just go around and ask to people </p>");
                            $('#dialog-2').dialog({
                                autoOpen: true,
                                buttons: {
                                 Okey: function () {
                                     $( "#Story" ).replaceWith("<p id='Story'> So that is it  </p>")
                                     $('#dialog-2').dialog({
                                         autoOpen: true,
                                         buttons: {
                                             Okey_bye: function () {$(this).dialog('close')}
                                         }
                                     })
                                 },
                                },
                            })},
                    }
                })},
           So_why_this_place: function () {
                $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Well i belive not in anything <br>" +
                    "But this place was the safest place in this part of new york <br>" +
                    "So i went with peopele here around and now were stuck here waiting </p> ");
                $('#dialog-2').dialog({
                    autoOpen: true,
                    buttons: {
                        Why_you_dont_go_away_then: function () {
                            $( "#Story" ).replaceWith("<p id='Story'> Well guess that is smarty <br>" +
                                "And not the sarcasm answer  </p>");
                            $('#dialog-2').dialog({
                                autoOpen: true,
                                buttons: {
                                    The_zombies: function () {
                                        $( "#Story" ).replaceWith("<p id='Story'> SO you can gusses that good </p>");
                                        $('#dialog-2').dialog({
                                            autoOpen: true,
                                            buttons: {
                                                Okeeey: function () {
                                                    $( "#Story" ).replaceWith("<p id='Story'> Now do you have something to ask what matters </p>");
                                                    $('#dialog-2').dialog({
                                                        autoOpen: true,
                                                        buttons: {
                                                            Well: function () {$(this).dialog('close');},
                                                        },
                                                    })},
                                            },
                                        })},
                                    Safety: function () {$(this).dialog('close');}
                                }
                            })},
                        Well_Bye: function () {$(this).dialog('close');}
                    }
                })},
            Goodbye: function () {$(this).dialog('close');}
        },
        title: "Conversation",
        position: {
            my: "left center",
            at: "left center"
        }
    });
    $( "#opener-2" ).click(function() {
        $( "#dialog-2" ).dialog( "open" );
    });
});