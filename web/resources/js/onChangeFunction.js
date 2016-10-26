/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

 function goToRecherche(){
        window.open("recherche.htm", '_top');
        $.post("recherche.htm",
        {service : [document.getElementById('rechercheDropDown').selectedIndex].value});
}

