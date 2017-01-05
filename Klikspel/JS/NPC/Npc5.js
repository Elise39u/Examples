var Npcname = "Explorer Arya";

$(function() {
    document.getElementById('Bio').innerHTML = "BIO: I am Arya and i am in the deep shit of my life  <br> " +
        "Kicked of stage, Trouble with school enzv. <br> " +
        "I was on holliday here with my friends but when the outbreak started i never heard of them again";

    $( "#dialog-2" ).dialog({
        autoOpen: false,
        buttons: {
            Do_you_need_help: function() {
                $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Well can you find my friends? <br>" +
                    "they call them self Bakfiest group </p>");
                $('#dialog-2').dialog({
                autoOpen: true,
                buttons: {
                    Sure: function () {
                        $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Well Maby  <br>" +
                        "Are they somewhere else in the subbase can you take a look</p>");
                        $('#dialog-2').dialog({
                            autoOpen: true,
                            buttons: {
                                Okey: function () {
                                    $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Okey i wil heare from you then </p>");
                                    $('#dialog-2').dialog({
                                        autoOpen: true,
                                        buttons: {
                                            sure: function () {
                                                alert('You started the quest Lost Friends');
                                                $(this).dialog('close');}
                                        }
                                    })},
                            },
                            I_dont_want_to_help: function () {$(this).dialog('close');}
                        })},
                }
            })},
            What_are_you_problems: function () {
                $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Well 1. Kicked of stage <br>" +
                    "2. I have trouble on school <br>" +
                    "So i decide to take extra lesson from justin </p>");
                $('#dialog-2').dialog({
                    autoOpen: true,
                    buttons: {
                        Is_there_something_to_do_then: function () {
                            $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Well not for you mate  </p>");
                            $('#dialog-2').dialog({
                                autoOpen: true,
                                buttons: {
                                    Okey: function () {$(this).dialog('close');}
                                }
                            })},
                        Okey_thanx_for_the_info: function () {$(this).dialog('close');}
                    }
                })},
            Ehheee_hai: function () {$(this).dialog('close');}
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