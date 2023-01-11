package xyz.itwill.dto;

//create table suggest(word varchar(50) primary key, url varchar2(100));

public class SuggestDTO {
	private String word;
	private String url;
	
	public SuggestDTO() {
		// TODO Auto-generated constructor stub
	}

	public String getWord() {
		return word;
	}

	public void setWord(String word) {
		this.word = word;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}
}
