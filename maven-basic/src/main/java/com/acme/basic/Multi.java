package main.java.com.acme.basic;

class Multi extends Thread{
	
	public void run(){
		System.out.println("Thread is running....");
	}
	public static void main(String[] as) {
		Multi m = new Multi();
		m.start();

	}
}
