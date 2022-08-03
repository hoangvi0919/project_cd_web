$(document).ready(function() {

    $("#txtaddress").keydown(function() {
        if ($(this).val().substring(0, 1) != "\n")
            $(this).val("\n" + $(this).val());
    });

    $("#user").keyup(function (){
            $.ajax({
               url: "/exist/" + $(this).val(),
                cache: false,
                dataType: "text",
                success: function (msg) {
                    if(msg === "false"){
                        $("#user").css("background-color", "aliceblue");
                    }
                    else{
                        $("#user").css("background-color", "mistyrose");
                    }
                }

            });
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

    // $("#form input, #form textarea").each(function (){
    //     $(this).keyup(function (){
    //         validForm();
    //     });
    // });

    $("#form input[type='radio']+label").each(function() {
        $(this).click(function() {
            showValidate($("#form input[type='radio']+label"), true);
        });
    });

});

function disableSubmitBtn() {
    var submitBtn = document.getElementById("btndk");
    submitBtn.disabled = "disabled";
}

function enableSubmitBtn() {
    var submitBtn = document.getElementById("btndk");
    submitBtn.removeAttribute("disabled");
}

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
    const dateRegex = /^(?=\d)(?:(?:31(?!.(?:0?[2469]|11))|(?:30|29)(?!.0?2)|29(?=.0?2.(?:(?:(?:1[6-9]|[2-9]\d)?(?:0[48]|[2468][048]|[13579][26])|(?:(?:16|[2468][048]|[3579][26])00)))(?:\x20|$))|(?:2[0-8]|1\d|0?[1-9]))([/])(?:1[012]|0?[1-9])\1(?:1[6-9]|[2-9]\d)?\d\d(?:(?=\x20\d)\x20|$))?(((0?[1-9]|1[012])(:[0-5]\d){0,2}(\x20[AP]M))|([01]\d|2[0-3])(:[0-5]\d){1,2})?$/;
    switch (id) {
        // case "user":
        //     return (value.length > 0) ? true : false;
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
            return dateRegex.test(value);
    }
}

function showValidate(input, valid) {
    if (valid == true)
        $(input).css("background-color", "aliceblue");
    else{
        $(input).css("background-color", "mistyrose");
    }

}

$(function() {
    $("#place-name").click(function() {
        $("#name").focus();
        validForm();
    });
    $("#place-phone").click(function() {
        $("#phone").focus();
        validForm();
    });
    $("#place-email").click(function() {
        $("#email").focus();
        validForm();
    });
    $("#place-datepicker").click(function() {
        $("#datepicker").focus();
        validForm();
    });
    $("#place-user").click(function() {
        $("#user").focus();
        validForm();
    });
    $("#place-pass").click(function() {
        $("#pass").focus();
        validForm();
    });
    $("#place-repass").click(function() {
        $("#repass").focus();
        validForm();
    });
    $("#place-txtaddress").click(function() {
        $("#txtaddress").focus();
        validForm();
    });
});