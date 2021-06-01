package im.pwr.edu.pl.lab3;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class TestEndpoint {

    @RequestMapping("/")
    public String home() {
        return "Hello Docker World";
    }

}
