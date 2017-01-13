var Npcname = "Widow Marjo";

$(function() {
    document.getElementById('Bio').innerHTML = "BIO: I am Marjolein but people call me marjo   <br> " +
        "i lost mine husband on the blink of escape <br> " +
        "And now i am very Depression";

    $( "#dialog-2" ).dialog({
        autoOpen: false,
        width: 600,
        buttons: {
            Any_help: function () {
                $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Well ik talk only to Coach Marieke <br>" +
                    "AND NO ONE ELSE</p>");
                $('#dialog-2').dialog({
                    autoOpen: true,
                    width: 600,
                    buttons: {
                        Okey_Easy_I_go_look_for_her: function () {
                            $( "#Story" ).replaceWith("<p id='Story'> Okey then <br>" +
                                "Comeback to me with her and i tell you everthing </p>");
                            $('#dialog-2').dialog({
                                autoOpen: true,
                                width: 600,
                                buttons: {
                                    sure: function () {$(this).dialog('close');}
                                }
                            })},
                    }})
            }},
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