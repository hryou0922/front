package study.hry.web.basic;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="btn") 
public class BtnCtl {
	private final String BASE = "basic/basic_btn";
	
	@RequestMapping(value="index")
	public String index(){
		return BASE + "/index";
	} 
	
}
