package com.homestayweb.utils;


import org.apache.commons.beanutils.BeanUtils;
import org.jboss.weld.annotated.runtime.InvokableAnnotatedMethod;

import javax.servlet.http.HttpServletRequest;
import java.lang.reflect.InvocationTargetException;

public class FormUtil {
    @SuppressWarnings("unchecked")
    public static  <T> T toModel(Class<T> cl, HttpServletRequest request){
        T object = null;
        try {
            object = cl.newInstance();
            BeanUtils.populate(object, request.getParameterMap());
        } catch (InstantiationException | IllegalAccessException | InvocationTargetException e) {
            System.out.println(e.getMessage());
        }
        return object;
    }
}
