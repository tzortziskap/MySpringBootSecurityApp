package emergon.service;


import emergon.entity.Myuser;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.stereotype.Repository;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author tzortziskapellas
 */
public interface UserService extends UserDetailsService{
    
    Myuser findByUsername(String username);
    
}
