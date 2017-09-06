package com.utils;

import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.slf4j.Logger;

/**
 * zhangrx
 */

public class DebugTools {
	
	/**
	 * 打印对象
	 * @param log
	 * @param obj
	 * @param s   
	 *void  
	 * @exception   
	 * @since  1.0.0
	 */
	public static void printObj(Logger log, Object obj,String s) {		
		if(log.isDebugEnabled()){
			log.debug(DebugTools.typeToString(s+":",obj));
		}
	}
	/**
	 * @param log
	 * @param obj
	 * @param s
	 * @param isDebug
	 */
	public static void printObj(Logger log, Object obj,String s,boolean isDebug) {		
		if(isDebug){
			log.debug(DebugTools.typeToString(s+":",obj));
		}else{
			log.info(DebugTools.typeToString(s+":",obj));
		}
	}
	/**
	 * 
	 *	复杂类型的转换
	 * (这里描述这个方法适用条件 – 可选)  
	 * @param scope
	 * @param parentObject
	 * @param visitedObjs
	 * @return   
	 *String  
	 * @exception   
	 * @since  1.0.0
	 */
	private static String complexTypeToString(String scope,
			Object parentObject, List<Object> visitedObjs) {
		StringBuffer buffer = new StringBuffer("");
		try {
			Class<?> cl = parentObject.getClass();
			while (cl != null) {
				processFields(cl.getDeclaredFields(), scope, parentObject,
						buffer, visitedObjs);
				cl = cl.getSuperclass();
			}
		} catch (IllegalAccessException iae) {
			buffer.append(iae.toString());
		}
		return (buffer.toString());
	}

	/**
	 * 处理字段
	 * @param fields
	 * @param scope
	 * @param parentObject
	 * @param buffer
	 * @param visitedObjs
	 * @throws IllegalAccessException   
	 *void  
	 * @exception   
	 * @since  1.0.0
	 */
	private static void processFields(Field[] fields, String scope,
			Object parentObject, StringBuffer buffer, List<Object> visitedObjs)
			throws IllegalAccessException {

		for (int i = 0; i < fields.length; i++) {		
			if (fields[i].getName().equals("__discriminator")
					|| fields[i].getName().equals("__uninitialized")) {
				continue;
			}

			fields[i].setAccessible(true);
			if (Modifier.isStatic(fields[i].getModifiers())) {
				//暂时无处理
			} else {
				buffer.append(typeToString(scope + "." + fields[i].getName(),
						fields[i].get(parentObject), visitedObjs));
			}
		}

	}

	/**
	 * 判断方式是否一个集合对象
	 * isCollectionType(判断方式是否一个集合对象)  
	 * @param obj
	 * @return   
	 *boolean  
	 * @exception   
	 * @since  1.0.0
	 */
	public static boolean isCollectionType(Object obj) {
		return (obj.getClass().isArray() || (obj instanceof Collection)
				|| (obj instanceof Hashtable) || (obj instanceof HashMap)
				|| (obj instanceof HashSet) || (obj instanceof List) || (obj instanceof AbstractMap));
	}

	/**
	 * 判断是否一个复杂对象
	 * @param obj
	 * @return   
	 *boolean  
	 * @exception   
	 * @since  1.0.0
	 */
	public static boolean isComplexType(Object obj) {
		if (obj instanceof Boolean || obj instanceof Short
				|| obj instanceof Byte || obj instanceof Integer
				|| obj instanceof Long || obj instanceof Float
				|| obj instanceof Character || obj instanceof Double
				|| obj instanceof String) {
			return false;
		} else {
			Class<?> objectClass = obj.getClass();
			if (objectClass == boolean.class || objectClass == Boolean.class
					|| objectClass == short.class || objectClass == Short.class
					|| objectClass == byte.class || objectClass == Byte.class
					|| objectClass == int.class || objectClass == Integer.class
					|| objectClass == long.class || objectClass == Long.class
					|| objectClass == float.class || objectClass == Float.class
					|| objectClass == char.class
					|| objectClass == Character.class
					|| objectClass == double.class
					|| objectClass == Double.class
					|| objectClass == String.class) {
				return false;
			}
			else {
				return true;
			}
		}
	}

	/**
	 * 集合对象的转换
	 * collectionTypeToString()  
	 * @param scope
	 * @param obj
	 * @param visitedObjs
	 * @return   
	 *String  
	 * @exception   
	 * @since  1.0.0
	 */
	private static String collectionTypeToString(String scope, Object obj,
			List<Object> visitedObjs) {
		StringBuffer buffer = new StringBuffer("");
		if (obj.getClass().isArray()) {
			if (Array.getLength(obj) > 0) {
				for (int j = 0; j < Array.getLength(obj); j++) {
					Object x = Array.get(obj, j);
					buffer.append(typeToString(scope + "[" + j + "]", x,
							visitedObjs));
				}
			} else {
				buffer.append(scope + "[]: empty\n");
			}
		} else {
			boolean isCollection = (obj instanceof Collection);
			boolean isHashTable = (obj instanceof Hashtable);
			boolean isHashMap = (obj instanceof HashMap);
			boolean isHashSet = (obj instanceof HashSet);
			boolean isAbstractMap = (obj instanceof AbstractMap);
			boolean isMap = isAbstractMap || isHashMap || isHashTable;

			if (isMap) {
				Set<?> keySet = ((Map<?, ?>) obj).keySet();
				Iterator<?> iterator = keySet.iterator();
				int size = keySet.size();
				if (size > 0) {
					for ( ; iterator.hasNext(); ) {
						Object key = iterator.next();
						Object x = ((Map<?, ?>) obj).get(key);
						buffer.append(typeToString(scope + "[\"" + key + "\"]",
								x, visitedObjs));
					}
				} else {
					buffer.append(scope + "[]: empty\n");
				}
			} else if (isCollection || isHashSet) {
				Iterator<?> iterator = null;
				int size = 0;
				if (obj != null) {
					if (isCollection) {
						iterator = ((Collection<?>) obj).iterator();
						size = ((Collection<?>) obj).size();
					} else if (isHashTable) {
						iterator = ((Hashtable<?, ?>) obj).values().iterator();
						size = ((Hashtable<?, ?>) obj).size();
					} else if (isHashSet) {
						iterator = ((HashSet<?>) obj).iterator();
						size = ((HashSet<?>) obj).size();
					} else if (isHashMap) {
						iterator = ((HashMap<?, ?>) obj).values().iterator();
						size = ((HashMap<?, ?>) obj).size();
					}
					if (size > 0) {
						for (int j = 0; iterator.hasNext(); j++) {
							Object x = iterator.next();
							buffer.append(typeToString(scope + "[" + j + "]",
									x, visitedObjs));
						}
					} else {
						buffer.append(scope + "[]: empty\n");
					}
				}
			}
		}
		return (buffer.toString());

	}

	/**
	 * Method typeToString
	 * 
	 * @param scope
	 *            String
	 * @param obj
	 *            Object
	 * @param visitedObjs
	 *            List
	 * @return String
	 */
	private static String typeToString(String scope, Object obj,
			List<Object> visitedObjs) {

		if (obj == null) {
			return (scope + ": null\n");
		} else if (isCollectionType(obj)) {
			return collectionTypeToString(scope, obj, visitedObjs);
		} else if (isComplexType(obj)) {
			if (!visitedObjs.contains(obj)) {
				visitedObjs.add(obj);
				return complexTypeToString(scope, obj, visitedObjs);
			} else {
				return (scope + ": \n");
			}
		} else {
			return (scope + ": " + obj.toString() + "\n");
		}
	}

	/**
	 * 打印数据
	 * @param scope  前缀的提示信息
	 * @param obj
	 * @return   
	 *String  
	 * @exception   
	 * @since  1.0.0
	 */
	public static String typeToString(String scope, Object obj) {
		if (obj == null) {
			return (scope + ": null\n");
		} else if (isCollectionType(obj)) {
			return collectionTypeToString(scope, obj, new ArrayList<Object>());
		} else if (isComplexType(obj)) {
			return complexTypeToString(scope, obj, new ArrayList<Object>());
		} else {
			return (scope + ": " + obj.toString() + "\n");
		}
	}

	public static void main(String[] args) {
	}
	
	/**
	 * 服务进出口日志打印
	 * 
	 * @param log
	 * @param serviceCode
	 * @param serviceDesc
	 * @param serviceObj
	 * @param isStart
	 */
	public static void printLogger(Logger log,String serviceCode , String serviceDesc, Object serviceObj,boolean isStart){
		String obj = serviceObj == null ? null : serviceObj.toString();
		log.debug("请求服务" + (isStart ? "开始" : "结束") + " - [ {} - {}  ] , 请求参数: [ {} ]", serviceCode, serviceDesc, obj);
	}
	/**
	 * 用于跟踪日志，打印对象所有字段值
	 * @param o
	 * @param msg 日志描述
	 */
	public static void debug(Object o,String serviceCode , String serviceDesc,Logger logger, boolean isStart){
		if(logger.isDebugEnabled()){
			logger.info("------------------{}-{}"+(isStart ? "开始" : "结束")+","+(isStart ? "请求" : "响应")+"报文如下：-----------------", serviceCode, serviceDesc);
			if(o instanceof String){
				logger.debug(o.toString());
			}else{
				Field[]  fields = o.getClass().getDeclaredFields();
				for(Field f:fields){
					try {
						boolean changed = false;
						if(!f.isAccessible()){
							changed = true;
							f.setAccessible(true);
						}
						logger.debug("[{}]\t=[{}]", f.getName(),f.get(o));
						if(changed){
							f.setAccessible(false);
						}
					} catch(Exception e){
						logger.error("反射错误",e);
					}
				}
			}
		}
	}
}
