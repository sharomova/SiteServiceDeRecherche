/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Annonce.AnnonceDao;
import Annonce.AnnonceDaoImpl;
import Commentaire.CommentaireDaoImpl;
import Commentaire.CommentaireProfile;
import DAO.UserDaoImpl;
import Modele.Annonce;
import Modele.Commentaire;
import Modele.Service;
import Modele.ServicesOfferts;
import Modele.User;
import Service.UserService;
import Service.UserServiceImpl;
import UserServices.UserServiceOffertImpl;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import static org.hibernate.criterion.Projections.id;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Christelle Sissoko
 */
@Controller
///@SessionAttributes(value = "user", types = User.class)
@SessionAttributes({"user", "service", "annonce", "toutservice"})
public class AppController {

    int id_user = 0;

    @RequestMapping("/contact")
    public ModelAndView showContactPage() {
        return new ModelAndView("contact");
    }

    @RequestMapping("/signup")
    public ModelAndView showSignUpPage() {
        return new ModelAndView("signup");
    }

    @RequestMapping("/login_form")
    public ModelAndView showLoginPage() {
        return new ModelAndView("login_form");
    }

    @RequestMapping("/description_annonce")
    public ModelAndView showSearchPage() {
        return new ModelAndView("description_annonce");
    }

    @RequestMapping("/profil")
    public ModelAndView showProfilPage() {
        return new ModelAndView("profil");
    }

    @RequestMapping("/recherche")
    public ModelAndView showSearchPage(@RequestParam("service") String nomService) {
        return new ModelAndView("recherche", "service", nomService);
    }

    @RequestMapping("/index")
    public ModelAndView showHow() {

        //UserServiceImpl im = new UserServiceImpl();
        //List<String> liste = im.getAllServicesByTerm("p");
        //System.out.println("TOTAL LISTE COMMENCANT PAR P: " +liste.size());
        //String code = makeServiceDropDown(LocaleContextHolder.getLocale().toString());
        return new ModelAndView("index");
    }

    @RequestMapping("/deconnection")
    public ModelAndView disconnectUser() {

        return new ModelAndView("deconnection");
    }

    @RequestMapping("/apropos")
    public ModelAndView apropos() {
        return new ModelAndView("apropos");
    }

    @RequestMapping("/messages_utilisateur")
    public ModelAndView afficherMessagesUser() {
        return new ModelAndView("messages_utilisateur");
    }

    @RequestMapping("/listeAnnonces")
    public ModelAndView afficherToutesLesAnnonces(Model model) {
        AnnonceDaoImpl annonces = new AnnonceDaoImpl();
        List<Annonce> allAnnonces = annonces.getAllAnnonce();
        model.addAttribute("allAnnonces", allAnnonces);
        for (int i = 0; i < allAnnonces.size(); i++) {
            System.out.println(allAnnonces.get(i).getTitre());
        }
        return new ModelAndView("listeAnnonces");
    }

    @RequestMapping("/mapTest")
    public ModelAndView showMap() {
        return new ModelAndView("mapTest");
    }

    @RequestMapping("/annonces_utilisateur")
    public ModelAndView showAnnoncesUtilisateurs(Model model) {
        AnnonceDaoImpl annonce = new AnnonceDaoImpl();
        List<Annonce> listAnnonces = annonce.getAllAnnonceDUneUser(id_user);
        model.addAttribute("listeAnnonce", listAnnonces);
        return new ModelAndView("annonces_utilisateur");
    }


    @RequestMapping("/ajout_annonce")
    public ModelAndView showAjoutAnnoncePage(Model model) {

        List<ServicesOfferts> listServices = new ArrayList<ServicesOfferts>();
        listServices = getAllTheServicesOfferedByUser();

        model.addAttribute("listeServices", listServices);

        return new ModelAndView("ajout_annonce");
    }

    @RequestMapping("/login_1")
    public ModelAndView register(
            @RequestParam("txtBox_First_Name") String firstName,
            @RequestParam("txtBox_Last_Name") String lastName,
            @RequestParam("txtBox_User_Name") String userName,
            @RequestParam("txtBox_Email") String email,
            @RequestParam("txtBox_Password") String mdp,
            @RequestParam("Gender") String gender,
            @RequestParam("dateBirth") String dateBirth,
            @RequestParam("profileType") String profileType,
            @RequestParam("txtBox_Phone_number") String phone,
            @RequestParam("txtBox_Adress") String adresse,
            @RequestParam("cb_services") String hasService,
            @RequestParam(value = "inputNomCompagnie", required = false) String nomCompanie,
            @RequestParam(value = "inputservice", required = false) String nomService
    ) {
        Date date = java.sql.Date.valueOf(dateBirth);
        UserDaoImpl usr = new UserDaoImpl();
        System.out.println(nomCompanie +" from requestpapinng");
        usr.addUser(firstName, lastName, userName, mdp, gender, phone, email, (java.sql.Date) date, profileType, hasService, adresse, nomService, nomCompanie );
        System.out.println("new user");
        return new ModelAndView("login_1");
    }


    @RequestMapping("/save_annonce")
    public ModelAndView enregistrerAnnonce(@RequestParam("titre") String titreAnnonce,
            @RequestParam("description") String descriptionAnnonce,
            @RequestParam("Gender") String typeAnnonce
    ) {
        System.out.println("Voila le titre et la des: " + titreAnnonce + " " + descriptionAnnonce);

        java.sql.Date date = new java.sql.Date(Calendar.getInstance().getTime().getTime());
        System.out.println(date);
        Annonce uneAnnonce = new Annonce();
        uneAnnonce.setTitre(titreAnnonce);
        uneAnnonce.setDescription(descriptionAnnonce);
        uneAnnonce.setDate(date);
        uneAnnonce.setIdServiceOfferts(1);
        uneAnnonce.setIdAnnonceur(21);
        uneAnnonce.setTypeAnnonce(true);
        uneAnnonce.setDateAnnonceGmt(date);
        UserServiceOffertImpl serv = new UserServiceOffertImpl();
        serv.ajouterAnnonce(uneAnnonce);

        return new ModelAndView("index");
    }

    private String makeServiceDropDown(String lang) {
        String code = "";
        UserServiceImpl service = new UserServiceImpl();
        List<Service> listeServices = service.getAllService();
        if (lang.contains("fr")) {
            for (Service serviceTemp : listeServices) {
                code += "<option value=\"" + serviceTemp.getNomServiceFr()
                        + "\">"
                        + serviceTemp.getNomServiceFr() + " </option>\n";
            }
        } else {
            for (Service serviceTemp : listeServices) {
                code += "<option value=\"" + serviceTemp.getNomServiceAng()
                        + "\">"
                        + serviceTemp.getNomServiceAng() + " </option>\n";
            }
        }
        return code;
    }

    @RequestMapping("/login")
    public ModelAndView findUserFromForm(@RequestParam("password") String password, @RequestParam("name") String name, Model model) throws SQLException {
        String message = null;
        UserDaoImpl uImpl = new UserDaoImpl();
//        

        User nouveauUser = uImpl.findUser(name, password);
        if (nouveauUser != null) {
            message = "Hi " + nouveauUser.getNom();
            model.addAttribute("user", nouveauUser);
          chercherDonnesProfile(nouveauUser.getId(), model);
            id_user = nouveauUser.getId();
            return new ModelAndView("login");

        } else if (nouveauUser == null) {
            message = "Les indentifiants entres ne sont pas corrects";
            model.addAttribute("message", message);
            return new ModelAndView("login_form");
        }

        //model.addAttribute("message", message);
        return new ModelAndView("login_form");
    }

    @RequestMapping("/profilGhost")
    public ModelAndView updateUser(
            @RequestParam("Nom") String nom, 
            @RequestParam("Prenom") String prenom,
            @RequestParam("Courriel") String email, 
            @RequestParam("No_de_telephone") String phone,
            @RequestParam("adresse_line1") String adress, 
            @RequestParam("code_postal") String postcode) {
            //@RequestParam("id") int id) {

        UserDaoImpl usr = new UserDaoImpl();
        User user = new User();
//       user.setAddresseLine1(adress);
//       user.setCodePostal(postcode);
//       user.setCourriel(email);
//       user.setNom(nom);
//       user.setPrenom(prenom);
//       user.setNo_telephone(phone);
//       user.setId(3);
        user.setAddresseLine1("rue Bare");
        user.setCodePostal("H6N7J5");
        user.setCourriel("lkkjhg@ert.ki");
        user.setNom("Ninadze");
        user.setPrenom("Liza");
        user.setNo_telephone("89098765");
        user.setId(3);

        usr.update(user);

        return new ModelAndView("profil");
    }

    
    public ModelAndView updateUser(@RequestParam("nom") String nom) {

        UserDaoImpl usr = new UserDaoImpl();

        // usr.update(nom);
        return new ModelAndView("profil");
    }

   private void chercherDonnesProfile(int idUser, Model model) {
        UserDaoImpl uImpl = new UserDaoImpl();
        User nomCom = new User();

        UserServiceOffertImpl serviceOffert = new UserServiceOffertImpl();
        UserServiceImpl typeserviceImpl = new UserServiceImpl();
        List<Service> typeService = new ArrayList<Service>();
        List<Service> tousService = new ArrayList<Service>();
        tousService = typeserviceImpl.getAllService();
        List<Annonce> annonceListe = new ArrayList<Annonce>();
        AnnonceDaoImpl annonceimpl = new AnnonceDaoImpl();
//        CommentaireDaoImpl commentaire = new CommentaireDaoImpl();
//        List<Commentaire> listeCommentaire = new ArrayList<Commentaire>();
//        listeCommentaire = commentaire.getAllCommentaireDUneUtilisateur(5);
//        List<CommentaireProfile> profCom = new ArrayList<CommentaireProfile>();
//        for (int i = 0; i < listeCommentaire.size(); i++) {
//            profCom.get(i).setCommentaire(listeCommentaire.get(i).getCommentaire());
//            nomCom = uImpl.getUser(listeCommentaire.get(i).getIdAuteurCommentaire());
//            profCom.get(i).setNom(nomCom.getNom());
//            profCom.get(i).setPrenom(nomCom.getPrenom());
//
//        }

        List<ServicesOfferts> lesservice = serviceOffert.getAllServiceDUneUtilisateur(idUser);

        for (ServicesOfferts serv : lesservice) {
            typeService = typeserviceImpl.getAllServiceDUneUser(serv.getIdService());
            annonceListe = annonceimpl.getAllAnnonceDUneUser(serv.getIdService());

        }
        model.addAttribute("service", typeService);
        model.addAttribute("annonce", annonceListe);
        model.addAttribute("toutservice", tousService);
        //model.addAttribute("commentaire", profCom);
    }

    @RequestMapping(value = "/getServices", method = RequestMethod.GET)
    public @ResponseBody
    List<Service> getServices(@RequestParam String tagName) {
        return getAllServices(tagName);

    }

    private List<Service> getAllServices(String tagName) {
        List<Service> listServices = new ArrayList<>();
        UserServiceImpl servImp = new UserServiceImpl();

        //listServices = servImp.getAllServicesByTerm(tagName);
        System.out.println("Recuperation des services. Nombre dans liste: " + listServices.size());

        return listServices;
    }

    private List<ServicesOfferts> getAllTheServicesOfferedByUser() {
        List<ServicesOfferts> listAllServices = new ArrayList<>();
        UserServiceOffertImpl servOffert = new UserServiceOffertImpl();
        listAllServices = servOffert.getAllServiceDUneUtilisateur(id_user);

        return listAllServices;

    }

}
