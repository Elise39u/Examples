function substitute() {
    var myValue = document.getElementById('myTextBox').value;

    if (myValue.length == 0) {
        alert("Enter a real value please");
        return;
    }

    var myTitle = document.getElementById('title');
    myTitle.innerHTML = myValue;
}