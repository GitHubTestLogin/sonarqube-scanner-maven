package main.java.com.acme.basic;

public class MySynchronization {

	public static void main(String[] as) {

		SyncMethod smObj = new SyncMethod();
		SyncMethod smObj1 = new SyncMethod();

		MyThreadTest1 mt1 = new MyThreadTest1(smObj);
		mt1.start();
		MyThreadTest1 mt2 = new MyThreadTest1(smObj);
		mt2.start();
		
		MyThreadTest1 mt3 = new MyThreadTest1(smObj1);
		mt3.start();
		MyThreadTest1 mt4 = new MyThreadTest1(smObj1);
		mt4.start();
	}

}

class SyncMethod {
	//static synchronized void accessSharedArea() { //static synchronized method
		 synchronized void accessSharedArea() { // synchronized method
		for (int i = 0; i <= 3; i++) {
			System.out.println(Thread.currentThread().getName() + " : " +i);
			try {
				Thread.sleep(500);
			} catch (InterruptedException ie) {
				ie.printStackTrace();
			}

		}
	}
}

class MyThreadTest1 extends Thread {
	SyncMethod sm;

	MyThreadTest1(SyncMethod sm) {
		this.sm = sm;
	}

	public void run() {
		sm.accessSharedArea();
	}
}
