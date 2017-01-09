var Npcname = "Econoom Tim";

$(function() {
    document.getElementById('Bio').innerHTML = "BIO: Well i am tim and i worked on the New york stock exchange  <br> " +
        "Well working there is quite a disater that is what i can tell you <br> " +
        "Well its was fun seeing al the people running around when a bunissis shut down after a bank rupt <br>" +
        "So it was quite a diaster and fun at the same time";

    $( "#dialog-2" ).dialog({
        autoOpen: false,
        buttons: {
            Do_you_need_help: function() {
                $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Well Can you find a Calulator, Pen, Notebook <br>" +
                    "Becaause i need to do my job<br>" +
                    "Else the economy here is colappseing </p>");
                $('#dialog-2').dialog({
                    autoOpen: true,
                    buttons: {
                        Okey_Sure: function () {
                            $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Well go on on NOW</p>");
                            $('#dialog-2').dialog({
                                autoOpen: true,
                                buttons: {
                                  Easy: function () {
                                      alert('You started the quest Math time :(');
                                      $(this).dialog('close');},
                                },
                            })},
                    }
                })},
            What_is_youre_job_agian: function () {
                $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Well thats is econoom <br>" +
                    "I onlly workd at the exchange to keep track of what people invested in <br>" +
                    "I was working on the results when the outbreak strated </p>");
                $('#dialog-2').dialog({
                    autoOpen: true,
                    buttons: {
                        Well_thats_really_bad: function () {
                            $( "#Story" ).replaceWith(Npcname + "<p id='Story'> I now it was my biggest investigation of my life  </p>");
                            $('#dialog-2').dialog({
                                autoOpen: true,
                                buttons: {
                                    Would_you_ptofit_of_it: function () {
                                        $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Well no </p>");
                                        $('#dialog-2').dialog({
                                            autoOpen: true,
                                            buttons: {
                                                Okey: function () {$(this).dialog('close');},
                                            },
                                        })},
                                    Bye_friend: function () {$(this).dialog('close');}
                                }
                            })},
                        Well_goodBye: function () {$(this).dialog('close');}
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
});