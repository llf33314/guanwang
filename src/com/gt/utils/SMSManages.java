package com.gt.utils;
import java.io.*;
import java.net.*;//++
import java.security.*;//++
import java.util.HashMap;
import java.util.Map;
public class SMSManages {
	
    public SMSManages(String uc, String pwd) {
        this._uc = uc;
        this._pwd = pwd;
    }
    
    private String _uc,_pwd; //帐号，密码
    private static String _host="http://c.kf10000.com/sdk/SMS?";
    
    public static String get_pwd(String pwd) {
    	return MD5Encode(pwd);
    }
    
    
    /**
     *发送短信
     * @param mobiles String 接收号码
     * @param cont String 短信内容
     * @param company String 公司名称
     * @return String
     */
    public static  Map<String, String> sendSMS(String mobiles, String cont,String company) {
    	Map<String, String> result=new HashMap<String, String>();
        String re = "";
        try {
        	  cont=cont+CommonUtil.format("【%s】", company);
        	  String msgid=CommonUtil.getStr(System.currentTimeMillis());
              cont = URLEncoder.encode(cont, "GBK"); //短信内容需要编码
              String sendUrl =
                      _host+ "cmd=send&uid=" +
                    		  SystemPropertiesUtil.getInstance().getSmsUser() + "&psw=" +get_pwd(SystemPropertiesUtil.getInstance().getSmsPwd()) + "&mobiles=" + mobiles + "&msgid=" +
                      msgid + "&msg=" + cont + " ";
              re = submit(sendUrl);
              if(!CommonUtil.isEmpty(re)&&re.equals("100")){
            	result.put("code", "1");
              	result.put("msg", "发送成功");
              	result.put("msgid", msgid);
              }else{
            	result.put("code", "-1");
            	result.put("msg", "发送失败，请联系管理员");  
              }
        } catch (Exception ex) {
        	ex.printStackTrace();
        	result.put("code", "-1");
        	result.put("msg", "发送失败，请联系管理员");
        }
        return result;
    }


    /**
     * 接收短信
     * @return String
     */
//    public String getMO() {
//        String re = "";
//        try{
//            String moUrl =
//                    _host+"cmd=getmo&uid=" +
//                    _uc + "&psw=" + get_pwd() + "";
//            re = submit(moUrl);
//        } catch(Exception ex) {
//        	ex.printStackTrace();
//        }
//        return re;
//    }
    /**
     * 取发送状态
     * @return String
     */
//    public String getStatus(){
//        String re="";
//        String getstatusUrl =_host+"cmd=getstatus&uid=" +_uc + "&psw=" + this.get_pwd() + "";
//        re = submit(getstatusUrl);
//        return re;
//    }


    /**
     * GET提交
     * @param url String
     * @return String
     */
    private static String submit(String url) {
        String re = "";
        int byteMax = 50;
        try {
            URL myurl = new URL(url);
            URLConnection urlcon = myurl.openConnection();
            urlcon.setUseCaches(false);
            urlcon.connect();
            InputStream inputstream = urlcon.getInputStream();
            byte[] buff = new byte[byteMax];
            ByteArrayOutputStream bytearrayoutputstream = new
                    ByteArrayOutputStream();
            int ins;
            while ((ins = inputstream.read(buff)) >= 0) {
                bytearrayoutputstream.write(buff, 0, ins);
            }
            re = new String(bytearrayoutputstream.toByteArray());
            re.trim();
        } catch (MalformedURLException ex) {
        } catch (IOException ex) {
            /** @todo Handle this exception */
        }

        return re;
    }
    /**
     * MD5加密
	 * @param origin
	 * @return
	 */
	private static String MD5Encode(String origin) {
	    String resultString = null;
	    try {
	        resultString = new String(origin);
	        MessageDigest md = MessageDigest.getInstance("MD5");
	        resultString = byteArrayToHexString(md.digest(resultString.getBytes()));
	    } catch (Exception ex) {
	
	    }
	    return resultString;
	}

	private static String byteToHexString(byte b) {
	    int n = b;
	    if (n < 0) {
	        n = 256 + n;
	    }
	    int d1 = n / 16;
	    int d2 = n % 16;
	    return hexDigits[d1] + hexDigits[d2];
	}
	
	public static String byteArrayToHexString(byte[] b) {
	    StringBuffer resultSb = new StringBuffer();
	    for (int i = 0; i < b.length; i++) {
	        resultSb.append(byteToHexString(b[i]));
	    }
	    return resultSb.toString();
	}

    private final static String[] hexDigits = {
                                          "0", "1", "2", "3", "4", "5", "6",
                                          "7",
                                          "8", "9", "a", "b", "c", "d", "e",
                                          "f"};

}
