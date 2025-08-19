package com.trevisan.spring.myfirstwebapp.login;

import org.springframework.stereotype.Service;

@Service
public class AuthenticatorService
{
    public boolean authenticate(String username, String password){
        boolean isValidUsername = username.equalsIgnoreCase("Rafael");
        boolean isValidPassword = password.equalsIgnoreCase("123");

        return isValidUsername && isValidPassword;
    }
}
