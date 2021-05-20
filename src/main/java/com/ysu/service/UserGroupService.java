package com.ysu.service;

import com.ysu.entity.UserGroup;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author keg
 * @since 2021-05-13
 */
public interface UserGroupService extends IService<UserGroup> {
    List<UserGroup> list();

    List<UserGroup> getUserGroup();
}
