package study.hry.web.basic;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="navbar") 
public class NavBarCtl {
	
	private final String BASE = "basic/basic_navbar";
	
	@RequestMapping(value="standard_navigation_bar")
	public String standard_navigation_bar(){
		return BASE + "/standard_navigation_bar";
	}
	
	@RequestMapping(value="inverted_navigation_bar")
	public String inverted_navigation_bar(){
		return BASE + "/inverted_navigation_bar";
	}
	
	
	@RequestMapping(value="simple")
	public String simple(){
		return BASE + "/simple";
	}
	
	
	/**
	 * http://localhost/web2/mvc/ajax/index
	 * @return
	 */
	@RequestMapping(value="index")
	public String index(){
		return BASE + "/index";
	}
}
