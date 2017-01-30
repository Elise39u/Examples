var Npcname = "Farmer Niels";

$(function() {
    document.getElementById('Bio').innerHTML = "BIO: Well a stranger come on i dont bit <br>" +
        "Let me introduce myself i am Niels and i work as a farmer in this town <br>" +
        "at least wat is left its one and all urbban city shit <br>" +
        "So what brings you to this place";

    $( "#dialog-2" ).dialog({
        autoOpen: false,
        buttons: {
            Do_you_need_help: function() {
                $( "#Story" ).replaceWith(Npcname + "<p id='Story'> No there my friend <br>" +
                    "I need to wacht my vegetables </p>");
                $('#dialog-2').dialog({
                    autoOpen: true,
                    buttons: {
                       really_Okey: function () {
                            $( "#Story" ).replaceWith("<p id='Story'> yeah what did you expect then fellow friend</p>");
                            $('#dialog-2').dialog({
                                autoOpen: true,
                                buttons: {
                                 Wellll: function () {
                                     $( "#Story" ).replaceWith("<p id='Story'> A assassination mission then <br>" +
                                         "Or blow up the police station in the town then  </p>");
                                     $('#dialog-2').dialog({
                                         autoOpen: true,
                                         buttons: {
                                             Okey_then: function () {
                                                 $( "#Story" ).replaceWith("<p id='Story'> Yeah i am farmer now go on  </p>");
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
                                },
                            })},
                    }
                })},
           So_How_is_the_job: function () {
                $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Well its a lot of passion <br>" +
                    "Besides the time you need to love to work around in the garden <br>" +
                    "even by bad weather and did i say maintenance of your land</p>");
                $('#dialog-2').dialog({
                    autoOpen: true,
                    buttons: {
                        Wel_why: function () {
                            $( "#Story" ).replaceWith("<p id='Story'> Please think at the twice before becoming a farmer <br>" +
                                "AND DONT ASK WHY</p>");
                            $('#dialog-2').dialog({
                                autoOpen: true,
                                buttons: {
                                    So_any_tips: function () {
                                        $( "#Story" ).replaceWith("<p id='Story'> No not for you </p>");
                                        $('#dialog-2').dialog({
                                            autoOpen: true,
                                            buttons: {
                                                comeon: function () {
                                                    $( "#Story" ).replaceWith("<p id='Story'> Never in my life</p>");
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