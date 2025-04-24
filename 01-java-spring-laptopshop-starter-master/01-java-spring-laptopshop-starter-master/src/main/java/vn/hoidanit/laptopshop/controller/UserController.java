package vn.hoidanit.laptopshop.controller;

import vn.hoidanit.laptopshop.domain.User;
import vn.hoidanit.laptopshop.repository.UserRepository;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import vn.hoidanit.laptopshop.service.UserService;

@Controller
public class UserController {

    private final UserService userService;

    public UserController(UserService userService) {
        this.userService = userService;

    }

    @RequestMapping("/")
    public String getHomePage(Model model) {
        String test = this.userService.handHello();
        model.addAttribute("eric", test);
        return "hello";
    }

    @RequestMapping("/admin/user")
    public String getUserPage(Model model) {
        String test = this.userService.handHello();
        model.addAttribute("newUser", new User());
        return "/admin/user/create";
    }

    @RequestMapping(value = "/admin/user/create1", method = RequestMethod.POST)
    public String createUserPage(Model model, @ModelAttribute("newUser") User nguyenhung) {
        System.out.println("run here" + nguyenhung);
        this.userService.handleSaveUser(nguyenhung);
        return "hello";
    }
}
