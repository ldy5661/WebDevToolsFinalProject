package com.neu.edu.controller;

import java.awt.Color;
import java.net.URL;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.view.document.AbstractPdfView;

import com.lowagie.text.Document;
import com.lowagie.text.Element;
import com.lowagie.text.Font;
import com.lowagie.text.Image;
import com.lowagie.text.Paragraph;
import com.lowagie.text.Phrase;
import com.lowagie.text.pdf.PdfPCell;
import com.lowagie.text.pdf.PdfPTable;
import com.lowagie.text.pdf.PdfWriter;
import com.neu.edu.pojo.User;

public class PDFView extends AbstractPdfView{
	@Override
    protected void buildPdfDocument(Map<String, Object>map, Document doc,
            PdfWriter writer, HttpServletRequest request, HttpServletResponse response)
            throws Exception {
		Map<String, Object> userData = (Map<String, Object>) map.get("userData");
		User u = (User) userData.get("user");
		
		Font helvetica_bolditalic_25 = new Font(Font.HELVETICA,25,Font.BOLDITALIC,Color.blue);
		Font times_normal_black_16 = new Font(Font.TIMES_ROMAN,16,Font.NORMAL, Color.black);
		Font times_bold_pink_20 = new Font(Font.TIMES_ROMAN,20,Font.BOLD, Color.pink);
		
		doc.add(new Paragraph("                          My Information",helvetica_bolditalic_25));
		
		PdfPTable table1 = new PdfPTable(2);
		table1.setSpacingBefore(20);
		table1.setWidthPercentage(100.0f);
		table1.setWidths(new float[] {4.0f,6.0f});
		
		PdfPCell cell1 = new PdfPCell();
		cell1.setRowspan(6);
		String path = "http://localhost:8080/edu/";		
		Image img = Image.getInstance(new URL(path+u.getFileLocation()));
		cell1.setImage(img);
		table1.addCell(cell1);

		table1.addCell(new PdfPCell(new Phrase(u.getUserName(),times_bold_pink_20)));
		table1.addCell(new PdfPCell(new Phrase(u.getGender()+" Seeking "+u.getSeekingGender(),times_normal_black_16)));
		table1.addCell(new PdfPCell(new Phrase("was born in "+u.getdOByear(),times_normal_black_16)));
		table1.addCell(new PdfPCell(new Phrase("from "+u.getCity()+", "+u.getState()+", "+u.getCountry(),times_normal_black_16)));
		table1.addCell(new PdfPCell(new Phrase("About Me",times_bold_pink_20)));
		table1.addCell(new PdfPCell(new Phrase(u.getAboutMe1(),times_normal_black_16)));
        
		doc.add(table1);
		
		
	}
}
