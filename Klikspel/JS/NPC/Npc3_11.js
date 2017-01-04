var Npcname = "Widow Marjo";
var Npcname1 = "Coach Marieke";

$(function() {
    document.getElementById('Bio').innerHTML = "BIO: I am Marjolein but people call me marjo   <br> " +
        "i lost mine husband on the blink of escape <br> " +
        "And now i am very Depression";

    $( "#dialog-2" ).dialog({
        autoOpen: false,
        buttons: {
            No: function() {
                $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Okey What do you want to now <br>" +
                    "And is that relly her " +
                    Npcname1 + " Yes Marjo i am here clam down</p>");
                $('#dialog-2').dialog({
                autoOpen: true,
                buttons: {
                    Should_i_talk_to_her: function () {
                        $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Well i trust her more <br>" +
                        Npcname1 + " What for info wil you give us <br>" +
                            "Or do we need to do something? </p>");
                        $('#dialog-2').dialog({
                            autoOpen: true,
                            buttons: {
                                Are_You_Sure_Marieke: function () {
                                    $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Eheeeee meh i want a Dark Green Potion <br>" +
                                    "Could you get that <br>" +
                                        Npcname1 + " sure we will do that </p>");
                                    $('#dialog-2').dialog({
                                        autoOpen: true,
                                        buttons: {
                                            Okey: function () {
                                                alert('You started the quest happiness');
                                                $(this).dialog('close');}
                                        }
                                    })},
                            },
                            No_I_Talk_to_her: function () {
                                $("#Story").replaceWith(Npcname + "<p id='Story'> No i wont talk to <br>" + Npcname1 +
                                    Npcname1 + "I told you.");
                                $('#dialog-2').dialog ({
                                    autoOpen:true,
                                    buttons: {
                                        Okey_you_talk_to_her: function () {
                                            $(this).dialog.('close');
                                        }
                                    }
                                })
                            }
                        })},
                }
            })}},
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