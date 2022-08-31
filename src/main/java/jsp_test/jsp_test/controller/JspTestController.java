package jsp_test.jsp_test.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value ="/index")
public class JspTestController {


    @RequestMapping
    public String jsp() {
        return "index";
    }


    @RequestMapping("/main")
    public String Main() {
        return "main";
    }
}
