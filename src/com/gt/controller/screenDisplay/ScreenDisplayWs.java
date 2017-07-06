package com.gt.controller.screenDisplay;

import java.io.IOException;
import java.math.BigInteger;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.concurrent.CopyOnWriteArraySet;

import javax.websocket.OnClose;
import javax.websocket.OnError;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.ServerEndpoint;

import org.apache.log4j.Logger;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import com.gt.utils.JedisUtil;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

@ServerEndpoint(value = "/html/79B4DE7C/screendisplay.do")
@Component
public class ScreenDisplayWs {
	
    public static CopyOnWriteArraySet<ScreenDisplayWs> webSocketSet = new CopyOnWriteArraySet<ScreenDisplayWs>();
    
    private static List<String> tikuseto = new ArrayList<String>();

    Logger log = Logger.getLogger(getClass());
    
    private Session session;
    
    @SuppressWarnings("unused")
	private int i = 0;
    
    public ScreenDisplayWs() {
    	tikuseto.add("江北");
    	tikuseto.add("临清");
    	tikuseto.add("昌平");
    	tikuseto.add("浦东");
    	tikuseto.add("三明");
    	tikuseto.add("惠州");
    	tikuseto.add("广州");
	}

    @OnOpen
    public void onOpen(Session session){
    	System.out.println("onOpen");
    	webSocketSet.add(this);
    	this.session = session;
    }

    @OnClose
    public void onClose(){
    	System.out.println("onClose");
        webSocketSet.remove(this);
    }

	@OnMessage
    public void onMessage(String message, Session session) {
    	if("clientConnect".equals(message)){
    		/*for(ScreenDisplayControllor item : webSocketSet){
    			try {
    				item.sendMessage(message);
    			} catch (IOException e) {
    				e.printStackTrace();
    				continue;
    			}
    		}*/
    		try {
    			String now = new SimpleDateFormat("yyyyMMdd").format(System.currentTimeMillis());
    			String result = JedisUtil.get("ScreenDisplay:" + now);
    			Map<String, Object> resultMap = new HashMap<String, Object>();
    			resultMap.put("isInitial", true);
    			resultMap.put("data", JSONObject.fromObject(result));
				this.sendMessage(JSONObject.fromObject(resultMap).toString());
			} catch (IOException e) {
				e.printStackTrace();
			}
    	}
    }

    @OnError
    public void onError(Session session, Throwable error){
        System.out.println("onError");
        System.out.println(error.getMessage());
        log.error("ScreenDisplayWs--"+error.getMessage(), error);
        error.printStackTrace();
    }
    
    
    @SuppressWarnings({ "unchecked", "rawtypes" })
	@Scheduled(cron = "0/5 * * * * ?")  
    public void sendMessageVerSecond() throws Exception{
    	int pp1 = 0;
    	int pp2 = 0;
    	int peak = 0;	//粉丝同时在线数
    	long veiws = 0;	//当前访问量
    	long mint = 0;
    	int currentNumberOfMembers = Integer.valueOf(JedisUtil.get("ScreenDisplay:agentCount")) * 998;	//当前会员数
    	String agentCount = JedisUtil.get("ScreenDisplay:agentCount");	//总代理商数
    	String daysCount = "";	//今日新增商户数
    	String total = "";	//总商户数
    	List<Map> maps = ((List<Map>) JSONArray.toCollection(JSONArray.fromObject(JedisUtil.get("ScreenDisplay:map")), Map.class));
    	if(webSocketSet.size() > 0){
//    	int fansOnlineNumber = ran(1800000, 3000000);	//粉丝同时在线数
//    	int currentTraffic = fansOnlineNumber * 7;	//当前访问量
    		long now = System.currentTimeMillis();
    		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    		SimpleDateFormat sdf2 = new SimpleDateFormat("yyyy-MM-dd ");
    		
    		/*-----------------------------------------*/
    		List<Map> polys = ((List<Map>) JSONArray.toCollection(JSONArray.fromObject(JedisUtil.get("ScreenDisplay:polyline")), Map.class));
    		for(Map poly : polys){
    			long tempt = sdf.parse(poly.get("nowtime").toString()).getTime();
    			if(now > tempt){
    				pp1 = Integer.valueOf(poly.get("peak").toString());
    				peak = Integer.valueOf(poly.get("peak").toString());
    				mint = sdf.parse(poly.get("nowtime").toString()).getTime();
    			}
    			if(now < tempt){
    				pp2 = Integer.valueOf(poly.get("peak").toString());
    				break;
    			}
    		}
    		int temppp = pp2 - pp1;
    		double kakuritsu = (now - mint) / (4 * 60 * 60 * 1000.0);
    		if(temppp > 0){
    			peak += new Double(temppp * kakuritsu).intValue();
    			veiws = peak * 7;
    		}
    		if(temppp < 0){
    			peak -= new Double(temppp * kakuritsu).intValue();
    			veiws = peak * 7;
    		}
    		/*-----------------------------------------*/
    		
    		String jsonStr = JedisUtil.get("busCount");
    		if(jsonStr != null){
    			JSONObject j = JSONObject.fromObject(jsonStr);
    			total = j.getString("total");
    			daysCount = j.getString("daysCount");
    		}else{
    			total = 10096+"";
    			daysCount = 211+"";
    		}
    		
    		/*-----------------------------------------*/
    		String ima = sdf2.format(now);
    		long mae = sdf.parse(ima + "12:00:00").getTime();
    		long ato = sdf.parse(ima + "13:30:00").getTime();
    		long mae2 = sdf.parse(ima + "14:00:00").getTime();
    		long ato2 = sdf.parse(ima + "15:30:00").getTime();
    		long mae3 = sdf.parse(ima + "17:00:00").getTime();
    		long ato3 = sdf.parse(ima + "20:00:00").getTime();
    		for(Map m : maps){
    			int sujitsu = 0;
    			if( ((now > mae && now < ato) || (now > mae2 && now < ato2) || (now > mae3 && now < ato3)) && 
    					(tikuseto.contains(m.get("name").toString())) ) 
    				sujitsu = 50;
    			m.put("value", (Integer.valueOf(m.get("value").toString()) * Math.random()) + sujitsu);
    		}
    	}
		/*-----------------------------------------*/
    	
    	for(ScreenDisplayWs item : webSocketSet){
    		try {
    			item.sendMessage("{\"isInitial\" : false, \"data\" : {\"peak\" : \""+peak+"\", \"veiws\" : \""+
    					veiws+"\", \"currentNumberOfMembers\" : \""+currentNumberOfMembers+"\", \"agentCount\" : \""+
    					agentCount+"\", \"daysCount\" : \""+daysCount+"\", \"total\" : \""+total+"\", "
    					+"\"todayOrderNumber\" : \"\", \"TONprice\" : \"\", \"maps\" : "+JSONArray.fromObject(maps).toString()+", \"susume\" : false}}");
    		} catch (IOException e) {
    			e.printStackTrace();
    			continue;
    		}
    	}
    }
    
    @Scheduled(cron = "0 0/5 * * * ?")  
    public void sendMessageVerMinute() throws IOException{
    	String t = null;
    	double TONprice = 0.0;
    	if(webSocketSet.size() > 0){
    		t = JedisUtil.get("ScreenDisplay:TON");	//今日订单数
    		if(t == null || Integer.valueOf(t) > 18000){
    			int tt = ran(8000, 10000);
    			t = tt + "";
    		}else{
    			t = Integer.valueOf(t) + ran(3, 5) + "";
    		}
    		JedisUtil.set("ScreenDisplay:TON", t);
    		TONprice = Integer.valueOf(t) * (109.99);	//今日交易金额
    	}
    	for(ScreenDisplayWs item : webSocketSet){
    		try {
    			item.sendMessage("{\"isInitial\" : false, \"data\" : {\"peak\" : \"\", \"veiws\" : \""
    					+"\", \"currentNumberOfMembers\" : \"\", \"agentCount\" : \""
    					+"\", \"daysCount\" : \"\", \"total\" : \"\", "
    					+"\"todayOrderNumber\" : \"" + t + "\", \"TONprice\" : \"" + new DecimalFormat("#.00").format(TONprice) + "\", \"maps\" : \"\", \"susume\" : false}}");
    		} catch (IOException e) {
    			e.printStackTrace();
    			continue;
    		}
    	}
    }
    
    @Scheduled(cron = "0 0/30 * * * ?")  
    public void sendMessageVer2Hour() throws IOException{
    	for(ScreenDisplayWs item : webSocketSet){
    		try {
    			item.sendMessage("{\"isInitial\" : false, \"data\" : {\"peak\" : \"\", \"veiws\" : \""
    					+"\", \"currentNumberOfMembers\" : \"\", \"agentCount\" : \""
    					+"\", \"daysCount\" : \"\", \"total\" : \"\", "
    					+"\"todayOrderNumber\" : \"\", \"TONprice\" : \"\", \"maps\" : \"\", \"susume\" : true}}");
    		} catch (IOException e) {
    			e.printStackTrace();
    			continue;
    		}
    	}
    }

    public void sendMessage(String message) throws IOException{
        this.session.getBasicRemote().sendText(message);
        //this.session.getAsyncRemote().sendText(message);
    }
    
    public int ran(int min, int max){
        Random random = new Random();
        int s = Math.abs(random.nextInt()) % (max-min+1) + min;
        return s;
	}
    
    public static void main(String[] args) {
    	System.out.println("999999999999999999999999999999999999999999999".length());
    	System.out.println("999999999999999999999999999999999999999999999".length());
    	
    	
    	ListNode l0 = new ListNode(1);
    	ListNode l1 = new ListNode(7);
    	ListNode l4 = new ListNode(3);
    	l1.next = l4;
    	l0.next = l1;
    	ListNode l2 = new ListNode(8);
    	ListNode l3 = new ListNode(4);
    	ListNode l5 = new ListNode(5);
    	l2.next = l5;
    	l3.next = l2;
    	
    	ListNode LN = addList2(l0, l3);
    	while (true) {
    		System.out.print(LN.val + "->");
    		LN = LN.next;
    		if(LN.next == null){
    			System.out.print(LN.val + "->");
    			System.out.println("null");
    			break;
    		}
		}
	}
    
    public static ListNode addList2(ListNode l1, ListNode l2) {
    	ListNode _l1 = l1.next, _l2 = l2.next;
    	String a = l1.val + "", b = l2.val + "";
    	while (_l1 != null) {
    		a += _l1.val;
    		_l1 = _l1.next;
		}
    	while (_l2 != null) {
    		b += _l2.val;
    		_l2 = _l2.next;
    	}
    	BigInteger b1 = new BigInteger(a);
    	BigInteger b2 = new BigInteger(b);
    	String[] l = b1.add(b2).toString().split("");
    	ListNode ln = null;
    	for(int i=(l.length-1);i>-1;i--){
    		if(!"".equals(l[i])){
    			ListNode _ln = ln;
    			ln = new ListNode(Integer.valueOf(l[i]));
    			ln.next = _ln;
    		}
    	}
    	if(ln != null && !"".equals(l[0])) 
    		ln.val = Integer.valueOf(l[0]);
		return ln;
	}
    
}

class ListNode {
	int val;
	ListNode next;
	ListNode(int x) {
		val = x;
		next = null;      
	}
}