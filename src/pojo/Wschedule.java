package pojo;

import java.io.Serializable;
import javax.persistence.*;
import java.util.Date;


/**
 * The persistent class for the WSCHEDULE database table.
 * 
 */
@Entity
public class Wschedule implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private String wscid;

    @Temporal( TemporalType.DATE)
	private Date dowresult;

    @Temporal( TemporalType.DATE)
	private Date dowritten;

	private String eid;

	private String vid;

	private String wplace;

	private String wtime;

    public Wschedule() {
    }

	public String getWscid() {
		return this.wscid;
	}

	public void setWscid(String wscid) {
		this.wscid = wscid;
	}

	public Date getDowresult() {
		return this.dowresult;
	}

	public void setDowresult(Date dowresult) {
		this.dowresult = dowresult;
	}

	public Date getDowritten() {
		return this.dowritten;
	}

	public void setDowritten(Date dowritten) {
		this.dowritten = dowritten;
	}

	public String getEid() {
		return this.eid;
	}

	public void setEid(String eid) {
		this.eid = eid;
	}

	public String getVid() {
		return this.vid;
	}

	public void setVid(String vid) {
		this.vid = vid;
	}

	public String getWplace() {
		return this.wplace;
	}

	public void setWplace(String wplace) {
		this.wplace = wplace;
	}

	public String getWtime() {
		return this.wtime;
	}

	public void setWtime(String wtime) {
		this.wtime = wtime;
	}

}