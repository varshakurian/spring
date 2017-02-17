package com.spring;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import services.registerservices;

import com.Beans.RegisterBean;

@Controller
public class RegisterController
{
	private String saveDirectory="C:/Users/Varsha/Documents";
	@RequestMapping(value = "/",method= RequestMethod.GET)
	public String Reg(Model model)
	
	{
		return "Reg";
		
	}
	
		
		@RequestMapping(value = "/RegisterSuccess",method= RequestMethod.POST)
public <HttpSession> String init(Model model,@ModelAttribute("registerBean")RegisterBean registerBean,@RequestParam CommonsMultipartFile file,HttpSession session)
	{
	   
			String filename= file.getOriginalFilename();
			System.out.println(saveDirectory+"/"+filename);
			try
			{
				byte barr[]=file.getBytes();
				BufferedOutputStream bout=new BufferedOutputStream(
					new FileOutputStream(saveDirectory+"/"+filename));
			    bout.write(barr);
			    bout.flush();
			    bout.close();
		    }
			catch(Exception e)
			{
				System.out.println(e);
			}	
			System.out.println("hello");
			//model.addAttribute("file", saveDirectory+"/"+filename);
			boolean rt=false;
			registerservices reg=new registerservices();
			registerBean.setFilename(filename);
			rt=reg.login(registerBean);
			if(rt==true)
			{
				model.addAttribute("name",registerBean.getFirstname());
				model.addAttribute("files",registerBean.getFilename());
				model.addAttribute("names",registerBean.getLastname());
				model.addAttribute("mobile",registerBean.getContact());
				model.addAttribute("gender",registerBean.getGender());
				model.addAttribute("email",registerBean.Email());
				model.addAttribute("password",registerBean.getPlace());
				model.addAttribute("files", registerBean.getDistrict());
				model.addAttribute("files", registerBean.getAddress());
				return "RegisterSuccess";
			}
		else {
			return "Reg";
		}
		
	}
}
