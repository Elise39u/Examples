var Npcname = "Wachter Nina";

$(function() {
    document.getElementById('Bio').innerHTML = "BIO: I am Nina I hold a look on the one that come here  <br> " +
        "I keep the order and make sure it safe here <br> " +
        "And for sure there walking a few soldier around here";

    $( "#dialog-2" ).dialog({
        autoOpen: false,
        width: 600,
        buttons: {
            Do_you_need_help: function() {
                $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Well have you wachted something before <br>" +
                    "In like keeping order </p>");
                $('#dialog-2').dialog({
                autoOpen: true,
                    width: 600,
                buttons: {
                    Once: function () {
                        $( "#Story" ).replaceWith("<p id='Story'> Well Maby  <br>" +
                        "Can you hold the wacht here</p>");
                        $('#dialog-2').dialog({
                            autoOpen: true,
                            width: 600,
                            buttons: {
                                Okey: function () {
                                    $( "#Story" ).replaceWith("<p id='Story'> Okey i be back in five minutes  </p>");
                                    $('#dialog-2').dialog({
                                        autoOpen: true,
                                        width: 600,
                                        buttons: {
                                            sure: function () {
                                                alert('You started the quest A blink for a eye');
                                                $(this).dialog('close');}
                                        }
                                    })},
                            },
                            Ehhheee_No: function () {$(this).dialog('close');}
                        })},
                }
            })},
            Why_are_you_here: function () {
                $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Well after the outbreak first thing i packed my bags <br>" +
                    "Then i seeked for help <br>" +
                    "But it was a difficult task so but here i am </p>");
                $('#dialog-2').dialog({
                    autoOpen: true,
                    width: 600,
                    buttons: {
                        Do_you_want_to_talk_about_it: function () {
                            $( "#Story" ).replaceWith("<p id='Story'> Well no brings back the bad memory  </p>");
                            $('#dialog-2').dialog({
                                autoOpen: true,
                                width: 600,
                                buttons: {
                                    Okey: function () {$(this).dialog('close');}
                                }
                            })},
                        Okey_thanx_for_the_info: function () {$(this).dialog('close');}
                    }
                })},
            Ehheee_hai: function () {$(this).dialog('close');}
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