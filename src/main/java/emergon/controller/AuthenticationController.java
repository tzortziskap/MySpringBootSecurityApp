/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package emergon.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

/**
 *
 * @author tzortziskapellas
 */
@Controller
public class AuthenticationController {
    
    @GetMapping("/loginPage")
    public String showLoginPage(){
        return "loginPage";
    }
    
    @GetMapping("/access-denied")
    public String showAccessDeniedPage(){
        return "access-denied";
    }
    
}
