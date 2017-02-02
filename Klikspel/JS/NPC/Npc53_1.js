var Npcname = "Head Prisoner David";

$(function() {
    document.getElementById('Bio').innerHTML = "BIO: Well Well its always nice to see a newby <br>" +
        "My name is David and i am in charge here so if you need anything ask me <br>" +
        "But i heard you guys looking for a way out so perhaps we can make a deal <br>" +
        "And yes you can trust me";

    $( "#dialog-2" ).dialog({
        autoOpen: false,
        buttons: {
            Well_blockD: function() {
                $( "#Story" ).replaceWith(Npcname + "<p id='Story'> No Not yet my fellow friend <br>" +
                    "Our People are starving and have thurst <br>" +
                    "Perhaps you can make the way to the kichten free </p>");
                $('#dialog-2').dialog({
                    autoOpen: true,
                    buttons: {
                        Can_i_then_know_the_way: function () {
                            $( "#Story" ).replaceWith("<p id='Story'> Well perpahps   </p>");
                            $('#dialog-2').dialog({
                                autoOpen: true,
                                buttons: {
                                    Welllll: function () {
                                        $( "#Story" ).replaceWith("<p id='Story'> The way to the kichten is behind block b <br>" +
                                            " Come back thourgh the doors here as proof</p>");
                                        $('#dialog-2').dialog({
                                            autoOpen: true,
                                            buttons: {
                                                Okey_any_tips: function () {
                                                    $( "#Story" ).replaceWith("<p id='Story'> Just go but wacht out from the monsters </p>");
                                                    $('#dialog-2').dialog({
                                                        autoOpen: true,
                                                        buttons: {
                                                            Monsters: function () {
                                                                $( "#Story" ).replaceWith("<p id='Story'> Well i heard satan and his minons are there </p>");
                                                                $('#dialog-2').dialog({
                                                                    autoOpen: true,
                                                                    buttons: {
                                                                        Okey: function () {
                                                                            alert('You started the quest Food and Drinks');
                                                                            $(this).dialog('close')}
                                                                    }
                                                                })
                                                            },
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