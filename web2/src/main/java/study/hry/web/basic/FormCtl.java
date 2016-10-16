package study.hry.web.basic;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="form") 
public class FormCtl {
	private final String BASE = "basic/basic_form";
	
	@RequestMapping(value="index")
	public String index(){
		return BASE + "/index";
	}
}
