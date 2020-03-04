package main.java.com.acme.basic;

public class ReentrantExample {
	public static void main(String args[]) {
		final Reentrant re = new Reentrant();
		final Reentrant re1 = new Reentrant();

		Thread t1 = new Thread()

		{
			public void run() {
				re.m();// calling method of Reentrant class
				
			}
		};
		t1.start();

		Thread t2 = new Thread()

		{
			public void run() {
				re.m();// calling method of Reentrant class
			}
		};
		t2.start();
	}
}

class Reentrant {
	public synchronized void m() {
		System.out.println("this is m() method");
		try {
			Thread.sleep(1000);
		} catch (InterruptedException ie) {
		}
	//	n();
	}

	public synchronized void n() {
		try {
			Thread.sleep(1000);
		} catch (InterruptedException ie) {

		}
		System.out.println("this is n() method");
	}
}