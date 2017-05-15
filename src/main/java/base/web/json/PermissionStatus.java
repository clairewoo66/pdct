package base.web.json;

import base.common.model.Permission;

/**
 * Created by zyn on 10/16/16.
 */
public class PermissionStatus extends Permission {
    private boolean checked;

    public boolean isChecked() {
        return checked;
    }

    public void setChecked(boolean checked) {
        this.checked = checked;
    }
}
