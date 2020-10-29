package Functions;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
public class MD5Encrypt {
	 public static String encryptPass(String pass) {
	        String passEncrypt;
	        MessageDigest md5 = null;
	        try {
	            md5 = MessageDigest.getInstance("MD5");
	        } catch (NoSuchAlgorithmException ex) {

	        }
	        md5.update(pass.getBytes());
	        BigInteger dis = new BigInteger(1, md5.digest());
	        passEncrypt = dis.toString();
	        return passEncrypt;
	    }

	    public static String hashPass(String pass) {
	        String hash;
	        pass = pass + "KAN";
	        hash = encryptPass(pass);
	        return hash;
	    }
}
