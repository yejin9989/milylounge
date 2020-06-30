package myPackage;
import org.jsoup.*;
import org.jsoup.nodes.*;
public class LottoNum{
	public LottoNum() {
		try {
			GetNumber();
		} catch(Exception e) {
			System.out.println("Error!");
		}
	}
	
	public void GetNumber() throws Exception{
		Document doc = Jsoup.connect("http://www.nlotto.co.kr/common.do?method=main").get();
		System.out.println(doc);
	}
}