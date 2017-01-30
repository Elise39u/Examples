var Npcname = "Teacher Levi";

$(function() {
    document.getElementById('Bio').innerHTML = "BIO: Hi there i am Levi and i am teaching kids a decade now <br>" +
        "SO i was born lived and grew up here in new york <br>" +
        "For my college i went to mississippi fun place and a nice one <br>" +
        "So i went back to new york to teach and here we are ";

    $( "#dialog-2" ).dialog({
        autoOpen: false,
        buttons: {
            Do_you_need_help: function() {
                $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Well perhaps <br>" +
                    "Do you know there is anther school around here</p>");
                $('#dialog-2').dialog({
                    autoOpen: true,
                    buttons: {
                       Well_why: function () {
                            $( "#Story" ).replaceWith("<p id='Story'> Because i hate it here <br>" +
                                "And i want to teach on anthor school </p>");
                            $('#dialog-2').dialog({
                                autoOpen: true,
                                buttons: {
                                 Welllll: function () {
                                     $( "#Story" ).replaceWith("<p id='Story'> You dont want to say there is othe one he<br>" +
                                         "Or is it the second doesn`t teach anymore  </p>");
                                     $('#dialog-2').dialog({
                                         autoOpen: true,
                                         buttons: {
                                             The_second_one: function () {
                                                 $( "#Story" ).replaceWith("<p id='Story'> Well thats a bad one  </p>");
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
           So_How_is_teaching: function () {
                $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Well thats depends on the class you get <br>" +
                    "And your mood because bad mood and bad class == HELL <br>" +
                    "Bad mood and good class or Good mood && bad class == Mehhh <br>" +
                    "Good mood and Good class == Heaven</p>");
                $('#dialog-2').dialog({
                    autoOpen: true,
                    buttons: {
                        So_hoe_does_that_work: function () {
                            $( "#Story" ).replaceWith("<p id='Story'> That depends on the lot <br>" +
                                "And as you`re thinking is not controllable</p>");
                            $('#dialog-2').dialog({
                                autoOpen: true,
                                buttons: {
                                    Well_ehheee: function () {
                                        $( "#Story" ).replaceWith("<p id='Story'> Yeah ehhhhhhhe </p>");
                                        $('#dialog-2').dialog({
                                            autoOpen: true,
                                            buttons: {
                                                Now_Help: function () {
                                                    $( "#Story" ).replaceWith("<p id='Story'> Welll No help   </p>");
                                                    $('#dialog-2').dialog({
                                                        autoOpen: true,
                                                        buttons: {
                                                            Well_anything_then: function () {
                                                                $( "#Story" ).replaceWith("<p id='Story'> Well not thinking about that at this moment </p>")
                                                            $('#dialog-2').dialog({
                                                                autoOpen: true,
                                                                buttons: {
                                                                    Well: function () {$(this).dialog('close')}
                                                                }
                                                            })},
                                                        },
                                                    })},
                                            },
                                        })},
                                    Nope: function () {$(this).dialog('close');}
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