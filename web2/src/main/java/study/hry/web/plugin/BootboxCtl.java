package study.hry.web.plugin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="bootbox") 
public class BootboxCtl {
	private final String BASE = "plugin/bootbox";
 
	@RequestMapping(value="index")
	public String index(){
		return BASE + "/index";
	}
	
	@RequestMapping(value="alert")
	public String alert(){
		return BASE + "/alert";
	}
	
 
}
