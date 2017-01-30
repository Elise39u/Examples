var Npcname = "Shopper Kim";

$(function() {
    document.getElementById('Bio').innerHTML = "BIO: Well hi there i am Kim <br>" +
        "I know i have a addiction but shopping is so much fun <br>" +
        "And i am only 24 years old but lot omy friends  aren`t in to it <br>" +
        "But i like it and that is enough";

    $( "#dialog-2" ).dialog({
        autoOpen: false,
        buttons: {
            welll: function() {
                $( "#Story" ).replaceWith(Npcname + "<p id='Story'> What welllll  </p>");
                $('#dialog-2').dialog({
                    autoOpen: true,
                    buttons: {
                       Could_you_stop_for_a_week: function () {
                            $( "#Story" ).replaceWith("<p id='Story'> perhaps thats lies on you</p>");
                            $('#dialog-2').dialog({
                                autoOpen: true,
                                buttons: {
                                 Why_me: function () {
                                     $( "#Story" ).replaceWith("<p id='Story'> kidding so why  </p>");
                                     $('#dialog-2').dialog({
                                         autoOpen: true,
                                         buttons: {
                                             beacuse_youre_not_addict_then: function () {
                                                 $( "#Story" ).replaceWith("<p id='Story'> Ow yes i can so thanks </p>");
                                                 $('#dialog-2').dialog({
                                                     autoOpen: true,
                                                     buttons: {
                                                        Okey_easy: function () {$(this).dialog('close')}
                                                     }
                                                 })
                                             },
                                         }
                                     })
                                 },
                                },
                            })},
                    }
                })},
           So_How_is_shopping: function () {
                $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Are you really asking that </p>");
                $('#dialog-2').dialog({
                    autoOpen: true,
                    buttons: {
                        Yes_i_am_seriouis: function () {
                            $( "#Story" ).replaceWith("<p id='Story'> So its is nice but so is already on you</p>");
                            $('#dialog-2').dialog({
                                autoOpen: true,
                                buttons: {
                                    on_mee: function () {
                                        $( "#Story" ).replaceWith("<p id='Story'> Yeah do you like it </p>");
                                        $('#dialog-2').dialog({
                                            autoOpen: true,
                                            buttons: {
                                                Welllll: function () {
                                                    $( "#Story" ).replaceWith("<p id='Story'> Then no </p>");
                                                    $('#dialog-2').dialog({
                                                        autoOpen: true,
                                                        buttons: {
                                                            Okey_bye: function () {$(this).dialog('close')},
                                                        },
                                                    })},
                                            },
                                        })},
                                    Bye: function () {$(this).dialog('close');}
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