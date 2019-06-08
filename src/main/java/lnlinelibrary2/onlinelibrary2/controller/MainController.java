package lnlinelibrary2.onlinelibrary2.controller;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import lnlinelibrary2.onlinelibrary2.dao.BookDao;

@Controller
public class MainController {

	@Autowired
	private BookDao bookDao;
	// f

	@RequestMapping(value = "/onlinelibrary2/bookinfo")
	public ModelAndView bookinfo() {
		ModelAndView mv = new ModelAndView("admin");

		mv.addObject("title", "Books");
		mv.addObject("UserClickBooks", true);
		mv.addObject("books", bookDao.bookslist());
		return mv;

	}

	@RequestMapping(value = { "/", "/onlinelibrary2/home", "/welcome" })
	public ModelAndView home() {
		ModelAndView mv = new ModelAndView("index");

		mv.addObject("title", "Home");
		mv.addObject("UserClickHome", true);
		return mv;

	}

	// f
	@RequestMapping(value = "/onlinelibrary2/aboutus")
	public ModelAndView aboutus() {
		ModelAndView mv = new ModelAndView("aboutus");

		mv.addObject("title", "About Us");
		mv.addObject("userClickAboutUs", true);
		return mv;

	}

	// f
	@RequestMapping(value = "/onlinelibrary2/contactus")
	public ModelAndView contactus() {
		ModelAndView mv = new ModelAndView("contactus");

		mv.addObject("title", "Contact Us");
		mv.addObject("userClickContactUs", true);
		return mv;

	}

	// f
	@RequestMapping(value = "/onlinelibrary2/bookdetailsforbookdetails")
	public ModelAndView bookdetailsforbookdetails() {
		ModelAndView mv = new ModelAndView("bookdetailsforbookdetails");

		mv.addObject("title", "BookDetails");
		mv.addObject("userClickBooksDetails", true);
		return mv;

	}

	// f
	@RequestMapping(value = "/onlinelibrary2/admin")
	public ModelAndView admin() {
		ModelAndView mv = new ModelAndView("admin");

		mv.addObject("title", "AdminLogin");
		mv.addObject("userClickAdmin", true);
		return mv;

	}

	// f
	@RequestMapping(value = "/onlinelibrary2/member")
	public ModelAndView member() {
		ModelAndView mv = new ModelAndView("member");

		mv.addObject("title", "MemberLogin");
		mv.addObject("userClickMember", true);
		return mv;

	}

	@RequestMapping(value = "/onlinelibrary2/admin1")
	public ModelAndView admin1() {
		ModelAndView mv = new ModelAndView("admin1");

		mv.addObject("title", "AdminLogin");
		mv.addObject("userClickAdmin1", true);
		return mv;

	}

	@PostMapping(value = "/onlinelibrary2/memberlogin")
	public ModelAndView memberlogin() {
		ModelAndView mv = new ModelAndView("memberlogin");

		mv.addObject("title", "MemberLogin");
		mv.addObject("userClickMemberLogin", true);
		return mv;

	}

	@RequestMapping(value = "/onlinelibrary2/newstaff")
	public ModelAndView newstaff() {
		ModelAndView mv = new ModelAndView("newstaff");

		mv.addObject("title", "NewStaff");
		mv.addObject("userClickNewStaff", true);
		return mv;

	}

	@RequestMapping(value = "/onlinelibrary2/newstaff1")
	public ModelAndView newstaff1() {
		ModelAndView mv = new ModelAndView("newstaff1");

		mv.addObject("title", "NewStaff1");
		mv.addObject("userClickNewStaff1", true);
		return mv;

	}

	@RequestMapping(value = "/onlinelibrary2/showstaff")
	public ModelAndView showstaff() {
		ModelAndView mv = new ModelAndView("showstaff");

		mv.addObject("title", "ShowStaff");
		mv.addObject("userClickShowStaff", true);
		return mv;

	}

	@RequestMapping(value = "/onlinelibrary2/bookdetails")
	public ModelAndView bookdetails() {
		ModelAndView mv = new ModelAndView("bookdetails");

		mv.addObject("title", "BookDetails");
		mv.addObject("userClickBookDetails", true);
		return mv;

	}

	@RequestMapping(value = "/onlinelibrary2/updatebookdetails1")
	public ModelAndView updatebookdetails1() {
		ModelAndView mv = new ModelAndView("updatebookdetails1");

		mv.addObject("title", "updatebookdetails1");
		mv.addObject("userClickupdatebookdetails1", true);
		return mv;

	}

	@RequestMapping(value = "/onlinelibrary2/updatebookdetails")
	public ModelAndView updatebookdetails() {
		ModelAndView mv = new ModelAndView("updatebookdetails");

		mv.addObject("title", "updatebookdetails");
		mv.addObject("userClickupdatebookdetails", true);
		return mv;

	}

	@RequestMapping(value = "/onlinelibrary2/staffreg")
	public ModelAndView staffreg() {
		ModelAndView mv = new ModelAndView("staffreg");

		mv.addObject("title", "staffreg");
		mv.addObject("userClickstaffreg", true);
		return mv;

	}

	@RequestMapping(value = "/onlinelibrary2/stafflogin")
	public ModelAndView stafflogin() {
		ModelAndView mv = new ModelAndView("stafflogin");

		mv.addObject("title", "stafflogin");
		mv.addObject("userClickstafflogin", true);
		return mv;

	}

	@RequestMapping(value = "/onlinelibrary2/staff1login1")
	public ModelAndView staff1login1() {
		ModelAndView mv = new ModelAndView("staff1login1");

		mv.addObject("title", "staff1login1");
		mv.addObject("userClickstaff1login1", true);
		return mv;

	}

	// f
	@RequestMapping(value = "/onlinelibrary2/Register")
	public ModelAndView Register() {
		ModelAndView mv = new ModelAndView("Register");

		mv.addObject("title", "Register");
		mv.addObject("userClickRegister", true);
		return mv;

	}

	@RequestMapping(value = "/onlinelibrary2/issuenewbook1")
	public ModelAndView issuenewbook1() {
		ModelAndView mv = new ModelAndView("issuenewbook1");

		mv.addObject("title", "issuenewbook1");
		mv.addObject("userClickissuenewbook1", true);
		return mv;

	}

	@RequestMapping(value = "/onlinelibrary2/issuenewbook")
	public ModelAndView issuenewbook() {
		ModelAndView mv = new ModelAndView("issuenewbook");

		mv.addObject("title", "issuenewbook");
		mv.addObject("userClickissuenewbook", true);
		return mv;

	}

	@RequestMapping(value = "/onlinelibrary2/deletestaff1")
	public ModelAndView deletestaff1() {
		ModelAndView mv = new ModelAndView("deletestaff1");

		mv.addObject("title", "deletestaff1");
		mv.addObject("userClickdeletestaff1", true);
		return mv;

	}

	@RequestMapping(value = "/onlinelibrary2/deletestaff")
	public ModelAndView deletestaff() {
		ModelAndView mv = new ModelAndView("showstaff");

		mv.addObject("title", "deletestaff");
		mv.addObject("userClickdeletestaff", true);
		return mv;

	}

	@RequestMapping(value = "/onlinelibrary2/deletebookdetails1")
	public ModelAndView deletebookdetails1() {
		ModelAndView mv = new ModelAndView("deletebookdetails1");

		mv.addObject("title", "deletebookdetails1");
		mv.addObject("userClickdeletebookdetails1", true);
		return mv;

	}

	@RequestMapping(value = "/onlinelibrary2/deletebookdetails")
	public ModelAndView deletebookdetails() {
		ModelAndView mv = new ModelAndView("deletebookdetails");

		mv.addObject("title", "deletebookdetails");
		mv.addObject("userClickdeletebookdetails", true);
		return mv;

	}

	@RequestMapping(value = "/onlinelibrary2/bookdetailsformember")
	public ModelAndView bookdetailsformember() {
		ModelAndView mv = new ModelAndView("bookdetailsformember");

		mv.addObject("title", "bookdetailsformember");
		mv.addObject("userClickbookdetailsformember", true);
		return mv;

	}

	@PostMapping(value = "/onlinelibrary2/CreateServlet")
	public ModelAndView CreateServlet() {
		ModelAndView mv = new ModelAndView("CreateServlet");

		mv.addObject("title", "CreateServlet");
		mv.addObject("userClickCreateServlet", true);
		return mv;

	}
}
