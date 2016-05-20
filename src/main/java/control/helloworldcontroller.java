package control;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import model.hybernatetest;
 
@Controller
public class helloworldcontroller {
	String message = "Welcome to Spring MVC!";
 
	@RequestMapping("/")
	public ModelAndView showMessage()
	{
	ModelAndView mv = new ModelAndView("index");
		return mv;
	}
	@RequestMapping("/index")
	public ModelAndView index()
	{
	ModelAndView mv = new ModelAndView("index");
		return mv;
	}
	@RequestMapping("/contactus")
	public ModelAndView contactus()
	{
	ModelAndView mv = new ModelAndView("contactus");
		return mv;
	}
	@RequestMapping("/register")
	public ModelAndView register()
	{
	ModelAndView mv = new ModelAndView("register");
		return mv;
	}
	@RequestMapping("/login")
	public ModelAndView login()
	{
	ModelAndView mv = new ModelAndView("login");
		return mv;
	}
	@RequestMapping("/aboutus")
	public ModelAndView aboutus()
	{
	ModelAndView mv = new ModelAndView("aboutus");
		return mv;
	}
	@RequestMapping("/product")
	public ModelAndView product()
	{
		hybernatetest h= new hybernatetest();
	ModelAndView mv = new ModelAndView("product");
     mv.addObject("data",h.list_data());
		return mv;
	}

	
}