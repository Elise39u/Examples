var Npcname = "Gardener Alex";

$(function() {
    document.getElementById('Bio').innerHTML = "BIO: So i am alex and i am a gardener for the church <br>" +
        "I do this job already for a decade now so its becomes quite boring sometimes <br>" +
        "I was thinking about a new job but yeah this came and .........";

    $( "#dialog-2" ).dialog({
        autoOpen: false,
        buttons: {
            Do_you_need_help: function() {
                $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Well have you experiencing with gardening </p>");
                $('#dialog-2').dialog({
                    autoOpen: true,
                    buttons: {
                        So_as: function () {
                            $( "#Story" ).replaceWith("<p id='Story'> Well do anything in the garden </p>");
                            $('#dialog-2').dialog({
                                autoOpen: true,
                                buttons: {
                                 Ehhhheeeee: function () {
                                     $( "#Story" ).replaceWith("<p id='Story'> Well thats what i thought  </p>")
                                     $('#dialog-2').dialog({
                                         autoOpen: true,
                                         buttons: {
                                             Okey_bye: function () {$(this).dialog('close')}
                                         }
                                     })
                                 },
                                },
                            })},
                    }
                })},
           So_Gardener: function () {
                $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Yeah i am one of those boys who liked working in the yard <br>" +
                    "So i decided to make it my job but yeah doing the same thing can be quite boring <br>" +
                    "Then looking for a job on the outbreak wont help either</p>");
                $('#dialog-2').dialog({
                    autoOpen: true,
                    buttons: {
                        Why_dont_you_swichted_sooner: function () {
                            $( "#Story" ).replaceWith("<p id='Story'> Way earlier i liked my job <br>" +
                                " but it feels like i new this was coming but i wouldn`t leave <br>" +
                                "Yeah and then you got this</p>");
                            $('#dialog-2').dialog({
                                autoOpen: true,
                                buttons: {
                                    feeling_it: function () {
                                        $( "#Story" ).replaceWith("<p id='Story'> yeah in case of i wound`t leave 5 years back <br>" +
                                            "But now i want to leave </p>");
                                        $('#dialog-2').dialog({
                                            autoOpen: true,
                                            buttons: {
                                                Okeeey: function () {
                                                    $( "#Story" ).replaceWith("<p id='Story'> Yeah i thought you would be smart </p>");
                                                    $('#dialog-2').dialog({
                                                        autoOpen: true,
                                                        buttons: {
                                                            Well: function () {$(this).dialog('close');},
                                                        },
                                                    })},
                                            },
                                        })},
                                    Okey_then: function () {$(this).dialog('close');}
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