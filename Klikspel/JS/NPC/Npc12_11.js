var Npcname = "Mother Lieke";
var Npcname1 = "Coach Marieke";

$(function() {
    document.getElementById('Bio').innerHTML = "BIO: I am Lieke i am mother of 2 kids  <br> " +
        "There are my only thing lefr now so <br> " +
        "But they are thisrty and i cant do anything <br>" +
        "I loved new yoerk but the outbreak was a pain in the ass";

    $( "#dialog-2" ).dialog({
        autoOpen: false,
        width: 600,
        buttons: {
            Do_you_need_help: function() {
                $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Well I see that you`re with Marieke <br>" +
                    Npcname1 + "Clam lieke what whant you that we do <br>" +
                    Npcname + " could you two get something to drink for my kids  <br>" +
                    Npcname1 + " Sure we wil get something to dink</p>");
                $('#dialog-2').dialog({
                    autoOpen: true,
                    width: 600,
                    buttons: {
                        Okey_as_you_said_Marieke: function () {
                            $( "#Story" ).replaceWith("<p id='Story'> Come Back with something to drink <br>" +
                                Npcname1 + "A choice or is anything good< <br>" +
                                Npcname + " No anything is good </p>");
                            $('#dialog-2').dialog({
                                autoOpen: true,
                                width: 600,
                                buttons: {
                                    Okey: function () {
                                        alert('You started the quest Thurst Nope');
                                        $(this).dialog('close');},
                                },
                            })},
                    }
                })},
            How_is_parenting: function () {
                $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Well that depens on you`re kids and mood <br>" +
                    Npcname1 + " Could you give us a example <br>" +
                    Npcname + "if you`re angry you likey go punsih them more then when you`re happy <br>" +
                    "And if you`re childeren annoys you yeah you become angry <br>" +
                    Npcname1 + " I cant say that its false </p>");
                $('#dialog-2').dialog({
                    autoOpen: true,
                    width: 600,
                    buttons: {
                        Okey_any_tips: function () {
                            $( "#Story" ).replaceWith("<p id='Story'> Well Nope  <br>" +
                                Npcname1 + " Bye Lieke <br>" +
                                Npcname + " bye Marieke</p>");
                            $('#dialog-2').dialog({
                                autoOpen: true,
                                width: 600,
                                buttons: {
                                    Bye: function () {$(this).dialog('close');}
                                }
                            })},
                        Okey_bye: function () {$(this).dialog('close');}
                    }
                })},
            Well_bye: function () {$(this).dialog('close');}
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