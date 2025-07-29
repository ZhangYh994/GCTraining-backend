package com.zyh.bms.controller;

import com.zyh.bms.entity.User;
import com.zyh.bms.entity.UserUpdateDto;
import com.zyh.bms.service.UserService;
import io.swagger.v3.oas.annotations.tags.Tag;
import io.swagger.v3.oas.annotations.Operation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/users")
@Tag(name = "用户管理")
public class UserController {
    @Autowired
    private UserService userService;

    @Operation(summary = "获取用户列表")
    @GetMapping
    public List<User> getAllUsers() {
        return userService.getAllUsers();
    }

    @Operation(summary = "根据ID获取用户")
    @GetMapping("/{id}")
    public User getUserById(@PathVariable Long id) {
        return userService.getUserById(id);
    }

    @Operation(summary = "添加用户")
    @PostMapping
    public int addUser(@RequestBody User user) {
        return userService.addUser(user);
    }

    @Operation(summary = "更新用户")
    @PutMapping("/{id}")
    public int updateUser(@PathVariable Long id, @RequestBody UserUpdateDto userUpdateDto) {
        return userService.updateUser(id, userUpdateDto);
    }

    @Operation(summary = "删除用户")
    @DeleteMapping("/{id}")
    public int deleteUser(@PathVariable Long id) {
        return userService.deleteUser(id);
    }
}
