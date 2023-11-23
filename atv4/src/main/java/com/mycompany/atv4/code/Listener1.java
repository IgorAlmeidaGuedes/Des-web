/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.atv4.code;

import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletContextEvent;
import jakarta.servlet.ServletContextListener;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.HttpSessionAttributeListener;
import jakarta.servlet.http.HttpSessionBindingEvent;
import jakarta.servlet.http.HttpSessionEvent;
import jakarta.servlet.http.HttpSessionListener;

/**
 * Web application lifecycle listener.
 *
 * @author ciro
 */
public class Listener1 implements ServletContextListener, HttpSessionListener, HttpSessionAttributeListener {

    public ServletContext context = null;
    
    @Override
    public void contextInitialized(ServletContextEvent sce) {
        System.out.println(">>> Context Initialized");
        context = sce.getServletContext();
        context.setAttribute("userCount", 0);
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        //throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void sessionCreated(HttpSessionEvent se) {
        //throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
        System.out.println(">>> Session Created");
        
//        if(se.getSession().getAttribute("loggedIn") != null){
//            System.out.println(se.getSession().getAttribute("loggedIn"));
//            String logged = (String) se.getSession().getAttribute("loggedIn");
//            
//            if(logged.equals("TRUE")){
//                if(context.getAttribute("contador") != null){
//                    int contador = (Integer) context.getAttribute("contador");
//                    contador++;
//                    context.setAttribute("contador", contador);
//                    
//                }else{
//                    context.setAttribute("contador", 1);
//                }
//            }
//        }
        

    }

    @Override
    public void sessionDestroyed(HttpSessionEvent se) {
        System.out.println(">>> Session Destroyed");
        
//        if(se.getSession().getAttribute("loggedIn") != null){
//            if(se.getSession().getAttribute("loggedIn").toString().equals("TRUE") ){
//                int contador = (Integer) context.getAttribute("contador");
//                contador--;
//                context.setAttribute("contador", contador);
//            }        
//        }
        

        //throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void attributeAdded(HttpSessionBindingEvent event) {
        System.out.println(">>> Attribute Added: " + event.getName());
        
        HttpSession session = event.getSession();
       
       if(session.getAttribute("loggedIn").equals("FALSE") && event.getName().equals("loggedIn")){
           int cont = (int) context.getAttribute("userCount");
           context.setAttribute("userCount", cont - 1);
       }else if(session.getAttribute("loggedIn").equals("TRUE") && event.getName().equals("loggedIn")){
           int cont = (int) context.getAttribute("userCount");
           context.setAttribute("userCount", cont + 1);
       }
        
    }

    @Override
    public void attributeRemoved(HttpSessionBindingEvent event) {
        //throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
        System.out.println(">>> Attribute Removed: " + event.getName());
    }

    @Override
    public void attributeReplaced(HttpSessionBindingEvent event) {
        System.out.println(">>> AttributeReplaced: " + event.getName());
        
       HttpSession session = event.getSession();
      
       if(session.getAttribute("loggedIn").equals("FALSE") && event.getName().equals("loggedIn")){
           int cont = (int) context.getAttribute("userCount");
           context.setAttribute("userCount", cont - 1);
       }else if(session.getAttribute("loggedIn").equals("TRUE") && event.getName().equals("loggedIn")){
           int cont = (int) context.getAttribute("userCount");
           context.setAttribute("userCount", cont + 1);
       }

    }
}
