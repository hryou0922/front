package study.hry.web.first;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping(value="ajax") 
public class CommonAjaxCtl {

	public CommonAjaxCtl(){
		System.out.println("CommonAjaxCtl-----");
	}
	
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
		return "ajax/ajax";
	}
}
