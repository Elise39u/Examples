var Npcname = "Prisoner James";

$(function() {
    document.getElementById('Bio').innerHTML = "BIO: Well I am james and i am stuck here for over 10 years now <br>" +
        "I hate it hear but David says there wil be a way out some time <br>" +
        "I hope that will be soon enough";

    $( "#dialog-2" ).dialog({
        autoOpen: false,
        buttons: {
            Well_any_help: function() {
                $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Not for you because i cant leave here <br>" +
                    " I am stuck here for godsake" +
                    " I wish the infected got a hand on me</p>");
                $('#dialog-2').dialog({
                    autoOpen: true,
                    buttons: {
                       Well_can_i_take_youre_place: function () {
                            $( "#Story" ).replaceWith("<p id='Story'> Wellllllll </p>");
                            $('#dialog-2').dialog({
                                autoOpen: true,
                                buttons: {
                                 Welll_what: function () {
                                     $( "#Story" ).replaceWith("<p id='Story'> Well What do you think </p>");
                                     $('#dialog-2').dialog({
                                         autoOpen: true,
                                         buttons: {
                                             Yes: function () {
                                                 $( "#Story" ).replaceWith("<p id='Story'> No never </p>");
                                                 $('#dialog-2').dialog({
                                                     autoOpen: true,
                                                     buttons: {
                                                       Okey_why: function () {
                                                            $( "#Story" ).replaceWith("<p id='Story'> We need someone with experince </p>");
                                                            $('#dialog-2').dialog({
                                                                autoOpen: true,
                                                                buttons: {
                                                                    Okey: function () {$(this).dialog('close')}
                                                                }
                                                            })
                                                        },
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
           So_how_is_this_life: function () {
                $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Well its sucks <br>" +
                    "But so long you`re here you have to make the most of it <br>" +
                    "so why do you ask it</p>");
                $('#dialog-2').dialog({
                    autoOpen: true,
                    buttons: {
                        I_am_just_intrested: function () {
                            $( "#Story" ).replaceWith("<p id='Story'> Well i dont trust that </p>");
                            $('#dialog-2').dialog({
                                autoOpen: true,
                                buttons: {
                                    why: function () {
                                        $( "#Story" ).replaceWith("<p id='Story'> because you cant trust nobody in this prison <br>" +
                                            "I think they dont like me because i have been put here</p>");
                                        $('#dialog-2').dialog({
                                            autoOpen: true,
                                            buttons: {
                                                Okey: function () {
                                                    $( "#Story" ).replaceWith("<p id='Story'> Well bye then if you don`t have anything to ask</p>");
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