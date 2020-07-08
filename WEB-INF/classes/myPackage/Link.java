package myPackage;
import org.jsoup.*;
import org.jsoup.nodes.*;
public class Link{
	String title = "";
	String img = "";
	public Link(String Url) {
		try {
			Url = "https://blog.naver.com/pony444493/221964411696";
			SetTitleImg(Url);
			System.out.println(this.title);
			System.out.println(this.img);
		} catch(Exception e) {
			System.out.println("Error!");
		}
	}
	
	public void SetTitleImg(String Url) throws Exception{
		String Blog = "https://blog.naver.com";
		Document doc = Jsoup.connect(Url).get();
		Element main = doc.select("iframe#mainFrame").first();
		String link = main.attr("src");
		doc = Jsoup.connect(Blog + link).get();
		this.title = doc.select(".se-title-text").first().text();
		this.img = doc.select("[property=og:image]").first().attr("content");
	}
	
	public String getTitle(){
		return this.title;
	}
	
	public String getImg(){
		return this.img;
	}
}