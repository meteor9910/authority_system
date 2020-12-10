package com.hopu.service.Impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.hopu.domain.User;
import com.hopu.mapper.UserMapper;
import com.hopu.service.IUserService;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl extends ServiceImpl<UserMapper, User> implements IUserService {

    @Override
    public User getUserByUserName(String userName) {
        return getOne(new QueryWrapper<>(new User()).eq("user_name", userName));
    }
}
