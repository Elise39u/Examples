var Npcname = "Icter Peter";

$(function() {
    document.getElementById('Bio').innerHTML = "BIO: I am Peter i am a software developer for 15 years now   <br> " +
        "And a ao teacher for 5 years <br> " +
        "But when the city was infected i did straight go to here";

    $( "#dialog-2" ).dialog({
        autoOpen: false,
        width: 600,
        buttons: {
            Software_Why: function() {
                $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Because i Didnt know what to do at that time <br>" +
                    "and working with pc`s did since i was 8 so </p>");
                $('#dialog-2').dialog({
                autoOpen: true,
                    width: 600,
                buttons: {
                    DO_you_need_help: function () {
                        $( "#Story" ).replaceWith("<p id='Story'> Well Maby  <br>" +
                        "Excaulty i dont need help maby other people around here need help</p>");
                        $('#dialog-2').dialog({
                            autoOpen: true,
                            width: 600,
                            buttons: {
                                Okey: function () {
                                    $( "#Story" ).replaceWith("<p id='Story'> You need to take a look around belive me </p>");
                                    $('#dialog-2').dialog({
                                        autoOpen: true,
                                        width: 600,
                                        buttons: {
                                            sure: function () {$(this).dialog('close');}
                                        }
                                    })},
                            },
                            I_dont_want_to_help: function () {$(this).dialog('close');}
                        })},
                }
            })},
            Why_a_teacher: function () {
                $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Because my job as developer got a bit boring <br>" +
                    "and i saw more new people struggle to handel code <br>" +
                    "So i decide to teach jong students </p>");
                $('#dialog-2').dialog({
                    autoOpen: true,
                    width: 600,
                    buttons: {
                        Is_there_something_to_learn_for_me: function () {
                            $( "#Story" ).replaceWith("<p id='Story'> Not at this moment maby later </p>");
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
            Ehheee_i_am_not_in_to_pcs: function () {$(this).dialog('close');}
        },
        title: "Conversation",
        position: {
            my: "left center",
            at: "left center",
            width: "600px"
        }
    });
    $( "#opener-2" ).click(function() {
        $( "#dialog-2" ).dialog( "open" );
    });
});