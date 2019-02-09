/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.sql.DataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import models.Client;
import models.Weight;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author Marina
 */
@Controller
@RequestMapping("/")
public class SiteController {
    @RequestMapping(value={"/","/index","/logout"})
    public String index(){
        return "index";
    }
    
    @Autowired
    DataSource datasource;
    
    
    
    @RequestMapping("/registration")
    public String registration(){
        return "registration";
    }

    
    @RequestMapping("/addnewclient")
    public String addnewclient(@ModelAttribute Client cr,ModelMap model) throws SQLException{
    datasource.getConnection().createStatement().execute("insert into client values (null,'"+cr.getFirstName()+"','"+cr.getLastName()+"','"+cr.getEmail()+"','"+String.valueOf(cr.getHeight())+"','"+cr.getPassword()+"')");
    model.addAttribute("hello","Thanks for registration!. Wish you the best!");
    return "login";
    }
    @RequestMapping("/login")
    public String login(){
        return "login";
    }
    @RequestMapping("/loginback")
    public String loginStrana(@ModelAttribute Client cl,ModelMap model) throws SQLException{
        ResultSet rs = datasource.getConnection().createStatement().executeQuery("select * from client where email='"+cl.getEmail()+"'");
        while(rs.next()){
        Client c = new Client();
        c.setId(rs.getInt("id_client"));
        c.setFirstName(rs.getString("first_name"));
        c.setLastName(rs.getString("last_name"));
        c.setEmail(rs.getString("email"));
        c.setHeight(rs.getDouble("height"));
        c.setPassword(rs.getString("password"));
        if(cl.getPassword().equals(c.getPassword())){
            model.addAttribute("cid", c.getId());
            return "weighttracker";
           }
        }
        return "login";
}
    
    @RequestMapping("/weightadd")
    public String weightadd(@ModelAttribute Client c,ModelMap model){
        model.addAttribute("cid", c.getId());
        return "weightadd";
    }
    @RequestMapping("/weightnewadd")
    public String weightnewadd(@ModelAttribute Client c,@ModelAttribute Weight w,ModelMap model) throws SQLException{
    datasource.getConnection().createStatement().execute("insert into weight values (null,'"+c.getId()+"','"+w.getWeight()+"',now())");
        model.addAttribute("cid", c.getId());
        return "weighttracker";
    }
    @RequestMapping("/bmi")
    public String bmi(){
        return "bmi";
    }
    @RequestMapping("/bmitry")
    public String bmitry(@RequestParam String weight,@RequestParam String height, ModelMap model){
        double weight1 = Double.parseDouble(weight);
        double height1 = Double.parseDouble(height);
        double height2 = height1*height1;
        double bmi = weight1/height2;
        String weightbmi = "";
        if (bmi <18.5){
        weightbmi = "Underweight";
        }
        else if(bmi >=18.5 || bmi <= 24.9){
        weightbmi = "Normal weight";
        }
        else if(bmi >= 25 || bmi <=29.9){
        weightbmi = "Overweight";
        }
        else if(bmi >= 30){
        weightbmi = "Obesity";
        }
        else{
        weightbmi = "Error";
        }
        model.addAttribute("weight", weightbmi);
        return "bmi";
    }
    
    @RequestMapping("/weightnewgraph")
    public String weightnewgraph(@ModelAttribute Client cg, ModelMap model) throws SQLException{
        ResultSet rs = datasource.getConnection().createStatement().executeQuery("select * from weight where id_client='"+cg.getId()+"'");
        List<Weight> weights = new ArrayList<Weight>();
        while(rs.next()){
        Weight wc = new Weight();
        wc.setId(rs.getInt("id_weight"));
        wc.setIdc(rs.getInt("id_client"));
        wc.setWeight(rs.getDouble("weight"));
        wc.setDate(rs.getDate("date"));
        weights.add(wc);
        }
        model.addAttribute("weight", weights);
        model.addAttribute("cid",cg.getId());
        return "tableweight";
    }
    @RequestMapping("/weighttracker")
    public String weighttracker(@ModelAttribute Client c, ModelMap model){
        model.addAttribute("cid", c.getId());
        return "weightracker";
    }
    @RequestMapping("/othersites")
    public String othersites(){
        return "othersites";
    }
}