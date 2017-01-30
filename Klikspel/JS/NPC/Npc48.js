var Npcname = "Pregnant Irene";

$(function() {
    document.getElementById('Bio').innerHTML = "BIO: Well there i am Irene and i am 8 months pregnant <br>" +
        "So you gusses is the paring time or something like that <br>" +
        "Well i am 31 years old and had a boyfriend here called Fred <br>" +
        "i don`t know if he made it we were gonna married in a few months but then this happened";

    $( "#dialog-2" ).dialog({
        autoOpen: false,
        buttons: {
            Do_you_need_help: function() {
                $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Well can you find fred for me  </p>");
                $('#dialog-2').dialog({
                    autoOpen: true,
                    buttons: {
                       Were_should_i_start: function () {
                            $( "#Story" ).replaceWith("<p id='Story'> dont know maby our arpartment on the other side of the mall</p>");
                            $('#dialog-2').dialog({
                                autoOpen: true,
                                buttons: {
                                 description: function () {
                                     $( "#Story" ).replaceWith("<p id='Story'> Well i forgot so if you ask about irene he wil know  </p>");
                                     $('#dialog-2').dialog({
                                         autoOpen: true,
                                         buttons: {
                                             Wellll: function () {
                                                 $( "#Story" ).replaceWith("<p id='Story'> Well what   </p>");
                                                 $('#dialog-2').dialog({
                                                     autoOpen: true,
                                                     buttons: {
                                                        Okey_easy: function () {
                                                            alert('Quest Lost Husband Started');
                                                            $(this).dialog('close')}
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
           So_How_is_it: function () {
                $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Well Not that fine <br>" +
                    "I am fat i want to eat all day and dot start about my moodswing <br>" +
                    "O and i dont want to go in labor next months of even sooner</p>");
                $('#dialog-2').dialog({
                    autoOpen: true,
                    buttons: {
                        Okey_any_joy: function () {
                            $( "#Story" ).replaceWith("<p id='Story'> Well the wonder that a human is growing inside you <br>" +
                                "Futher i don`t have to complain for bening lazy all day</p>");
                            $('#dialog-2').dialog({
                                autoOpen: true,
                                buttons: {
                                    See_there_are_nice_feauters: function () {
                                        $( "#Story" ).replaceWith("<p id='Story'> Yeah you`re right </p>");
                                        $('#dialog-2').dialog({
                                            autoOpen: true,
                                            buttons: {
                                                So_enjoy_it: function () {
                                                    $( "#Story" ).replaceWith("<p id='Story'> I will thank you </p>");
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