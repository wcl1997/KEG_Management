package com.ysu.service;

import com.ysu.entity.UserResearch;
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
public interface UserResearchService extends IService<UserResearch> {

    List<UserResearch> userResearchList();
}
