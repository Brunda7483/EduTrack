package com.edutrack.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.edutrack.repository.UserRepository;
import com.edutrack.model.User;

import java.util.List;
import java.util.Optional;

@Service
public class UserService {

    @Autowired
    private UserRepository userRepository;

    public User register(User user){
        return userRepository.save(user);
    }

    public User login(String email, String password) {

    return userRepository.findByEmailAndPassword(email, password);

}

    public List<User> getAllUsers(){
        return userRepository.findAll();
    }
}