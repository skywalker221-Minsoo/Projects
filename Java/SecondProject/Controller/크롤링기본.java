package com.mega.project;

import java.io.FileWriter;

import org.jsoup.Connection;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;

public class 크롤링기본 {
	public static void main(String[] args) throws Exception {
		String[] list = {"13151036", "5215088", "7030150", "9470838",
				"10742970", "6380268", "2879268", "11380467", "7030135",
				"4905041", "6168338", "7320475", "13137290", "7320475",
				"6488716", "12716867", "13162550", "10019547", "13150892",
				"6634354"};
		FileWriter f = new FileWriter("c:/Users/User/Desktop/크롤링.txt");
		for (int i = 0; i < list.length; i++) {
			Connection con = Jsoup.connect("http://shop.danawa.com/main/?controller=goods&methods="
					+ "blog&billingInternalProductSeq=" + list[i]
					+ "&productRegisterAreaGroupSeq=20&serviceSectionSeq=596");
			Document doc = con.get();
			Elements subject = doc.select("strong");
			Elements title = doc.select("th.s_tit");
			Elements inform = doc.select("td.s_info");
			Elements price = doc.select("span.prod_price");
			Elements img = doc.select("img");
			
			f.write(
					"상품명 ; " + subject.get(0).text() + "\n" +
					title.get(0).text() + " ; " + inform.get(0).text() + "\n" +
					title.get(1).text() + " ; " + inform.get(1).text() + "\n" +
					title.get(2).text() + " ; " + inform.get(2).text() + "\n" +
					title.get(3).text() + " ; " + inform.get(3).text() + "\n" +
					title.get(4).text() + " ; " + inform.get(4).text() + "\n" +
					title.get(5).text() + " ; " + inform.get(5).text() + "\n" +
					title.get(6).text() + " ; " + inform.get(6).text() + "\n" +
					title.get(7).text() + " ; " + inform.get(7).text() + "\n" +
					title.get(8).text() + " ; " + inform.get(8).text() + "\n" +
					title.get(9).text() + " ; " + inform.get(9).text() + "\n" +
					title.get(10).text() + " ; " + inform.get(10).text() + "\n" +
					"fee ; " + price.get(0).text() + "\n" +
					"img ; http:" + img.get(6).attr("src") + "\n" 
			);
		}
		f.close();
	}
}
