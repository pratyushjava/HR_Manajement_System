package action;

import com.opensymphony.xwork2.Action;

public class HandlerAction implements Action{

    private String isORIGINATORSet = "false";

    private String isEVALUATORSet = "false";

    private String isEXECUTORSet = "false";

    private String[] authority;

    @Override
    public String execute() throws Exception {


    	for(String s : authority){

    		if(s.equals("ORIGINATOR"))
    			isORIGINATORSet = "true";
    		if(s.equals("EVALUATOR"))
    			isEVALUATORSet = "true";
    		if(s.equals("EXECUTOR"))
    			isEXECUTORSet = "true";
    	}

    	return Action.SUCCESS;
    }

    public void setAuthority(String[] authority){

    	this.authority = authority;
    }

    public String getIsORIGINATORSet(){

    	return this.isORIGINATORSet;
    }

    public String getIsEVALUATORSet(){

    	return this.isEVALUATORSet;
    }

    public String getIsEXECUTORSet(){

    	return this.isEXECUTORSet;
    }
}
