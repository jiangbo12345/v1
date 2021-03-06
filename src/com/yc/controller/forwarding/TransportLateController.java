package com.yc.controller.forwarding;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.yc.entity.CargoGroup;
import com.yc.entity.Delivery;
import com.yc.entity.Transit;
import com.yc.service.ICargoGroupService;

//中转运期晚点
@Controller
@RequestMapping("/forwarding")
public class TransportLateController {

	
	private static final Logger LOG = Logger.getLogger(TransportLateController.class);
	
	@Autowired
	ICargoGroupService cargoGroupService;
	
	@RequestMapping(value = "transportLate", method = RequestMethod.GET)
	public ModelAndView transportLate(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<CargoGroup> list = cargoGroupService.getAll();
		ModelMap mode = new ModelMap();
		mode.put("list", list);
		return new ModelAndView("forwarding/transportLate",mode);
	}
	
	@RequestMapping(value = "searchTransportLate", method = RequestMethod.POST)
	public ModelAndView searchTransportLate(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cargoGroupID = request.getParameter("cargoGroupID");
		String delivery = request.getParameter("delivery");
		String transit = request.getParameter("transit");
		Map<String, Object> map = new HashMap<String, Object>();
		if (cargoGroupID.trim().equals("")) {
			map.put("cargoGroupID", null);
		}else{
			map.put("cargoGroupID", Integer.parseInt(cargoGroupID));
		}
		if (delivery.trim().equals("")) {
			map.put("formDelivery", null);
		} else {
			map.put("formDelivery", Delivery.valueOf(delivery));
		}
		if (transit.trim().equals("")) {
			map.put("formTransit", null);
		} else {
			map.put("formTransit", Transit.valueOf(transit));
		}
		ModelMap mode = new ModelMap();
		List<CargoGroup> list = cargoGroupService.getCargoGroupByParameters(map);
		mode.put("list", list);
		return new ModelAndView("forwarding/transportLate",mode);
	}
	
}
