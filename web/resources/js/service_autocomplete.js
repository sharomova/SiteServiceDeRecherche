/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$(document).ready(function () {

    $("#services_autocomplete").autocomplete({
        source: function (request, response) {
            $.ajax({
               dataType : 'JSON',
               url : 'getServices.htm',
               type : 'GET',
               data : {tagName : $("#services_autocomplete").val()},
               succes : function(data){
                   $("input.suggest-user").removeClass("ui-autocomplete-loading");
                   response(data);
               },
               error : function(data){
                   console.log("error : " + data);
               }
            });
        }
    });
});

