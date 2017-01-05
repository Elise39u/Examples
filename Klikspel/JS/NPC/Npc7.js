var Npcname = "Beauty King Lauren";

$(function() {
    document.getElementById('Bio').innerHTML = "BIO: I am Lauren I hold a beauty blog and beauty insta en pinterset  <br> " +
        "it was so delux life but yeah then the outbreak came <br> " +
        "A i want back to my old life";

    $( "#dialog-2" ).dialog({
        autoOpen: false,
        buttons: {
            Do_you_need_help: function() {
                $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Well I have two things for you <br>" +
                    "You can choos one or two </p>");
                $('#dialog-2').dialog({
                autoOpen: true,
                buttons: {
                    One: function () {
                        $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Well i am need of the next items  <br>" +
                        "Some wine and make-up  so i can do the next item for my beauty blog</p>");
                        $('#dialog-2').dialog({
                            autoOpen: true,
                            buttons: {
                                Okey: function () {
                                    $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Okey Come back to me when you have it  </p>");
                                    $('#dialog-2').dialog({
                                        autoOpen: true,
                                        buttons: {
                                            sure: function () {
                                                alert('You started the quest Girl Dreams');
                                                $(this).dialog('close');}
                                        }
                                    })},
                            },
                            Hell_no: function () {$(this).dialog('close');}
                        })},
                    two: function () {
                        $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Well can you find something for me  <br>" +
                            " Like a recorder so i can make beauty videos</p>");
                        $('#dialog-2').dialog({
                            autoOpen: true,
                            buttons: {
                                Okey_ehh: function () {
                                    $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Okey come back to me with the items  </p>");
                                    $('#dialog-2').dialog({
                                        autoOpen: true,
                                        buttons: {
                                            sure: function () {
                                                alert('You started the quest Recording');
                                                $(this).dialog('close');}
                                        }
                                    })},
                            },
                            nope: function () {$(this).dialog('close');}
                        })},
                }
            })},
            Why_all_that_beauty_stuff: function () {
                $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Well i was already quite busy with makeup when i was 5 <br>" +
                    "And i thought the video`s always better could <br>" +
                    "so there i went </p>");
                $('#dialog-2').dialog({
                    autoOpen: true,
                    buttons: {
                        Are_there_tips_for_me: function () {
                            $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Well no you look fine  </p>");
                            $('#dialog-2').dialog({
                                autoOpen: true,
                                buttons: {
                                    thanxs: function () {$(this).dialog('close');}
                                }
                            })},
                        Okey_bye: function () {$(this).dialog('close');}
                    }
                })},
            I_am_afraid_of_you: function () {$(this).dialog('close');}
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