package study.hry.web.plugin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="clipboard") 
public class ClipboardCtl {
	private final String BASE = "plugin/clipboard";

	@RequestMapping(value = "index")
	public String index() {
		return BASE + "/index";
	}
	
	@RequestMapping(value = "target/input")
	public String targetInput() {
		return BASE + "/target/input";
	}
	
	@RequestMapping(value = "target/div")
	public String targetDiv() {
		return BASE + "/target/div";
	}
	
	@RequestMapping(value = "target/textarea")
	public String targetTextarea() {
		return BASE + "/target/textarea";
	}
	
	
	@RequestMapping(value = "function/target")
	public String functionTarget() {
		return BASE + "/function/target";
	}
	
	@RequestMapping(value = "function/text")
	public String functionText() {
		return BASE + "/function/text";
	}
	
	@RequestMapping(value = "constructor/node")
	public String constructorNode() {
		return BASE + "/constructor/node";
	}
	
	@RequestMapping(value = "constructor/nodelist")
	public String constructorNodelist() {
		return BASE + "/constructor/nodelist";
	}
	
	@RequestMapping(value = "constructor/selector")
	public String constructorSelector() {
		return BASE + "/constructor/selector";
	}
	
}
