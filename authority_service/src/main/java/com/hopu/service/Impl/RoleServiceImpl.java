package com.hopu.service.Impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.hopu.domain.Role;
import com.hopu.mapper.RoleMapper;
import com.hopu.service.IRoleService;
import org.springframework.stereotype.Service;

@Service
public class RoleServiceImpl extends ServiceImpl<RoleMapper, Role> implements IRoleService {

}
