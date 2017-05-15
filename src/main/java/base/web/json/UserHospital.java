package base.web.json;

import java.util.List;

/**
 * Created by zyn on 10/16/16.
 */
public class UserHospital {
    private int userId;
    private String titleName;
    private List<HospitalStatus> list;

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getTitleName() {
        return titleName;
    }

    public void setTitleName(String titleName) {
        this.titleName = titleName;
    }

    public List<HospitalStatus> getList() {
        return list;
    }

    public void setList(List<HospitalStatus> list) {
        this.list = list;
    }
}
