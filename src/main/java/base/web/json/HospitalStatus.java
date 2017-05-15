package base.web.json;

import base.patient.model.Hospital;

/**
 * Created by zyn on 10/16/16.
 */
public class HospitalStatus extends Hospital {
    private boolean checked;

    public boolean isChecked() {
        return checked;
    }

    public void setChecked(boolean checked) {
        this.checked = checked;
    }
}
