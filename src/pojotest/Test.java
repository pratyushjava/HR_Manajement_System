package pojotest;

import java.io.Serializable;
import javax.persistence.*;



@Entity
@Table(name="TEST")
public class Test implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(unique=true, nullable=false, length=10)
	private String qid;

	@Column(length=4000)
	private String ans;

	@Column(length=4000)
	private String options1;

	@Column(length=4000)
	private String options2;

	@Column(length=4000)
	private String options3;

	@Column(length=4000)
	private String options4;

	@Column(length=10)
	private String qtype;

	@Column(length=4000)
	private String question;

	@Column(length=10)
	private String vid;

    public Test() {
    }

	public String getQid() {
		return this.qid;
	}

	public void setQid(String qid) {
		this.qid = qid;
	}

	public String getAns() {
		return this.ans;
	}

	public void setAns(String ans) {
		this.ans = ans;
	}

	public String getOptions1() {
		return this.options1;
	}

	public void setOptions1(String options1) {
		this.options1 = options1;
	}

	public String getOptions2() {
		return this.options2;
	}

	public void setOptions2(String options2) {
		this.options2 = options2;
	}

	public String getOptions3() {
		return this.options3;
	}

	public void setOptions3(String options3) {
		this.options3 = options3;
	}

	public String getOptions4() {
		return this.options4;
	}

	public void setOptions4(String options4) {
		this.options4 = options4;
	}

	public String getQtype() {
		return this.qtype;
	}

	public void setQtype(String qtype) {
		this.qtype = qtype;
	}

	public String getQuestion() {
		return this.question;
	}

	public void setQuestion(String question) {
		this.question = question;
	}

	public String getVid() {
		return this.vid;
	}

	public void setVid(String vid) {
		this.vid = vid;
	}

}