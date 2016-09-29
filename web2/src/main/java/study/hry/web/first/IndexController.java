package study.hry.web.first;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {
	
	public IndexController(){
		System.out.println("###########IndexController----");
	}
	
	/**
	 * http://localhost/web3/mvc/index
	 * @return
	 */
	@RequestMapping(value="index")
	public String index(){
		return "index";
	}
}
 