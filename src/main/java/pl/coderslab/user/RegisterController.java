package pl.coderslab.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.emailSender.EmailSender;
import pl.coderslab.utilities.AppdemoUtils;
import pl.coderslab.validators.UserRegisterValidator;

import javax.ws.rs.GET;
import javax.ws.rs.POST;
import java.util.Locale;
import java.util.logging.Logger;

@Controller
public class RegisterController {
	private static final Logger LOGGER = Logger.getLogger(RegisterController.class.getName());
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private EmailSender emailSender;
	
	@Autowired
	MessageSource messageSource;
	
	@GET
	@RequestMapping(value = "/register")
	public String registerForm(Model model) {
		User u = new User();
		model.addAttribute("user", u);
		return "register";
	}


	
	@POST
	@RequestMapping(value = "/adduser")
	public String registerAction(User user, BindingResult result, Model model, Locale locale) {
				
		String returnPage = null;
		
		User userExist = userService.findUserByEmail(user.getEmail());
		
		new UserRegisterValidator().validateEmailExist(userExist, result);
				
		new UserRegisterValidator().validate(user, result);
				
		if (result.hasErrors()) {
			returnPage = "register";
		} else {
//			user.setActivationCode(AppdemoUtils.randomStringGenerator()); //to bedzie trzeba odkomentowac
			
			String content = "Wymagane potwierdzenie rejestracji. Kliknij w poniższy link aby aktywować konto: " +
			"http://localhost:8080/activatelink/" + user.getActivationCode();

			LOGGER.info("#### User before SAVE: " + user);
			userService.saveUser(user);
			// FIXME: ze względu na brak konfiguracji e-mail, ustawiamy active zawszw na 1
//			emailSender.sendEmail(user.getEmail(), "Potwierdzenie rejestracji", content); //to tez odkomentowac
			model.addAttribute("message", messageSource.getMessage("user.register.success.email", null, locale));
//			model.addAttribute("user", new User());
			returnPage = "index";
		}
		
		return returnPage;
	}

	@POST
	@RequestMapping(value = "/activatelink/{activationCode}")
	public String activateAccount(@PathVariable("activationCode") String activationCode, Model model, Locale locale) {

		userService.updateUserActivation(1, activationCode);
		
		model.addAttribute("message", messageSource.getMessage("user.register.success", null, locale));
		
		return "index";
	}
}
