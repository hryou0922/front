package study.hry.web.first;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping(value="ajax") 
public class CommonAjaxCtl {
	private final String BASE = "ajax";
	
	public CommonAjaxCtl(){
		System.out.println("CommonAjaxCtl-----");
	}
	
	@RequestMapping(value="ajaxLoad")
	@ResponseBody
	public String ajax_load(){
		return "ajax-load";
	}
	
	@RequestMapping(value="ajaxGet")
	@ResponseBody
	public String ajax_get(@RequestParam String a, @RequestParam String b){
		return "ajax-get. a="+a+" b="+b;
	}
	
	@RequestMapping(value="ajaxPost")
	@ResponseBody
	public String ajax_post(@RequestParam String a, @RequestParam String b){
		return "ajax-post. a="+a+" b="+b;
	}
	
	@RequestMapping(value="ajaxAjax")
	@ResponseBody
	public String ajax_ajax(@RequestParam String a, @RequestParam String b){
		return "ajax-ajax. a="+a+" b="+b;
	}
	
	@RequestMapping(value="index")
	public String index(){
		return BASE + "/ajax";
	}
}
