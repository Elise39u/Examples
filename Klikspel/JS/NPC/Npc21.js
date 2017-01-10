var Npcname = "Pregnant Emma";

$(function() {
    document.getElementById('Bio').innerHTML = "BIO: I am Emma and for god sake i choose the wrong time to be pregnant <br> " +
        " I grew up in New york studied here and even had a job here  <br> " +
        " I met my husband Jurgen when is was 24 and we married at the age of 29 <br>" +
        " Three months later We were happy that i finally was pregnant <br>" +
        " But now 7,5 months later here we stand the worst time to be pregnant";

    $( "#dialog-2" ).dialog({
        autoOpen: false,
        buttons: {
            Well_congrats: function() {
                $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Eheee i told you just a moment ago how i think about it <br>" +
                    "yes i want to have a child but not one in this time <br>" +
                    "Well we are all fucked </p>");
                $('#dialog-2').dialog({
                    autoOpen: true,
                    buttons: {
                        Maby_you_want_to_come_to_the_subbase: function () {
                            $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Well i dont trust you but a subbase? <br>" +
                                "Is it safe </p>");
                            $('#dialog-2').dialog({
                                autoOpen: true,
                                buttons: {
                                 Yeah_its_guraded_by_the_army: function () {
                                     $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Well No trust sorry</p>")
                                     $('#dialog-2').dialog({
                                         autoOpen: true,
                                         buttons: {
                                             Okey_then: function () {$(this).dialog('close')}
                                         }
                                     })
                                 },
                                },
                            })},
                    }
                })},
            How_is_pregnancy: function () {
                $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Well you can be lazy all day and eat everything <br>" +
                    "And you can complain about everything and give hormone the blaim  <br>" +
                    " but benning so fat is not that fun <br>" +
                    "Ahh even thats is gone in about one and a half month </p>");
                $('#dialog-2').dialog({
                    autoOpen: true,
                    buttons: {
                        Well_DO_you_recommend_it: function () {
                            $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Well what do you think  </p>");
                            $('#dialog-2').dialog({
                                autoOpen: true,
                                buttons: {
                                    yes: function () {
                                        $( "#Story" ).replaceWith(Npcname + "<p id='Story'>  Well if you want kids and be a women? </p>");
                                        $('#dialog-2').dialog({
                                            autoOpen: true,
                                            buttons: {
                                                Okey: function () {$(this).dialog('close');},
                                            },
                                        })},
                                    Nope: function () {$(this).dialog('close');}
                                }
                            })},
                        Well_goodBye: function () {$(this).dialog('close');}
                    }
                })},
            Goodbye_And_goodluck_with_youre_pregnancy: function () {$(this).dialog('close');}
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