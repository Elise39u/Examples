var Npcname = "Shopper Leo";

$(function() {
    document.getElementById('Bio').innerHTML = "BIO: Hi there i am Leo <br>" +
        "I lived here in new york for over 35 years now <br>" +
        "Born, worked, colleage, everything i did in this city <br>" +
        "I want to know if the family van de Laar made it out";

    $( "#dialog-2" ).dialog({
        autoOpen: false,
        buttons: {
            why_family_van_de_laar: function() {
                $( "#Story" ).replaceWith(Npcname + "<p id='Story'> I had 2 kids with the mother of that family <br>" +
                    "And they where a big family so i want to know if my kids are safe   </p>");
                $('#dialog-2').dialog({
                    autoOpen: true,
                    buttons: {
                       should_I_look: function () {
                            $( "#Story" ).replaceWith("<p id='Story'> Its nice </p>");
                            $('#dialog-2').dialog({
                                autoOpen: true,
                                buttons: {
                                 buttttt: function () {
                                     $( "#Story" ).replaceWith("<p id='Story'> its doens`t need to be so <br>" +
                                         "But its nice you ask </p>");
                                     $('#dialog-2').dialog({
                                         autoOpen: true,
                                         buttons: {
                                             So: function () {
                                                 $( "#Story" ).replaceWith("<p id='Story'> you don`t need to search for me </p>");
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
           So_do_you_have_a_job: function () {
                $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Wellllll....... </p>");
                $('#dialog-2').dialog({
                    autoOpen: true,
                    buttons: {
                        Well_what: function () {
                            $( "#Story" ).replaceWith("<p id='Story'> i had a job as truck driver for a baker <br>" +
                                "I was delevering in the night but then this came </p>");
                            $('#dialog-2').dialog({
                                autoOpen: true,
                                buttons: {
                                    this_came: function () {
                                        $( "#Story" ).replaceWith("<p id='Story'> yeah you know where ii am talking about</p>");
                                        $('#dialog-2').dialog({
                                            autoOpen: true,
                                            buttons: {
                                                Well: function () {
                                                    $( "#Story" ).replaceWith("<p id='Story'> The outbreak idioit. </p>");
                                                    $('#dialog-2').dialog({
                                                        autoOpen: true,
                                                        buttons: {
                                                            Okey: function () {$(this).dialog('close')},
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