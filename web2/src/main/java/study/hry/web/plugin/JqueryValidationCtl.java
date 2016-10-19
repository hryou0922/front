package study.hry.web.plugin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="jqueryValidation") 
public class JqueryValidationCtl {
	private final String BASE = "plugin/jquery_validation";
 
	@RequestMapping(value="index")
	public String index(){
		return BASE + "/index";
	}

	
}
