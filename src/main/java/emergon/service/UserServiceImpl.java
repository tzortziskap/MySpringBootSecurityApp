package emergon.service;


import emergon.service.UserService;
import emergon.entity.Myuser;
import emergon.entity.Role;
import emergon.repository.UserRepo;
import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

@Service
@Transactional
public class UserServiceImpl implements UserService {

    @Autowired
    private UserRepo userRepo;
    
    @Override
    public Myuser findByUsername(String username) {
        return userRepo.findByUsername(username);
    }
    
    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        Myuser myuser = findByUsername(username);
        if (myuser == null){
            throw new UsernameNotFoundException("Invalid username");
        }
        return new User(myuser.getUsername(), myuser.getPassword(), convertRolesToGrantedAuthorities(myuser.getRoles()));
    }
    private List<GrantedAuthority> convertRolesToGrantedAuthorities(List<Role> roles){
        
        List<GrantedAuthority> authorities = new ArrayList();
        for (Role r : roles) {
            GrantedAuthority authority = new SimpleGrantedAuthority(r.getRname());
            authorities.add(authority);
        }
        return authorities;  
    }

    
}
