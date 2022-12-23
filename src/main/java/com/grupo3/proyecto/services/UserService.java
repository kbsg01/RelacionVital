package com.grupo3.proyecto.services;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.stereotype.Service;

import com.grupo3.proyecto.models.User;
import com.grupo3.proyecto.repositories.UserRepository;

@Service
public class UserService extends BaseService<User>{

    private final UserRepository userRepo;

    public UserService(UserRepository userRepo) {
        super(userRepo);
        this.userRepo = userRepo;
    }
    
    public User findByEmail(String email){
        return userRepo.findByEmail(email);
    }

    public User registerUser(User user) {
        String hashed = BCrypt.hashpw(user.getPassword(), BCrypt.gensalt());
        user.setPassword(hashed);
        return userRepo.save(user);
    }

    public boolean authenticateUser(String email, String password) {
        User user = userRepo.findByEmail(email);
        if (user == null) {
            return false;
        } else {
            if (BCrypt.checkpw(password, user.getPassword())) {
                return true;
            } else {
                return false;
            }
        }
    }

    public boolean duplicatedUser(String email){
        User u = userRepo.findByEmail(email);
        if (u == null) {
            return false;
        } else {
            return true;
        }
    }
}
