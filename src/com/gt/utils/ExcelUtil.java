package com.gt.utils;

import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;
import java.util.regex.Pattern;

import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.Font;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.ss.util.CellRangeAddress;
import org.apache.poi.xssf.usermodel.XSSFCellStyle;

import com.gt.model.CooperationApply;

public class ExcelUtil {

	/**
	 * 构建一个工作簿
	 * @param cooList
	 * @return
	 */
	public static HSSFWorkbook exportExcelForCoo(List<CooperationApply> cooList) { // 创建excel文件对象
		HSSFWorkbook wb = new HSSFWorkbook();
		// 创建一个张表
		Sheet sheet = wb.createSheet();
		// 创建第一行
		Row row = sheet.createRow(0);
		//设置行高
		row.setHeight((short)500); 
		// 创建第二行
		Row row1 = sheet.createRow(1);
		
		//设置没列的宽度
		sheet.setColumnWidth((short)(2), (short)4000);
		sheet.setColumnWidth((short)(3), (short)5000);
		sheet.setColumnWidth((short)(4), (short)5000);
		sheet.setColumnWidth((short)(5), (short)5000);
		sheet.setColumnWidth((short)(6), (short)8000);
		sheet.setColumnWidth((short)(7), (short)8000);
		// 文件头字体
		Font font0 = createFonts(wb, Font.BOLDWEIGHT_BOLD, "宋体", false,
				(short) 200);
		Font font1 = createFonts(wb, Font.BOLDWEIGHT_NORMAL, "宋体", false,
				(short) 200);
		// 合并第一行的单元格
		sheet.addMergedRegion(new CellRangeAddress(0, 0, 1, 6));
		// 设置第一列的文字
		createCell(wb, row, 1, "授权服务商申请人基本信息", font0);
		// 合并第一行的2列以后到8列（不包含第二列）
		/*sheet.addMergedRegion(new CellRangeAddress(0, 0, 1, 7));
		// 设置第二列的文字
		createCell(wb, row,0, "授权服务商申请人基本信息", font0);*/
		// 给第二行添加文本
		createCell(wb, row1, 0, "序号", font1);
		createCell(wb, row1, 1, "姓名", font1);
		createCell(wb, row1, 2, "手机", font1);
		createCell(wb, row1, 3, "邮箱", font1);
		createCell(wb, row1, 4, "QQ", font1);
		createCell(wb, row1, 5, "公司", font1);
		createCell(wb, row1, 6, "地址", font1);
		// 第三行表示
		int l = 2;
		// 这里将学员的信心存入到表格中
		for (int i = 0; i < cooList.size(); i++) {
			// 创建一行
			Row rowData = sheet.createRow(l++);
			CooperationApply coo = cooList.get(i);
			createCell(wb, rowData, 0, String.valueOf(i + 1), font1);
			createCell(wb, rowData, 1, coo.getCooName(), font1);
			createCell(wb, rowData, 2, coo.getCooPhone(), font1);
			createCell(wb, rowData, 3, coo.getCooEmail(), font1);
			createCell(wb, rowData, 4, coo.getCooQQ(), font1);
			createCell(wb, rowData, 5, coo.getCooCompany(), font1);
			createCell(wb, rowData, 6, coo.getCooAddress(), font1);
		}
		return wb;
	}

	/**
	 * 创建单元格并设置样式,值
	 * 
	 * @param wb
	 * @param row
	 * @param column
	 * @param
	 * @param
	 * @param value
	 */
	public static void createCell(Workbook wb, Row row, int column,
			String value, Font font) {
		Cell cell = row.createCell(column);
		cell.setCellValue(value);
		CellStyle cellStyle = wb.createCellStyle();
		cellStyle.setAlignment(XSSFCellStyle.ALIGN_CENTER);
		cellStyle.setVerticalAlignment(XSSFCellStyle.VERTICAL_BOTTOM);
		cellStyle.setFont(font);
		cell.setCellStyle(cellStyle);
	}

	/**
	 * 设置字体
	 * 
	 * @param wb
	 * @return
	 */
	public static Font createFonts(Workbook wb, short bold, String fontName,
			boolean isItalic, short hight) {
		Font font = wb.createFont();
		font.setFontName(fontName);
		font.setBoldweight(bold);
		font.setItalic(isItalic);
		font.setFontHeight(hight);
		return font;
	}

	/**
	 * 判断是否为数字
	 * 
	 * @param str
	 * @return
	 */
	public static boolean isNumeric(String str) {
		if (str == null || "".equals(str.trim()) || str.length() > 10)
			return false;
		Pattern pattern = Pattern.compile("^0|[1-9]\\d*(\\.\\d+)?$");
		return pattern.matcher(str).matches();
	}
	
	/***
	 * 写exce文件
	 * @param work
	 * @param path
	 * @return
	 */
	public static boolean writeHSSFWorkbook(HSSFWorkbook work,String path){
		boolean b = true;
		FileOutputStream fileOut = null;
		try {
			fileOut = new FileOutputStream(path);
			work.write(fileOut);
			fileOut.close();
		} catch (IOException e) {
			b = false;
			e.printStackTrace();
		}
		return b;
	}
	
}
