var Npcname = "Head Prisoner David";

$(function() {
    document.getElementById('Bio').innerHTML = "BIO: Well Well its always nice to see a newby <br>" +
        "My name is David and i am in charge here so if you need anything ask me <br>" +
        "But i heard you guys looking for a way out so perhaps we can make a deal <br>" +
        "And yes you can trust me";

    $( "#dialog-2" ).dialog({
        autoOpen: false,
        buttons: {
            Well_NOW_blockD: function() {
                $( "#Story" ).replaceWith(Npcname + "<p id='Story'> No brother and take it calm  <br>" +
                    "If you promise you deliver us weapons from out Block d then i wil show it</p>");
                $('#dialog-2').dialog({
                    autoOpen: true,
                    buttons: {
                        Ehhheee: function () {
                            $( "#Story" ).replaceWith("<p id='Story'> We send Ken with you as proof  </p>");
                            $('#dialog-2').dialog({
                                autoOpen: true,
                                buttons: {
                                    And_how_do_you_check_that: function () {
                                        $( "#Story" ).replaceWith("<p id='Story'> How do you mean</p>");
                                        $('#dialog-2').dialog({
                                            autoOpen: true,
                                            buttons: {
                                                i_can_shoot_ken: function () {
                                                    $( "#Story" ).replaceWith("<p id='Story'> that we wil hear  </p>");
                                                    $('#dialog-2').dialog({
                                                        autoOpen: true,
                                                        buttons: {
                                                            beat_him_to_death: function () {
                                                                $( "#Story" ).replaceWith("<p id='Story'> Well i come then around 1 hour <br>" +
                                                                    "If i find kend dead  i wil serach you and kill you </p>");
                                                                $('#dialog-2').dialog({
                                                                    autoOpen: true,
                                                                    buttons: {
                                                                        Okey: function () {
                                                                            alert('You started the quest Weaponry');
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