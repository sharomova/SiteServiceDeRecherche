/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$(document).ready(function() {
    
      
    $("#updateProfil").click(function()  {
         window.alert("Update");
         
      
         
        $.ajax({
   type: "POST",
   url: "updateuser.php",
   data:'column=Nom&editval=Boston&id=3',
   success: function(){
     alert( "Data Saved: ");
   }
 });
        
        $.post("profilGhost.html", {
            
            Nom: $("#nom").val(),
            Prenom: $("#prenom").var(),
            Courriel: $("#email").var(),
            No_de_telephone: $("#phone").var(),
            adresse_line1: $("#adress").var(),
            code_postal: $("#postcode").var(), 
           // id: $("#id_user").var()
      });
  });
  $("#misajourPassworde").click(function()  {
         window.alert("Update");
  
   });
});

