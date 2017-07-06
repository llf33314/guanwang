package com.gt.service;

import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

import javax.annotation.PostConstruct;
import javax.servlet.http.HttpSession;

import com.cloopen.rest.sdk.CCPRestSDK;

public class SMSService{
	
	/** 成功响应码 */
	public static String SUCCESS = "000000";
	/** 语音验证 播报次数 */
	public static String CALLBACK_TIMES = "3";

	private String serverIP="sandboxapp.cloopen.com"; // 验证平台接口地址
	
	private String serverPort="8883"; // 验证平台接口端口
	
	private String accountSid="aaf98f894e3e5b81014e4dcb15480f93"; // SID
	
	private String accountToken="346b4bc227364a5e8eb1c92dc1fed7a3"; // token

	private String appId="8a48b5514e3e5862014e4dcb779f0e98"; // app Id

	/** 短信接口 */
	private CCPRestSDK restAPI = null;
	
	// 发送类型
	public static final int SENDTYPE_SMS = 0; // 短信
	public static final int SENDTYPE_VOICE = 1; // 电话

	// 短信类型
	/** 注册模板*/
	public static final int MESSAGETYPE_REGISTER = 51072; 
	/** 忘记密码模板*/
	public static final int MESSAGETYPE_RESET_PASSWORD = 51072;
	/** 修改手机号模板*/
	public static final int MESSAGETYPE_MODIFY_PHONE = 51072; 
	/** 修改密码*/
	public static final int MESSAGETYPE_MODIFY_PASSWORD = 51072; 
	/** 商家*/
	public static final int USERTYPE_BUSINESS = 0;
	/** 用户*/
	public static final int USERTYPE_USER = 1;
	

	public Boolean sendVerifyCode(String phone, int eTime, int sType, int mType, HttpSession session, int uType) {
		// 生成验证吗
		String code = "154878";//GTUtils.securityCode(6);
		/*if(StringUtils.isEmpty(code)){
			return Response.GetInstanceError(GTMessage.CODE_VERIFYCODE_GEN_ERROR);
		}*/
		// mtype是修改密码或者更换手机号 获取用户密码
		
		mType=51072;
		// 发送信息
		boolean flag = false;
		if(sType == SENDTYPE_VOICE){ // 语音验证
			flag = sendVoice(phone, code);
		}else{ 						// 短信验证
			flag = sendMessage(phone, mType, code, eTime);
		}
		// 短信发送失败
		if(!flag){
			return flag;
		}
		try {
			// 保存数据库
			Calendar calendar = Calendar.getInstance();
			Date cDate = calendar.getTime();
			calendar.add(Calendar.MINUTE, eTime);
			Date eDate = calendar.getTime();
			/*SMS sms = new SMS();
			sms.setCode(code);
			sms.setPhone(phone);
			sms.setStype(sType + "");
			sms.setVtype(mType + "");
			sms.setCtime(cDate);
			sms.setEtime(eDate);
			
			smsMapper.insertSelective(sms);*/
			// 保存到sesson
			if(uType == USERTYPE_BUSINESS){
				//session.setAttribute(CommonConst.SESSION_BUSINESS_CODE , sms);
			}else{
				//session.setAttribute(CommonConst.SESSION_USER_CODE, sms);
			}
		} catch (Exception e) {
			return false;
		}
		
		return true;
	}

	public boolean sendMessage(String phone, int templateId, String code,
			int eTime) {
		// 初始化
		HashMap<String, Object> result = restAPI.sendTemplateSMS(phone,
				templateId + "", new String[] { code, eTime + "" });
		return resolveResult(result);
	}

	public boolean sendVoice(String phone, String code) {
		HashMap<String, Object> result = restAPI.voiceVerify(code, phone, "",
				CALLBACK_TIMES, "");
		return resolveResult(result);
	}

	/**
	 * 处理验证平台相应接口
	 * 
	 * @param param
	 * @return
	 */
	private boolean resolveResult(Map<String, Object> param) {
		if (SUCCESS.equals(param.get("statusCode"))) {
			// 正常返回输出data包体信息（map）
			@SuppressWarnings("unchecked")
			HashMap<String, Object> data = (HashMap<String, Object>) param
					.get("data");
			Set<String> keySet = data.keySet();
			return true;
		}
		return false;
	}

	@PostConstruct
	public void init(){
		restAPI = new CCPRestSDK();
		restAPI.init(serverIP, serverPort); // 初始化服务器地址和端口，格式如下，服务器地址不需要写https://
		restAPI.setAccount(accountSid, accountToken); // 初始化主帐号名称和主帐号令牌
		restAPI.setAppId(appId); // 初始化应用ID
	}
}
