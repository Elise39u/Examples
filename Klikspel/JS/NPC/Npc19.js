var Npcname = "Guard Paul";

$(function() {
    document.getElementById('Bio').innerHTML = "BIO: Well a stranger, Hi there i am paul  <br> " +
        "I worked for 15 years in the police deparment for god sake <br> " +
        "And now i am here stuck by a door that i needs to guard <br>" +
        "Because the other side of the subbase is not secure <br>" +
        "Maby we can make a deal friend";

    $( "#dialog-2" ).dialog({
        autoOpen: false,
        width: 600,
        buttons: {
            Well_what_for_deal: function() {
                $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Well i am stuck here by this door for so long <br>" +
                    "I want a break so now and then but that cant <br>" +
                    "So could you find some alchol for me </p>");
                $('#dialog-2').dialog({
                    autoOpen: true,
                    width: 600,
                    buttons: {
                        Okey_Sure: function () {
                            $( "#Story" ).replaceWith("<p id='Story'> In exchange i let you through </p>");
                            $('#dialog-2').dialog({
                                autoOpen: true,
                                width: 600,
                                buttons: {
                                 Okey: function () {
                                      alert('You started the quest Something to do');
                                      $(this).dialog('close');},
                                },
                            })},
                    }
                })},
            Well_Is_not_fun_this_he: function () {
                $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Well you are smart Guess you studied Master <br>" +
                    "Its not fun ideed and telling people all day that they cant go futher is a pain <br>" +
                    "I wish one day i could Just go home </p>");
                $('#dialog-2').dialog({
                    autoOpen: true,
                    width: 600,
                    buttons: {
                        Well_Should_i_guard_the_door: function () {
                            $( "#Story" ).replaceWith("<p id='Story'> What would you think  </p>");
                            $('#dialog-2').dialog({
                                autoOpen: true,
                                width: 600,
                                buttons: {
                                    yes: function () {
                                        $( "#Story" ).replaceWith("<p id='Story'>  Of course not </p>");
                                        $('#dialog-2').dialog({
                                            autoOpen: true,
                                            width: 600,
                                            buttons: {
                                                Okey: function () {$(this).dialog('close');},
                                            },
                                        })},
                                    Nope: function () {$(this).dialog('close');}
                                }
                            })},
                        Well_goodBye: function () {$(this).dialog('close');}
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