package study.hry.web.basic;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping(value="table") 
public class TableCtl {
	private final String BASE = "basic/basic_table";
	
	@RequestMapping(value="ajaxLoad")
	@ResponseBody
	public String ajax_load(){
		return "ajax-load";
	}
	
	@RequestMapping(value="index")
	public String index(){
		return BASE + "/index";
	}
}
