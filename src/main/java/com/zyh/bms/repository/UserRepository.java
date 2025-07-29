package com.zyh.bms.repository;

import com.zyh.bms.entity.User;
import com.zyh.bms.entity.UserUpdateDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class UserRepository {
    @Autowired
    private JdbcTemplate jdbcTemplate;

    public List<User> findAll() {
        String sql = "SELECT * FROM user";
        return jdbcTemplate.query(sql, new BeanPropertyRowMapper<>(User.class));
    }

    public User findById(Long id) {
        String sql = "SELECT * FROM user WHERE id = ?";
        List<User> users = jdbcTemplate.query(sql, new BeanPropertyRowMapper<>(User.class), id);
        return users.isEmpty() ? null : users.get(0);
    }

    public int save(User user) {
        String sql = "INSERT INTO user (username, password, phone, email, nickname, department, manager, status, login_type) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
        return jdbcTemplate.update(sql, user.getUsername(), user.getPassword(), user.getPhone(), user.getEmail(), user.getNickname(), user.getDepartment(), user.getManager(), user.getStatus(), user.getLoginType());
    }

    public int update(Long id, UserUpdateDto dto) {
        StringBuilder sql = new StringBuilder("UPDATE user SET ");
        List<Object> params = new java.util.ArrayList<>();
        if (dto.getPassword() != null && !dto.getPassword().isEmpty()) {
            sql.append("password=?, ");
            params.add(dto.getPassword());
        }
        sql.append("phone=?, email=?, nickname=?, department=?, manager=?, status=? WHERE id=?");
        params.add(dto.getPhone());
        params.add(dto.getEmail());
        params.add(dto.getNickname());
        params.add(dto.getDepartment());
        params.add(dto.getManager());
        params.add(dto.getStatus());
        params.add(id);
        return jdbcTemplate.update(sql.toString(), params.toArray());
    }

    public int deleteById(Long id) {
        String sql = "DELETE FROM user WHERE id = ?";
        return jdbcTemplate.update(sql, id);
    }

    public User findByUsername(String username) {
        String sql = "SELECT * FROM user WHERE username = ?";
        List<User> users = jdbcTemplate.query(sql, new BeanPropertyRowMapper<>(User.class), username);
        return users.isEmpty() ? null : users.get(0);
    }
}
