var Npcname = "Teacher Ingrit";

$(function() {
    document.getElementById('Bio').innerHTML = "BIO: Well hi i am Ingrit <br>" +
        "I teach here for at least 12,5 years now <br>" +
        "Wat i teach are It and some lanuguge <br>" +
        "Maby i did need a holliyday after all";

    $( "#dialog-2" ).dialog({
        autoOpen: false,
        buttons: {
            Well_Any_help_Needed: function() {
                $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Well Its kind a nice that you asked</p>");
                $('#dialog-2').dialog({
                    autoOpen: true,
                    buttons: {
                        Well: function () {
                            $( "#Story" ).replaceWith("<p id='Story'> I dont have anything to do for you </p>");
                            $('#dialog-2').dialog({
                                autoOpen: true,
                                buttons: {
                                 Okey: function () {
                                     $( "#Story" ).replaceWith("<p id='Story'> So you can go </p>")
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
           So_how_is_life: function () {
                $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Well you ask a 27 year <br>" +
                    "Well i had a boyfriend called Ron but i lost him in the outbreak <br>" +
                    "With that means we seppereated so i dont know if he lives or not <br>" +
                    "Maby you know that </p> ");
                $('#dialog-2').dialog({
                    autoOpen: true,
                    buttons: {
                        Ehhheeeee: function () {
                            $( "#Story" ).replaceWith("<p id='Story'> Well he never heard that i am pregnant  </p>");
                            $('#dialog-2').dialog({
                                autoOpen: true,
                                buttons: {
                                    Whatttt: function () {
                                        $( "#Story" ).replaceWith("<p id='Story'> Yes 7 months now </p>");
                                        $('#dialog-2').dialog({
                                            autoOpen: true,
                                            buttons: {
                                                Okeeey: function () {
                                                    $( "#Story" ).replaceWith("<p id='Story'> Comeone at least you have seen my belly <br>" +
                                                        "Or thought you that i was fat </p>");
                                                    $('#dialog-2').dialog({
                                                        autoOpen: true,
                                                        buttons: {
                                                            Well: function () {$(this).dialog('close');},
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