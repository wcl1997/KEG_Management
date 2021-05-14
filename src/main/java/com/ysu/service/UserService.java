package com.ysu.service;

import com.ysu.entity.page.PageListRes;
import com.ysu.entity.page.QueryVo;
import com.ysu.entity.User;
import com.baomidou.mybatisplus.extension.service.IService;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author keg
 * @since 2021-05-05
 */
public interface UserService extends IService<User> {

    PageListRes userList(QueryVo vo);
}
