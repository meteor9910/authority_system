package com.hopu.domain;


import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

@Data
@TableName("t_role")
public class Role extends BaseEntity {
    private static final long serialVersionUID = 1L;

    private String role; // 角色名称
    private String remark; // 备注


}
