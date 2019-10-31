package com.wax.lp.user.controller;

import java.util.LinkedHashMap;


import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.wax.lp.bean.CrmContract;
import com.wax.lp.bean.CrmSystemUser;
import com.wax.lp.user.service.ContractService;

@Controller
public class ContractController {

		@Autowired
		private ContractService contractService;
		
		Map<String, Object> resultMap = new LinkedHashMap<String, Object>();
		
		//合同页面
		@RequestMapping("/hetong.crm")
		public ModelAndView getContractAll(@RequestParam(value="pn",required=true,defaultValue="1")Integer pn,ModelAndView mv){
			PageHelper.startPage(pn,8);
			List<CrmContract> list = contractService.selectByExample(null);
			PageInfo<CrmContract> pageinfo = new PageInfo<>(list,5);
			System.out.println(pageinfo);
			System.out.println(pageinfo.getPages());
			return new ModelAndView("ht","pageInfo",pageinfo);
		}
		//查看合同信息
		@RequestMapping("/selectht.crm")
		public String userinfo() {
			return "selectht";
		}
		//去添加合同页面
		@RequestMapping("/goaddht.crm")
		public String goContract() {
			return "addht";
			
		}
		//添加合同
	/*
	 * @RequestMapping(value ="/addht.crm",method=RequestMethod.POST) public
	 * ModelAndView addContract(CrmContract crmContract){ int count =
	 * contractService.insertSelective(crmContract); if(count != 0){ return new
	 * ModelAndView("addht","message","添加成功，返回合同页面可进行查看。"); }else{ return new
	 * ModelAndView("addht","message","添加失败，请刷新重试。"); } }
	 */
		//添加合同
		@RequestMapping("/addht.crm")
		public String insertContract(CrmContract crmContract, HttpServletRequest request) {
			System.out.println("===============================================================");
			int count = contractService.insert(crmContract);
			System.out.println(count);
			if(count != 0){
				return "redirect:/ht.jsp";
			}else{
				request.getSession().setAttribute("erro", "添加失败");
				return "redirect:/addht.jsp";
			}
		}
		//删除合同
		@RequestMapping(value ="/deleteht.crm",method=RequestMethod.GET)
		@ResponseBody
		public Map<String , Object> deleteContract(Integer id){
				try {
					int count = contractService.deleteByPrimaryKey(id);
					resultMap.put("status", 200);
					resultMap.put("successCount", count);
					resultMap.put("message", "删除成功");
				} catch (Exception e) {
					resultMap.put("status", 500);
					resultMap.put("message", "删除失败，请刷新后再试！");
				}
			return resultMap;
		}
		//修改合同信息
		@RequestMapping("/updateht.crm")
		public ModelAndView updateContract
		(CrmContract crmContract,ModelAndView model) {
			int a = contractService.updateByPrimaryKey(crmContract);
			if(a>0){
				model.addObject("scusse", "修改成功");
				return new ModelAndView("selectht","htmodel",model);
			}else{
				model.addObject("erro", "修改失败,请返回后刷新重试");
				return new ModelAndView("erro","htmodel",model);
			}
		}
}
