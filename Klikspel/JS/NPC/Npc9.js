var Npcname = "Teacher Berna";

$(function() {
    document.getElementById('Bio').innerHTML = "BIO: I am Berna after teaching for 12 years on the davinci i moved to new york  <br> " +
        "This is because i got a job offer to teach english en ducht here <br> " +
        "As you think why i did this is because of the view <br>" +
        "Only not nowing of a outbreak";

    $( "#dialog-2" ).dialog({
        autoOpen: false,
        buttons: {
            Do_you_need_help: function() {
                $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Well I need some new learing stuff for the kids<br>" +
                    "Maby you can find something </p>");
                $('#dialog-2').dialog({
                autoOpen: true,
                    width: 600,
                buttons: {
                    SO_what_do_i_need_to_get: function () {
                        $( "#Story" ).replaceWith("<p id='Story'> Well Anything to learn the kids  <br>" +
                        "Even if its a laptop or a book if you can learn form it its good <br>" +
                            "Do you want to do that</p>");
                        $('#dialog-2').dialog({
                            autoOpen: true,
                            width: 600,
                            buttons: {
                                Okey: function () {
                                    $( "#Story" ).replaceWith("<p id='Story'> Okey come back to mw when you have something  </p>");
                                    $('#dialog-2').dialog({
                                        autoOpen: true,
                                        width: 600,
                                        buttons: {
                                            sure: function () {
                                                alert('You started the quest Learning Why?');
                                                $(this).dialog('close');}
                                        }
                                    })},
                            },
                            I_dont_know_where_i_cant_find_that: function () {$(this).dialog('close');}
                        })},
                }
            })},
            Why_a_Teacher: function () {
                $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Well i liked to learn something to others <br>" +
                    "But in the early was it even IT <br>" +
                    "Now by advance i cant keep up so i start to teach the language  </p>");
                $('#dialog-2').dialog({
                    autoOpen: true,
                    width: 600,
                    buttons: {
                        Is_There_something_to_learn_for_me: function () {
                            $( "#Story" ).replaceWith("<p id='Story'> Well ..... Not now  </p>");
                            $('#dialog-2').dialog({
                                autoOpen: true,
                                width: 600,
                                buttons: {
                                    Okey: function () {$(this).dialog('close');}
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