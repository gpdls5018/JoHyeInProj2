package eltaglib;

import java.util.HashMap;
import java.util.Map;
import java.util.ResourceBundle;

import io.jsonwebtoken.Jwts;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;

public class MyTagLib {
	//함수명은 'public static' 으로 시작해야 가능!!
	
	public static String getSecretKey(String keyPath, String key){
		ResourceBundle resource = ResourceBundle.getBundle(keyPath);//확장자를 뺀 이름
		String secretKey = resource.getString(key);

		return secretKey;
	}//////////getSecretKey
	
	public static boolean verifyToken(String token, String keyPath, String key) {
		String secretKey = getSecretKey(keyPath, key);//비밀키 가져오기
		
		Map<String, Object> claims = new HashMap<>();
		try {
			//JWT토큰 파싱 및 검증
			claims = Jwts.parser()
					.setSigningKey(secretKey.getBytes("UTF-8"))//서명한 비밀키 설정
					.parseClaimsJws(token)//주어진 JWT토큰과 비밀 키를 사용하여 JWT토큰을 검증하는 메소드로 실패시 예외를 발생시킨다
					.getBody();
		} 
		catch (Exception e) { //토큰이 만료되었을 경우
			//e.printStackTrace();
			return false;
		}
		return true;
	}//////////verifyJWToken
	
	public static String getToken(HttpServletRequest request, String cookieName) {
		//발급한 토큰 가져오기
			Cookie[] cookies = request.getCookies();
			String token = "";
			if(cookies != null){
				for(Cookie cookie : cookies){
					if(cookieName.equals(cookie.getName())){
						token = cookie.getValue();
					}
				}
			}
			return token;
		}
}
