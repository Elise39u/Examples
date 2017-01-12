var Npcname = "Teacher Hans";

$(function() {
    document.getElementById('Bio').innerHTML = "BIO: So new fresh Blood <br>" +
        "Just kidding i am techer Hans and do this al over 10 years now <br>" +
        "I dissagree on one way lesson i tell you how but if you do it better go on. <br>" +
        "I started a project last year with some students from it to give lesson about tools <br>" +
        "Well i regrat going on holiyday to new york";

    $( "#dialog-2" ).dialog({
        autoOpen: false,
        buttons: {
            Well_Any_help_Needed: function() {
                $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Well Can find you some gear for me <br>" +
                    " So i can connect to the out world</p>");
                $('#dialog-2').dialog({
                    autoOpen: true,
                    buttons: {
                        Ehhhhheeeee: function () {
                            $( "#Story" ).replaceWith("<p id='Story'> Well a phone laptop Wifi Router </p>");
                            $('#dialog-2').dialog({
                                autoOpen: true,
                                buttons: {
                                 Okey_where: function () {
                                     $( "#Story" ).replaceWith("<p id='Story'> Media Markt behind the sub base   </p>")
                                     $('#dialog-2').dialog({
                                         autoOpen: true,
                                         buttons: {
                                             Well_Okey: function () {
                                                 alert('You started the quest Connecting');
                                                 $(this).dialog('close')}
                                         }
                                     })
                                 },
                                },
                            })},
                    }
                })},
           So_Tell_More_About_the_job: function () {
                $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Well .... Serious</p> ");
                $('#dialog-2').dialog({
                    autoOpen: true,
                    buttons: {
                        Ehhheeeee: function () {
                            $( "#Story" ).replaceWith("<p id='Story'> O wait <br>" +
                                "OFcours but dindt you already spoke to teachers </p>");
                            $('#dialog-2').dialog({
                                autoOpen: true,
                                buttons: {
                                    Well: function () {
                                        $( "#Story" ).replaceWith("<p id='Story'> Now then </p>");
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