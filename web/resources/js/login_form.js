/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$('#header_non_connecte').hide();

function validateFields() {
    // get the form values
    var name = $('#username').val();
    var password = $('#password').val();

    if (name === '') {
        $('#username').after('Please enter your username');
        return false;
    } else if (password === '') {
        $('#password').after('Please enter your password');
        return false;
    }

    return true;
}

function validerInfosAnnonce()
{
    var titre = $('#titre').val();
    var description = $('#description').val()

    if (titre === '')
    {
        $('#titre').after('Entrez le titre de votre annonce');
        return false;
    }
    if (description === '')
    {
        $('#description').after('Entrez la description de votre annonce');
        return false;
    }

    return true;
}

$('#Gender-1').bind('click', function () {
    alert("clickclickclick");
    // $('#service_offert').empty(); 
    $('#block_choix').hide();
});

$('#publier_annonce_disabled').bind('click', function () {
    $('#header_non_connecte').show();
    return false;
});



