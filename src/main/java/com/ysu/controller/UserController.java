package com.ysu.controller;


import com.ysu.common.Result;
import com.ysu.entity.*;
import com.ysu.entity.page.PageListRes;
import com.ysu.entity.page.QueryVo;
import com.ysu.service.UserService;
import com.ysu.util.UploadUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import org.springframework.web.multipart.MultipartFile;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author keg
 * @since 2021-05-05
 */
@RestController
@RequestMapping("/user")
public class UserController {

    @Autowired
    UserService userService;

//    @RequiresAuthentication
    @GetMapping("/index")
    public Result index() {
        User user = userService.getById(1L);
        return Result.success(user);
    }

    @GetMapping("/userList")
    public Result userList(String keyword, QueryVo vo) {
        PageListRes pageList = userService.userList(vo);
        return Result.success(pageList);
    }

    @PostMapping("/save")
    public Result save(@Validated @RequestBody User user) {
        return Result.success(user);
    }

    /**
     * 文件上传
     * @param file
     * @param request
     * @param response
     * @return
     * @throws Exception
     */
    @RequestMapping(value = "/uploadImages",method=RequestMethod.POST)
    @ResponseBody
    public UploadResult uploadImages(MultipartFile file, HttpServletRequest request, HttpServletResponse response) throws Exception {
        String destDir = "/upload/picture";
        UploadResult webResult = new UploadResult();
        try {
            String path = UploadUtil.uploads(file, destDir, request,response);
            System.out.println(path);
            webResult.setStatus(0);
            webResult.setFilepath(path);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return webResult;
    }




}
