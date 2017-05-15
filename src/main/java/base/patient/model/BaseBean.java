package base.patient.model;

import java.util.Date;

/**
 * Created by zyn on 11/14/16.
 */
public class BaseBean {
    private int id;
    private Date createDate;
    private Date updateDate;
    private int deleted;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    public Date getUpdateDate() {
        return updateDate;
    }

    public void setUpdateDate(Date updateDate) {
        this.updateDate = updateDate;
    }

    public int getDeleted() {
        return deleted;
    }

    public void setDeleted(int deleted) {
        this.deleted = deleted;
    }

    @Override
    public boolean equals(Object obj) {
        if(obj instanceof BaseBean) {
            return ((BaseBean) obj).getId()== this.getId();
        }
        return false;
    }
}

