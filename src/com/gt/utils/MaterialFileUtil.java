package com.gt.utils;

import java.io.File;

public class MaterialFileUtil {

	/**
	 * 获取文件大小限制
	 * @param size 限制的大小（单位M）
	 * @return
	 */
	public static int getFileSizeLimit(int size){
		return 1024 * 1024 * size;
	}
	
	/**
	 * 根据路径删除文件
	 * @param path
	 * @return
	 */
	public static boolean delFileByPath(String path){
		try {
			File file=new File(path);
			return file.delete();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	
}
