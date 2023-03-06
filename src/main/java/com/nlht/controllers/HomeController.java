/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nlht.controllers;

import com.nlht.pojo.Category;
import com.nlht.pojo.Product;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author Computer
 */
@Controller
public class HomeController {
    @RequestMapping("/")
    public String index(Model model,
            @RequestParam(value = "kw", defaultValue = "") String kw){
        List<Category> categories = new ArrayList<>();
        categories.add(new Category(1,"MOBILE"));
        categories.add(new Category(2,"TABLET"));
        categories.add(new Category(2,"DESKTOP"));

        
        List<Product> products = new ArrayList<>();
        products.add(new Product(1,"Samsung Galaxy Z Flip4 128GB","https://cdn.tgdd.vn/Products/Images/42/258047/samsung-galaxy-flip4-glr-tim-1.jpg",19990000l));
        products.add(new Product(2,"Iphone 14 pro","https://cdn.tgdd.vn/Products/Images/42/247508/iphone14-pro-1.jpg",24490000l));
        products.add(new Product(3,"OPPO Reno8","https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8-t-5g-den-1.jpg",10990000l));
        products.add(new Product(4,"iPad 9 WiFi","https://cdn.tgdd.vn/Products/Images/522/247517/ipad-9-wifi-trang-1.jpg",8490000l));
        products.add(new Product(5,"Lenovo Tab M10","https://cdn.tgdd.vn/Products/Images/522/235366/lenovo-tab-m10-gen-2-1-org.jpg",3890000l));
        
        if(kw!=null&&!kw.isEmpty())
            products = products.stream().filter(p -> p.getName().contains(kw)).collect(Collectors.toList());
        
        model.addAttribute("categories", categories);
        model.addAttribute("products", products);
        
        return "index";
    }
}
