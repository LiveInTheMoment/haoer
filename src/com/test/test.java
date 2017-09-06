package com.test;

public abstract class test {
	public static void main(String[] args) {
//		String[] a = new String[100];
//		System.out.println(a.length);
//		System.out.println("abc"+1+2+3);
		int[] a = null;
		for(int i=0;i<10;i++){
			a[i] = i*i;
		}
	}
	
	 public abstract void test();//abstract 方法不能有方法体


}
