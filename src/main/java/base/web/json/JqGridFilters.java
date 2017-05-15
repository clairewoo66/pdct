package base.web.json;

import java.util.List;

public class JqGridFilters {
    private String groupOp;
    private List<JqGridRule> rules;
    private List<JqGridRule> groups;
    
    public JqGridFilters(){
    	
    }
    
    public JqGridFilters(String groupOp, List<JqGridRule> rules){
    	this.groupOp = groupOp;
    	this.rules = rules;
    }

    public List<JqGridRule> getGroups() {
        return groups;
    }

    public void setGroups(List<JqGridRule> groups) {
        this.groups = groups;
    }

    public List<JqGridRule> getRules() {
        return rules;
    }

    public void setRules(List<JqGridRule> rules) {
        this.rules = rules;
    }

    public String getGroupOp() {
        return groupOp;
    }

    public void setGroupOp(String groupOp) {
        this.groupOp = groupOp;
    }
}
