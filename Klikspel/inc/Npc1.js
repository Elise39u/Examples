var numberStart = 145971;
var NpcName = "John";

window.onload = function StartConverstation() {
    var Key = "unfriendly-John";

    document.getElementById('Bio').innerHTML = "BIO: I am John <br>" +
        "i lived here for years and nothing would stop me <br> " +
        "And i will  never leave the city <br>" +
        "Not even by a zombie out break";
    if (numberStart == 145971) {
        document.getElementById('NPC').innerHTML = "" +
            NpcName + ": What do you want";
    }
};

function Clickme(clicked_id) {
    Clickme.called = true;

    if (clicked_id == "Player1") {
        document.getElementById('NPC').innerHTML = NpcName + ": No i am not the cipier";
        startOver();
    }

    if(clicked_id == 'Player2') {
        document.getElementById('NPC').innerHTML = NpcName +  ": You have eyes go look for it";
        startOver2();
    }

    if(clicked_id == "Player3") {
        document.getElementById('NPC').innerHTML = NpcName +  ": Well i am in need of some items <br>" +
            "Perhaps that you can help me";
        startOver3();
    }
}

function startOver() {
    if (!document.getElementById('Player4')) {
        document.getElementById('Player1').id = "Player4";
    }
    document.getElementById('Player4').innerHTML = "Ow okey thanks for the information";
    document.getElementById('Player4').onclick = setTimeout(startOver3(), 1500);
    document.getElementById('Player4').style.display = 'none';
}

function startOver2() {
    if (!document.getElementById('Player5')) {
        document.getElementById('Player2').id = "Player5";
    }
    document.getElementById('Player5').innerHTML = "Ow srry";
    var elems = document.getElementsByTagName('button');
    for (var i=0; i<elems.length; i+=1) {
        elems[i].style.display = "none";
    }
}

function startOver3() {
    if (!document.getElementById('Player4')) {
        document.getElementById('Player1').style.display = "none";
    } else {
        document.getElementById('Player4').style.display = "none";
    }
    if (!document.getElementById('Player5')) {
        document.getElementById('Player2').style.display = "none";
    } else {
        document.getElementById('Player5').style.display = "none";
    }
    document.getElementById('Player3').innerHTML = "What do you want " + NpcName;
    if (!document.getElementById('Player6')) {
        document.getElementById('Player3').id = "Player6";
    }
    document.getElementById('Player6').onclick = setTimeout(NewAns(), 6500);
}

function NewAns() {
    document.getElementById("NPC").innerHTML = NpcName + ": i need a GreenPotion <br>" +
        " if you can bring it <br>" +
        " i wil reward you with info and a item";

        var para = document.createElement("button");
        var node = document.createTextNode("I go look for it");
        para.appendChild(node);
        var element = document.getElementById("AddBtn");
        element.appendChild(para);
    document.getElementById("Player6").innerHTML = "What info and items?";
    document.getElementById("Player6").onclick = setTimeout(Duh(), 10000);
    para.id = "Player7";
    para.name = "Test";
    para.onclick = setTimeout(End(), 10000);
}

function Duh() {
    document.getElementById("NPC").innerHTML = NpcName + "That i tell you opon completion of the quest";
    document.getElementById("Player6").id = "Player8";
    document.getElementById("Player8").innerHTML = "I go look for it";
    document.getElementById("Player8").onclick = setTimeout(End(), 12500);
}

function End() {
    document.getElementById("NPC").innerHTML = NpcName + ": Come back to me if you have the items";
    if (!document.getElementById("Player8")) {
        document.getElementById("Player6").style.display = "none";
    }
    document.getElementById("Player8").style.display = "none";
    var elems = document.getElementsByTagName('button');
    for (var i=0; i<elems.length; i+=1) {
        elems[i].style.display = "none";
    }
}

/*
Coockie function --> In browers Javscript folder
Time out bewteen the reactions --> player can read the story and diaoulge
Optie 1 --> turn into  a alert box ( Not the kind i want but make it works so its readble
Optie 2 --> Confirm alert boxes --> Same as alert and big if else code
Optie 3 --> bootstrap confirm box but the css style is the problem
start of the quest
Powerswicht toevoegen / Marine base for more NPCS and story
 */