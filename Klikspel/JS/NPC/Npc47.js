var Npcname = "Mayor Innge";

$(function() {
    document.getElementById('Bio').innerHTML = "BIO: Hi there i am the mayor <br>" +
        "And my name is called innge and i am mayor for almost 3 decades now <br>" +
        "This work is stressfull and even time consuming <br>" +
        "So i you have a question asked it or go on";

    $( "#dialog-2" ).dialog({
        autoOpen: false,
        buttons: {
            Do_you_need_help: function() {
                $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Well Not here and now  </p>");
                $('#dialog-2').dialog({
                    autoOpen: true,
                    buttons: {
                       really: function () {
                            $( "#Story" ).replaceWith("<p id='Story'> yeah i am busy so <br>" +
                                "Maby if you come back later i have something for you</p>");
                            $('#dialog-2').dialog({
                                autoOpen: true,
                                buttons: {
                                 Wellll: function () {
                                     $( "#Story" ).replaceWith("<p id='Story'> Now you gonna ask something or not  </p>");
                                     $('#dialog-2').dialog({
                                         autoOpen: true,
                                         buttons: {
                                             eheeeeee: function () {
                                                 $( "#Story" ).replaceWith("<p id='Story'> So question or??  </p>");
                                                 $('#dialog-2').dialog({
                                                     autoOpen: true,
                                                     buttons: {
                                                        bye: function () {$(this).dialog('close')}
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
           So_How_is_the_job: function () {
                $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Well in a few words stressfull and timeconsuming <br>" +
                    "But its nice you ask</p>");
                $('#dialog-2').dialog({
                    autoOpen: true,
                    buttons: {
                        Wel_why: function () {
                            $( "#Story" ).replaceWith("<p id='Story'> So you have to do this you have to that <br>" +
                                "People expect everything from you <br>" +
                                "Even when you don`t have time so tired....</p>");
                            $('#dialog-2').dialog({
                                autoOpen: true,
                                buttons: {
                                    So_why_you_wont_quit: function () {
                                        $( "#Story" ).replaceWith("<p id='Story'> Guess is </p>");
                                        $('#dialog-2').dialog({
                                            autoOpen: true,
                                            buttons: {
                                                the_town: function () {
                                                    $( "#Story" ).replaceWith("<p id='Story'> yes they need me <br>" +
                                                        "And i cant quit so out of nothing</p>");
                                                    $('#dialog-2').dialog({
                                                        autoOpen: true,
                                                        buttons: {
                                                            Well_then: function () {$(this).dialog('close')},
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