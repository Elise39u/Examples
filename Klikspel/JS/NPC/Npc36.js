var Npcname = "Student Jos";

$(function() {
    document.getElementById('Bio').innerHTML = "BIO: Well stranger i am Jos  <br>" +
        "I studied It in holland IT for over 5 years <br>" +
        "After i finshed that i went to studie It here in new york but yeah";

    $( "#dialog-2" ).dialog({
        autoOpen: false,
        buttons: {
            Well_Any_help_Needed: function() {
                $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Well Let me think about that</p>");
                $('#dialog-2').dialog({
                    autoOpen: true,
                    buttons: {
                        Andd: function () {
                            $( "#Story" ).replaceWith("<p id='Story'> So man easy <br>" +
                                "I can think right now so come later back </p>");
                            $('#dialog-2').dialog({
                                autoOpen: true,
                                buttons: {
                                 Okey: function () {
                                     $( "#Story" ).replaceWith("<p id='Story'> Now go just go  </p>")
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
           So_School: function () {
                $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Well .... Yes </p> ");
                $('#dialog-2').dialog({
                    autoOpen: true,
                    buttons: {
                        Ehhheeeee: function () {
                            $( "#Story" ).replaceWith("<p id='Story'> What did you expected then <br>" +
                                "That i got a job and be succesfull then </p>");
                            $('#dialog-2').dialog({
                                autoOpen: true,
                                buttons: {
                                    Well: function () {
                                        $( "#Story" ).replaceWith("<p id='Story'> just go </p>");
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