bootbox.confirm({
    message: "This is a confirm with custom button text and color! Do you like it?",
    buttons: {
        confirm: {
            label: 'Yes',
            className: 'btn-success',
        },
        cancel: {
            label: 'No',
            className: 'btn-danger'
        }
    },
    callback: function (result) {
        if (result == true) {
            bootbox.confirm ({
                message: "Test",
                buttons: {
                    confirm: {
                        label: 'Nothing',
                        className: 'btn-success',
                    },
                    cancel: {
                        label: 'Money',
                        className: 'btn-danger',
                    }
                },
     callback: function (result1) {
         console.log(result1);
     }
            })
        }
        else {}
    }
});

