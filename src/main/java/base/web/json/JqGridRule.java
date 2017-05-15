package base.web.json;

public class JqGridRule {
    private String field;
    private String op;//cn:like   eq:equal  mr:more  ls:less  
    private String data;
    private int type; //0:text   1:date
    
    public JqGridRule(){
    	
    }
    
    public JqGridRule(String field, String op, String data, int type){
    	this.field = field;
    	this.op = op;
    	this.data = data;
    	this.type = type;
    }

    public String getData() {
        return data;
    }

    public void setData(String data) {
        this.data = data;
    }

    public String getField() {
        return field;
    }

    public void setField(String field) {
        this.field = field;
    }

    public String getOp() {
        return op;
    }

    public void setOp(String op) {
        this.op = op;
    }

	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}
    
    
}
