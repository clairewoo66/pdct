package base.patient.mapper;

import base.patient.model.HospitaledCost;

/**
 * Created by zyn on 11/16/16.
 */
public interface HospitaledCostMapper {
    HospitaledCost findById(int id);
    int addEntry(HospitaledCost hospitaledCost);
    int updateEntry(HospitaledCost hospitaledCost);
}
