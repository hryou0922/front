package study.hry.web.basic;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="menu") 
public class MenuCtl {
	private final String BASE = "basic/basic_menu";
	
	@RequestMapping(value="index")
	public String index(){
		return BASE + "/index";
	} 
	
	@RequestMapping(value="dropdown")
	public String dropdown(){
		return BASE + "/dropdown";
	} 
}
