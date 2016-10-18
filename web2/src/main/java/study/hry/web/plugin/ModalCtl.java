package study.hry.web.plugin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="modal") 
public class ModalCtl {
	private final String BASE = "plugin/modal";
 
	@RequestMapping(value="index")
	public String index(){
		return BASE + "/index";
	}
	
	
	@RequestMapping(value="dynamicContent")
	public String dynamicTotalPagesNumber(){
		return BASE + "/dynamicModal";
	}
}
