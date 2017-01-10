var Npcname = "Electrician Erik";

$(function() {
    document.getElementById('Bio').innerHTML = "BIO: I am Erik and worked here for 8 years now <br> " +
        " Well not in the store but the bunnsis right to it  <br> " +
        " And so here i standing staring at the bulding  <br>" +
        " Well at least i dont have to do my job here  <br>" +
        " Well at least i can retire now";

    $( "#dialog-2" ).dialog({
        autoOpen: false,
        buttons: {
            Well_any_need_of_help: function() {
                $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Well no maby you can try later on <br>" +
                    "Or not want i want to retire </p>");
                $('#dialog-2').dialog({
                    autoOpen: true,
                    buttons: {
                        Okey: function () {
                            $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Well Do you know a place to retire <br>" +
                                "Is it safe </p>");
                            $('#dialog-2').dialog({
                                autoOpen: true,
                                buttons: {
                                 No: function () {
                                     $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Really </p>")
                                     $('#dialog-2').dialog({
                                         autoOpen: true,
                                         buttons: {
                                             yes: function () {$(this).dialog('close')}
                                         }
                                     })
                                 },
                                },
                            })},
                    }
                })},
            How_is_youre_job: function () {
                $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Well i am working wiith power and cables al day<br>" +
                    "Benefits are working in the outside air and short work days  <br>" +
                    " Its always one man per job <br>" +
                    "So is it fun mehhh..... </p>");
                $('#dialog-2').dialog({
                    autoOpen: true,
                    buttons: {
                        Well_DO_you_recommend_it: function () {
                            $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Well are you can a cabel man  </p>");
                            $('#dialog-2').dialog({
                                autoOpen: true,
                                buttons: {
                                    yes: function () {
                                        $( "#Story" ).replaceWith(Npcname + "<p id='Story'>  Now go for it then </p>");
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
            Goodbye: function () {$(this).dialog('close');}
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