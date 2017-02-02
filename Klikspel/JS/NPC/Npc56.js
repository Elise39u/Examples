var Npcname = "Seaech prisoner Ken";

$(function() {
    document.getElementById('Bio').innerHTML = "BIO: I am Ken i have lurking around the prison for a while now <br>" +
        "i started when the outbreak came and did to see where we could stay <br>" +
        "Ending up here was not the goal";

    $( "#dialog-2" ).dialog({
        autoOpen: false,
        buttons: {
            Well_David_said_i_needed_you: function() {
                $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Well Well I am Needed for everything he <br>" +
                    "I start to think what if i was not here</p>");
                $('#dialog-2').dialog({
                    autoOpen: true,
                    buttons: {
                       Well_youre_in_or_not: function () {
                            $( "#Story" ).replaceWith("<p id='Story'> yes i am In <br>" +
                                "But for what  </p>");
                            $('#dialog-2').dialog({
                                autoOpen: true,
                                buttons: {
                                 trip_to_a_buddy_for_david: function () {
                                     $( "#Story" ).replaceWith("<p id='Story'> Well okey <br>" +
                                         "Where is he  </p>");
                                     $('#dialog-2').dialog({
                                         autoOpen: true,
                                         buttons: {
                                             BlockB: function () {
                                                 $( "#Story" ).replaceWith("<p id='Story'> Welllll </p>");
                                                 $('#dialog-2').dialog({
                                                     autoOpen: true,
                                                     buttons: {
                                                       Welllllll_what: function () {
                                                            $( "#Story" ).replaceWith("<p id='Story'> its not safe there but go </p>");
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