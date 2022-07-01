$(document).ready(function() {
    $("#email").focus(function() {
        $(this).css("background-color", "white");
        $("#label").text("Vui lòng nhập email để tìm kiếm tài khoản");
    });

    $("#email").blur(function() {
        validForm();
    });
});

function validForm() {
    if ($("#email").val().trim().match(/^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{1,5}|[0-9]{1,3})(\]?)$/) == null) {
        $("#email").css("background-color", "mistyrose");
        $("#label").text("Email không hợp lệ!");
        return false;
    }
    return true;
}