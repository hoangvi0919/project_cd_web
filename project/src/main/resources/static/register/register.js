$(document).ready(function() {

    $("#txtaddress").keydown(function() {
        if ($(this).val().substring(0, 1) != "\n")
            $(this).val("\n" + $(this).val());
    });

    $("#eye").click(function() {
        var value = $(this).attr("class");
        if (value == "pass fas fa-eye") {
            $(this).attr("class", "pass fas fa-eye-slash");
            $("#pass").attr("type", "text");
        } else {
            $(this).attr("class", "pass fas fa-eye");
            $("#pass").attr("type", "password");
        }
    });

    var re;
    $("#form input, #form textarea").each(function() {
        $(this).blur(function() {
            re = validate($(this));
            showValidate($(this), re);
            if ($(this).attr("type") == "password")
                $('#form input[type=password]').blur();
        });
    });

    $("#form input[type='radio']+label").each(function() {
        $(this).click(function() {
            showValidate($("#form input[type='radio']+label"), true);
        });
    });

});

function auto_grow(element) {
    element.style.height = "100px";
    element.style.height = (element.scrollHeight) + "px";
}

function validForm() {
    var input = $('#form input:not([type=radio]), #txtaddress');
    var check = true;
    var re = true;
    for (var i = 0; i < input.length; i++) {
        re = validate(input[i]);
        showValidate(input[i], re);
        if (re == false)
            check = false;
    }

    if ($('input[type=radio]:checked').length < 1) {
        check = false;
        $('#form input[type=radio]').each(function() {
            showValidate($("#form input[type='radio']+label"), false);
        });
    }
    return check;
}

function validate(input) {
    var id = $(input).attr("id");
    var value = $(input).val();

    switch (id) {
        case "user":
            return (value.length > 0) ? true : false;
        case "pass":
            return (value.length >= 6 && $("#repass").val() == value) ? true : false;
        case "repass":
            return (value.length >= 6 && $("#pass").val() == value) ? true : false;
        case "name":
            return (value.length > 0) ? true : false;
        case "phone":
            return (value.length >= 10) ? true : false;
        case "email":
            return (value.trim().match(/^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{1,5}|[0-9]{1,3})(\]?)$/) == null) ? false : true;
        case "txtaddress":
            return (value.length > 1) ? true : false;
        case "datepicker":
            return (value.length != 0) ? true : false;
    }
}

function showValidate(input, valid) {
    if (valid == true)
        $(input).css("background-color", "aliceblue");
    else
        $(input).css("background-color", "mistyrose");
}

$(function() {
    $("#place-name").click(function() {
        $("#name").focus();
    });
    $("#place-phone").click(function() {
        $("#phone").focus();
    });
    $("#place-email").click(function() {
        $("#email").focus();
    });
    $("#place-datepicker").click(function() {
        $("#datepicker").focus();
    });
    $("#place-user").click(function() {
        $("#user").focus();
    });
    $("#place-pass").click(function() {
        $("#pass").focus();
    });
    $("#place-repass").click(function() {
        $("#repass").focus();
    });
    $("#place-txtaddress").click(function() {
        $("#txtaddress").focus();
    });
});