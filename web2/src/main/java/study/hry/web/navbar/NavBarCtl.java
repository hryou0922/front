package study.hry.web.navbar;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="navbar") 
public class NavBarCtl {
	
	@RequestMapping(value="standard_navigation_bar")
	public String standard_navigation_bar(){
		return "basic_navbar/standard_navigation_bar";
	}
	
	@RequestMapping(value="inverted_navigation_bar")
	public String inverted_navigation_bar(){
		return "basic_navbar/inverted_navigation_bar";
	}
	
	
	@RequestMapping(value="simple")
	public String simple(){
		return "basic_navbar/simple";
	}
	
	
	/**
	 * http://localhost/web2/mvc/ajax/index
	 * @return
	 */
	@RequestMapping(value="index")
	public String index(){
		return "basic_navbar/index";
	}
}
