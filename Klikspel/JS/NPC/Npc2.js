var Npcname = "Soldier Kane";

$(function() {
    document.getElementById('Bio').innerHTML = "BIO: I am Kane i served the army for 2 decades  <br> " +
        "i never thougt i would be a guard for a evac base <br> " +
        "But here i am";

    $( "#dialog-2" ).dialog({
        autoOpen: false,
        width: 600,
        buttons: {
            Why_Are_you_a_guard: function() {
                $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Because i want to server my country <br>" +
                    "But what do you want </p>");
                $('#dialog-2').dialog({
                autoOpen: true,
                    width: 600,
                buttons: {
                    DO_you_need_help: function () {
                        $( "#Story" ).replaceWith("<p id='Story'> Well we need some weapons <br>" +
                        "In order to defend you wil you seek them </p>");
                        $('#dialog-2').dialog({
                            autoOpen: true,
                            width: 600,
                            buttons: {
                                Okey_Wich_weapons: function () {
                                    $( "#Story" ).replaceWith("<p id='Story'> Okey the Next Weapons <br>" +
                                    "M4 both a4 and a1-s, And the rpg do you get that </p>");
                                    $('#dialog-2').dialog({
                                        autoOpen: true,
                                        width: 600,
                                        buttons: {
                                            Yes_Kane: function () {
                                                alert('You started the quest Guns and Roses');
                                                $(this).dialog('close');}
                                        }
                                    })},
                            },
                            No_I_dont_Have_time: function () {$(this).dialog('close');}
                        })},
                }
            })},
            How_is_The_army: function () {
                $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Only the real men can enter <br>" +
                    "Do you want to try the training </p>");
                $('#dialog-2').dialog({
                    autoOpen: true,
                    width: 600,
                    buttons: {
                        Yes_Why_not: function () {
                            $( "#Story" ).replaceWith("<p id='Story'> Okey Can you go to the playground <br>" +
                                "Someone there will waiting </p>");
                            $('#dialog-2').dialog({
                                autoOpen: true,
                                width: 600,
                                buttons: {
                                    Okey: function () {$(this).dialog('close');}
                                }
                            })},
                        No_I_stay_save: function () {$(this).dialog('close');}
                    }
                })},
            Ehheee_Bye: function () {$(this).dialog('close');}
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