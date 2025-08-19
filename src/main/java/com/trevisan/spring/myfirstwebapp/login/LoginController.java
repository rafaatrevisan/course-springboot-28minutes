package com.trevisan.spring.myfirstwebapp.login;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@SessionAttributes("name")
public class LoginController {

    @Autowired
    private AuthenticatorService authenticatorService;

    @RequestMapping(value = "login", method = RequestMethod.GET)
    public String goToLoginPage(){
        return "login";
    }

    @RequestMapping(value = "login", method = RequestMethod.POST)
    public String goToWelcomePage(@RequestParam String name, @RequestParam String password, ModelMap model){
        if(authenticatorService.authenticate(name, password)) {
            model.put("name", name);
            return "welcome";
        }
        model.put("loginError", "Username or password incorrect.");
        return "login";
    }

}
