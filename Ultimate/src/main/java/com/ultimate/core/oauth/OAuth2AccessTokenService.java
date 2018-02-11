package com.ultimate.core.oauth;

import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;

public class OAuth2AccessTokenService {

    public static String encrypt(String message) throws Exception {

        // use key coss2
        SecretKeySpec skeySpec = new SecretKeySpec(OAuth2Constant.AES_ENCRYPTION_KEY.getBytes("UTF-8"), "AES");

        // Instantiate the cipher
        Cipher cipher = Cipher.getInstance("AES");
        cipher.init(Cipher.ENCRYPT_MODE, skeySpec);

        byte[] encrypted = cipher.doFinal(message.getBytes());
        return OAuth2Util.binaryToHex(encrypted);
    }

    public static String decrypt(String encrypted) throws Exception {

        SecretKeySpec skeySpec = new SecretKeySpec(OAuth2Constant.AES_ENCRYPTION_KEY.getBytes("UTF-8"), "AES");

        Cipher cipher = Cipher.getInstance("AES");
        cipher.init(Cipher.DECRYPT_MODE, skeySpec);
        byte[] original = cipher.doFinal(OAuth2Util.hexToBinary(encrypted));
        String originalString = new String(original);
        return originalString;
    }

    /**
     * This method is used to generate access token using different values
     *
     * @param username
     * @param userid
     * @param password
     * @param referalcode
     * @return
     */
    public static String generateAccessToken(String username, String userid, String password, String referalcode) {
        try {
            String prev = encrypt(username + "&" + userid);
            String next = OAuth2Util.getHmacSha256(password + "&" + referalcode);
            next = next.substring(0, 16);

            return prev + "_" + next;
        } catch (Exception e) {
            return null;
        }
    }

    /**
     * This method reads the access token returns the username & password in
     * combined string format string
     *
     * @param access_token
     * @return
     */
    public static String readAccessToken(String access_token) {
        try {
            //spliting the access token
            String[] split = access_token.split("_");
            //getting the first string
            String prev = split[0];
            //decrypting the string
            prev = decrypt(prev);
            return prev;
        } catch (Exception e) {
            return null;
        }
    }

}
