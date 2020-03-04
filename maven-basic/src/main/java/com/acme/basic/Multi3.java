package main.java.com.acme.basic;

public class Multi3 implements Runnable {
	
	public void run(){
		System.out.println("inside run....");
	}
	
	public static void main(String [] as)
	{
		Multi3 m3 = new Multi3();
		//m3.start();
		
		Thread t1 = new Thread(m3);
		t1.start();
	}

}
