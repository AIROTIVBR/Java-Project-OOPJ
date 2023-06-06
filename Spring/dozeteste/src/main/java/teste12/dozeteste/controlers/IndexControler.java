package teste12.dozeteste.controlers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class IndexControler{

    @GetMapping("/")
    public String renderizarHtml() {
        return "index";
    }
}
