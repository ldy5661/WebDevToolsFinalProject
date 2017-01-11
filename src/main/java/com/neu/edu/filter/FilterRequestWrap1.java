package com.neu.edu.filter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;

public class FilterRequestWrap1 extends HttpServletRequestWrapper{
	HttpServletRequest request;
    public FilterRequestWrap1(HttpServletRequest request){
        super(request);
        this.request = request;
    }
    
    public String getParameter(String s){
        String value = this.request.getParameter(s);
        if(value==null){
            return null;
        }
        value = value.replaceAll("[^A-Za-z\\d\\s-.@ ]", "").trim();
        return value;
    }
    
    public String[] getParameterValues(String s){
        String[] input = super.getParameterValues(s);
        
        for(int i=0;i<input.length;i++){
            input[i] = input[i].replaceAll("[^A-Za-z\\d\\s-.@ ]", "").trim();
        }
        
        return input;
    }
}
