var Npcname = "Programmers Youri en Pieter";

$(function() {
    document.getElementById('Bio').innerHTML = "BIO: Hi there We are Youri and Pieter <br>" +
        "We studied software development and for a job moved to new york <br>" +
        "So we went togther on work search to new york and found a job" +
        "Never nowing that would end this bad";

    $( "#dialog-2" ).dialog({
        autoOpen: false,
        buttons: {
            Well_Any_help_Needed: function() {
                $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Well Let me think about that <br>" +
                    "Pieter: i dont have anything</p>");
                $('#dialog-2').dialog({
                    autoOpen: true,
                    buttons: {
                        Andd: function () {
                            $( "#Story" ).replaceWith("<p id='Story'> So man easy <br>" +
                                "Not anythings as this moment </p>");
                            $('#dialog-2').dialog({
                                autoOpen: true,
                                buttons: {
                                 Okey: function () {
                                     $( "#Story" ).replaceWith("<p id='Story'> So you can go now </p>")
                                     $('#dialog-2').dialog({
                                         autoOpen: true,
                                         buttons: {
                                             Well_Okey: function () {$(this).dialog('close')}
                                         }
                                     })
                                 },
                                },
                            })},
                    }
                })},
           So_Software_development: function () {
                $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Yes if you have the passion you should do it </p> ");
                $('#dialog-2').dialog({
                    autoOpen: true,
                    buttons: {
                        Ehhheeeee: function () {
                            $( "#Story" ).replaceWith("<p id='Story'> Yeah i know that its passion <br>" +
                                "but what is the problem </p>");
                            $('#dialog-2').dialog({
                                autoOpen: true,
                                buttons: {
                                    pasion: function () {
                                        $( "#Story" ).replaceWith("<p id='Story'> Well try it </p>");
                                        $('#dialog-2').dialog({
                                            autoOpen: true,
                                            buttons: {
                                                Okeeey: function () {$(this).dialog('close');},
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