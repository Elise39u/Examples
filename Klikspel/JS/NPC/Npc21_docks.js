var Npcname = "Pregnant Emma";

$(function() {
    document.getElementById('Bio').innerHTML = "BIO: I am Emma and for god sake i choose the wrong time to be pregnant <br> " +
        " I grew up in New york studied here and even had a job here  <br> " +
        " I met my husband Jurgen when is was 24 and we married at the age of 29 <br>" +
        " Three months later We were happy that i finally was pregnant <br>" +
        " But now 7,5 months later here we stand the worst time to be pregnant";

    $( "#dialog-2" ).dialog({
        autoOpen: false,
        width: 600,
        buttons: {
            Well_do_you_like_it: function() {
                $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Eheee Well it is a safe place <br>" +
                    "Maby you can help me later with something <br>" +
                    " Because my mind is fucked up now </p>");
                $('#dialog-2').dialog({
                    autoOpen: true,
                    buttons: {
                        Okeyyyyyy: function () {
                            $( "#Story" ).replaceWith("<p id='Story'> Well i am serious  <br>" +
                                "and i need to rest </p>");
                            $('#dialog-2').dialog({
                                autoOpen: true,
                                buttons: {
                                 Okey_see_you_soon_then: function () {
                                     $( "#Story" ).replaceWith("<p id='Story'> Well thank you and goodbye <br>" +
                                         "Btw i think someone likes you ;)</p>")
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