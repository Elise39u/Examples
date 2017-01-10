var Npcname = "John";

$(function() {
    document.getElementById('Bio').innerHTML = "BIO: I am John <br>" +
        "i lived here for years and nothing would stop me <br> " +
        "And i will  never leave the city <br>" +
        "Not even by a zombie out break";

    $( "#dialog-2" ).dialog({
        autoOpen: false,
        width: 600,
        buttons: {
            Saw_Anything_Latly: function() {
                $( "#Story" ).replaceWith(Npcname + "<p> No i am not the cipier </p>");
                $('#dialog-2').dialog({
                autoOpen: true,
                    width: 600,
                buttons: {
                    Ow_Okey_thanks_then: function () {$(this).dialog('close');}
                }
            })},
            I_am_in_need_of_items: function () {
                $( "#Story" ).replaceWith(Npcname + "<p> You have eyes go look for it </p>");
                $('#dialog-2').dialog({
                    autoOpen: true,
                    width: 600,
                    buttons: {
                        Eheee_Okey: function () {$(this).dialog('close');}
                    }
                })},
            Do_you_need_help: function () {
                $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Well i am in need of some items </p>");
                $('#dialog-2').dialog({
                    autoOpen: true,
                    width: 600,
                    buttons: {
                        What_do_you_want: function () {
                            $( "#Story" ).replaceWith("<p id='Story'> I am in need of a green potion <br>" +
                                "Can you bring it to me in exchange for some items and info <br>" +
                                "Or dont you have time </p>");
                            $('#dialog-2').dialog({
                                autoOpen: true,
                                width: 600,
                                buttons: {
                                    Sure: function () {
                                        $( "#Story" ).replaceWith("<p id='Story'> Come Back to me when you have it </p>");
                                        $('#dialog-2').dialog({
                                            autoOpen: true,
                                            width: 600,
                                            buttons: {
                                                Okey: function () {
                                                    alert('You started the quest Healing')
                                                    $(this).dialog('close');}
                                            }
                                        })},
                                    No_Notime: function () {$(this).dialog('close')}
                                }
                            })}
                    }
                })}
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