package com.ysu.entity;

import java.time.LocalDateTime;
import com.baomidou.mybatisplus.annotation.TableField;
import java.io.Serializable;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;

/**
 * <p>
 * 
 * </p>
 *
 * @author keg
 * @since 2021-05-05
 */
@Data
@EqualsAndHashCode(callSuper = false)
//@Accessors(chain = true)
public class User implements Serializable {

    private static final long serialVersionUID = 1L;

    private Long id;

    private Long uId;

    private String uName;

    @NotBlank(message = "昵称不能为空")
    private String uUsername;

    private Boolean uSex;

    private String uPassword;

    private String uPhone;

    @NotBlank(message = "邮箱不能为空")
    @Email(message = "邮箱格式不正确")
    private String uEmail;

    private String uGrade;

    private String uTrait;

    private Integer uStatus;

    private UserGroup group;

    private UserResearch research;

}
