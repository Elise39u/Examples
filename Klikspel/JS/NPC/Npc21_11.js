var Npcname = "Pregnant Emma";
var Npcname1 = "Coach Marieke";

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
                    "Well we are all fucked <br>" +
                    Npcname1 + " Maby its better if i talk to her <br>" +
                    Npcname + " Maby i am full of hormone </p>");
                $('#dialog-2').dialog({
                    autoOpen: true,
                    buttons: {
                        Maby_you_want_to_come_to_the_subbase: function () {
                            $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Well i dont trust you but a subbase? <br>" +
                                "Is it safe <br>" +
                                Npcname1 + "Dont you trust us <br>" +
                                Npcname + " Well two strangers walk up to me ask if i come with them <br>" +
                                "What do you think <br>" +
                                Npcname1 + " I ....... dont have anything to say</p>");
                            $('#dialog-2').dialog({
                                autoOpen: true,
                                buttons: {
                                    Yeah_its_guraded_by_the_army: function () {
                                        $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Well I come along <br>" +
                                            Npcname1 + "Well thats fine <br>" +
                                            Npcname + "What do you mean <br>" +
                                            Npcname1 + "Well that we are happy that you want to come alonge <br>" +
                                            Npcname + "Okey </p>");
                                        $('#dialog-2').dialog({
                                            autoOpen: true,
                                            buttons: {
                                                Okey: function () {
                                                    alert('You started the quest Saftey First');
                                                    $(this).dialog('close')}
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
                    "Ahh even thats is gone in about one and a half month <br>" +
                    Npcname1 + " Is the first pregnancy not the best one <br>" +
                    "You should enjoy it <br>" +
                    Npcname + "I gusses you`re right really in this time i could be only pregnant once <br>" +
                    "And enjoy it? <br>" +
                    Npcname1 + "Well enjoy the thougt that you carrie a human inside you <br>" +
                    "You give life to a child, no worry about clohting, eat everything you want and complain as much as you want <br>" +
                    "Well dont forget to be lazy. Men i want to be pregnant <br>" +
                    "And esppceliy dont forget that you dont have to worry about being fat because of the pregnancy" +
                    Npcname + "well how old are you and have you a friend <br>" +
                    Npcname1 + " i am 25 now and dont have friend <br>" +
                    Npcname + "Well you have all the time <br>" +
                    Npcname1 +" Thats true</p>");
                $('#dialog-2').dialog({
                    autoOpen: true,
                    buttons: {
                        Well_DO_you_recommend_it: function () {
                            $( "#Story" ).replaceWith(Npcname + "<p id='Story'> Well what do you think  <br>" +
                                Npcname1 +" Yeah smartie  </p>");
                            $('#dialog-2').dialog({
                                autoOpen: true,
                                buttons: {
                                    yes: function () {
                                        $( "#Story" ).replaceWith(Npcname + "<p id='Story'>  Well if you want kids and be a women? <br>" +
                                            "Why not? </p>");
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