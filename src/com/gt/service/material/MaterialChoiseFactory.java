package com.gt.service.material;

import java.util.HashMap;
import java.util.Map;

public class MaterialChoiseFactory {

	private static MaterialChoiseFactory materialChoiseFactory = null;
	private static Map<String, IMaterialFacotryService> serviceMap = new HashMap<String, IMaterialFacotryService>();

	private MaterialChoiseFactory(){};

	public static MaterialChoiseFactory getInstance() {
		if (materialChoiseFactory == null) {
			synInit();
		}
		return materialChoiseFactory;
	}
	
	private synchronized static void synInit(){
		if(materialChoiseFactory == null){
			materialChoiseFactory = new MaterialChoiseFactory();
		}
	}

	public static IMaterialFacotryService getMaterialFactoryService(String type) {
		if (serviceMap.containsKey(type)) {
			IMaterialFacotryService service = serviceMap.get(type);
			return service;
		} else {
			return null;
		}
	}

	public Map<String, IMaterialFacotryService> getServiceMap() {
		return serviceMap;
	}

	public void setServiceMap(Map<String, IMaterialFacotryService> serviceMap) {
		MaterialChoiseFactory.serviceMap = serviceMap;
	}
	
}
