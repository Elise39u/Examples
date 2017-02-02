var Npcname = "Head Prisoner David";

$(function() {
    document.getElementById('Bio').innerHTML = "BIO: Well Well its always nice to see a newby <br>" +
        "My name is David and i am in charge here so if you need anything ask me <br>" +
        "But i heard you guys looking for a way out so perhaps we can make a deal <br>" +
        "And yes you can trust me";

    $( "#dialog-2" ).dialog({
        autoOpen: false,
        buttons: {
            Well_the_way_to_blockD: function() {
                $( "#Story" ).replaceWith(Npcname + "<p id='Story'> First you have to promise that you can get a budy of mine free <br>" +
                    "He was left behind in BLock b <br>" +
                    " Take ken with you he knows the way</p>");
                $('#dialog-2').dialog({
                    autoOpen: true,
                    buttons: {
                       Well_block_b_is_locked: function () {
                            $( "#Story" ).replaceWith("<p id='Story'> So here is the key to the door  </p>");
                            $('#dialog-2').dialog({
                                autoOpen: true,
                                buttons: {
                                 Okey_wich_cell: function () {
                                     $( "#Story" ).replaceWith("<p id='Story'> in one of the cells <br>" +
                                         "I dont know either Ken know it</p>");
                                     $('#dialog-2').dialog({
                                         autoOpen: true,
                                         buttons: {
                                             Okey_if_dont_know_it: function () {
                                                 $( "#Story" ).replaceWith("<p id='Story'> Than you`re Fucked </p>");
                                                 $('#dialog-2').dialog({
                                                     autoOpen: true,
                                                     buttons: {
                                                        Well: function () {
                                                            $( "#Story" ).replaceWith("<p id='Story'> Well go on <br>" +
                                                                "Dont dare to come back without him </p>");
                                                            $('#dialog-2').dialog({
                                                                autoOpen: true,
                                                                buttons: {
                                                                    Okey: function () {
                                                                        alert('You started the quest gang Up');
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