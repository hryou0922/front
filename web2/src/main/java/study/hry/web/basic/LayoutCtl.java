package study.hry.web.basic;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping(value="layout") 
public class LayoutCtl {
	private final String BASE = "basic/basic_layout";
	
	@RequestMapping(value="ajaxLoad")
	@ResponseBody
	public String ajax_load(){
		return "ajax-load";
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
