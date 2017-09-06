package com.test;
import freemarker.template.Template; 

import java.io.OutputStreamWriter; 
import java.io.StringReader; 
import java.util.HashMap; 
import java.util.Map; 

/** 
 * Freemarker��򵥵����� 
 * 
 */ 
@SuppressWarnings({ "rawtypes", "unchecked" })
public class Test2 { 
	public static void main(String[] args) throws Exception{ 
		//����һ��ģ����� 
		Template t = new Template(null, new StringReader(
				"�û�����${user};URL��    ${url};������ ��${name}"), null); 
		//������ֵ��Map 
		Map map = new HashMap(); 
		map.put("user", "lavasoft"); 
		map.put("url", "http://www.baidu.com/"); 
		map.put("name", "�ٶ�"); 
		//ִ�в�ֵ���������ָ����������� 
		t.process(map, new OutputStreamWriter(System.out)); 
	} 
}