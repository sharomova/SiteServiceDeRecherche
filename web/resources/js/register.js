/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function doregister() {
    var gender;
    var profile;
    var hasSerice;
    if ($("#Gender-0").is(':checked')) {
        gender = "1";
    } else {
        gender = "2";
    }

    if ($("#customer-0").is(':checked')) {
        profile = "1";
    } else {
        profile = "2";
    }

    if ($("#cbServices").is(':checked')) {
        hasSerice = "True";
    } else {
        hasSerice = "False";
        var etmp = $("#inputBusinessName").val();
        alert(etmp);
        $.post("login_1.htm",
                {
                    txtBox_First_Name: $("#inputFirstName").val(),
                    txtBox_Last_Name: $("#inputLastName").val(),
                    txtBox_User_Name: $("#inputUserName").val(),
                    txtBox_Email: $("#inputEmail").val(),
                    txtBox_Password: $("#inputPassword").val(),
                    Gender: gender,
                    dateBirth: $("#inputBirthDate").val(),
                    profileType: profile,
                    txtBox_Phone_number: $("#inputPhone").val(),
                    txtBox_Adress: $("#autocomplete").val(),
                    cb_services: hasSerice,
                    inputNomCompagnie: $("#inputBusinessName").val(),
                    inputservice: $("#inputService").val()
                });
    }
}

