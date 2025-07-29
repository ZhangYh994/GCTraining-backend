package com.zyh.bms.service;

import com.zyh.bms.entity.User;
import com.zyh.bms.entity.UserUpdateDto;
import com.zyh.bms.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.regex.Pattern;

@Service
public class UserService {
    @Autowired
    private UserRepository userRepository;

    public List<User> getAllUsers() {
        return userRepository.findAll();
    }

    public User getUserById(Long id) {
        return userRepository.findById(id);
    }

    public int addUser(User user) {
        if (userRepository.findByUsername(user.getUsername()) != null) {
            throw new IllegalArgumentException("用户名已存在");
        }
        if (user.getPassword() == null || user.getPassword().length() < 6) {
            throw new IllegalArgumentException("密码不能少于6位");
        }
        if (user.getPhone() != null && !Pattern.matches("^1[3-9]\\d{9}$", user.getPhone())) {
            throw new IllegalArgumentException("手机号格式不正确");
        }
        if (user.getEmail() != null && !Pattern.matches("^[A-Za-z0-9+_.-]+@[A-Za-z0-9.-]+$", user.getEmail())) {
            throw new IllegalArgumentException("邮箱格式不正确");
        }
        return userRepository.save(user);
    }

    public int updateUser(Long id, UserUpdateDto dto) {
        if (dto.getPhone() != null && !Pattern.matches("^1[3-9]\\d{9}$", dto.getPhone())) {
            throw new IllegalArgumentException("手机号格式不正确");
        }
        if (dto.getEmail() != null && !Pattern.matches("^[A-Za-z0-9+_.-]+@[A-Za-z0-9.-]+$", dto.getEmail())) {
            throw new IllegalArgumentException("邮箱格式不正确");
        }
        return userRepository.update(id, dto);
    }

    public int deleteUser(Long id) {
        return userRepository.deleteById(id);
    }
}
