package com.hopu.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.hopu.domain.User;

public interface IUserService extends IService<User> {
    User getUserByUserName(String userName);
}
