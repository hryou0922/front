package study.hry.web.plugin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="pagination") 
public class TwbsPaginationCtl {
	
	/**
	 * http://localhost/web2/mvc/ajax/index
	 * @return
	 */
	@RequestMapping(value="index")
	public String index(){
		return "plugin/twbsPagination/index";
	}
}
