package org.yl.test;

public class main {
	public static void main(String[] args) {
		String s = "CFO";
		char[] charArray = s.toCharArray();
		for (char c : charArray) {
			System.out.println(c);
		}

		char c = 67;
		char f = 70;
		char o = 79;
		char[] cfo = new char[] { 67, 70, 79 };
		System.out.println(cfo[0] + cfo[1] + cfo[2]);

	}

}
