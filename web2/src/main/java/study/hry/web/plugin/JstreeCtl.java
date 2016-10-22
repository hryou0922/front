package study.hry.web.plugin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping(value = "jstree")
public class JstreeCtl {
	private final String BASE = "plugin/jstree";

	@RequestMapping(value = "index")
	public String index() {
		return BASE + "/index";
	}

//	@RequestMapping(value = "/loadingWithAjax", consumes="application/json")
	@RequestMapping(value = "/loadingWithAjax", method = RequestMethod.GET, produces="application/json;charset=UTF-8")
	@ResponseBody
	public String loadingWithAjax(@RequestParam(value = "id") String idStr) {
		int id = "#".equals(idStr) ? 1 : Integer.parseInt(idStr);
		System.out.println("id=" + id);
		String first = "[{\"id\":1, \"state\": { \"opened\":true}, \"text\":\"Root node\",\"children\":[{\"id\":2,\"text\":\"Child node 1\",\"children\":true},{\"id\":3,\"text\":\"Child node 2\",\"children\":true}]}]";
		String id2 = "[\"Child node 3\",\"Child node 4\"]";
		String id3 = "[{\"id\":51,\"text\":\"Child node 51\",\"children\":[],\"icon\":\"jstree-folder\"},{\"id\":52,\"text\":\"Child node 53\" ,\"icon\":\"glyphicon glyphicon-leaf\"}]";

		String rtn = "";
		switch (id) {
		case 1:
			rtn = first;
			break;
		case 2:
			rtn = id2;
			break;
		case 3:
			rtn = id3;
			break;
		}
		return rtn;
	}
}
