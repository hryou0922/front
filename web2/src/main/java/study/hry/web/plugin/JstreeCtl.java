package study.hry.web.plugin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="jstree") 
public class JstreeCtl {
	private final String BASE = "plugin/jstree";
 
	@RequestMapping(value="index")
	public String index(){
		return BASE + "/index";
	}
	
	
	@RequestMapping(value="dynamicContent")
	public String dynamicTotalPagesNumber(){
		return BASE + "/dynamicModal";
	}
}
