/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ultimate.user.service;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ultimate.account.dao.AccountDAO;

@Service("userDetailsService")
public class MyUserDetailsService implements UserDetailsService {

    @Inject
    AccountDAO accountDAO;

    @Transactional(readOnly = true)
    @Override
    public UserDetails loadUserByUsername(final String username) throws UsernameNotFoundException {

        com.ultimate.core.entity.User user = accountDAO.findUserByEmail(username);

        List<GrantedAuthority> authorities = new ArrayList<>();
        authorities.add(new SimpleGrantedAuthority(user.getRole()));

        return buildUserForAuthentication(user, authorities);
    }

    private User buildUserForAuthentication(com.ultimate.core.entity.User user, List<GrantedAuthority> authorities) {
        return new User(user.getEmail(), user.getPassword(), (user.getActivation() == 1), true, true, true, authorities);
    }

}
