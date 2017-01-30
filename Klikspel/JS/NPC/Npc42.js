var Npcname = "Pastoor thijs";

$(function() {
    document.getElementById('Bio').innerHTML = "BIO: Well Hi there i am Pastoor of this church <br>" +
        "Call me thijs By side i have been working here for around 25 years now <br>" +
        "I swear that i never leave the church and so will i <br>" +
        "By the way what do you want exactly";

    $( "#dialog-2" ).dialog({
        autoOpen: false,
        buttons: {
            Do_you_need_help: function() {
                $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Well i don`t need help <br>" +
                    "Maby you can ask the people around here if they need help <br>" +
                    "Or so as i a they dont need help</p>");
                $('#dialog-2').dialog({
                    autoOpen: true,
                    buttons: {
                        So_no_help_at_all: function () {
                            $( "#Story" ).replaceWith("<p id='Story'> Well no maby ask me later </p>");
                            $('#dialog-2').dialog({
                                autoOpen: true,
                                buttons: {
                                 Ehhhheeeee: function () {
                                     $( "#Story" ).replaceWith("<p id='Story'> now go on i have other things to do  </p>");
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
           So_Why_Pastoor: function () {
                $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Thats is no question why <br>" +
                    "If you believe and read the bible every day its should be a sign <br>" +
                    "And so you should aks your self the question <br>" +
                    "Do i want to join the church</p>");
                $('#dialog-2').dialog({
                    autoOpen: true,
                    buttons: {
                        Wellllllll: function () {
                            $( "#Story" ).replaceWith("<p id='Story'> So wellll???</p>");
                            $('#dialog-2').dialog({
                                autoOpen: true,
                                buttons: {
                                    No_thanks: function () {
                                        $( "#Story" ).replaceWith("<p id='Story'> As i already thought </p>");
                                        $('#dialog-2').dialog({
                                            autoOpen: true,
                                            buttons: {
                                                Okeeey: function () {
                                                    $( "#Story" ).replaceWith("<p id='Story'> Yeah now go on please </p>");
                                                    $('#dialog-2').dialog({
                                                        autoOpen: true,
                                                        buttons: {
                                                            Well: function () {$(this).dialog('close');},
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