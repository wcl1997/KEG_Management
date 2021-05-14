package com.ysu.mapper;

import com.ysu.entity.page.QueryVo;
import com.ysu.entity.User;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author keg
 * @since 2021-05-05
 */
@Repository
public interface UserMapper extends BaseMapper<User> {

    List<User> userList(QueryVo vo);
}
