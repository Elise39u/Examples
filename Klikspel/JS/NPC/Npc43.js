var Npcname = "Pregnant Zoëy";

$(function() {
    document.getElementById('Bio').innerHTML = "BIO: I am Zoëy and i am 6 months pregnant now <br>" +
        "You`re thinking great time to be pregnant he well no one saw this coming <br>" +
        "So i am 27 years old and have a boyfriend called Patrick <br>" +
        "I don`t if he is still alive or not";

    $( "#dialog-2" ).dialog({
        autoOpen: false,
        buttons: {
            Do_you_need_help: function() {
                $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Perhaps ........ <br>" +
                    "I couldn`t think about anything now <br>" +
                    "Maby other people around here needs  help <br>" +
                    "Or do you hear that more and more</p>");
                $('#dialog-2').dialog({
                    autoOpen: true,
                    buttons: {
                       Can_you_gusses_that_zoey: function () {
                            $( "#Story" ).replaceWith("<p id='Story'> Well no so please say it </p>");
                            $('#dialog-2').dialog({
                                autoOpen: true,
                                buttons: {
                                 Guess_it: function () {
                                     $( "#Story" ).replaceWith("<p id='Story'> now yes its most come one  </p>");
                                     $('#dialog-2').dialog({
                                         autoOpen: true,
                                         buttons: {
                                             Thats_coorect: function () {
                                                 $( "#Story" ).replaceWith("<p id='Story'> now that was a hard one  </p>");
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
           So_How_is_it: function () {
                $( "#Story" ).replaceWith(Npcname + "<p id='Story'> How is what owwwwwwwww wait <br>" +
                    "Well its the wonder that a human is growing inside you <br>" +
                    "And no one cann excuse you for being lazy <br>" +
                    "Eating all day and not can be mad because of pregnant hormones </p>");
                $('#dialog-2').dialog({
                    autoOpen: true,
                    buttons: {
                        So_it_is_fun: function () {
                            $( "#Story" ).replaceWith("<p id='Story'> yeah it is <br>" +
                                "Only until labor then the pain comes</p>");
                            $('#dialog-2').dialog({
                                autoOpen: true,
                                buttons: {
                                    Well_ehheee: function () {
                                        $( "#Story" ).replaceWith("<p id='Story'> Can you help me with that </p>");
                                        $('#dialog-2').dialog({
                                            autoOpen: true,
                                            buttons: {
                                                How: function () {
                                                    $( "#Story" ).replaceWith("<p id='Story'> Welll hold my hand in labor <br>" +
                                                        "So i can squeeze the pain out of me   </p>");
                                                    $('#dialog-2').dialog({
                                                        autoOpen: true,
                                                        buttons: {
                                                            Well_do_you_mean_the_baby: function () {
                                                                $( "#Story" ).replaceWith("<p id='Story'> Well What are you thinking <br>" +
                                                                    "I am not a monster idioit </p>")
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