package org.suda.customerMgr.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.suda.customerMgr.domain.Domain;

import org.suda.customerMgr.service.api.PlcService;

import javax.validation.Valid;
import java.util.Map;

@Controller
public class PLCController {

    @Autowired
    private PlcService plcService;

    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public String loadAddpLC(Map<String, Object> map) {
        map.put("domain", new Domain());
        return "plc";
    }

    @RequestMapping("/list")
    public String listPlc(Map<String, Object> map) {
        map.put("domain", new Domain());
        map.put("plcList", plcService.listPlc());
        return "listPlc";
    }

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String addPlc(@ModelAttribute("domain") @Valid Domain domain, BindingResult result) {
        if (result.hasErrors()) {
            return "plc";
        }
        plcService.addPlc(domain);
        return "redirect:/list" ;
    }

    @RequestMapping(value = "/edit/edit{customerId}", method = RequestMethod.POST)
    public String editPlc(@ModelAttribute("customer") @Valid Domain domain)  {
        plcService.editPlc(domain);
        return "redirect:/list";
    }
   @RequestMapping(value = "/edit/{customerId}")
    public String editPlc( Map<String, Object> map, @PathVariable("customerId") Integer customerId ) {
       map.put("domain", new Domain());
       map.put("List", plcService.editPlcforObject(customerId));
        return "edit";
    }
    @RequestMapping(value = "/delete/{customerId}")
    public String deletePlc(@PathVariable("customerId") Integer customerId) {
        plcService.removePlc(customerId);
        return "redirect:/list";
    }

}
