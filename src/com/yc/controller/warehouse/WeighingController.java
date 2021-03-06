package com.yc.controller.warehouse;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.yc.entity.Delivery;
import com.yc.entity.OrderForm;
import com.yc.entity.Package;
import com.yc.service.IPackageService;
//仓库称量
@Controller
@RequestMapping("/warehouse")
public class WeighingController {
	
	@SuppressWarnings("unused")
	private static final Logger LOG = Logger.getLogger(WeighingController.class);
	
	@Autowired
	IPackageService packageService;
	
	@RequestMapping(value = "weighing", method = RequestMethod.GET)
	public ModelAndView weighing(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.getSession().removeAttribute("packageMap");
		List<Package> list = packageService.getAll();
		ModelMap map = new ModelMap();
		map.put("list", list);
		return new ModelAndView("warehouse/weighing", map);
	}
	
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "getOrder", method = RequestMethod.GET)
	public ModelAndView getOrder(Integer id,String page,HttpServletRequest request, HttpServletResponse response) throws Exception {
		Map<String, Object> map = (Map<String, Object>)request.getSession().getAttribute("packageMap");
		List<Package> list =null;
		if (map!=null) {
			list = packageService.getPackAgeByParameters(map);
			if (map.get("userName")!=null) {
				List<Package> packages = new ArrayList<Package>();
				if (list.size()>0) {
					for (Package package1 : list) {
						for (OrderForm order : package1.getOrderForms()) {
							if (order.getOrderUser().getUserName().contains(map.get("userName").toString())) {
								packages.add(package1);
							}
						}
					}
					list = packages;
				}
			}
		}else{
			list = packageService.getAll();
		}
		Package pack = packageService.findById(id);
		ModelMap mode = new ModelMap();
		mode.put("list", list);
		mode.put("packs", pack);
		if (page.equals("weighing")) {
			return new ModelAndView("warehouse/weighing", mode);
		}else if(page.equals("sendTheParcel")){
			return new ModelAndView("warehouse/sendTheParcel", mode);
		}else{
			return null;
		}
	}
	
	@RequestMapping(value = "searchWeighing", method = RequestMethod.POST)
	public ModelAndView searchWeighing(String page,HttpServletRequest request, HttpServletResponse response) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		if (request.getParameter("packageCode").trim().equals("")) {
			map.put("packageCode", null);
		}else{
			map.put("packageCode", request.getParameter("packageCode"));
		}
		if (request.getParameter("formDelivery").trim().equals("")) {
			map.put("formDelivery", null);
		} else {
			map.put("formDelivery", Delivery.valueOf(request.getParameter("formDelivery")));
		}
		if (request.getParameter("userName").trim().equals("")) {
			map.put("userName", null);
		}else{
			map.put("userName", request.getParameter("userName"));
		}
		List<Package> list = packageService.getPackAgeByParameters(map);
		if (map.get("userName")!=null) {
			List<Package> packages = new ArrayList<Package>();
			if (list.size()>0) {
				for (Package package1 : list) {
					for (OrderForm order : package1.getOrderForms()) {
						if (order.getOrderUser().getUserName().contains(map.get("userName").toString())) {
							packages.add(package1);
						}
					}
				}
				list = packages;
			}
		}
		ModelMap mode = new ModelMap();
		mode.put("list", list);
		request.getSession().setAttribute("packageMap", map);
		if (page.equals("weighing")) {
			return new ModelAndView("warehouse/weighing", mode);
		}else if(page.equals("sendTheParcel")){
			return new ModelAndView("warehouse/sendTheParcel", mode);
		}else{
			return null;
		}
	}
}
