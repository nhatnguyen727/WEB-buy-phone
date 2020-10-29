package Functions;

public class GetRoleBinary {
	public static String getBinary(int s) {
		String binary = "";
		for(int i=0;i<4;i++) {
			if(s % 2 == 1) {
				binary="1"+binary;
			}
			else {
				binary="0"+binary;
			}
			s = s/2;
		}
		return binary;
	}
}
