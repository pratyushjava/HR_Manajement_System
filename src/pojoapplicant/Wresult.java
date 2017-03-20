package pojoapplicant;

import java.io.Serializable;
import javax.persistence.*;

import java.math.BigDecimal;



@Entity
public class Wresult implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(unique=true, nullable=false, length=10)
	private String wrid;

	private String afname;

	private String alname;

	private String amname;

	private String wappered;

	private String wscore;

	private String wstatus;

	private BigDecimal wtotalmarks;
	
	@JoinColumn(name="VID")
	private String vid;

	//bi-directional many-to-one association to Applicantvacancy
   // @ManyToOne
	@JoinColumn(name="AVID")
	private String avid;

    public Wresult() {
    }

	public String getWrid() {
		return this.wrid;
	}

	public void setWrid(String wrid) {
		this.wrid = wrid;
	}

	public String getAfname() {
		return this.afname;
	}

	public void setAfname(String afname) {
		this.afname = afname;
	}

	public String getAlname() {
		return this.alname;
	}

	public void setAlname(String alname) {
		this.alname = alname;
	}

	public String getAmname() {
		return this.amname;
	}

	public void setAmname(String amname) {
		this.amname = amname;
	}

	public String getWappered() {
		return this.wappered;
	}

	public void setWappered(String wappered) {
		this.wappered = wappered;
	}

	public String getWscore() {
		return this.wscore;
	}

	public void setWscore(String wscore) {
		this.wscore = wscore;
	}

	public String getWstatus() {
		return this.wstatus;
	}

	public void setWstatus(String wstatus) {
		this.wstatus = wstatus;
	}

	public BigDecimal getWtotalmarks() {
		return this.wtotalmarks;
	}

	public void setWtotalmarks(BigDecimal wtotalmarks) {
		this.wtotalmarks = wtotalmarks;
	}

	public String getAvid() {
		return this.avid;
	}

	public void setAvid(String avid) {
		this.avid = avid;
	}

	public String getVid() {
		return vid;
	}

	public void setVid(String vid) {
		this.vid = vid;
	}
	
}