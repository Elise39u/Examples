var Npcname = "Wachter Maxine";
var Npcname1 = "Coach Marieke";

$( "#dialog-2" ).dialog({
    autoOpen: false,
    buttons: {
        Do_you_need_help: function() {
            $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Well..... i have two things <br>" +
                "But i prefere that you have a older person with you.<br>" +
                "Because i dont trust you alone with kids <br>" +
                Npcname1 + "Well i am here <br>" +
                Npcname + "Thats great so i will tell you the second thing <br> " +
                Npcname1 + "Well thanks </p>" + Npcname);
            $('#dialog-2').dialog({
                autoOpen: true,
                buttons: {
                    What_do_i_have_to_do: function () {
                        $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Well go look for a treat for the kids <br>" +
                            "If you come back to me with a treat i wil reward you with some info <br>" +
                            Npcname1 + "Should we go?</p>");
                        $('#dialog-2').dialog({
                            autoOpen: true,
                            buttons: {
                                Where_can_i_find_this: function () {
                                    $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Well Were are you waiting for <br>" +
                                        "And yes look in the supermarkt or the candy store</p>");
                                    $('#dialog-2').dialog({
                                        autoOpen: true,
                                        buttons: {
                                            Okey: function () {
                                                alert('You started the quest Treat time');
                                                $(this).dialog('close');},
                                        },
                                    })},
                            },
                        })},
                    Well_what_is_it: function () {
                        $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Well i have a few things to do so can you two wacht the kids <br>" +
                            Npcname1 + "Sure we can do that tell us were they are <br>" +
                            Npcname + " There are on the playyard so i see you two soon <br>" +
                            Npcname1 + " See you soon then </p>" + Npcname);
                        $('#dialog-2').dialog({
                            autoOpen: true,
                            buttons: {
                                Okey_See_you_Soon: function () {
                                    alert('You started the quest Wacht time');
                                    $(this).dialog('close');},
                            },
                        })}
                }
            })},
        How_is_wachting_kids: function () {
            $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Well its nice and Fun and the time goes away <br>" +
                "you really need to have fun while working with kids else this job is nothing <br>" +
                "So do you like kids or not <br>" +
                Npcname1 + "Well is not always that way but its you`re opoin <br>" +
                Npcname + " How do you mean? <br>" +
                Npcname1 + "Well in the first few months i started to work on my social study i dindt like kids very much <br>" +
                "So i started working on the first school in the region <br>" +
                "And well now i do like them more <br>" +
                Npcname + "OW so &#9863;</p>");
            $('#dialog-2').dialog({
                autoOpen: true,
                buttons: {
                    Okey_Do_i_have_potentials: function () {
                        $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Well ever worked with kids or not <br>" +
                            Npcname1 + "Indeed did you worked with kids before </p>");
                        $('#dialog-2').dialog({
                            autoOpen: true,
                            buttons: {
                                yes: function () {
                                    $( "#Story" ).replaceWith(Npcname + "<p id='Story'> So then you could try it </p>");
                                    $('#dialog-2').dialog({
                                        autoOpen: true,
                                        buttons: {
                                            Okey: function () {$(this).dialog('close');},
                                        },
                                    })},
                                Nope_sorry: function () {$(this).dialog('close');}
                            }
                        })},
                    Nope: function () {$(this).dialog('close');}
                }
            })},
        Bye_Bye: function () {$(this).dialog('close');}
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