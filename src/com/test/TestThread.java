package com.test;
public class TestThread implements Runnable{
    private static int threadCount = 0;
    private int threadNum = ++threadCount;
    private int i = 5;
    public void run(){
	    while(true){
		    try{
		    	Thread.sleep(100);
		    }
		    catch(InterruptedException e){
		    	System.out.println("Interrupted");
		    }
		    	System.out.println("Thread " + threadNum + " = " + i);
		    	if(--i==0) return;
	    }
    }
    public static void main(String[] args){
	    for(int i=0; i<5; i++)
	    new Thread(new TestThread()).start();//£¨1£©
    }
    }