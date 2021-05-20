package com.ysu.mapper;

import com.ysu.entity.UserResearch;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;

import java.util.List;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author keg
 * @since 2021-05-13
 */
public interface UserResearchMapper extends BaseMapper<UserResearch> {

    List<UserResearch> userResearchList();

    List<UserResearch> getUserResearch();
}
