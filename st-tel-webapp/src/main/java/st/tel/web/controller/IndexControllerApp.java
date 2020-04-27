package st.tel.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

/**
 * @Auther: shaotian
 * @Date: 2020/4/27 13:14
 */
@Controller
@RequestMapping("/weibo")
public class IndexControllerApp {

    @GetMapping("/index")
    public ModelAndView Index() {
        return new ModelAndView("index");
    }

}
