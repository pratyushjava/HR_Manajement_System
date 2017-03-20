package pojo;

import java.io.Serializable;
import javax.persistence.*;



@Entity
@Table(name="IRESULT")
public class Iresult implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(unique=true, nullable=false, precision=10)
	private long irid;

	@Column(length=50)
	private String afname;

	@Column(length=10)
	private String aid;

	@Column(length=50)
	private String alname;

	@Column(length=50)
	private String amname;

	@Column(length=50)
	private String istatus;

	@Column(length=10)
	private String vid;

    public Iresult() {
    }

	public long getIrid() {
		return this.irid;
	}

	public void setIrid(long irid) {
		this.irid = irid;
	}

	public String getAfname() {
		return this.afname;
	}

	public void setAfname(String afname) {
		this.afname = afname;
	}

	public String getAid() {
		return this.aid;
	}

	public void setAid(String aid) {
		this.aid = aid;
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

	public String getIstatus() {
		return this.istatus;
	}

	public void setIstatus(String istatus) {
		this.istatus = istatus;
	}

	public String getVid() {
		return this.vid;
	}

	public void setVid(String vid) {
		this.vid = vid;
	}

}