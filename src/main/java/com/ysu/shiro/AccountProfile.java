package com.ysu.shiro;

import lombok.Data;

import java.io.Serializable;

@Data
public class AccountProfile implements Serializable {

    private Long id;

    private String name;

    private String username;

    private String email;

}
