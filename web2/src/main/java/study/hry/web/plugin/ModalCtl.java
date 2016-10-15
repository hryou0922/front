package study.hry.web.plugin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping(value="modal") 
public class ModalCtl {
	private final String BASE = "plugin/modal";
 
	@RequestMapping(value="index")
	public String index(){
		return BASE + "/index";
	}
	
	
	@RequestMapping(value="dynamicTotalPages")
	@ResponseBody
	public String dynamicTotalPagesNumber(){
		return "{\"newTotalPages\":5}";
	}
}
