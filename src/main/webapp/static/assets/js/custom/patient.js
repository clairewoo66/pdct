function setupDataFollowup(patient) {
    var commenArea = 0;
    var societyArea = 0;
    $('#patientIdField').val(patient.id);
    $('#fkhospitalid').val(patient.fkhospitalid);
    //填充第一页数据
    $("input[name=gender][value='" + patient.gender + "']").prop("checked", true);
    if (patient.gender==0){
        $('.checkValXB').show();
    }
    $("input[name=nation][value='" + patient.nation + "']").prop("checked", true);
    if (patient.nation==0){
        $('.checkValMZ').show();
    }
    $("input[name=smokingStatus][value='" + patient.smokingStatus + "']").prop("checked", true);
    if (patient.smokingStatus==0){
        $('.checkValXY').show();
    }
    $("input[name=drinkStatus][value='" + patient.drinkStatus + "']").prop("checked", true);

    if (patient.drinkStatus==0){
        $('.checkValYJ').show();
    }

    $('#place').select2('val', patient.place);
    $('#ecogMark').select2('val', patient.ecogMark);
    $('#birthday').val(patient.birthday);
    $('#maritalStatus').select2('val', patient.maritalStatus);
    $('#eduLevel').select2('val', patient.eduLevel);
    $('#jobStatus').select2('val', patient.jobStatus);
    $('#familyIncome').select2('val', patient.familyIncome);
    $('#insuranceType').select2('val', patient.insuranceType);
    if (patient.nation != 1) {
        $('#nationOther').val(patient.nationOther);
    }
    $('#height').val(patient.height);
    $('#weight').val(patient.weight);
    $('#bodysurfacearea').val(patient.bodysurfacearea);
    $('#karnofskyMark').val(patient.karnofskyMark);
    if (patient.insuranceType == 6) {
        $('#otherInsuranceLabel').show();
        $('#otherInsurance').show();
        $('#otherInsurance').val(patient.otherInsurance);
    }
    //填充第一页数据
    //填充第二页数据
    if (patient.diagnosisInfo) {
        var diagnosisInfo = patient.diagnosisInfo;
        $('#diagnosisInfoId').val(diagnosisInfo.id);
        $('#diagnosisDate').val(diagnosisInfo.diagnosisDate);
        $("input[name=invasionDiagnosis][value='" + diagnosisInfo.invasionDiagnosis + "']").prop("checked", true);
        $("input[name=clinicTypeDS][value='" + diagnosisInfo.clinicTypeDS + "']").prop("checked", true);
        $("input[name=clinicTypeISS][value='" + diagnosisInfo.clinicTypeISS + "']").prop("checked", true);
        $("input[name=diagnosisImmunoglobulinIgg][value='" + diagnosisInfo.diagnosisImmunoglobulinIgg + "']").prop("checked", true);
        $("input[name=diagnosisImmunoglobulinIga][value='" + diagnosisInfo.diagnosisImmunoglobulinIga + "']").prop("checked", true);
        $("input[name=diagnosisImmunoglobulinIgm][value='" + diagnosisInfo.diagnosisImmunoglobulinIgm + "']").prop("checked", true);
        $("input[name=diagnosisImmunoglobulinIgd][value='" + diagnosisInfo.diagnosisImmunoglobulinIgd + "']").prop("checked", true);
        $("input[name=diagnosisImmunoglobulinIge][value='" + diagnosisInfo.diagnosisImmunoglobulinIge + "']").prop("checked", true);
        $("input[name=diagnosisImmunoglobulinLightChain][value='" + diagnosisInfo.diagnosisImmunoglobulinLightChain + "']").prop("checked", true);
        if (diagnosisInfo.diagnosisDate == '' || diagnosisInfo.invasionDiagnosis == 0 || diagnosisInfo.clinicTypeDS == 0 || diagnosisInfo.clinicTypeISS == 0 || diagnosisInfo.diagnosisImmunoglobulinIgg == 0) {
            $('.diagnosisCheck3').show();
        } else {
            $('.diagnosisCheck3').hide();
        }
        $("#diagnosisImmunoglobulinDoubleClone").prop("checked", diagnosisInfo.diagnosisImmunoglobulinDoubleClone == 1);/*
        $("#diagnosisImmunoglobulinSecretion").prop("checked", diagnosisInfo.diagnosisImmunoglobulinSecretion == 1);
        $("#diagnosisImmunoglobulinEvaluate").prop("checked", diagnosisInfo.diagnosisImmunoglobulinEvaluate == 1);*/

        if (diagnosisInfo.diagnosisComplicationStatuses) {
            diagnosisInfo.diagnosisComplicationStatuses.forEach(function (entry, index) {
                if (entry.item == '' || entry.result == 0) {
                    $('.diagnosisCheck4').show();
                }
                if (entry.index <= 10) {
                    if(entry.index==5&&entry.result==1) {
                        $('#trSTX').show();
                    }
                    if(entry.index==6&&entry.result==1) {
                        $('#diagnosisSTXTimeDiv').show();
                        $('#diagnosisSTXTime').val(diagnosisInfo.diagnosisSTXTime);
                    }
                    $('#BFZTable tbody').find("tr").eq(entry.index - 1).attr('data-id', entry.id);
                    $('#BFZTable tbody').find("tr").eq(entry.index - 1).find("td").eq(1).find('input[type="radio"][value="' + entry.result + '"]').prop("checked", true);
                } else {
                    var length = $('#BFZTable tbody').find('tr').length+1;
                    var element = $('<tr data-id="' + entry.id + '" data-index="' + length + '"></tr>');
                    element.append($('<td>其他:&nbsp;<input type="text" value="' + entry.item + '" type="text"style="width: 300px;"/></td>'));
                    element.append($('<td><label><input value="1" type="radio" class="ace" name="BFZTableTr'+length+'" /> <span class="lbl">是</span> ' +
                    '</label></td>'));
                    if (entry.index == 11) {
                        element.append($(' <td><a style="cursor: pointer;" id="addBFZbtn"><i class="ace-icon fa fa-plus-circle"></i>新增</a></td>'));
                        $('#BFZTable tbody').append(element);

                        $('#addBFZbtn').on('click', function () {
                            var length = $('#BFZTable tbody').find('tr').length+1;
                            var element = $('<tr data-id="0" data-index="' + length + '"></tr>');
                            element.append($('<td>其他:&nbsp;<input type="text" type="text"style="width: 300px;"/></td>'));
                            element.append($('<td><label><input value="1" type="radio" class="ace" name="BFZTableTr'+length+'" /> <span class="lbl">是</span> ' +
                            '</label></td>'));
                            element.append($('<td><a style="cursor: pointer;color:red" onclick="$(this).parent().parent().remove()"><i class="ace-icon fa fa-close"></i>删除</a></td>'));
                            $('#BFZTable tbody').append(element);
                        });
                    } else {
                        element.append($('<td><a style="cursor: pointer;color:red" onclick="$(this).parent().parent().remove()"><i class="ace-icon fa fa-close"></i>删除</a></td>'));
                        $('#BFZTable tbody').append(element);
                    }
                    $('#BFZTable tbody').find('input[name="BFZTableTr' + length + '"][value="' + entry.result + '"]').prop("checked", true);
                }
            });
            if (diagnosisInfo.diagnosisComplicationStatuses.length <= 10) {
                var element = $('<tr data-id="0" data-index="11"></tr>');
                element.append($('<td>其他:&nbsp;<input type="text" type="text"style="width: 300px;"/></td>'));
                element.append($('<td><label><input value="1" type="radio" class="ace" name="BFZTableTr'+diagnosisInfo.diagnosisComplicationStatuses.length+
                '" /> <span class="lbl">是</span> ' + '</label> <label> <input value="2" type="radio" class="ace" name="BFZTableTr'+
                diagnosisInfo.diagnosisComplicationStatuses.length+'"/> <span class="lbl">否</span> </label></td>'));
                element.append($(' <td><a style="cursor: pointer;" id="addBFZbtn"><i class="ace-icon fa fa-plus-circle"></i>新增</a></td>'));
                $('#BFZTable tbody').append(element);
                $('#addBFZbtn').on('click', function () {
                    var length = $('#BFZTable tbody').find('tr').length+1;
                    var element = $('<tr data-id="0" data-index="' + length + '"></tr>');
                    element.append($('<td>其他:&nbsp;<input type="text" type="text"style="width: 300px;"/></td>'));
                    element.append($('<td><label class=" "><input value="1" type="radio" class="ace" name="BFZTableTr' + length +
                    '" /> <span class="lbl">是</span></label></td>'));
                    element.append($('<td><a style="cursor: pointer;color:red" onclick="$(this).parent().parent().remove()"><i class="ace-icon fa fa-close"></i>删除</a></td>'));
                    $('#BFZTable tbody').append(element);
                });
            }
        }else{
            $('.diagnosisCheck4').show();
        }
        /////////////////////////////////////////////////////////////////////////////////////////////
        if (diagnosisInfo.diagnosisComplicationItems) {
            diagnosisInfo.diagnosisComplicationItems.forEach(function (entry, index) {
                if (entry.name == '' || entry.diagnosisDate == '') {
                    $('.diagnosisCheck5').show();
                }
                if (entry.index == 1) {
                    $('#historyTable tbody').find("tr").eq(0).attr("data-id", entry.id);
                    $('#historyTable tbody').find("tr").eq(0).find('td').eq(0).find('input').val(entry.name);
                    // $('#historyTable tbody').find("tr").eq(0).find('td').eq(1).find('input').val(entry.diagnosisDate);
                } else {
                    var element = $('<tr data-id="' + entry.id + '" data-index="' + entry.index + '"></tr>');
                    element.append($('<td><input type="text" style="width:265px;" name="name" value="' + entry.name + '"/></td>'));
                    // element.append($('<td><div class="input-group"><span class="input-group-addon"><i class="ace-icon fa fa-calendar"></i></span><input type="text" name="historyDay' + entry.index + '" value="' + entry.diagnosisDate + '" class="form-control dataDay" style="width:265px"/></div></td>'));
                    element.append($('<td><a style="cursor: pointer;color:red" onclick="$(this).parent().parent().remove()"><i class="ace-icon fa fa-close"></i>删除</a></td>'));
                    $('#historyTable tbody').append(element);
                }
            });
        } else{
            $('.diagnosisCheck5').show();
        }
        if (diagnosisInfo.diagnosisLaboratoryExamination) {
            var diagnosisLaboratoryExamination = diagnosisInfo.diagnosisLaboratoryExamination;

            $('#diagnosisLaboratoryExaminationId').val(diagnosisLaboratoryExamination.id);
            $("input[name=diagnosisExaminationXueStatus][value='" + diagnosisLaboratoryExamination.diagnosisExaminationXueStatus + "']").prop("checked", true);
            if (diagnosisLaboratoryExamination.diagnosisExaminationXueStatus == 1) {
                if (diagnosisLaboratoryExamination.diagnosisExaminationXIgg == 0 ||
                    diagnosisLaboratoryExamination.diagnosisExaminationXIga == 0 ||
                    diagnosisLaboratoryExamination.diagnosisExaminationXIgm == 0 ||
                    diagnosisLaboratoryExamination.diagnosisExaminationXIge == 0 ||
                    diagnosisLaboratoryExamination.diagnosisExaminationXIgd == 0 ||
                    diagnosisLaboratoryExamination.diagnosisExaminationXkLightChain == 0 ||
                    diagnosisLaboratoryExamination.diagnosisExaminationXkLightChain == 0) {
                    $('.diagnosisCheck6').show();
                }
                $('#trdiagnosisExaminationXIgg').show();
                $('#trdiagnosisExaminationXIga').show();
                $('#trdiagnosisExaminationXIgm').show();
                $('#trdiagnosisExaminationXIge').show();
                $('#trdiagnosisExaminationXIgd').show();
                $('#trdiagnosisExaminationXkLightChain').show();
                $('#trdiagnosisExaminationXnLightChain').show();
            }
            $("input[name=diagnosisExaminationXIgg][value='" + diagnosisLaboratoryExamination.diagnosisExaminationXIgg + "']").prop("checked", true);
            $("input[name=diagnosisExaminationXIga][value='" + diagnosisLaboratoryExamination.diagnosisExaminationXIga + "']").prop("checked", true);
            $("input[name=diagnosisExaminationXIgm][value='" + diagnosisLaboratoryExamination.diagnosisExaminationXIgm + "']").prop("checked", true);
            $("input[name=diagnosisExaminationXIge][value='" + diagnosisLaboratoryExamination.diagnosisExaminationXIge + "']").prop("checked", true);
            $("input[name=diagnosisExaminationXIgd][value='" + diagnosisLaboratoryExamination.diagnosisExaminationXIgd + "']").prop("checked", true);
            $("input[name=diagnosisExaminationXkLightChain][value='" + diagnosisLaboratoryExamination.diagnosisExaminationXkLightChain + "']").prop("checked", true);
            $("input[name=diagnosisExaminationXnLightChain][value='" + diagnosisLaboratoryExamination.diagnosisExaminationXnLightChain + "']").prop("checked", true);

            $("input[name=diagnosisExaminationNnStatus][value='" + diagnosisLaboratoryExamination.diagnosisExaminationNnStatus + "']").prop("checked", true);
            if (diagnosisLaboratoryExamination.diagnosisExaminationNnStatus == 1) {
                if (diagnosisLaboratoryExamination.diagnosisExaminationNkLightChain == 0 ||
                    diagnosisLaboratoryExamination.diagnosisExaminationNnLightChain == 0) {
                    $('.diagnosisCheck6').show();
                }
                $('#trdiagnosisExaminationNkLightChain').show();
                $('#trdiagnosisExaminationNnLightChain').show();
            }
            $("input[name=diagnosisExaminationNkLightChain][value='" + diagnosisLaboratoryExamination.diagnosisExaminationNkLightChain + "']").prop("checked", true);
            $("input[name=diagnosisExaminationNnLightChain][value='" + diagnosisLaboratoryExamination.diagnosisExaminationNnLightChain + "']").prop("checked", true);

            if (diagnosisLaboratoryExamination.diagnosisExaminationNIgg == '' ||
                diagnosisLaboratoryExamination.diagnosisExaminationNIga == '' ||
                diagnosisLaboratoryExamination.diagnosisExaminationNIgm == '' ||
                diagnosisLaboratoryExamination.diagnosisExaminationNIge == '') {
                $('.diagnosisCheck6').show();
            }

            $("input[name='diagnosisExaminationNIgg']").val(diagnosisLaboratoryExamination.diagnosisExaminationNIgg)
            $("input[name='diagnosisExaminationNIga']").val(diagnosisLaboratoryExamination.diagnosisExaminationNIga)
            $("input[name='diagnosisExaminationNIgm']").val(diagnosisLaboratoryExamination.diagnosisExaminationNIgm)
            $("input[name='diagnosisExaminationNIge']").val(diagnosisLaboratoryExamination.diagnosisExaminationNIge)
            $("input[name='diagnosisExaminationNIgd']").val(diagnosisLaboratoryExamination.diagnosisExaminationNIgd)
            $("input[name=diagnosisExaminationXkLightChainStatus][value='" + diagnosisLaboratoryExamination.diagnosisExaminationXkLightChainStatus + "']").prop("checked", true);
            if (diagnosisLaboratoryExamination.diagnosisExaminationXkLightChainStatus == 1) {
                if (diagnosisLaboratoryExamination.diagnosisExaminationXYkLightChain == '' ||
                    diagnosisLaboratoryExamination.diagnosisExaminationNIga == '' ||
                    diagnosisLaboratoryExamination.diagnosisExaminationNIge == '') {
                    $('.diagnosisCheck6').show();
                }
                $('#trdiagnosisExaminationXYkLightChain').show();
                $('#trdiagnosisExaminationXYnLightChain').show();
                $('#trdiagnosisExaminationXYknLightChain').show();
            }
            $("input[name='diagnosisExaminationXYkLightChain']").val(diagnosisLaboratoryExamination.diagnosisExaminationXYkLightChain);
            $("input[name='diagnosisExaminationXYnLightChain']").val(diagnosisLaboratoryExamination.diagnosisExaminationXYnLightChain);
            $("input[name='diagnosisExaminationXYknLightChain']").val(diagnosisLaboratoryExamination.diagnosisExaminationXYknLightChain);
            $("input[name=diagnosisExaminationNStatus][value='" + diagnosisLaboratoryExamination.diagnosisExaminationNStatus + "']").prop("checked", true);
            if (diagnosisLaboratoryExamination.diagnosisExaminationNStatus == 1) {
                $('#trDiagnosisExaminationNMkLightChain').show();
                $('#trDiagnosisExaminationNMnLightChain').show();
            }
            $("input[name='diagnosisExaminationNMkLightChain']").val(diagnosisLaboratoryExamination.diagnosisExaminationNMkLightChain);
            $("input[name='diagnosisExaminationNMnLightChain']").val(diagnosisLaboratoryExamination.diagnosisExaminationNMnLightChain);
            $("input[name='diagnosisExaminationH24']").val(diagnosisLaboratoryExamination.diagnosisExaminationH24)
            $("input[name='diagnosisTopMP']").val(diagnosisLaboratoryExamination.diagnosisTopMP);
            $("input[name='diagnosisMPResult']").val(diagnosisLaboratoryExamination.diagnosisMPResult);
        }else{

            $('.diagnosisCheck6').show();
        }
        if (diagnosisInfo.diagnosisPlasmacyteItems) {
            diagnosisInfo.diagnosisPlasmacyteItems.forEach(function (entry, index) {
                if (entry.rate == '' || entry.type == '') {
                    $('.diagnosisCheck7').show();
                }
                if (entry.index <= 5) {
                    $('#gcccheckItemTable tbody').find("tr").eq(entry.index - 1).attr('data-id', entry.id);
                    $('#gcccheckItemTable tbody').find("tr").eq(entry.index - 1).find("td").eq(1).find('input').val(entry.rate);
                } else {
                    var element = $('<tr data-id="' + entry.id + '" data-index="' + entry.index + '"></tr>');
                    element.append($(' <td>其他:&nbsp;<input name="name" value="' + entry.type + '"  type="text" style="width: 300px;"/></td>'));
                    element.append($('<td><input type="text" name="other" id="other' + entry.index + '" class="zsxSize" value="' + entry.rate + '"/></td>'));
                    if (entry.index == 6) {
                        element.append($('<td> <a style="cursor: pointer;" id="gccaddCheckItemBtn"><i class="ace-icon fa fa-plus-circle"></i>新增</a></td>'));
                        $('#gcccheckItemTable tbody').append(element);
                        $('#gccaddCheckItemBtn').on('click', function () {
                            var length = $('#gcccheckItemTable tr').length;
                            var element = $('<tr data-id="0" data-index="' + length + '"></tr>');
                            element.append($(' <td>其他:&nbsp;<input name="name"  type="text"style="width: 300px;"/></td>'));
                            element.append($('<td><input type="text" id="other0'+length+'" class="zsxSize"  name="other"/></td>'));
                            element.append($('<td><a style="cursor: pointer;color:red" onclick="$(this).parent().parent().remove()"><i class="ace-icon fa fa-close"></i>删除</a></td>'));
                            $('#gcccheckItemTable tbody').append(element);
                            $('#gcccheckItemTableTd').attr('rowspan', $('#gcccheckItemTableTd').attr('rowspan') + 1);
                        });
                    } else {
                        element.append($('<td><a style="cursor: pointer;color:red" onclick="$(this).parent().parent().remove()"><i class="ace-icon fa fa-close"></i>删除</a></td>'));
                        $('#gcccheckItemTable tbody').append(element);
                    }
                    $('#gcccheckItemTableTd').attr('rowspan', $('#gcccheckItemTableTd').attr('rowspan') + 1);
                }
            });
        }else{
            $('.diagnosisCheck7').show();
        }
        if ((!diagnosisInfo.diagnosisPlasmacyteItems) || (diagnosisInfo.diagnosisPlasmacyteItems.length <= 5)) {

            var element = $('<tr data-id="0" data-index="6"></tr>');
            element.append($(' <td>其他:&nbsp;<input name="name" type="text" style="width: 300px;"/></td>'));
            element.append($('<td><input type="text" class="zsxSize" name="other"/></td>'));
            element.append($('<td> <a style="cursor: pointer;" id="gccaddCheckItemBtn"><i class="ace-icon fa fa-plus-circle"></i>新增</a></td>'));
            $('#gcccheckItemTable tbody').append(element);
            $('#gccaddCheckItemBtn').on('click', function () {
                var length = $('#gcccheckItemTable tr').length;
                var element = $('<tr data-id="0" data-index="' + length + '"></tr>');
                element.append($(' <td>其他:&nbsp;<input name="name"  type="text"style="width: 300px;"/></td>'));
                element.append($('<td><input type="text" id="other0'+length+'" class="zsxSize"  name="other"/></td>'));
                element.append($('<td><a style="cursor: pointer;color:red" onclick="$(this).parent().parent().remove()"><i class="ace-icon fa fa-close"></i>删除</a></td>'));
                $('#gcccheckItemTable tbody').append(element);
                $('#gcccheckItemTableTd').attr('rowspan', $('#gcccheckItemTableTd').attr('rowspan') + 1);
            });
        }
        if (diagnosisInfo.diagnosisIconographyItems) {
            diagnosisInfo.diagnosisIconographyItems.forEach(function (entry, index) {
                if (entry.position == '' || entry.count == '' || entry.item == '') {
                    $('.diagnosisCheck8').show();
                }
                if (entry.index <= 5) {
                    $('#checkItemTable tbody').find("tr").eq(entry.index - 1).attr('data-id', entry.id);
                    $('#checkItemTable tbody').find("tr").eq(entry.index - 1).find("td").eq(1).find('textarea').val(entry.position);
                    $('#checkItemTable tbody').find("tr").eq(entry.index - 1).find("td").eq(2).find('textarea').val(entry.count);
                } else {
                    var element = $('<tr data-id="' + entry.id + '" data-index="' + entry.index + '"></tr>');
                    element.append($(' <td>其他:&nbsp;<input name="name" value="' + entry.item + '"  type="text" style="width: 300px;"/></td>'));
                    element.append($('<td><textarea class="autosize-transition form-control" style="overflow: hidden; word-wrap: break-word; resize: horizontal;">' + entry.position + '</textarea> </td>'));
                    element.append($('<td><textarea class="autosize-transition form-control" id="other'+ entry.index +'" style="overflow: hidden; word-wrap: break-word; resize: horizontal;">' + entry.count + '</textarea> </td>'));

                    if (entry.index == 6) {
                        element.append($('<td><a style="cursor: pointer;" id="addCheckItemBtn"><i class="ace-icon fa fa-plus-circle"></i>新增</a></td>'));
                        $('#checkItemTable tbody').append(element);
                        $('#addCheckItemBtn').on('click', function () {
                            var length = $('#checkItemTable tbody').find('tr').length + 1;
                            var element = $('<tr data-id="0" data-index="' + length + '"></tr>');
                            element.append($(' <td>其他:&nbsp;<input name="name"  type="text"style="width: 300px;"/></td>'));
                            element.append($('<td><textarea class="autosize-transition form-control" style="overflow: hidden; word-wrap: break-word; resize: horizontal;"></textarea> </td>'));
                            element.append($('<td><textarea class="autosize-transition form-control" id="other'+ length +'" style="overflow: hidden; word-wrap: break-word; resize: horizontal;"></textarea> </td>'));
                            element.append($('<td><a style="cursor: pointer;color:red" onclick="$(this).parent().parent().remove()"><i class="ace-icon fa fa-close"></i>删除</a></td>'));
                            $('#checkItemTable tbody').append(element);
                        });
                    } else {
                        element.append($('<td><a style="cursor: pointer;color:red" onclick="$(this).parent().parent().remove()"><i class="ace-icon fa fa-close"></i>删除</a></td>'));
                        $('#checkItemTable tbody').append(element);
                    }
                    $('#checkItemTable').attr('rowspan', $('#gcccheckItemTableTd').attr('rowspan') + 1);
                }
            });
        }else{
            $('.diagnosisCheck8').show();
        }

        if ((!diagnosisInfo) || (!diagnosisInfo.diagnosisIconographyItems) || (diagnosisInfo.diagnosisIconographyItems.length < 6)) {
            var element = $('<tr data-id="0" data-index="6"></tr>');
            element.append($(' <td>其他:&nbsp;<input name="name"  type="text"style="width: 150px;"/></td>'));
            element.append($('<td><textarea class="autosize-transition form-control"style="overflow: hidden; word-wrap: break-word; resize: horizontal;"></textarea> </td>'));
            element.append($('<td><textarea class="autosize-transition form-control" id="other7"style="overflow: hidden; word-wrap: break-word; resize: horizontal;"></textarea> </td>'));
            element.append($('<td><a style="cursor: pointer;" id="addCheckItemBtn"><i class="ace-icon fa fa-plus-circle"></i>新增</a></td>'));
            $('#checkItemTable tbody').append(element);
            $('#addCheckItemBtn').on('click', function () {
                var length = $('#checkItemTable tbody').find('tr').length + 1;
                var element = $('<tr data-id="0" data-index="' + length + '"></tr>');
                element.append($(' <td>其他:&nbsp;<input name="name"  type="text"style="width: 150px;"/></td>'));
                element.append($('<td><textarea class="autosize-transition form-control" style="overflow: hidden; word-wrap: break-word; resize: horizontal;"></textarea> </td>'));
                element.append($('<td><textarea class="autosize-transition form-control" id="other0'+length+'" style="overflow: hidden; word-wrap: break-word; resize: horizontal;"></textarea> </td>'));
                element.append($('<td><a style="cursor: pointer;color:red" onclick="$(this).parent().parent().remove()"><i class="ace-icon fa fa-close"></i>删除</a></td>'));
                $('#checkItemTable tbody').append(element);
            });
        }
        if (diagnosisInfo.diagnosisParenchymaItems) {
            diagnosisInfo.diagnosisParenchymaItems.forEach(function (entry, index) {
                if (entry.length == '' || entry.width == '' || entry.position == '' || entry.item == '') {
                    $('.diagnosisCheck9').show();
                }
                if (entry.index <= 3) {
                    $('#rzzCheckItemTable tbody').find("tr").eq(entry.index - 1).attr('data-id', entry.id);
                    $('#rzzCheckItemTable tbody').find("tr").eq(entry.index - 1).find("td").eq(1).find('textarea').val(entry.position);
                    $('#rzzCheckItemTable tbody').find("tr").eq(entry.index - 1).find("td").eq(2).find('input').eq(0).val(entry.length);
                    $('#rzzCheckItemTable tbody').find("tr").eq(entry.index - 1).find("td").eq(2).find('input').eq(1).val(entry.width);
                } else {
                    var element = $('<tr data-id="' + entry.id + '" data-index="' + entry.index + '"></tr>');
                    element.append($(' <td>其他:&nbsp;<input name="name" value="' + entry.item + '" type="text"style="width: 90px;"/></td>'));
                    element.append($('<td><textarea class="autosize-transition form-control"style="overflow: hidden; word-wrap: break-word; resize: horizontal;">' + entry.position + '</textarea> </td>'));
                    element.append($('<td><input type="text" id="other1'+entry.index+'" value="' + entry.length + '" class="cmSize"/>cm * <input type="text" value="' + entry.width + '" id="other2'+ entry.index +'" class="cmSize"/>cm </td>'));

                    if (entry.index == 4) {
                        element.append($('<td><a style="cursor: pointer;" id="rzzAddCheckItemBtn"><i class="ace-icon fa fa-plus-circle"></i>新增</a></td>'));
                        $('#rzzCheckItemTable tbody').append(element);
                        $('#rzzAddCheckItemBtn').on('click', function () {
                            var length = $('#rzzCheckItemTable tr').length;
                            var element = $('<tr data-id="0" data-index="' + length + '"></tr>');
                            element.append($(' <td>其他:&nbsp;<input name="name"  type="text"style="width: 90px;"/></td>'));
                            element.append($('<td><textarea class="autosize-transition form-control"style="overflow: hidden; word-wrap: break-word; resize: horizontal;"></textarea> </td>'));
                            element.append($('<td><input type="text" id="other01'+ length +'"  class="cmSize"/>cm * <input type="text" class="cmSize" id="other02'+ length +'"  />cm </td>'));
                            element.append($('<td><a style="cursor: pointer;color:red" onclick="$(this).parent().parent().remove()"><i class="ace-icon fa fa-close"></i>删除</a></td>'));
                            $('#rzzCheckItemTable tbody').append(element);
                        });
                    } else {
                        element.append($('<td><a style="cursor: pointer;color:red" onclick="$(this).parent().parent().remove()"><i class="ace-icon fa fa-close"></i>删除</a></td>'));
                        $('#rzzCheckItemTable tbody').append(element);
                    }
                }
            });
        }else{
            $('.diagnosisCheck9').show();
        }
        if ((!diagnosisInfo.diagnosisParenchymaItems) || (diagnosisInfo.diagnosisParenchymaItems.length < 4)) {
            var element = $('<tr data-id="0" data-index="4"></tr>');
            element.append($(' <td>其他:&nbsp;<input name="name"  type="text"style="width: 90px;"/></td>'));
            element.append($('<td><textarea class="autosize-transition form-control"style="overflow: hidden; word-wrap: break-word; resize: horizontal;"></textarea> </td>'));
            element.append($('<td><input type="text" class="cmSize" />cm * <input type="text"  class="cmSize"/>cm </td>'));
            element.append($('<td><a style="cursor: pointer;" id="rzzAddCheckItemBtn"><i class="ace-icon fa fa-plus-circle"></i>新增</a></td>'));
            $('#rzzCheckItemTable tbody').append(element);
            $('#rzzAddCheckItemBtn').on('click', function () {
                var length = $('#rzzCheckItemTable tr').length;
                var element = $('<tr data-id="0" data-index="' + length + '"></tr>');
                element.append($(' <td>其他:&nbsp;<input name="name"  type="text"style="width: 90px;"/></td>'));
                element.append($('<td><textarea class="autosize-transition form-control"style="overflow: hidden; word-wrap: break-word; resize: horizontal;"></textarea> </td>'));
                element.append($('<td><input type="text" class="cmSize" id="other01'+ length +'" />cm * <input type="text" class="cmSize" id="other02'+ length +'" />cm </td>'));
                element.append($('<td><a style="cursor: pointer;color:red" onclick="$(this).parent().parent().remove()"><i class="ace-icon fa fa-close"></i>删除</a></td>'));
                $('#rzzCheckItemTable tbody').append(element);
            });
        }
        $("input[name=fishexception][value='" + diagnosisInfo.diagnosisFishStatus + "']").prop("checked", true);
        if (diagnosisInfo.diagnosisFishItems==false){
            $('.diagnosisCheck10').show();
        }
        if (diagnosisInfo.diagnosisFishStatus == 1) {
            $('#trfishItem').show();
            $('#trfishIghItem').show();
            $('#trfish13qItem').show();
            $('#trfish17qItem').show();
            $('#trfish1q21Item').show();
            $('#trfisht414Item').show();
            $('#trfisht1114Item').show();
            $('#trfisht1416Item').show();
            if (diagnosisInfo.diagnosisFishItems) {
                diagnosisInfo.diagnosisFishItems.forEach(function (entry, index) {
                    if (entry.item == '' || entry.rate == '') {
                        $('.diagnosisCheck10').show();
                    }

                    if (entry.index <= 7) {
                        $('#fishcheckItemTable tbody').find("tr").eq(entry.index - 1).attr('data-id', entry.id);
                        $('#fishcheckItemTable tbody').find("tr").eq(entry.index - 1).find("td").eq(1).find('input').val(entry.rate);
                    } else {
                        if (entry.index == 8) {
                            var element = $('<tr id="trfishOtherItem" data-id="' + entry.id + '" data-index="' + entry.index + '"></tr>');
                            element.append($(' <td>其他:&nbsp;<input name="name" value="' + entry.item + '" type="text"style="width: 200px;"/></td>'));
                            element.append($('<td><input type="text" id="other'+entry.index+'" class="zsxSize"  value="' + entry.rate + '" name="other"/></td>'));
                            element.append($('<td><a style="cursor: pointer;" id="fishaddCheckItemBtn"><i class="ace-icon fa fa-plus-circle"></i>新增</a></td>'));
                            $('#fishcheckItemTable tbody').append(element);
                            $('#fishaddCheckItemBtn').on('click', function () {
                                var length = $('#fishcheckItemTable tr').length;
                                var element = $('<tr class="fishItemAdded" data-id="0" data-index="' + length + '"></tr>');
                                element.append($(' <td>其他:&nbsp;<input name="name"  type="text"style="width: 200px;"/></td>'));
                                element.append($('<td><input type="text" name="other"  id="other0'+length+'" class="zsxSize" /></td>'));
                                element.append($('<td><a style="cursor: pointer;color:red" onclick="$(this).parent().parent().remove()"><i class="ace-icon fa fa-close"></i>删除</a></td>'));
                                $('#fishcheckItemTable tbody').append(element);
                            });
                        } else {
                            var length = $('#fishcheckItemTable tr').length;
                            var element = $('<tr class="fishItemAdded" data-id="' + entry.id + '" data-index="' + entry.index + '"></tr>');
                            element.append($(' <td>其他:&nbsp;<input name="name" value="' + entry.item + '" type="text"style="width: 200px;"/></td>'));
                            element.append($('<td><input type="text" value="' + entry.rate + '" name="other" id="other0'+length+'" class="zsxSize"/></td>'));
                            element.append($('<td><a style="cursor: pointer;color:red" onclick="$(this).parent().parent().remove()"><i class="ace-icon fa fa-close"></i>删除</a></td>'));
                            $('#fishcheckItemTable tbody').append(element);
                        }
                    }
                });
            }else{
                $('.diagnosisCheck10').show();
            }
            if ((!diagnosisInfo.diagnosisFishItems) || (diagnosisInfo.diagnosisFishItems.length < 8)) {
                var element = $('<tr id="trfishOtherItem" data-id="0" data-index="8"></tr>');
                element.append($(' <td>其他:&nbsp;<input name="name"  type="text"style="width: 200px;"/></td>'));
                element.append($('<td><input type="text" name="other" class="zsxSize"/></td>'));
                element.append($('<td><a style="cursor: pointer;" id="fishaddCheckItemBtn"><i class="ace-icon fa fa-plus-circle"></i>新增</a></td>'));
                $('#fishcheckItemTable tbody').append(element);
                $('#fishaddCheckItemBtn').on('click', function () {
                    var length = $('#fishcheckItemTable tr').length;
                    var element = $('<tr class="fishItemAdded" data-id="0" data-index="' + length + '"></tr>');
                    element.append($(' <td>其他:&nbsp;<input name="name"  type="text"style="width: 200px;"/></td>'));
                    element.append($('<td><input type="text" name="other" class="zsxSize" id="other0'+length+'"/></td>'));
                    element.append($('<td><a style="cursor: pointer;color:red" onclick="$(this).parent().parent().remove()"><i class="ace-icon fa fa-close"></i>删除</a></td>'));
                    $('#fishcheckItemTable tbody').append(element);
                });
            }
        } else {
            if ((!diagnosisInfo.diagnosisFishItems) || (diagnosisInfo.diagnosisFishItems.length < 8)) {
                var element = $('<tr id="trfishOtherItem"  hidden data-id="0" data-index="8"></tr>');
                element.append($(' <td>其他:&nbsp;<input name="name"  type="text" style="width: 200px;"/></td>'));
                element.append($('<td><input type="text" name="other"  class="zsxSize"/></td>'));
                element.append($('<td><a style="cursor: pointer;" id="fishaddCheckItemBtn"><i class="ace-icon fa fa-plus-circle"></i>新增</a></td>'));
                $('#fishcheckItemTable tbody').append(element);
                $('#fishaddCheckItemBtn').on('click', function () {
                    var length = $('#fishcheckItemTable tr').length;
                    var element = $('<tr data-id="0" data-index="' + length + '"></tr>');
                    element.append($(' <td>其他:&nbsp;<input name="name"  type="text" style="width: 200px;"/></td>'));
                    element.append($('<td><input type="text" name="other"  class="zsxSize" id="other0'+length+'"/></td>'));
                    element.append($('<td><a style="cursor: pointer;color:red" onclick="$(this).parent().parent().remove()"><i class="ace-icon fa fa-close"></i>删除</a></td>'));
                    $('#fishcheckItemTable tbody').append(element);
                });
            }
        }
    }else{
        $('.diagnosisCheck3').show();
        $('.diagnosisCheck4').show();
        $('.diagnosisCheck5').show();
        $('.diagnosisCheck6').show();
        $('.diagnosisCheck7').show();
        $('.diagnosisCheck8').show();
        $('.diagnosisCheck9').show();
        $('.diagnosisCheck10').show();
    }
    //填充第二页数据结束
    //填充第三页数据开始
    if (patient.mmCureHistories) {
        patient.mmCureHistories.forEach(function (entry) {
            if (entry.startYear!='' && entry.endMonth!=''&&entry.curePlan!=''&&entry.evaluateResult!=0){
                var length = $('#historyInfoShowMM tbody').find("tr").length;
                var element = $('<tr data-id="' + entry.id + '" data-index="' + entry.index + '"></tr>');
                element.append($('<td><input  style="width:100%;" class="form-control text-265" disabled value="' + entry.startYear + '-' + entry.startMonth + '~ ' + entry.endYear + '-' + entry.endMonth + '" name="historyInfoShowMMTime"/></td>'));
                element.append($('<td><input  style="width:100%;" class="form-control text-265" disabled value="' + entry.curePlan + '" name="historyInfoShowMMPlan"/></td>'));
                if (entry.evaluateResult == 1) {
                    element.append($('<td><input  style="width:100%;" class="form-control text-265" disabled value="' + "0.MCR(分子学完全缓解)" + '" name="historyInfoShowMMResult"/></td>'));
                } else if (entry.evaluateResult == 2) {
                    element.append($('<td><input  style="width:100%;" class="form-control text-265" disabled value="' + "1.ICR(免疫学完全缓解)" + '" name="historyInfoShowMMResult"/></td>'));
                } else if (entry.evaluateResult == 3) {
                    element.append($('<td><input  style="width:100%;" class="form-control text-265" disabled value="' + "2.sCR(严格完全缓解)" + '" name="historyInfoShowMMResult"/></td>'));
                } else if (entry.evaluateResult == 4) {
                    element.append($('<td><input  style="width:100%;" class="form-control text-265" disabled value="' + "3.CR(完全缓解)" + '" name="historyInfoShowMMResult"/></td>'));
                } else if (entry.evaluateResult == 5) {
                    element.append($('<td><input  style="width:100%;" class="form-control text-265" disabled value="' + "4.VGPR (很好的部分缓解)" + '" name="historyInfoShowMMResult"/></td>'));
                } else if (entry.evaluateResult == 6) {
                    element.append($('<td><input  style="width:100%;" class="form-control text-265" disabled value="' + "5.PR(部分缓解)" + '" name="historyInfoShowMMResult"/></td>'));
                } else if (entry.evaluateResult == 7) {
                    element.append($('<td><input  style="width:100%;" class="form-control text-265" disabled value="' + "6.MR(微小缓解)" + '" name="historyInfoShowMMResult"/></td>'));
                } else if (entry.evaluateResult == 8) {
                    element.append($('<td><input  style="width:100%;" class="form-control text-265" disabled value="' + "7.SD(疾病稳定)" + '" name="historyInfoShowMMResult"/></td>'));
                } else if (entry.evaluateResult == 9) {
                    element.append($('<td><input  style="width:100%;" class="form-control text-265" disabled value="' + "8.PD(疾病进展)" + '" name="historyInfoShowMMResult"/></td>'));
                } else if (entry.evaluateResult == 10) {
                    element.append($('<td><input  style="width:100%;" class="form-control text-265" disabled value="' + entry.evaluateResultOther + '" name="historyInfoShowMMResult"/></td>'));
                } else if (entry.evaluateResult == 0) {
                    element.append($('<td><input  style="width:100%;" class="form-control text-265" disabled value="' + "未选择治疗结果" + '" name="historyInfoShowMMResult"/></td>'));
                }
                $('#historyInfoShowMM tbody').append(element);
            }
        });
    }
    if (patient.hospitaledInfos) {
        patient.hospitaledInfos.forEach(function (entry) {
            var length = $('#historyInfoShowHospital tbody').find("tr").length;
            var element = $('<tr data-id="' + entry.id + '" data-index="' + entry.index + '"></tr>');
            element.append($('<td><input  style="width:100%;" class="form-control text-265" disabled value="' + entry.startTime + '~ ' + entry.endTime + '" name="historyInfoShowHospitalTime"/></td>'));
            element.append($('<td><input  style="width:100%;" class="form-control text-265" disabled value="' + entry.curePlanAlter + '" name="historyInfoShowHospitalPlan"/></td>'));
            if (entry.evaluateResult == 1) {
                element.append($('<td><input  style="width:100%;" class="form-control text-265" disabled value="' + "0.MCR(分子学完全缓解)" + '" name="historyInfoShowMMResult"/></td>'));
            } else if (entry.evaluateResult == 2) {
                element.append($('<td><input  style="width:100%;" class="form-control text-265" disabled value="' + "1.ICR(免疫学完全缓解)" + '" name="historyInfoShowMMResult"/></td>'));
            } else if (entry.evaluateResult == 3) {
                element.append($('<td><input  style="width:100%;" class="form-control text-265" disabled value="' + "2.sCR(严格完全缓解)" + '" name="historyInfoShowMMResult"/></td>'));
            } else if (entry.evaluateResult == 4) {
                element.append($('<td><input  style="width:100%;" class="form-control text-265" disabled value="' + "3.CR(完全缓解)" + '" name="historyInfoShowMMResult"/></td>'));
            } else if (entry.evaluateResult == 5) {
                element.append($('<td><input  style="width:100%;" class="form-control text-265" disabled value="' + "4.VGPR (很好的部分缓解)" + '" name="historyInfoShowMMResult"/></td>'));
            } else if (entry.evaluateResult == 6) {
                element.append($('<td><input  style="width:100%;" class="form-control text-265" disabled value="' + "5.PR(部分缓解)" + '" name="historyInfoShowMMResult"/></td>'));
            } else if (entry.evaluateResult == 7) {
                element.append($('<td><input  style="width:100%;" class="form-control text-265" disabled value="' + "6.MR(微小缓解)" + '" name="historyInfoShowMMResult"/></td>'));
            } else if (entry.evaluateResult == 8) {
                element.append($('<td><input  style="width:100%;" class="form-control text-265" disabled value="' + "7.SD(疾病稳定)" + '" name="historyInfoShowMMResult"/></td>'));
            } else if (entry.evaluateResult == 9) {
                element.append($('<td><input  style="width:100%;" class="form-control text-265" disabled value="' + "8.PD(疾病进展)" + '" name="historyInfoShowMMResult"/></td>'));
            } else if (entry.evaluateResult == 10) {
                element.append($('<td><input  style="width:100%;" class="form-control text-265" disabled value="' + entry.evaluateResultOther + '" name="historyInfoShowMMResult"/></td>'));
            } else if (entry.evaluateResult == 0) {
                element.append($('<td><input  style="width:100%;" class="form-control text-265" disabled value="' + "未选择治疗结果" + '" name="historyInfoShowMMResult"/></td>'));
            }
            $('#historyInfoShowHospital tbody').append(element);
        });
    }
    //填充第三页数据结束
    //第四页填充开始
    if (patient.followupInfo) {
        var followupInfo = patient.followupInfo;
        $("input[name=followupsites][value='" + followupInfo.followupsites + "']").prop("checked", true);

        //1.疾病相关并发症发生情况
        if (followupInfo.followupComplicationStatuses) {
            followupInfo.followupComplicationStatuses.forEach(function (entry, index) {
                if (entry.index <= 11) {
                    $('#followupComplicationStatusTable tbody').find("tr").eq(entry.index - 1).attr('data-id', entry.id);
                    $('#followupComplicationStatusTable tbody').find("tr").eq(entry.index - 1).find("td").eq(1).find('input[type="radio"][value="' + entry.result + '"]').prop("checked", true);
                    if(entry.index==5&&entry.result==1) {
                        $('#trFSTX').show();
                    }
                    if (entry.index == 11) {
                        $('#followupComplicationStatusTable tbody').find("tr").eq(entry.index - 1).find('td').eq(0).find('input').val(entry.item);
                    }
                } else {
                    var length = $('#followupComplicationStatusTable tbody').find('tr').length+1;
                    var element = $('<tr data-id="' + entry.id + '" data-index="' + length + '"></tr>');
                    element.append($('<td>其他:&nbsp;<input type="text" value="' + entry.item + '" type="text"style="width: 300px;"/></td>'));
                    element.append($('<td><label class=" "><input value="1" type="radio" class="ace" name="present' + length +
                    '" /> <span class="lbl">是</span></label></td>'));
                    element.append($('<td><a style="cursor: pointer;color:red" onclick="$(this).parent().parent().remove()"><i class="ace-icon fa fa-close"></i>删除</a></td>'));
                    $('#followupComplicationStatusTable tbody').append(element);
                    //}
                    $('#followupComplicationStatusTable tbody').find('input[name="present' + length + '"][value="' + entry.result + '"]').prop("checked", true);
                }
            });
        }
        //2.本次随访时疾病相关实验室检查:
        if (followupInfo.followupLaboratoryExamination) {
            var followupLaboratoryExamination = followupInfo.followupLaboratoryExamination;
            //ces
            $('#followupLaboratoryExaminationId').val(followupLaboratoryExamination.id);
            $("input[name=followupExaminationXueStatus][value='" + followupLaboratoryExamination.followupExaminationXueStatus + "']").prop("checked", true);
            if (followupLaboratoryExamination.followupExaminationXueStatus == 1) {
                $('#followupExaminationXIgg').show();
                $('#followupExaminationXIga').show();
                $('#followupExaminationXIgm').show();
                $('#followupExaminationXIge').show();
                $('#followupExaminationXIgd').show();
                $('#followupExaminationXkLightChain').show();
                $('#followupExaminationXnLightChain').show();
            }
            $("input[name=followupExaminationXIgg][value='" + followupLaboratoryExamination.followupExaminationXIgg + "']").prop("checked", true);
            $("input[name=followupExaminationXIga][value='" + followupLaboratoryExamination.followupExaminationXIga + "']").prop("checked", true);
            $("input[name=followupExaminationXIgm][value='" + followupLaboratoryExamination.followupExaminationXIgm + "']").prop("checked", true);
            $("input[name=followupExaminationXIge][value='" + followupLaboratoryExamination.followupExaminationXIge + "']").prop("checked", true);
            $("input[name=followupExaminationXIgd][value='" + followupLaboratoryExamination.followupExaminationXIgd + "']").prop("checked", true);
            $("input[name=followupExaminationXkLightChain][value='" + followupLaboratoryExamination.followupExaminationXkLightChain + "']").prop("checked", true);
            $("input[name=followupExaminationXnLightChain][value='" + followupLaboratoryExamination.followupExaminationXnLightChain + "']").prop("checked", true);
            $("input[name=followupExaminationNnStatus][value='" + followupLaboratoryExamination.followupExaminationNnStatus + "']").prop("checked", true);
            if (followupLaboratoryExamination.followupExaminationNnStatus == 1) {
                $('#followupExaminationNkLightChain').show();
                $('#followupExaminationNnLightChain').show();
                $('#followupExaminationNIggLable').show();
                $('#followupExaminationNIgg').show();
                $('#followupExaminationNIga').show();
                $('#followupExaminationNIgm').show();
                $('#followupExaminationNIge').show();
                $('#followupExaminationNIgd').show();
            }
            $("input[name=followupExaminationNkLightChain][value='" + followupLaboratoryExamination.followupExaminationNkLightChain + "']").prop("checked", true);
            $("input[name=followupExaminationNnLightChain][value='" + followupLaboratoryExamination.followupExaminationNnLightChain + "']").prop("checked", true);
            $("input[name='followupExaminationNIgg']").val(followupLaboratoryExamination.followupExaminationNIgg)
            $("input[name='followupExaminationNIga']").val(followupLaboratoryExamination.followupExaminationNIga)
            $("input[name='followupExaminationNIgm']").val(followupLaboratoryExamination.followupExaminationNIgm)
            $("input[name='followupExaminationNIge']").val(followupLaboratoryExamination.followupExaminationNIge)
            $("input[name='followupExaminationNIgd']").val(followupLaboratoryExamination.followupExaminationNIgd)
            $("input[name=followupExaminationXkLightChainStatus][value='" + followupLaboratoryExamination.followupExaminationXkLightChainStatus + "']").prop("checked", true);
            if (followupLaboratoryExamination.followupExaminationXkLightChainStatus == 1) {
                $('#followupExaminationXYkLightChain').show();
                $('#followupExaminationXYnLightChain').show();
                $('#followupExaminationXYknLightChain').show();
            }

            $("input[name=followupExaminationNMStatus][value='" + followupLaboratoryExamination.followupExaminationNMStatus + "']").prop("checked", true);
            if (followupLaboratoryExamination.followupExaminationNMStatus == 1) {
                $('#followupExaminationNMkLightChain').show();
                $('#followupExaminationNMnLightChain').show();
            }

            $("input[name='followupExaminationXYkLightChain']").val(followupLaboratoryExamination.followupExaminationXYkLightChain)
            $("input[name='followupExaminationXYnLightChain']").val(followupLaboratoryExamination.followupExaminationXYnLightChain)
            $("input[name='followupExaminationXYknLightChain']").val(followupLaboratoryExamination.followupExaminationXYknLightChain)

            $("input[name='followupExaminationNMkLightChain']").val(followupLaboratoryExamination.followupExaminationNMkLightChain)
            $("input[name='followupExaminationNMnLightChain']").val(followupLaboratoryExamination.followupExaminationNMnLightChain)
            $("input[name='followupExaminationH24']").val(followupLaboratoryExamination.followupExaminationH24)


            $("input[name='followupTotalProtein']").val(followupLaboratoryExamination.followupTotalProtein)
            $("input[name='followupWhiteProtein']").val(followupLaboratoryExamination.followupWhiteProtein)
            $("input[name='followupGlobulinProtein']").val(followupLaboratoryExamination.followupGlobulinProtein)
            $("input[name='followupAminotransferase']").val(followupLaboratoryExamination.followupAminotransferase)
            $("input[name='followupAst']").val(followupLaboratoryExamination.followupAst)
            $("input[name='followupGgt']").val(followupLaboratoryExamination.followupGgt)
            $("input[name='followupLdh']").val(followupLaboratoryExamination.followupLdh)
            $("input[name='followupUrea']").val(followupLaboratoryExamination.followupUrea)
            $("input[name='followupCr']").val(followupLaboratoryExamination.followupCr)
            $("input[name='followupCa']").val(followupLaboratoryExamination.followupCa)
            $("input[name='followupPhoshatase']").val(followupLaboratoryExamination.followupPhoshatase)
            $("input[name='followupBeta2GlobulinProtein']").val(followupLaboratoryExamination.followupBeta2GlobulinProtein)
            $("input[name='followupWhiteBloodCell']").val(followupLaboratoryExamination.followupWhiteBloodCell)
            $("input[name='followupNeutrophils']").val(followupLaboratoryExamination.followupNeutrophils)
            $("input[name='followupLymphocyte']").val(followupLaboratoryExamination.followupLymphocyte)
            $("input[name='followupHemoglobin']").val(followupLaboratoryExamination.followupHemoglobin)
            $("input[name='followupPlateletCount']").val(followupLaboratoryExamination.followupPlateletCount)
        }
        //3.本次随访时骨髓穿刺图片细胞学检查:
        if (followupInfo.followupPlasmacyteItems) {
            followupInfo.followupPlasmacyteItems.forEach(function (entry, index) {
                if (entry.index <= 6) {
                    var trObj = $('#followupPlasmactyeItem tbody').find("tr").eq(entry.index - 1);
                    trObj.attr('data-id', entry.id);
                    if (entry.index == 6) {
                        trObj.find('td').eq(0).find('input').val(entry.type);
                    }
                    trObj.find("td").eq(1).find('input').val(entry.rate);
                } else {
                    var length = $('#followupPlasmactyeItem tr').length+1;
                    var element = $('<tr data-id="' + entry.id + '" data-index="' + length + '"></tr>');
                    element.append($(' <td>其他:&nbsp;<input name="name" value="' + entry.type + '"  type="text" style="width: 200px;"/></td>'));
                    element.append($('<td><input type="text" name="other" value="' + entry.rate + '"/></td>'));
                    element.append($('<td><a style="cursor: pointer;color:red" onclick="$(this).parent().parent().remove()"><i class="ace-icon fa fa-close"></i>删除</a></td>'));
                    $('#followupPlasmactyeItem tbody').append(element);
                }
            });
        }
        //4.本次随访时全身骨骼影像学检查:
        if (followupInfo.followupIconographyItems) {
            followupInfo.followupIconographyItems.forEach(function (entry, index) {
                var trObj = $('#followupIconographyItemTable tbody').find("tr").eq(entry.index - 1);
                if (entry.index <= 6) {
                    trObj.attr('data-id', entry.id);
                    if (entry.index == 6) {
                        trObj.find("td").eq(0).find('input').val(entry.item);
                    }
                    trObj.find("td").eq(1).find('textarea').val(entry.position);
                    trObj.find("td").eq(2).find('textarea').val(entry.count);
                } else {
                    var element = $('<tr data-id="' + entry.id + '" data-index="' + entry.index + '"></tr>');
                    element.append($(' <td>其他:&nbsp;<input name="name" value="' + entry.item + '"  type="text" style="width: 90px;"/></td>'));
                    element.append($('<td><textarea class="autosize-transition form-control" style="overflow: hidden; word-wrap: break-word; resize: horizontal;">' + entry.position + '</textarea> </td>'));
                    element.append($('<td><textarea name="other' + entry.index +
                    '" class="autosize-transition form-control"style="overflow: hidden; word-wrap: break-word; resize: horizontal;">' + entry.count + '</textarea> </td>'));
                    element.append($('<td><a style="cursor: pointer;color:red" onclick="$(this).parent().parent().remove()"><i class="ace-icon fa fa-close"></i>删除</a></td>'));
                    $('#followupIconographyItemTable tbody').append(element);
                }
            });
        }
        //5.本次随访时全身软组织浆细胞瘤检查:
        if (followupInfo.followupParenchymaItems) {
            followupInfo.followupParenchymaItems.forEach(function (entry, index) {
                if (entry.index <= 4) {
                    var trObj = $('#followUpParenchymaItemTable tbody').find("tr").eq(entry.index - 1);
                    trObj.attr('data-id', entry.id);
                    if (entry.index == 4) {
                        trObj.find('td').eq(0).find('input').val(entry.item);
                    }
                    trObj.find("td").eq(1).find('textarea').val(entry.position);
                    trObj.find("td").eq(2).find('input').eq(0).val(entry.length);
                    trObj.find("td").eq(2).find('input').eq(1).val(entry.width);
                } else {
                    var element = $('<tr data-id="' + entry.id + '" data-index="' + entry.index + '"></tr>');
                    element.append($(' <td>其他:&nbsp;<input name="name" value="' + entry.item + '" type="text"style="width: 90px;"/></td>'));
                    element.append($('<td><textarea class="autosize-transition form-control"style="overflow: hidden; word-wrap: break-word; resize: horizontal;">' + entry.position + '</textarea> </td>'));
                    element.append($('<td><input type="text" value="' + entry.length + '" class="cmSize" id="other01'+entry.index+'"/>cm * <input type="text" value="' + entry.width + '" class="cmSize" id="other02'+entry.index+'"/>cm </td>'));

                    if (entry.index == 4) {
                        element.append($('<td><a style="cursor: pointer;" id="followUpParenchymaItemBtn"><i class="ace-icon fa fa-plus-circle"></i>新增</a></td>'));
                        $('#followUpParenchymaItemTable tbody').append(element);
                    } else {
                        element.append($('<td><a style="cursor: pointer;color:red" onclick="$(this).parent().parent().remove()"><i class="ace-icon fa fa-close"></i>删除</a></td>'));
                        $('#followUpParenchymaItemTable tbody').append(element);
                    }
                }
            });
        }
        //6.本次随访时疾病发展信息:
        $("input[name=followupInvasionDiagnosis][value='" + followupInfo.invasionDiagnosis + "']").prop("checked", true);
        $("input[name=followupProgress][value='" + followupInfo.followupProgress + "']").prop("checked", true);
        $("input[name=clinicalStagesDS][value='" + followupInfo.clinicalStagesDS + "']").prop("checked", true);
        $("input[name=clinicalStagesISS][value='" + followupInfo.clinicalStagesISS + "']").prop("checked", true);
        //7.患者当前针对MM用药信息(系统可添加):
        if (followupInfo.followupChemotherapyItems) {
            followupInfo.followupChemotherapyItems.forEach(function (entry, index) {
                if (entry.index == 1) {
                    var trObj = $('#followupChemotherapyItemTable tbody').find("tr").eq(entry.index - 1);
                    //trObj.attr("data-id", entry.id);
                    trObj.find('td').eq(0).find('select[id=followupChemotherapyItemName]').select2('val', entry.name);
                    trObj.find('td').eq(0).find('input[id=followupChemotherapyName]').val(entry.name);
                    trObj.find('td').eq(1).find('input').val(entry.consumption);
                    trObj.find('td').eq(2).find('select[id=consumptionSize]').select2('val', entry.consumptionSize);
                    trObj.find('td').eq(2).find('input[id=consumptSize]').val(entry.consumptionSize);
                    trObj.find('td').eq(3).find('input').val(entry.frequency);
                    trObj.find('td').eq(4).find('input[type=radio][name=buyOuter][value="' + entry.buyOuter + '"]').prop('checked', true);
                    $('#followupChemotherapyItemTable tbody').find('select[id="followupChemotherapyItemName"]').select2({'width':'190px'});
                    $('#followupChemotherapyItemTable tbody').find('select[id="consumptionSize"]').select2({'width':'100px'});
                } else {
                    var length = $('#followupChemotherapyItemTable tbody').find("tr").length+1;
                    var element = $('<tr data-id="' + entry.id + '" data-index="' + entry.index + '"></tr>');
                    element.append($('<th scope="row">' + length + '</th>'));
                    element.append($('<td colspan="1"><div   style="position:relative;"> ' +
                    '<span   style="margin-left:188px;width:18px;overflow:hidden;"> <select id="followupChemotherapyItemName" ' +
                    ' data-placeholder="" name="name' + entry.index + '" '+
                    ' class="select2-300" style="width:200px;;margin-left:-188px"  onchange="setSecond($(this))">  ' +
                    '<option value="" selected></option>'+
                    '<option value="硼替佐米">硼替佐米</option> ' +
                    '<option value="地塞米松">地塞米松</option>' +
                    '<option value="表柔比星">表柔比星</option> ' +
                    '<option value="吡柔比星">吡柔比星</option>' +
                    '<option value="沙利度胺">沙利度胺</option> ' +
                    '<option value="来那度胺">来那度胺</option>   ' +
                    '<option value="马法兰">马法兰</option> ' +
                    '<option value="多柔比星">多柔比星</option>' +
                    '<option value="顺铂">顺铂</option> ' +
                    '<option value="环磷酰胺">环磷酰胺</option> ' +
                    '<option value="泼尼松">泼尼松</option> </select>' +
                    '</span><input  id="followupChemotherapyName" name="name' + entry.index + '" type="text" style="width:170px;height:100%;position:absolute;left:0px;"> ' +
                    '</div></td>'));
                    element.append($('<td><input type="text" style="width:100%;" value="' + entry.consumption + '" name="amount"/></td>'))
                    element.append($('<td colspan="1"> ' +
                    '<div   style="position:relative;"> ' +
                    '<span   style="width:18px;overflow:hidden;"> ' +
                    '<select id="consumptionSize" name="consumptionSize' + entry.index + '"data-placeholder=""' +
                    'class="select2-300" style="width:200px;" onchange="setSize($(this))">'+
                    '<option value=""></option>'+
                    '<option value="mg">mg</option>'+
                    '<option value="mg/m2">mg/m2</option>'+
                    '<option value="mg/kg">mg/kg</option>'+
                    '<option value="g">g</option></select></span> ' +
                    '<input  name="consumptionSize' + entry.index + '" id="consumptSize" type="text" style="width:80px;height:100%;position:absolute;left:0px;"/> ' +
                    '</div></td>'));
                    element.append($('<td><input type="text" style="width:100%;" value="' + entry.frequency + '" name="feq"/></td>'));
                    element.append($('<td><label> <input value="1" type="radio" class="ace" name="buyOuter' + entry.index + '"/> <span class="lbl">是</span> ' +
                    '</label> &nbsp;<label> <input value="2" type="radio" class="ace" name="buyOuter' + entry.index + '"/> <span class="lbl">否</span> </label></td>'));
                    element.append($('<td><a style="cursor: pointer;color:red" onclick="$(this).parent().parent().remove()"><i class="ace-icon fa fa-close"></i>删除</a></td>'));
                    $('#followupChemotherapyItemTable tbody').append(element);
                    $('#followupChemotherapyItemTable tbody').find('input[type=radio][name="buyOuter' + entry.index + '"][value="' + entry.buyOuter + '"]').prop("checked", true);
                    $('#followupChemotherapyItemTable tbody').find('select[id="followupChemotherapyItemName"][name="name' + entry.index + '"]').val(entry.name).trigger("change");
                    $('#followupChemotherapyItemTable tbody').find('input[name="name' + entry.index + '"]').val(entry.name);
                    $('#followupChemotherapyItemTable tbody').find('select[id="consumptionSize"][name="consumptionSize' + entry.index + '"]').val(entry.consumptionSize).trigger("change");
                    $('#followupChemotherapyItemTable tbody').find('input[name="consumptionSize' + entry.index + '"]').val(entry.consumptionSize);
                    $('#followupChemotherapyItemTable tbody').find('select[id="followupChemotherapyItemName"][name="name' + entry.index + '"]').select2({'width':'190px'});
                    $('#followupChemotherapyItemTable tbody').find('select[id="consumptionSize"][name="consumptionSize' + entry.index + '"]').select2({'width':'100px'});
                }
            });
        }
        //8.患者参加援助计划信息:
        $("input[name=inHelpProject][value='" + followupInfo.inHelpProject + "']").prop("checked", true);
        if (followupInfo.inHelpProject == 1) {
            $('#SupportName').show();
            $('#SupportStartTime').show();
            $('#SupportEndTime').show();

            $('#helpProjectName').val(followupInfo.helpProjectName);
            $('#helpProjectStartDate').val(followupInfo.helpProjectStartDate);
            $('#helpProjectEndDate').val(followupInfo.helpProjectEndDate);
        }
        $('#curePlanStep').select2('val',followupInfo.curePlanStep);
        if(followupInfo.curePlanStep==7) {
            $('.divCurePlanStepOther').show();
            $('#curePlanStepOther').val(followupInfo.curePlanStepOther);
        }
        //10.不良信息
        $('input[type=radio][name=badInformationStatus][value="' + followupInfo.badInformationStatus + '"]').prop('checked', true);
        if (followupInfo.badInformationStatus == 1) {
            if (followupInfo.followupBadinformationItems) {
                followupInfo.followupBadinformationItems.forEach(function (entry) {
                    if (entry.index == 1) {
                        var trObj = $('#followupBadInformationTable tbody').find("tr").eq(0);
                        trObj.attr("data-id", entry.id);
                        trObj.find('input[name="badinformationName"]').val(entry.badinformationName);
                        trObj.find('input[name="badinformationDate"]').val(entry.badinformationDate);
                        trObj.find('input.badinformationLevel[value="' + entry.badinformationLevel + '"]').prop('checked', true);
                        trObj.find('input.badinformationCctaeStatus[value="' + entry.badinformationCctaeStatus + '"]').prop('checked', true);
                        trObj.find('input.badinformationCctaeLevel[value="' + entry.badinformationCctaeLevel + '"]').prop('checked', true);
                        trObj.find('input.badinformationMedicineRealation[value="' + entry.badinformationMedicineRealation + '"]').prop('checked', true);
                        trObj.find('input.badinformationNonMedicineRealation[value="' + entry.badinformationNonMedicineRealation + '"]').prop('checked', true);
                        trObj.find('input.badinformationSpecialInformation[value="' + entry.badinformationSpecialInformation + '"]').prop('checked', true);
                        trObj.find('input.badinformationPregnant[value="' + entry.badinformationPregnant + '"]').prop('checked', true);
                        trObj.find('input.badinformationOutcomeOfSubjects[value="' + entry.badinformationOutcomeOfSubjects + '"]').prop('checked', true);
                        trObj.find('input.badinformationCritical[value="' + entry.badinformationCritical + '"]').prop('checked', true);
                        if (entry.badinformationCctaeStatus == 1) {
                            $('#divcteaeStatuslevel').show();
                        } else {
                            $('#divcteaeStatuslevel').hide();
                        }
                    } else {
                        $('#followupBadInformationTable tbody').find('.collapse').removeClass('in');
                        var length = $('#followupBadInformationTable tbody').find('tr').length + 1;
                        var element = $('<tr class="trbadMessage" id=trBadAccordion"' + length + '" data-id="0" data-index="' + length + '"></tr>');
                        element.append($('<td colspan="' + length + '"><div class="panel panel-default">' +
                        '<div class="panel-heading">' +
                        '<h4 class="panel-title">' +
                        '<a data-toggle="collapse" data-parent="#trBadAccordion' + length + '" href="#badAccordion' + length + '">第' + length + '次不良事件信息 </a>' +
                        '<a style="cursor: pointer;color:red" onclick="$(this).parent().parent().parent().parent().parent().remove()"><i class="ace-icon fa fa-close"></i>删除</a></h4></div><div id="badAccordion' + length + '" class="panel-collapse collapse in"><div class="panel-body">' +
                        '<div class="form-group"><label class="control-label col-xs-12 col-sm-3 no-padding-right">不良事件名称:</label><div class="col-xs-12 col-sm-9"><div class="clearfix"><input name="badinformationName" value="' + entry.badinformationName + '" type="text" class="text-300"/></div></div></div>' +
                        '<div class="form-group"><label class="control-label col-xs-12 col-sm-3 no-padding-right">纪录日期:</label><div class="col-xs-12 col-sm-9"><div class="input-group"><span class="input-group-addon"><i class="ace-icon fa fa-calendar"></i></span><input type="text" value="' + entry.badinformationDate + '" name="badinformationDate" class="form-control text-265 dataDay"/>&nbsp;&nbsp;<span>(格式:yyyy-mm-dd)</span></div></div></div>' +
                        '<div class="form-group"><label class="control-label col-xs-12 col-sm-3 no-padding-right">严重程度评估:</label><div class="col-xs-12 col-sm-9"><div class="clearfix"><label class=" "><input value="1" type="radio"class="ace badinformationLevel" name="yanzhongStatus' + length + '' + length + '"/><span class="lbl">轻度</span></label>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<label class=" "><input value="2" type="radio" class="ace badinformationLevel" name="yanzhongStatus' + length + '"/><span class="lbl">中度</span></label>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<label class=" "><input value="3" type="radio" class="ace badinformationLevel" name="yanzhongStatus' + length + '"/><span class="lbl">重度</span></label></div></div></div>' +
                        '<div class="form-group"><label class="control-label col-xs-12 col-sm-3 no-padding-right">是否采用CTE-AE 3.0评估:</label><div class="col-xs-12 col-sm-9"><label class=" "><input value="1" type="radio"class="ace badinformationCctaeStatus" name="cteaeStatus' + length + '"/><span class="lbl">是</span></label>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<label class=" "><input value="2" type="radio"class="ace badinformationCctaeStatus" name="cteaeStatus' + length + '"/><span class="lbl">否</span></label>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<label class=" "><input value="3" type="radio"class="ace"name="cteaeStatus' + length + '"/><span class="lbl">未知</span></label></div></div>' +
                        '<div class="form-group" hidden id="divcteaeStatuslevel' + length + '"><label class="control-label col-xs-12 col-sm-3 no-padding-right">请勾选级别</label> <div class="col-xs-12 col-sm-9"><label class=" "><input value="1" type="radio"class="ace badinformationCctaeLevel" name="cteaeStatuslevel' + length + '"/><span class="lbl">1</span></label>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<label class=" "><input value="2" type="radio" class="ace badinformationCctaeLevel" name="cteaeStatuslevel' + length + '"/><span class="lbl">2</span></label>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<label class=" "><input value="3" type="radio"class="ace badinformationCctaeLevel" name="cteaeStatuslevel' + length + '"/><span class="lbl">3</span></label>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<label class=" "><input value="4" type="radio"class="ace badinformationCctaeLevel" name="cteaeStatuslevel' + length + '"/><span class="lbl">4</span></label>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<label class=" "><input value="5" type="radio"class="ace badinformationCctaeLevel" name="cteaeStatuslevel' + length + '"/><span class="lbl">5</span></label></div></div>' +
                        '<div class="form-group"><label class="control-label col-xs-12 col-sm-3 no-padding-right">与当前治疗药物的关系:</label><div class="col-xs-12 col-sm-9"><div class="clearfix"><label class=" "><input value="1" type="radio" class="ace badinformationMedicineRealation" name="guanxiStatus' + length + '"/><span class="lbl">无关</span></label>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<label class=" "><input value="2" type="radio"class="ace badinformationMedicineRealation"name="guanxiStatus' + length + '"/><span class="lbl">可能无关</span></label>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<label class=" "><input value="3" type="radio"class="ace badinformationMedicineRealation" name="guanxiStatus' + length + '"/><span class="lbl">可能有关</span></label>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<label class=" "><input value="4" type="radio"class="ace badinformationMedicineRealation"name="guanxiStatus' + length + '"/><span class="lbl">很可能有关</span></label>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<label class=" "><input value="5" type="radio"class="ace"name="guanxiStatus' + length + '"/><span class="lbl">有关</span></label></div></div></div>' +
                        '<div class="form-group"><label class="control-label col-xs-12 col-sm-3 no-padding-right">与当前非治疗药物的关系:</label><div class="col-xs-12 col-sm-9"><label class=" "><input value="1" type="radio" class="ace badinformationNonMedicineRealation" name="guanxifeiStatus' + length + '"/><span class="lbl">无关</span></label>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<label class=" "><input value="2" type="radio"class="ace badinformationNonMedicineRealation" name="guanxifeiStatus' + length + '"/><span class="lbl">可能无关</span></label>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<label class=" "><input value="3" type="radio" class="ace badinformationNonMedicineRealation" name="guanxifeiStatus' + length + '"/><span class="lbl">可能有关</span></label> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<label class=" "><input value="4" type="radio"class="ace badinformationNonMedicineRealation"name="guanxifeiStatus' + length + '"/><span class="lbl">很可能有关</span></label>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<label class=" "><input value="5" type="radio"class="ace badinformationMedicineRealation"name="guanxifeiStatus' + length + '"/><span class="lbl">有关</span></label></div></div>' +
                        '<div class="form-group"><label class="control-label col-xs-12 col-sm-3 no-padding-right">特殊情况:</label><div class="col-xs-12 col-sm-9"><label class=" "><input value="1" type="radio" class="ace badinformationSpecialInformation" name="teshuStatus'+length+'"/><span class="lbl">杨森药品剂量过大</span></label>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<label class=" "><input value="2" type="radio" class="ace badinformationSpecialInformation" name="teshuStatus'+length+'"/><span class="lbl">哺乳期杨森研究药品暴露</span></label>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<label class=" "><input value="3" type="radio" class="ace badinformationSpecialInformation" name="teshuStatus'+length+'"/><span class="lbl">怀疑滥用/误用杨森药品</span></label>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<label class=" "><input value="4" type="radio" class="ace badinformationSpecialInformation" name="teshuStatus'+length+'"/><span class="lbl">无意或意外接触到杨森研究药品</span></label>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<label class=" "><input value="5" type="radio" class="ace badinformationSpecialInformation"name="teshuStatus'+length+'"/><span class="lbl">杨森研究药品任何预期的药理作用的失败（如缺乏效果）</span></label>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<label class=" "><input value="6" type="radio"class="ace badinformationSpecialInformation" name="teshuStatus'+length+'"/><span class="lbl">使用杨森研究药品获得非预期的药理作用或临床疗效</span></label>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<label class=" "><input value="7" type="radio" class="ace badinformationSpecialInformation" name="teshuStatus'+length+'"/><span class="lbl">涉及药物的药物错投（有或没有病人使用杨森研究药品，如药品混淆）</span></label></div></div>' +
                        '<div class="form-group"><label class="control-label col-xs-12 col-sm-3 no-padding-right">妊娠异常情况:</label><div class="col-xs-12 col-sm-9"><label class=" "><input value="1" type="radio" class="ace badinformationPregnant" name="huaiyunStatus' + length + '"/><span class="lbl">流产</span></label>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<label class=" "><input value="2" type="radio"class="ace badinformationPregnant" name="huaiyunStatus' + length + '"/><span class="lbl">胎儿死亡</span></label>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<label class=" "><input value="3" type="radio" class="ace badinformationPregnant" name="huaiyunStatus' + length + '"/><span class="lbl">死胎</span></label>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<label class=" "><input value="4" type="radio"class="ace"name="huaiyunStatus' + length + '"/><span class="lbl">先天性异常</span></label>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<label class=" "><input value="5" type="radio" class="ace badinformationPregnant" name="huaiyunStatus' + length + '"/><span class="lbl">异位妊娠</span></label></div></div>' +
                        '<div class="form-group"><label class="control-label col-xs-12 col-sm-3 no-padding-right">受试者转归:</label><div class="col-xs-12 col-sm-9"><label class=" "><input value="1" type="radio" class="ace badinformationOutcomeOfSubjects" name="zhuanguiStatus' + length + '"/><span class="lbl">恢复</span></label>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<label class=" "><input value="2" type="radio"class="ace badinformationOutcomeOfSubjects" name="zhuanguiStatus' + length + '"/><span class="lbl">尚未恢复</span></label>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<label class=" "><input value="3" type="radio"class="ace badinformationOutcomeOfSubjects" name="zhuanguiStatus' + length + '"/><span class="lbl">死于不良事件</span></label>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<label class=" "><input value="4" type="radio" class="ace badinformationOutcomeOfSubjects" name="zhuanguiStatus' + length + '"/><span class="lbl">未知</span></label></div></div>' +
                        '<div class="form-group"><label class="control-label col-xs-12 col-sm-3 no-padding-right">是否作为严重不良事件报告:</label><div class="col-xs-12 col-sm-9"><label class=" "><input value="1" type="radio" class="ace badinformationCritical" name="baogaoStatus' + length + '"/><span class="lbl">是（同时填写严重不良事件表）</span></label>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<label class=" "><input value="2" type="radio"class="ace badinformationCritical" name="baogaoStatus' + length + '"/><span class="lbl">否</span></label></div></div>' +
                        '</div></div></div></td>'));
                        $('#followupBadInformationTable tbody').append(element);
                        $('input[type=radio][name=yanzhongStatus' + length + '][value="' + entry.badinformationLevel + '"]').prop('checked', true);
                        $('input[type=radio][name=cteaeStatus' + length + '][value="' + entry.badinformationCctaeStatus + '"]').prop('checked', true);
                        $('input[type=radio][name=cteaeStatuslevel' + length + '][value="' + entry.badinformationCctaeLevel + '"]').prop('checked', true);
                        $('input[type=radio][name=yanzhongStatus' + length + '][value="' + entry.badinformationCctaeLevel + '"]').prop('checked', true);
                        $('input[type=radio][name=guanxiStatus' + length + '][value="' + entry.badinformationMedicineRealation + '"]').prop('checked', true);
                        $('input[type=radio][name=guanxifeiStatus' + length + '][value="' + entry.badinformationNonMedicineRealation + '"]').prop('checked', true);
                        $('input[type=radio][name=teshuStatus' + length + '][value="' + entry.badinformationSpecialInformation + '"]').prop('checked', true);
                        $('input[type=radio][name=huaiyunStatus' + length + '][value="' + entry.badinformationPregnant + '"]').prop('checked', true);
                        $('input[type=radio][name=zhuanguiStatus' + length + '][value="' + entry.badinformationOutcomeOfSubjects + '"]').prop('checked', true);
                        $('input[type=radio][name=baogaoStatus' + length + '][value="' + entry.badinformationCritical + '"]').prop('checked', true);
                        if (entry.badinformationCctaeStatus == 1) {
                            $('#divcteaeStatuslevel' + length + '').show();
                        } else {
                            $('#divcteaeStatuslevel' + length + '').hide();
                        }
                        $('input[type=radio][name=cteaeStatus' + length + ']').change(function () {
                            if (this.value == '1') {
                                $('#divcteaeStatuslevel' + length + '').show();
                            } else {
                                $('#divcteaeStatuslevel' + length + '').hide();
                            }
                        });
                    }
                });
            }
            $('#addbadBtn').prop('disabled', false);
            $('.trbadMessage').show();
        } else {
            $('#addbadBtn').prop('disabled', true);
            $('.trbadMessage').hide();
        }
        //9.本次随访时疗效评估信息
        $("input[name=evaluateStatus][value='" + followupInfo.evaluateStatus + "']").prop("checked", true);
        if (followupInfo.evaluateStatus == 1) {
            $('#followUpflagTFCheck').show();
            $("input[name=followupEvaluateRule][value='" + followupInfo.evaluateRule + "']").prop("checked", true);
            if (followupInfo.evaluateRule == 1) {
                $('#followUpflagTFCheckCheck').show();
                $('#followupEstimateResult').select2('val', followupInfo.evaluateResult);
                if (followupInfo.evaluateResult == 10) {
                    $('#followUpflagTFCheckCheckEstimateResultOther').show();
                    $('#followUpflagTFCheckCheckEstimateResultOther').val(followupInfo.evaluateResultOther);
                }

            }
        }
        else {
            $('#followupEvaluateRuleOther').val(followupInfo.evaluateRuleOther);
        }
        //11.疾病院外卫生资源使用和医疗费用
        $('#followupId').val(followupInfo.id);
        $('#times').val(followupInfo.times);
        $('#timesEmergency').val(followupInfo.timesEmergency);
        $('#lastCostTotal').val(followupInfo.lastCostTotal);
        $('#lastCostMed').val(followupInfo.lastCostMed);
        $('#lastCostNonMed').val(followupInfo.lastCostNonMed);
        $('#lastEmergencyCostToal').val(followupInfo.lastEmergencyCostToal);
        $('#lastEmergencyCostMed').val(followupInfo.lastEmergencyCostMed);
        $('#lastEmergencyCostNonMed').val(followupInfo.lastEmergencyCostNonMed);
        $('#registrationCost').val(followupInfo.registrationCost);
        $('#registrationRate').val(followupInfo.registrationRate);
        $('#laboratoryCost').val(followupInfo.laboratoryCost);
        $('#laboratoryRate').val(followupInfo.laboratoryRate);
        $('#iconographyCost').val(followupInfo.iconographyCost);
        $('#iconographyRate').val(followupInfo.iconographyRate);
        $('#drugCost').val(followupInfo.drugCost);
        $('#drugRate').val(followupInfo.drugRate);
        $('#otherCost').val(followupInfo.otherCost);
        $('#otherRate').val(followupInfo.otherRate);
        $('#totalCost').val(followupInfo.totalCost);
        $('#otherCostName').val(followupInfo.otherCostName);
        $('#totalRate').val(followupInfo.totalRate);
        $('#CostItemTable tbody').find('tr.costItemAdded').each(function () {
            $(this).remove();
        });
        if(followupInfo.otherCostItems) {
            followupInfo.otherCostItems.forEach(function (entry,index) {
                var length = $('#CostItemTable tbody').find('tr').length;
                var element = $('<tr class="costItemAdded" data-id="'+entry.id+'" data-index="'+length+'"></tr>');
                element.append($('<td>其他:&nbsp;<input name="name" value="'+entry.name+'" type="text" style="width: 200px;"/></td>'));
                element.append($('<td><input type="text" value="'+entry.value+'" style="width:300px;" class=" cmSize"/></td>'));
                element.append($('<td><input type="text" value="'+entry.rate+'" style="width:300px;" class=" cmSize"/></td>'));
                element.append($('<td><a style="cursor: pointer;color:red" onclick="$(this).parent().parent().remove()"><i class="ace-icon fa fa-close"></i>删除</a></td>'));
                $('#CostItemTable tbody').append(element);
            });
        }
    }
    //第四页填充结束
    if(patient.acqDescription){
        $('#acqDescription').val(patient.acqDescription);
    }
    if(patient.fupDescription){
        $('#fupDescription').val(patient.fupDescription);
    }
}

function prepareDataFollowup() {
    var diagnosisId = $('#diagnosisInfoId').val();
    var followupId = $('#followupId').val();
    var diagnosisComplicationStatuses = [];
    $('#BFZTable tbody').find("tr").each(function () {
        var index = $(this).attr("data-index")
        if (index <= 10) { //内建的
            diagnosisComplicationStatuses.push({
                id: $(this).attr("data-id"),
                item: $(this).find('td').eq(0).html(),
                index: index,
                result: $(this).find('td').eq(1).find('input[type="radio"]:checked').val(),
                diagnosisId: diagnosisId
            });
        } else {
            diagnosisComplicationStatuses.push({
                id: $(this).attr("data-id"),
                item: $(this).find('td').eq(0).find('input').val(),
                index: index,
                result: $(this).find('td').eq(1).find('input[type="radio"]:checked').val(),
                diagnosisId: diagnosisId
            });
        }
    });
    var diagnosisComplicationItems = [];
    $('#historyTable tbody').find('tr').each(function () {
        var index = $(this).attr("data-index")
        diagnosisComplicationItems.push({
            id: $(this).attr("data-id"),
            name: $(this).find('td').eq(0).find('input').val(),
            index: index,
            diagnosisDate: $(this).find('td').eq(1).find('input').val(),
            diagnosisId: diagnosisId
        });
    });
    var diagnosisPlasmacyteItems = [];
    $('#gcccheckItemTable tbody').find('tr').each(function () {
        var index = $(this).attr("data-index")
        if (index <= 5) { //内建的
            diagnosisPlasmacyteItems.push({
                id: $(this).attr("data-id"),
                type: $(this).find('td').eq(0).html(),
                index: index,
                rate: $(this).find('td').eq(1).find('input').val(),
                diagnosisId: diagnosisId
            });
        } else {
            diagnosisPlasmacyteItems.push({
                id: $(this).attr("data-id"),
                type: $(this).find('td').eq(0).find('input').val(),
                index: index,
                rate: $(this).find('td').eq(1).find('input').val(),
                diagnosisId: diagnosisId
            });
        }
    });
    var diagnosisIconographyItems = [];
    $('#checkItemTable tbody').find('tr').each(function () {
        var index = $(this).attr("data-index")
        if (index <= 5) { //内建的
            diagnosisIconographyItems.push({
                id: $(this).attr("data-id"),
                item: $(this).find('td').eq(0).html(),
                index: index,
                position: $(this).find('td').eq(1).find('textarea').val(),
                count: $(this).find('td').eq(2).find('textarea').val(),
                diagnosisId: diagnosisId
            });
        } else {
            diagnosisIconographyItems.push({
                id: $(this).attr("data-id"),
                item: $(this).find('td').eq(0).find('input').val(),
                index: index,
                position: $(this).find('td').eq(1).find('textarea').val(),
                count: $(this).find('td').eq(2).find('textarea').val(),
                diagnosisId: diagnosisId
            });
        }
    });
    var diagnosisParenchymaItems = [];
    $('#rzzCheckItemTable tbody').find('tr').each(function () {
        var index = $(this).attr("data-index")
        if (index <= 3) { //内建的
            diagnosisParenchymaItems.push({
                id: $(this).attr("data-id"),
                item: $(this).find('td').eq(0).html(),
                index: index,
                position: $(this).find('td').eq(1).find('textarea').val(),
                length: $(this).find('td').eq(2).find('input').eq(0).val(),
                width: $(this).find('td').eq(2).find('input').eq(1).val(),
                diagnosisId: diagnosisId
            });
        } else {
            diagnosisParenchymaItems.push({
                id: $(this).attr("data-id"),
                item: $(this).find('td').eq(0).find('input').val(),
                index: index,
                position: $(this).find('td').eq(1).find('textarea').val(),
                length: $(this).find('td').eq(2).find('input').eq(0).val(),
                width: $(this).find('td').eq(2).find('input').eq(1).val(),
                diagnosisId: diagnosisId
            });
        }
    });
    var diagnosisFishItems = [];
    var diagnosisFishStatus = $('input[name="fishexception"]:checked').val();
    if (diagnosisFishStatus == 1) {
        $('#fishcheckItemTable tbody').find('tr').each(function () {
            var index = $(this).attr("data-index")
            if (index <= 7) { //内建的
                diagnosisFishItems.push({
                    id: $(this).attr("data-id"),
                    item: $(this).find('td').eq(0).html(),
                    index: index,
                    rate: $(this).find('td').eq(1).find('input').val(),
                    diagnosisId: diagnosisId
                });
            } else {
                diagnosisFishItems.push({
                    id: $(this).attr("data-id"),
                    item: $(this).find('td').eq(0).find('input').val(),
                    index: index,
                    rate: $(this).find('td').eq(1).find('input').val(),
                    diagnosisId: diagnosisId
                });
            }
        });
    }

    var followupComplicationStatuses = [];
    $('#followupComplicationStatusTable tbody').find("tr").each(function () {
        var index = $(this).attr("data-index")
        if (index <= 10) { //内建的
            followupComplicationStatuses.push({
                id: $(this).attr("data-id"),
                item: $(this).find('td').eq(0).html(),
                index: index,
                result: $(this).find('td').eq(1).find('input[type="radio"]:checked').val(),
                followupId: followupId
            });
        } else {
            followupComplicationStatuses.push({
                id: $(this).attr("data-id"),
                item: $(this).find('td').eq(0).find('input').val(),
                index: index,
                result: $(this).find('td').eq(1).find('input[type="radio"]:checked').val(),
                followupId: followupId
            });
        }
    });
    var followupLaboratoryExamination = [];
    $('#followupLaboratoryExamination tbody').find("tr").each(function () {
        var index = $(this).attr("data-index")
        if (index <= 10) { //内建的
            followupLaboratoryExamination.push({
                id: $(this).attr("data-id"),
                item: $(this).find('td').eq(0).html(),
                index: index,
                result: $(this).find('td').eq(1).find('input[type="radio"]:checked').val(),
                followupId: followupId
            });
        } else {
            followupLaboratoryExamination.push({
                id: $(this).attr("data-id"),
                item: $(this).find('td').eq(0).find('input').val(),
                index: index,
                result: $(this).find('td').eq(1).find('input[type="radio"]:checked').val(),
                followupId: followupId
            });
        }
    });
    var followupPlasmacyteItems = [];
    $('#followupPlasmactyeItem tbody').find('tr').each(function () {
        var index = $(this).attr("data-index");
        if (index <= 5) { //内建的
            followupPlasmacyteItems.push({
                //id: $(this).attr("data-id"),
                type: $(this).find('td').eq(0).html(),
                index: index,
                rate: $(this).find('td').eq(1).find('input').val(),
                followupId: followupId
            });
        } else {
            followupPlasmacyteItems.push({
                // id: $(this).attr("data-id"),
                type: $(this).find('td').eq(0).find('input').val(),
                index: index,
                rate: $(this).find('td').eq(1).find('input').val(),
                followupId: followupId
            });
        }
    });
    var followupIconographyItems = [];
    $('#followupIconographyItemTable tbody').find('tr').each(function () {
        var index = $(this).attr("data-index")
        if (index <= 5) { //内建的
            followupIconographyItems.push({
                id: $(this).attr("data-id"),
                item: $(this).find('td').eq(0).html(),
                index: index,
                position: $(this).find('td').eq(1).find('textarea').val(),
                count: $(this).find('td').eq(2).find('textarea').val(),
                followupId: followupId
            });
        } else {
            followupIconographyItems.push({
                id: $(this).attr("data-id"),
                item: $(this).find('td').eq(0).find('input').val(),
                index: index,
                position: $(this).find('td').eq(1).find('textarea').val(),
                count: $(this).find('td').eq(2).find('textarea').val(),
                followupId: followupId
            });
        }
    });
    var followupParenchymaItems = [];
    $('#followUpParenchymaItemTable tbody').find('tr').each(function () {
        var index = $(this).attr("data-index")
        if (index <= 3) { //内建的
            followupParenchymaItems.push({
                id: $(this).attr("data-id"),
                item: $(this).find('td').eq(0).html(),
                index: index,
                position: $(this).find('td').eq(1).find('textarea').val(),
                length: $(this).find('td').eq(2).find('input').eq(0).val(),
                width: $(this).find('td').eq(2).find('input').eq(1).val(),
                followupId: followupId
            });
        } else {
            followupParenchymaItems.push({
                id: $(this).attr("data-id"),
                item: $(this).find('td').eq(0).find('input').val(),
                index: index,
                position: $(this).find('td').eq(1).find('textarea').val(),
                length: $(this).find('td').eq(2).find('input').eq(0).val(),
                width: $(this).find('td').eq(2).find('input').eq(1).val(),
                followupId: followupId
            });
        }
    });
    var followupChemotherapyItems = [];
    $('#followupChemotherapyItemTable tbody').find('tr').each(function () {
        var index = $(this).attr("data-index")
        followupChemotherapyItems.push({
            //id: $(this).attr("data-id"),
            index: index,
            //name: $(this).find('td').eq(0).find('select[id="followupChemotherapyItemName"]').val(),
            name: $(this).find('td').eq(0).find('input[id="followupChemotherapyName"]').val(),
            consumption: $(this).find('td').eq(1).find('input').val(),
           //consumptionSize: $(this).find('td').eq(2).find('select[id="consumptionSize"]').val(),
            consumptionSize: $(this).find('td').eq(2).find('input[id="consumptSize"]').val(),
            frequency: $(this).find('td').eq(3).find('input').val(),
            buyOuter: $(this).find('td').eq(4).find('input[type="radio"]:checked').val(),
            followupId: followupId
        });
    });
    var badInformationStatus = $("input[name='badInformationStatus']:checked").val();
    var followupBadinformationItems = [];
    if (badInformationStatus == 1) {
        $('#followupBadInformationTable  tbody').find('tr').each(function () {
            followupBadinformationItems.push({
                id: $(this).attr('data-id'),
                followupId: followupId,
                index: $(this).attr('data-index'),
                badinformationName: $(this).find('input[name="badinformationName"]').val(),
                badinformationDate: $(this).find('input[name="badinformationDate"]').val(),
                badinformationLevel: $(this).find('input.badinformationLevel:checked').val(),
                badinformationCctaeStatus: $(this).find('input.badinformationCctaeStatus:checked').val(),
                badinformationCctaeLevel: $(this).find('input.badinformationCctaeLevel:checked').val(),
                badinformationMedicineRealation: $(this).find('input.badinformationMedicineRealation:checked').val(),
                badinformationNonMedicineRealation: $(this).find('input.badinformationNonMedicineRealation:checked').val(),
                badinformationSpecialInformation: $(this).find('input.badinformationSpecialInformation:checked').val(),
                badinformationPregnant: $(this).find('input.badinformationPregnant:checked').val(),
                badinformationOutcomeOfSubjects: $(this).find('input.badinformationOutcomeOfSubjects:checked').val(),
                badinformationCritical: $(this).find('input.badinformationCritical:checked').val()
            })
        });
    }
    var otherCostItems = [];
    $('#CostItemTable tbody').find('tr.costItemAdded').each(function () {
        var index = $(this).attr("data-index")
        otherCostItems.push({
            id: $(this).attr("data-id"),
            name: $(this).find('td').eq(0).find('input').val(),
            value: $(this).find('td').eq(1).find('input').val(),
            rate: $(this).find('td').eq(2).find('input').val(),
            index: index
        });
    });

    return {
        id: $('#patientIdField').val(),
        fkhospitalid: $('#fkhospitalid').val(),
        fkdiagnosisid: $('#diagnosisInfoId').val(),
        followupid: $('#followupId').val(),
        birthday: $('#birthday').val(),
        gender: $("input[name='gender']:checked").val(),
        nation: $("input[name='nation']:checked").val(),
        nationOther: $('#nationOther').val(),
        place: $('#place').val(),
        height: $('#height').val(),
        weight: $('#weight').val(),
        bodysurfacearea: $('#bodysurfacearea').val(),
        smokingStatus: $("input[name='smokingStatus']:checked").val(),
        drinkStatus: $("input[name='drinkStatus']:checked").val(),
        ecogMark: $('#ecogMark').val(),
        karnofskyMark: $('#karnofskyMark').val(),
        familyIncome: $('#familyIncome').val(),
        maritalStatus: $('#maritalStatus').val(),
        eduLevel: $('#eduLevel').val(),
        jobStatus: $('#jobStatus').val(),
        insuranceType: $('#insuranceType').val(),
        otherInsurance: $('#otherInsurance').val(),
        diagnosisInfo: {
            id: diagnosisId,
            diagnosisDate: $('#diagnosisDate').val(),
            diagnosisSTXTime: $('#diagnosisSTXTime').val(),
            invasionDiagnosis: $("input[name='invasionDiagnosis']:checked").val(),
            clinicTypeDS: $("input[name='clinicTypeDS']:checked").val(),
            clinicTypeISS: $("input[name='clinicTypeISS']:checked").val(),
            diagnosisImmunoglobulinIgg: $("input[name='diagnosisImmunoglobulinIgg']:checked").val(),
            diagnosisImmunoglobulinIga: $("input[name='diagnosisImmunoglobulinIga']:checked").val(),
            diagnosisImmunoglobulinIgm: $("input[name='diagnosisImmunoglobulinIgm']:checked").val(),
            diagnosisImmunoglobulinIgd: $("input[name='diagnosisImmunoglobulinIgd']:checked").val(),
            diagnosisImmunoglobulinIge: $("input[name='diagnosisImmunoglobulinIge']:checked").val(),
            diagnosisImmunoglobulinLightChain: $("input[name='diagnosisImmunoglobulinLightChain']:checked").val(),
            diagnosisImmunoglobulinDoubleClone: $("#diagnosisImmunoglobulinDoubleClone").is(':checked') ? 1 : 0,/*
            diagnosisImmunoglobulinSecretion: $("#diagnosisImmunoglobulinSecretion").is(':checked') ? 1 : 0,
            diagnosisImmunoglobulinEvaluate: $("#diagnosisImmunoglobulinEvaluate").is(':checked') ? 1 : 0,*/
            diagnosisComplicationStatuses: diagnosisComplicationStatuses,
            diagnosisComplicationItems: diagnosisComplicationItems,
            diagnosisLaboratoryExamination: {
                id: $('#diagnosisLaboratoryExaminationId').val(),
                diagnosisExaminationXueStatus: $("input[name='diagnosisExaminationXueStatus']:checked").val(),
                diagnosisExaminationXIgg: $("input[name='diagnosisExaminationXIgg']:checked").val(),
                diagnosisExaminationXIga: $("input[name='diagnosisExaminationXIga']:checked").val(),
                diagnosisExaminationXIgm: $("input[name='diagnosisExaminationXIgm']:checked").val(),
                diagnosisExaminationXIge: $("input[name='diagnosisExaminationXIge']:checked").val(),
                diagnosisExaminationXIgd: $("input[name='diagnosisExaminationXIgd']:checked").val(),
                diagnosisExaminationXkLightChain: $("input[name='diagnosisExaminationXkLightChain']:checked").val(),
                diagnosisExaminationXnLightChain: $("input[name='diagnosisExaminationXnLightChain']:checked").val(),
                diagnosisExaminationNnStatus: $("input[name='diagnosisExaminationNnStatus']:checked").val(),
                diagnosisExaminationNkLightChain: $("input[name='diagnosisExaminationNkLightChain']:checked").val(),
                diagnosisExaminationNnLightChain: $("input[name='diagnosisExaminationNnLightChain']:checked").val(),
                diagnosisExaminationNIgg: $("input[name='diagnosisExaminationNIgg']").val(),
                diagnosisExaminationNIga: $("input[name='diagnosisExaminationNIga']").val(),
                diagnosisExaminationNIgm: $("input[name='diagnosisExaminationNIgm']").val(),
                diagnosisExaminationNIge: $("input[name='diagnosisExaminationNIge']").val(),
                diagnosisExaminationNIgd: $("input[name='diagnosisExaminationNIgd']").val(),
                diagnosisExaminationXkLightChainStatus: $("input[name='diagnosisExaminationXkLightChainStatus']:checked").val(),
                diagnosisExaminationXYkLightChain: $("input[name='diagnosisExaminationXYkLightChain']").val(),
                diagnosisExaminationXYnLightChain: $("input[name='diagnosisExaminationXYnLightChain']").val(),
                diagnosisExaminationXYknLightChain: $("input[name='diagnosisExaminationXYknLightChain']").val(),
                diagnosisExaminationNStatus: $("input[name='diagnosisExaminationNStatus']:checked").val(),
                diagnosisExaminationNMkLightChain: $("input[name='diagnosisExaminationNMkLightChain']").val(),
                diagnosisExaminationNMnLightChain: $("input[name='diagnosisExaminationNMnLightChain']").val(),
                diagnosisExaminationH24: $("input[name='diagnosisExaminationH24']").val(),
                diagnosisTopMP: $("input[name='diagnosisTopMP']").val(),
                diagnosisMPResult: $("input[name='diagnosisMPResult']").val(),
            },
            diagnosisPlasmacyteItems: diagnosisPlasmacyteItems,
            diagnosisIconographyItems: diagnosisIconographyItems,
            diagnosisParenchymaItems: diagnosisParenchymaItems,
            diagnosisFishStatus: diagnosisFishStatus,
            diagnosisFishItems: diagnosisFishItems
        },
        //mmCureHistories: mmCureHistories,
        followupInfo: {
            id:followupId,
            followupsites:$("input[name='followupsites']:checked").val(),
            invasionDiagnosis: $("input[name='followupInvasionDiagnosis']:checked").val(),
            followupProgress: $("input[name='followupProgress']:checked").val(),
            badInformationStatus: $("input[name='badInformationStatus']:checked").val(),
            clinicalStagesDS: $("input[name='clinicalStagesDS']:checked").val(),
            clinicalStagesISS: $("input[name='clinicalStagesISS']:checked").val(),
            followupComplicationStatuses: followupComplicationStatuses,
            followupBadinformationItems: followupBadinformationItems,
            followupLaboratoryExamination: {
                id: followupId,
                followupExaminationXueStatus: $("input[name='followupExaminationXueStatus']:checked").val(),
                followupExaminationXIgg: $("input[name='followupExaminationXIgg']:checked").val(),
                followupExaminationXIga: $("input[name='followupExaminationXIga']:checked").val(),
                followupExaminationXIgm: $("input[name='followupExaminationXIgm']:checked").val(),
                followupExaminationXIge: $("input[name='followupExaminationXIge']:checked").val(),
                followupExaminationXIgd: $("input[name='followupExaminationXIgd']:checked").val(),
                followupExaminationXkLightChain: $("input[name='followupExaminationXkLightChain']:checked").val(),
                followupExaminationXnLightChain: $("input[name='followupExaminationXnLightChain']:checked").val(),
                followupExaminationNnStatus: $("input[name='followupExaminationNnStatus']:checked").val(),
                followupExaminationNkLightChain: $("input[name='followupExaminationNkLightChain']:checked").val(),
                followupExaminationNnLightChain: $("input[name='followupExaminationNnLightChain']:checked").val(),
                followupExaminationNIgg: $("input[name='followupExaminationNIgg']").val(),
                followupExaminationNIga: $("input[name='followupExaminationNIga']").val(),
                followupExaminationNIgm: $("input[name='followupExaminationNIgm']").val(),
                followupExaminationNIge: $("input[name='followupExaminationNIge']").val(),
                followupExaminationNIgd: $("input[name='followupExaminationNIgd']").val(),
                followupExaminationXkLightChainStatus: $("input[name='followupExaminationXkLightChainStatus']:checked").val(),
                followupExaminationNMStatus: $("input[name='followupExaminationNMStatus']:checked").val(),
                followupExaminationXYkLightChain: $("input[name='followupExaminationXYkLightChain']").val(),
                followupExaminationXYnLightChain: $("input[name='followupExaminationXYnLightChain']").val(),
                followupExaminationXYknLightChain: $("input[name='followupExaminationXYknLightChain']").val(),
                followupExaminationNMkLightChain: $("input[name='followupExaminationNMkLightChain']").val(),
                followupExaminationNMnLightChain: $("input[name='followupExaminationNMnLightChain']").val(),
                followupExaminationH24: $("input[name='followupExaminationH24']").val(),
                followupTotalProtein: $("input[name='followupTotalProtein']").val(),
                followupGlobulinProtein: $("input[name='followupGlobulinProtein']").val(),
                followupWhiteProtein: $("input[name='followupWhiteProtein']").val(),
                followupAminotransferase: $("input[name='followupAminotransferase']").val(),
                followupAst: $("input[name='followupAst']").val(),
                followupGgt: $("input[name='followupGgt']").val(),
                followupLdh: $("input[name='followupLdh']").val(),
                followupUrea: $("input[name='followupUrea']").val(),
                followupCr: $("input[name='followupCr']").val(),
                followupCa: $("input[name='followupCa']").val(),
                followupPhoshatase: $("input[name='followupPhoshatase']").val(),
                followupBeta2GlobulinProtein: $("input[name='followupBeta2GlobulinProtein']").val(),
                followupWhiteBloodCell: $("input[name='followupWhiteBloodCell']").val(),
                followupNeutrophils: $("input[name='followupNeutrophils']").val(),
                followupLymphocyte: $("input[name='followupLymphocyte']").val(),
                followupHemoglobin: $("input[name='followupHemoglobin']").val(),
                followupPlateletCount: $("input[name='followupPlateletCount']").val(),
            },
            followupPlasmacyteItems: followupPlasmacyteItems,
            followupIconographyItems: followupIconographyItems,
            followupParenchymaItems: followupParenchymaItems,
            followupChemotherapyItems: followupChemotherapyItems,
            inHelpProject: $("input[name='inHelpProject']:checked").val(),
            curePlanStepOther: $("#curePlanStepOther").val(),
            curePlanStep: $("#curePlanStep").select2('val'),
            helpProjectName: $('#helpProjectName').val(),
            helpProjectStartDate: $('#helpProjectStartDate').val(),
            helpProjectEndDate: $('#helpProjectEndDate').val(),
            evaluateStatus: $("input[name='evaluateStatus']:checked").val(),
            evaluateRule: $("input[name='followupEvaluateRule']:checked").val(),
            evaluateRuleOther: $('#followupEvaluateRuleOther').val(),
            evaluateResult: $('#followupEstimateResult').val(),
            evaluateResultOther: $('#followUpflagTFCheckCheckEstimateResultOther').val(),
            times: $('#times').val(),
            timesEmergency: $('#timesEmergency').val(),
            lastCostMed: $('#lastCostMed').val(),
            lastCostNonMed: $('#lastCostNonMed').val(),
            lastCostTotal: $('#lastCostTotal').val(),
            lastEmergencyCostMed: $('#lastEmergencyCostMed').val(),
            lastEmergencyCostNonMed: $('#lastEmergencyCostNonMed').val(),
            lastEmergencyCostToal: $('#lastEmergencyCostToal').val(),
            registrationCost: $('#registrationCost').val(),
            registrationRate: $('#registrationRate').val(),
            laboratoryCost: $('#laboratoryCost').val(),
            laboratoryRate: $('#laboratoryRate').val(),
            iconographyCost: $('#iconographyCost').val(),
            iconographyRate: $('#iconographyRate').val(),
            drugCost: $('#drugCost').val(),
            drugRate: $('#drugRate').val(),
            otherCost: $('#otherCost').val(),
            otherRate: $('#otherRate').val(),
            otherCostName: $('#otherCostName').val(),
            totalCost: $('#totalCost').val(),
            totalRate: $('#totalRate').val(),
            otherCostItems:otherCostItems
        },
        acqDescription:$('#acqDescription').val(),
        fupDescription:$('#fupDescription').val()

    };
}
//-----------------------------------------------------------------------------------------------------------

function setupData(patient) {
    $('#patientIdField').val(patient.id);
    $('#fkhospitalid').val(patient.fkhospitalid);
    //填充第一页数据
    $("input[name=gender][value='" + patient.gender + "']").prop("checked", true);
    $("input[name=nation][value='" + patient.nation + "']").prop("checked", true);
    $("input[name=smokingStatus][value='" + patient.smokingStatus + "']").prop("checked", true);
    $("input[name=drinkStatus][value='" + patient.drinkStatus + "']").prop("checked", true);
    $('#place').select2('val', patient.place);
    $('#ecogMark').select2('val', patient.ecogMark);
    $('#birthday').val(patient.birthday);
    $('#maritalStatus').select2('val', patient.maritalStatus);
    $('#eduLevel').select2('val', patient.eduLevel);
    $('#jobStatus').select2('val', patient.jobStatus);
    $('#insuranceType').select2('val', patient.insuranceType);
    if (patient.nation != 1) {
        $('#nationOther').val(patient.nationOther);
    }
    $('#height').val(patient.height);
    $('#weight').val(patient.weight);
    $('#bodysurfacearea').val(patient.bodysurfacearea);
    $('#karnofskyMark').val(patient.karnofskyMark);
    if (patient.insuranceType == 6) {
        $('#otherInsuranceLabel').show();
        $('#otherInsurance').show();
        $('#otherInsurance').val(patient.otherInsurance);

    }
    //填充第一页数据结束
    var diagnosisInfo = patient.diagnosisInfo;
    //填充第二页数据
    if (diagnosisInfo) {
        $('#diagnosisInfoId').val(diagnosisInfo.id);
        $('#diagnosisDate').val(diagnosisInfo.diagnosisDate);
        $("input[name=invasionDiagnosis][value='" + diagnosisInfo.invasionDiagnosis + "']").prop("checked", true);
        $("input[name=clinicTypeDS][value='" + diagnosisInfo.clinicTypeDS + "']").prop("checked", true);
        $("input[name=clinicTypeISS][value='" + diagnosisInfo.clinicTypeISS + "']").prop("checked", true);
        $("input[name=diagnosisImmunoglobulinIgg][value='" + diagnosisInfo.diagnosisImmunoglobulinIgg + "']").prop("checked", true);
        $("input[name=diagnosisImmunoglobulinIga][value='" + diagnosisInfo.diagnosisImmunoglobulinIga + "']").prop("checked", true);
        $("input[name=diagnosisImmunoglobulinIgm][value='" + diagnosisInfo.diagnosisImmunoglobulinIgm + "']").prop("checked", true);
        $("input[name=diagnosisImmunoglobulinIgd][value='" + diagnosisInfo.diagnosisImmunoglobulinIgd + "']").prop("checked", true);
        $("input[name=diagnosisImmunoglobulinIge][value='" + diagnosisInfo.diagnosisImmunoglobulinIge + "']").prop("checked", true);
        $("input[name=diagnosisImmunoglobulinLightChain][value='" + diagnosisInfo.diagnosisImmunoglobulinLightChain + "']").prop("checked", true);
        $("#diagnosisImmunoglobulinDoubleClone").prop("checked", diagnosisInfo.diagnosisImmunoglobulinDoubleClone == 1);/*
        $("#diagnosisImmunoglobulinSecretion").prop("checked", diagnosisInfo.diagnosisImmunoglobulinSecretion == 1);
        $("#diagnosisImmunoglobulinEvaluate").prop("checked", diagnosisInfo.diagnosisImmunoglobulinEvaluate == 1);*/
        if (diagnosisInfo.diagnosisComplicationStatuses) {
            diagnosisInfo.diagnosisComplicationStatuses.forEach(function (entry, index) {
                if (entry.index <= 10) {
                    if(entry.index==5&&entry.result==1) {
                        $('#trSTX').show();
                    }
                    if(entry.index==6&&entry.result==1) {
                        $('#diagnosisSTXTimeDiv').show();
                        $('#diagnosisSTXTime').val(diagnosisInfo.diagnosisSTXTime);
                    }
                    $('#BFZTable tbody').find("tr").eq(entry.index - 1).attr('data-id', entry.id);
                    $('#BFZTable tbody').find("tr").eq(entry.index - 1).find("td").eq(1).find('input[type="radio"][value="' + entry.result + '"]').prop("checked", true);
                } else {
                    var length = $('#BFZTable tbody').find('tr').length+1;
                    var element = $('<tr data-id="' + entry.id + '" data-index="' + length + '"></tr>');
                    element.append($('<td>其他:&nbsp;<input type="text" value="' + entry.item + '" type="text"style="width: 300px;"/></td>'));
                    element.append($('<td><label><input value="1" type="radio" class="ace" name="BFZTableTr'+length+'" /> <span class="lbl">是</span> ' +
                    '</label></td>'));
                    if (entry.index == 11) {
                        element.append($(' <td><a style="cursor: pointer;" id="addBFZbtn"><i class="ace-icon fa fa-plus-circle"></i>新增</a></td>'));
                        $('#BFZTable tbody').append(element);

                        $('#addBFZbtn').on('click', function () {
                            var length = $('#BFZTable tbody').find('tr').length+1;
                            var element = $('<tr data-id="0" data-index="' + length + '"></tr>');
                            element.append($('<td>其他:&nbsp;<input type="text" type="text"style="width: 300px;"/></td>'));
                            element.append($('<td><label><input value="1" type="radio" class="ace" name="BFZTableTr'+length+'" /> <span class="lbl">是</span> ' +
                            '</label></td>'));
                            element.append($('<td><a style="cursor: pointer;color:red" onclick="$(this).parent().parent().remove()"><i class="ace-icon fa fa-close"></i>删除</a></td>'));
                            $('#BFZTable tbody').append(element);
                        });
                    } else {
                        element.append($('<td><a style="cursor: pointer;color:red" onclick="$(this).parent().parent().remove()"><i class="ace-icon fa fa-close"></i>删除</a></td>'));
                        $('#BFZTable tbody').append(element);
                    }
                    $('#BFZTable tbody').find('input[name="BFZTableTr' + length + '"][value="' + entry.result + '"]').prop("checked", true);
                }
            });
        }

        if (diagnosisInfo.diagnosisComplicationItems) {
            diagnosisInfo.diagnosisComplicationItems.forEach(function (entry, index) {
                if (entry.index == 1) {
                    $('#historyTable tbody').find("tr").eq(0).attr("data-id", entry.index);
                    $('#historyTable tbody').find("tr").eq(0).find('td').eq(0).find('input').val(entry.name);
                    // $('#historyTable tbody').find("tr").eq(0).find('td').eq(1).find('input').val(entry.diagnosisDate);
                } else {
                    var length = $('#historyTable tbody').find('tr').length+1;
                    var element = $('<tr data-id="' + entry.id + '" data-index="' + length + '"></tr>');
                    element.append($('<td><input type="text" style="width:350px;" name="name" value="' + entry.name + '"/></td>'));
                    // element.append($('<td><div class="input-group"><span class="input-group-addon"><i class="ace-icon fa fa-calendar"></i></span><input type="text" name="historyDay'+entry.index+'" value="' + entry.diagnosisDate + '" class="form-control dataDay" style="width:265px"/></div></td>'));
                    element.append($('<td><a style="cursor: pointer;color:red" onclick="$(this).parent().parent().remove()"><i class="ace-icon fa fa-close"></i>删除</a></td>'));
                    $('#historyTable tbody').append(element);
                }
            });
        }
        if (diagnosisInfo.diagnosisLaboratoryExamination) {
            var diagnosisLaboratoryExamination = diagnosisInfo.diagnosisLaboratoryExamination;
            $('#diagnosisLaboratoryExaminationId').val(diagnosisLaboratoryExamination.id);
            $("input[name=diagnosisExaminationXueStatus][value='" + diagnosisLaboratoryExamination.diagnosisExaminationXueStatus + "']").prop("checked", true);
            if (diagnosisLaboratoryExamination.diagnosisExaminationXueStatus == 1) {
                $('#trdiagnosisExaminationXIgg').show();
                $('#trdiagnosisExaminationXIga').show();
                $('#trdiagnosisExaminationXIgm').show();
                $('#trdiagnosisExaminationXIge').show();
                $('#trdiagnosisExaminationXIgd').show();
                $('#trdiagnosisExaminationXkLightChain').show();
                $('#trdiagnosisExaminationXnLightChain').show();
            }
            $("input[name=diagnosisExaminationXIgg][value='" + diagnosisLaboratoryExamination.diagnosisExaminationXIgg + "']").prop("checked", true);
            $("input[name=diagnosisExaminationXIga][value='" + diagnosisLaboratoryExamination.diagnosisExaminationXIga + "']").prop("checked", true);
            $("input[name=diagnosisExaminationXIgm][value='" + diagnosisLaboratoryExamination.diagnosisExaminationXIgm + "']").prop("checked", true);
            $("input[name=diagnosisExaminationXIge][value='" + diagnosisLaboratoryExamination.diagnosisExaminationXIge + "']").prop("checked", true);
            $("input[name=diagnosisExaminationXIgd][value='" + diagnosisLaboratoryExamination.diagnosisExaminationXIgd + "']").prop("checked", true);
            $("input[name=diagnosisExaminationXkLightChain][value='" + diagnosisLaboratoryExamination.diagnosisExaminationXkLightChain + "']").prop("checked", true);
            $("input[name=diagnosisExaminationXnLightChain][value='" + diagnosisLaboratoryExamination.diagnosisExaminationXnLightChain + "']").prop("checked", true);
            $("input[name=diagnosisExaminationNnStatus][value='" + diagnosisLaboratoryExamination.diagnosisExaminationNnStatus + "']").prop("checked", true);
            if (diagnosisLaboratoryExamination.diagnosisExaminationNnStatus == 1) {
                $('#trdiagnosisExaminationNkLightChain').show();
                $('#trdiagnosisExaminationNnLightChain').show();
            }
            $("input[name=diagnosisExaminationNkLightChain][value='" + diagnosisLaboratoryExamination.diagnosisExaminationNkLightChain + "']").prop("checked", true);
            $("input[name=diagnosisExaminationNnLightChain][value='" + diagnosisLaboratoryExamination.diagnosisExaminationNnLightChain + "']").prop("checked", true);
            $("input[name='diagnosisExaminationNIgg']").val(diagnosisLaboratoryExamination.diagnosisExaminationNIgg);
            $("input[name='diagnosisExaminationNIga']").val(diagnosisLaboratoryExamination.diagnosisExaminationNIga);
            $("input[name='diagnosisExaminationNIgm']").val(diagnosisLaboratoryExamination.diagnosisExaminationNIgm);
            $("input[name='diagnosisExaminationNIge']").val(diagnosisLaboratoryExamination.diagnosisExaminationNIge);
            $("input[name='diagnosisExaminationNIgd']").val(diagnosisLaboratoryExamination.diagnosisExaminationNIgd);
            $("input[name=diagnosisExaminationXkLightChainStatus][value='" + diagnosisLaboratoryExamination.diagnosisExaminationXkLightChainStatus + "']").prop("checked", true);
            if (diagnosisLaboratoryExamination.diagnosisExaminationXkLightChainStatus == 1) {
                $('#trdiagnosisExaminationXYkLightChain').show();
                $('#trdiagnosisExaminationXYnLightChain').show();
                $('#trdiagnosisExaminationXYknLightChain').show();
            }
            $("input[name='diagnosisExaminationXYkLightChain']").val(diagnosisLaboratoryExamination.diagnosisExaminationXYkLightChain);
            $("input[name='diagnosisExaminationXYnLightChain']").val(diagnosisLaboratoryExamination.diagnosisExaminationXYnLightChain);
            $("input[name='diagnosisExaminationXYknLightChain']").val(diagnosisLaboratoryExamination.diagnosisExaminationXYknLightChain);
            $("input[name=diagnosisExaminationNStatus][value='" + diagnosisLaboratoryExamination.diagnosisExaminationNStatus + "']").prop("checked", true);
            if (diagnosisLaboratoryExamination.diagnosisExaminationNStatus == 1) {
                $('#trDiagnosisExaminationNMkLightChain').show();
                $('#trDiagnosisExaminationNMnLightChain').show();
            }
            $("input[name='diagnosisExaminationNMkLightChain']").val(diagnosisLaboratoryExamination.diagnosisExaminationNMkLightChain);
            $("input[name='diagnosisExaminationNMnLightChain']").val(diagnosisLaboratoryExamination.diagnosisExaminationNMnLightChain);
            $("input[name='diagnosisExaminationH24']").val(diagnosisLaboratoryExamination.diagnosisExaminationH24);
            $("input[name='diagnosisTopMP']").val(diagnosisLaboratoryExamination.diagnosisTopMP);
            $("input[name='diagnosisMPResult']").val(diagnosisLaboratoryExamination.diagnosisMPResult);
        }
        if (diagnosisInfo.diagnosisPlasmacyteItems) {
            diagnosisInfo.diagnosisPlasmacyteItems.forEach(function (entry, index) {
                if (entry.index <= 5) {
                    $('#gcccheckItemTable tbody').find("tr").eq(entry.index - 1).attr('data-id', entry.id);
                    $('#gcccheckItemTable tbody').find("tr").eq(entry.index - 1).find("td").eq(1).find('input').val(entry.rate);
                } else {
                    var element = $('<tr data-id="' + entry.id + '" data-index="' + entry.index + '"></tr>');
                    element.append($(' <td>其他:&nbsp;<input name="name" value="' + entry.type + '"  type="text" style="width: 300px;"/></td>'));
                    element.append($('<td><input type="text" class="zsxSize" id="other' + entry.index + '" name="other" value="' + entry.rate + '"/></td>'));
                    if (entry.index == 6) {
                        element.append($('<td> <a style="cursor: pointer;" id="gccaddCheckItemBtn"><i class="ace-icon fa fa-plus-circle"></i>新增</a></td>'));
                        $('#gcccheckItemTable tbody').append(element);
                        $('#gccaddCheckItemBtn').on('click', function () {
                            var length = $('#gcccheckItemTable tbody').find('tr').length + 1;
                            var element = $('<tr data-id="0" data-index="' + length + '"></tr>');
                            element.append($(' <td>其他:&nbsp;<input name="name"  type="text"style="width: 300px;"/></td>'));
                            element.append($('<td><input type="text" class="zsxSize" name="other" id="other0'+length+'"/></td>'));
                            element.append($('<td><a style="cursor: pointer;color:red" onclick="$(this).parent().parent().remove()"><i class="ace-icon fa fa-close"></i>删除</a></td>'));
                            $('#gcccheckItemTable tbody').append(element);
                            $('#gcccheckItemTableTd').attr('rowspan', $('#gcccheckItemTableTd').attr('rowspan') + 1);
                        });
                    } else {
                        element.append($('<td><a style="cursor: pointer;color:red" onclick="$(this).parent().parent().remove()"><i class="ace-icon fa fa-close"></i>删除</a></td>'));
                        $('#gcccheckItemTable tbody').append(element);
                    }
                    $('#gcccheckItemTableTd').attr('rowspan', $('#gcccheckItemTableTd').attr('rowspan') + 1);
                }
            });
        }
        if (diagnosisInfo.diagnosisIconographyItems) {
            diagnosisInfo.diagnosisIconographyItems.forEach(function (entry, index) {
                if (entry.index <= 5) {
                    $('#checkItemTable tbody').find("tr").eq(entry.index - 1).attr('data-id', entry.id);
                    $('#checkItemTable tbody').find("tr").eq(entry.index - 1).find("td").eq(1).find('textarea').val(entry.position);
                    $('#checkItemTable tbody').find("tr").eq(entry.index - 1).find("td").eq(2).find('textarea').val(entry.count);
                } else {
                    var element = $('<tr data-id="' + entry.id + '" data-index="' + entry.index + '"></tr>');
                    element.append($(' <td>其他:&nbsp;<input name="name" value="' + entry.item + '"  type="text" style="width: 300px;"/></td>'));
                    element.append($('<td><textarea class="autosize-transition form-control" style="overflow: hidden; word-wrap: break-word; resize: horizontal;">' + entry.position + '</textarea> </td>'));
                    element.append($('<td><textarea class="autosize-transition form-control" id="other'+ entry.index +'" style="overflow: hidden; word-wrap: break-word; resize: horizontal;">' + entry.count + '</textarea> </td>'));

                    if (entry.index == 6) {
                        element.append($('<td><a style="cursor: pointer;" id="addCheckItemBtn"><i class="ace-icon fa fa-plus-circle"></i>新增</a></td>'));
                        $('#checkItemTable tbody').append(element);
                        $('#addCheckItemBtn').on('click', function () {
                            var length = $('#checkItemTable tbody').find('tr').length + 1;
                            var element = $('<tr data-id="0" data-index="' + length + '"></tr>');
                            element.append($(' <td>其他:&nbsp;<input name="name"  type="text"style="width: 300px;"/></td>'));
                            element.append($('<td><textarea class="autosize-transition form-control" style="overflow: hidden; word-wrap: break-word; resize: horizontal;"></textarea> </td>'));
                            element.append($('<td><textarea class="autosize-transition form-control" id="other'+ length +'" style="overflow: hidden; word-wrap: break-word; resize: horizontal;"></textarea> </td>'));
                            element.append($('<td><a style="cursor: pointer;color:red" onclick="$(this).parent().parent().remove()"><i class="ace-icon fa fa-close"></i>删除</a></td>'));
                            $('#checkItemTable tbody').append(element);
                        });
                    } else {
                        element.append($('<td><a style="cursor: pointer;color:red" onclick="$(this).parent().parent().remove()"><i class="ace-icon fa fa-close"></i>删除</a></td>'));
                        $('#checkItemTable tbody').append(element);
                    }
                    $('#checkItemTable').attr('rowspan', $('#gcccheckItemTableTd').attr('rowspan') + 1);
                }
            });
        }
        if (diagnosisInfo.diagnosisParenchymaItems) {
            diagnosisInfo.diagnosisParenchymaItems.forEach(function (entry, index) {
                if (entry.index <= 3) {
                    $('#rzzCheckItemTable tbody').find("tr").eq(entry.index - 1).attr('data-id', entry.id);
                    $('#rzzCheckItemTable tbody').find("tr").eq(entry.index - 1).find("td").eq(1).find('textarea').val(entry.position);
                    $('#rzzCheckItemTable tbody').find("tr").eq(entry.index - 1).find("td").eq(2).find('input').eq(0).val(entry.length);
                    $('#rzzCheckItemTable tbody').find("tr").eq(entry.index - 1).find("td").eq(2).find('input').eq(1).val(entry.width);
                } else {
                    var element = $('<tr data-id="' + entry.id + '" data-index="' + entry.index + '"></tr>');
                    element.append($(' <td>其他:&nbsp;<input name="name" value="' + entry.item + '" type="text"style="width: 90px;"/></td>'));
                    element.append($('<td><textarea class="autosize-transition form-control"style="overflow: hidden; word-wrap: break-word; resize: horizontal;">' + entry.position + '</textarea> </td>'));
                    element.append($('<td><input type="text" value="' + entry.length + '" class="cmSize" id="other1'+ entry.index +'" />cm * <input type="text" class="cmSize" value="' + entry.width + '" id="other2'+ entry.index +'"/>cm </td>'));

                    if (entry.index == 4) {
                        element.append($('<td><a style="cursor: pointer;" id="rzzAddCheckItemBtn"><i class="ace-icon fa fa-plus-circle"></i>新增</a></td>'));
                        $('#rzzCheckItemTable tbody').append(element);
                        $('#rzzAddCheckItemBtn').on('click', function () {
                            var length = $('#rzzCheckItemTable tbody').find('tr').length + 1;
                            var element = $('<tr data-id="0" data-index="' + length + '"></tr>');
                            element.append($(' <td>其他:&nbsp;<input name="name"  type="text"style="width: 90px;"/></td>'));
                            element.append($('<td><textarea class="autosize-transition form-control"style="overflow: hidden; word-wrap: break-word; resize: horizontal;"></textarea> </td>'));
                            element.append($('<td><input type="text"  class="cmSize" id="other01'+ length +'" />cm * <input type="text"  class="cmSize" id="other01'+ length +'" />cm </td>'));
                            element.append($('<td><a style="cursor: pointer;color:red" onclick="$(this).parent().parent().remove()"><i class="ace-icon fa fa-close"></i>删除</a></td>'));
                            $('#rzzCheckItemTable tbody').append(element);
                        });
                    } else {
                        element.append($('<td><a style="cursor: pointer;color:red" onclick="$(this).parent().parent().remove()"><i class="ace-icon fa fa-close"></i>删除</a></td>'));
                        $('#rzzCheckItemTable tbody').append(element);
                    }
                }
            });
        }

        $("input[name=fishexception][value='" + diagnosisInfo.diagnosisFishStatus + "']").prop("checked", true);
        if (diagnosisInfo.diagnosisFishStatus == 1) {
            $('#trfishItem').show();
            $('#trfishIghItem').show();
            $('#trfish13qItem').show();
            $('#trfish17qItem').show();
            $('#trfish1q21Item').show();
            $('#trfisht414Item').show();
            $('#trfisht1114Item').show();
            $('#trfisht1416Item').show();
            if (diagnosisInfo.diagnosisFishItems) {
                diagnosisInfo.diagnosisFishItems.forEach(function (entry, index) {
                    if (entry.index <= 7) {
                        $('#fishcheckItemTable tbody').find("tr").eq(entry.index - 1).attr('data-id', entry.id);
                        $('#fishcheckItemTable tbody').find("tr").eq(entry.index - 1).find("td").eq(1).find('input').val(entry.rate);
                    } else {
                        if (entry.index == 8) {
                            var element = $('<tr id="trfishOtherItem" data-id="' + entry.id + '" data-index="' + entry.index + '"></tr>');
                            element.append($(' <td>其他:&nbsp;<input name="name" value="' + entry.item + '" type="text"style="width: 200px;"/></td>'));
                            element.append($('<td><input type="text" class="zsxSize" id="other'+entry.index+'" value="' + entry.rate + '" name="other"/></td>'));
                            element.append($('<td><a style="cursor: pointer;" id="fishaddCheckItemBtn"><i class="ace-icon fa fa-plus-circle"></i>新增</a></td>'));
                            $('#fishcheckItemTable tbody').append(element);
                            $('#fishaddCheckItemBtn').on('click', function () {
                                var length = $('#fishcheckItemTable tbody').find('tr').length + 1;
                                var element = $('<tr class="fishItemAdded" data-id="0" data-index="' + length + '"></tr>');
                                element.append($(' <td>其他:&nbsp;<input name="name"  type="text"style="width: 200px;"/></td>'));
                                element.append($('<td><input type="text" class="zsxSize" id="other0'+length+'" name="other"/></td>'));
                                element.append($('<td><a style="cursor: pointer;color:red" onclick="$(this).parent().parent().remove()"><i class="ace-icon fa fa-close"></i>删除</a></td>'));
                                $('#fishcheckItemTable tbody').append(element);
                            });
                        } else {
                            var length = $('#fishcheckItemTable tbody').find('tr').length + 1;
                            var element = $('<tr class="fishItemAdded" data-id="' + entry.id + '" data-index="' + entry.index + '"></tr>');
                            element.append($(' <td>其他:&nbsp;<input name="name" value="' + entry.item + '" type="text"style="width: 200px;"/></td>'));
                            element.append($('<td><input type="text" value="' + entry.rate + '" class="zsxSize" id="other0'+length+'" name="other"/></td>'));
                            element.append($('<td><a style="cursor: pointer;color:red" onclick="$(this).parent().parent().remove()"><i class="ace-icon fa fa-close"></i>删除</a></td>'));
                            $('#fishcheckItemTable tbody').append(element);
                        }
                    }
                });
            }
            if ((!diagnosisInfo.diagnosisFishItems) || (diagnosisInfo.diagnosisFishItems.length < 8)) {
                var element = $('<tr id="trfishOtherItem" data-id="0" data-index="8"></tr>');
                element.append($(' <td>其他:&nbsp;<input name="name"  type="text"style="width: 200px;"/></td>'));
                element.append($('<td><input type="text" name="other"  class="zsxSize" id="other'+diagnosisInfo.diagnosisFishItems.length+'"/></td>'));
                element.append($('<td><a style="cursor: pointer;" id="fishaddCheckItemBtn"><i class="ace-icon fa fa-plus-circle"></i>新增</a></td>'));
                $('#fishcheckItemTable tbody').append(element);
                $('#fishaddCheckItemBtn').on('click', function () {
                    var length = $('#fishcheckItemTable tbody').find('tr').length + 1;
                    var element = $('<tr class="fishItemAdded" data-id="0" data-index="' + length + '"></tr>');
                    element.append($(' <td>其他:&nbsp;<input name="name"  type="text"style="width: 200px;"/></td>'));
                    element.append($('<td><input type="text" name="other"  class="zsxSize" id="other0'+length+'"/></td>'));
                    element.append($('<td><a style="cursor: pointer;color:red" onclick="$(this).parent().parent().remove()"><i class="ace-icon fa fa-close"></i>删除</a></td>'));
                    $('#fishcheckItemTable tbody').append(element);
                });
            }
        }
    }
    if ((!diagnosisInfo) || (!diagnosisInfo.diagnosisComplicationStatuses) || diagnosisInfo.diagnosisComplicationStatuses.length <= 10) {
        var element = $('<tr data-id="0" data-index="11"></tr>');
        element.append($('<td>其他:&nbsp;<input type="text" type="text"style="width: 300px;"/></td>'));
        element.append($('<td><label class=" "><input value="1" type="radio" class="ace" name="BFZTableTr11' +
            '" /> <span class="lbl">是</span></label><label  ><input value="2" type="radio" class="ace" name="BFZTableTr11" /> <span class="lbl">否</span> </label> </td>'));
        element.append($(' <td><a style="cursor: pointer;" id="addBFZbtn"><i class="ace-icon fa fa-plus-circle"></i>新增</a></td>'));
        $('#BFZTable tbody').append(element);
        $('#addBFZbtn').on('click', function () {
            var length = $('#BFZTable tbody').find('tr').length+1;
            var element = $('<tr data-id="0" data-index="' + length + '"></tr>');
            element.append($('<td>其他:&nbsp;<input type="text" type="text"style="width: 300px;"/></td>'));
            element.append($('<td><label class=" "><input value="1" type="radio" class="ace" name="BFZTableTr' + length +
                '" /> <span class="lbl">是</span></label></td>'));
            element.append($('<td><a style="cursor: pointer;color:red" onclick="$(this).parent().parent().remove()"><i class="ace-icon fa fa-close"></i>删除</a></td>'));
            $('#BFZTable tbody').append(element);
        });
    }
    if ((!diagnosisInfo) || (!diagnosisInfo.diagnosisIconographyItems) || (diagnosisInfo.diagnosisIconographyItems.length < 6)) {
        var element = $('<tr data-id="0" data-index="6"></tr>');
        element.append($(' <td>其他:&nbsp;<input name="name"  type="text"style="width: 150px;"/></td>'));
        element.append($('<td><textarea class="autosize-transition form-control"style="overflow: hidden; word-wrap: break-word; resize: horizontal;"></textarea> </td>'));
        element.append($('<td><textarea class="autosize-transition form-control" id="other7"style="overflow: hidden; word-wrap: break-word; resize: horizontal;"></textarea> </td>'));
        element.append($('<td><a style="cursor: pointer;" id="addCheckItemBtn"><i class="ace-icon fa fa-plus-circle"></i>新增</a></td>'));
        $('#checkItemTable tbody').append(element);
        $('#addCheckItemBtn').on('click', function () {
            var length = $('#checkItemTable tbody').find('tr').length + 1;
            var element = $('<tr data-id="0" data-index="' + length + '"></tr>');
            element.append($(' <td>其他:&nbsp;<input name="name"  type="text"style="width: 150px;"/></td>'));
            element.append($('<td><textarea class="autosize-transition form-control" style="overflow: hidden; word-wrap: break-word; resize: horizontal;"></textarea> </td>'));
            element.append($('<td><textarea class="autosize-transition form-control" id="other0'+length+'" style="overflow: hidden; word-wrap: break-word; resize: horizontal;"></textarea> </td>'));
            element.append($('<td><a style="cursor: pointer;color:red" onclick="$(this).parent().parent().remove()"><i class="ace-icon fa fa-close"></i>删除</a></td>'));
            $('#checkItemTable tbody').append(element);
        });
    }
    if ((!diagnosisInfo) || (!diagnosisInfo.diagnosisPlasmacyteItems) || (diagnosisInfo.diagnosisPlasmacyteItems.length <= 5)) {

        var element = $('<tr data-id="0" data-index="6"></tr>');
        element.append($(' <td>其他:&nbsp;<input name="name" type="text" style="width: 300px;"/></td>'));
        element.append($('<td><input type="text" name="other"  id="other6" class="zsxSize" /></td>'));
        element.append($('<td> <a style="cursor: pointer;" id="gccaddCheckItemBtn"><i class="ace-icon fa fa-plus-circle"></i>新增</a></td>'));
        $('#gcccheckItemTable tbody').append(element);
        $('#gccaddCheckItemBtn').on('click', function () {
            var length = $('#gcccheckItemTable tbody').find('tr').length + 1;
            var element = $('<tr data-id="0" data-index="' + length + '"></tr>');
            element.append($(' <td>其他:&nbsp;<input name="name"  type="text"style="width: 300px;"/></td>'));
            element.append($('<td><input type="text" name="other"  id="other0'+length+'" class="zsxSize" /></td>'));
            element.append($('<td><a style="cursor: pointer;color:red" onclick="$(this).parent().parent().remove()"><i class="ace-icon fa fa-close"></i>删除</a></td>'));
            $('#gcccheckItemTable tbody').append(element);
            $('#gcccheckItemTableTd').attr('rowspan', $('#gcccheckItemTableTd').attr('rowspan') + 1);
        });
    }

    if ((!diagnosisInfo) || (!diagnosisInfo.diagnosisParenchymaItems) || (diagnosisInfo.diagnosisParenchymaItems.length < 4)) {
        var element = $('<tr data-id="0" data-index="4"></tr>');
        element.append($(' <td>其他:&nbsp;<input name="name"  type="text"style="width: 90px;"/></td>'));
        element.append($('<td><textarea class="autosize-transition form-control"style="overflow: hidden; word-wrap: break-word; resize: horizontal;"></textarea> </td>'));
        element.append($('<td><input type="text" class="cmSzie" id="other15"/>cm * <input type="text" class="cmSzie" />cm </td>'));
        element.append($('<td><a style="cursor: pointer;" id="rzzAddCheckItemBtn"><i class="ace-icon fa fa-plus-circle"></i>新增</a></td>'));
        $('#rzzCheckItemTable tbody').append(element);
        $('#rzzAddCheckItemBtn').on('click', function () {
            var length = $('#rzzCheckItemTable tbody').find('tr').length + 1;
            var element = $('<tr data-id="0" data-index="' + length + '"></tr>');
            element.append($(' <td>其他:&nbsp;<input name="name"  type="text"style="width: 90px;"/></td>'));
            element.append($('<td><textarea class="autosize-transition form-control"style="overflow: hidden; word-wrap: break-word; resize: horizontal;"></textarea> </td>'));
            element.append($('<td><input type="text" class="cmSize" id="other01'+length+'"/>cm * <input type="text" class="cmSize" id="other02'+length+'"//>cm </td>'));
            element.append($('<td><a style="cursor: pointer;color:red" onclick="$(this).parent().parent().remove()"><i class="ace-icon fa fa-close"></i>删除</a></td>'));
            $('#rzzCheckItemTable tbody').append(element);
        });
    }
    if ((!diagnosisInfo) || (!diagnosisInfo.diagnosisFishItems) || (diagnosisInfo.diagnosisFishItems.length < 8)) {
        var element = $('<tr id="trfishOtherItem" hidden data-id="0" data-index="8"></tr>');
        element.append($(' <td>其他:&nbsp;<input name="name"  type="text" style="width: 200px;"/></td>'));
        element.append($('<td><input type="text" name="other" class="zsxSize" id="other9"/></td>'));
        element.append($('<td><a style="cursor: pointer;" id="fishaddCheckItemBtn"><i class="ace-icon fa fa-plus-circle"></i>新增</a></td>'));
        $('#fishcheckItemTable tbody').append(element);
        $('#fishaddCheckItemBtn').on('click', function () {
            var length = $('#fishcheckItemTable tbody').find('tr').length + 1;
            var element = $('<tr data-id="0" class="fishItemAdded" data-index="' + length + '"></tr>');
            element.append($(' <td>其他:&nbsp;<input name="name"  type="text"style="width: 200px;"/></td>'));
            element.append($('<td><input type="text" name="other" class="zsxSize" id="other0'+length+'"/></td>'));
            element.append($('<td><a style="cursor: pointer;color:red" onclick="$(this).parent().parent().remove()"><i class="ace-icon fa fa-close"></i>删除</a></td>'));
            $('#fishcheckItemTable tbody').append(element);
        });
    }
    //填充第二页数据结束
    //填充第三页数据
    if (patient.mmCureHistories) {
        patient.mmCureHistories.forEach(function (entry) {
            if (entry.index == 1) {
                var obj = $('#cureInfoTable tbody').find('tr').eq(0);
                obj.attr("data-id", entry.id);
                obj.find('input.stemcelltransplantation[value="' + entry.stemcelltransplantation + '"]').prop('checked', true);
                obj.find('input.evaluateAfterCure[value="' + entry.evaluateAfterCure + '"]').prop('checked', true);
                obj.find('input.evaluateRule[value="' + entry.evaluateRule + '"]').prop('checked', true);
                obj.find('input[name="stemcelltransplantationDate"]').val(entry.stemcelltransplantationDate);
                obj.find('textarea[name="curePlan"]').val(entry.curePlan);
                obj.find('input[name="startYear"]').val(entry.startYear);
                obj.find('input[name="startMonth"]').val(entry.startMonth);
                obj.find('input[name="endYear"]').val(entry.endYear);
                obj.find('input[name="endMonth"]').val(entry.endMonth);
                obj.find('input[name="evaluateRuleOther"]').val(entry.evaluateRuleOther);
                obj.find('input[name="curePlanStepOther"]').val(entry.curePlanStepOther);
                obj.find('input[name="cycleCount"]').val(entry.cycleCount);
                obj.find('input[name="estimateResultOther"]').val(entry.evaluateResultOther);
                $('#estimateResult').select2('val', entry.evaluateResult);
                $('#curePlanStep').select2('val', entry.curePlanStep);
                if (entry.evaluateResult == 10) {
                    $('#estimateResultOtherLabel').show();
                    $('#estimateResultOther').show();
                }
                if (entry.curePlanStep == 7) {
                    $('#divCurePlanStepOther').show();
                }
                if(entry.evaluateAfterCure==1) {
                    $('#divEvaluateResult').show();
                    $('#divEvaluateRule').show();
                }

                if(entry.stemcelltransplantation==1) {
                    $('#stemcelltransplantationDiv').show();
                }
            } else {
                $('#cureInfoTable tbody').find('.collapse').removeClass('in');
                var length = $('#cureInfoTable tbody').find('tr').length + 1;
                var element = $('<tr data-id="' + entry.id + '" data-index="' + length + '"></tr>');
                element.append($('<td><div class="panel panel-default">' +
                '<div class="panel-heading">' +
                '<h4 class="panel-title">' +
                '<a data-toggle="collapse" data-parent="#accordion" href="#collapse' + length + '">第' + entry.index + '次治疗信息 </a>' +
                '<a style="cursor: pointer;color:red" onclick="$(this).parent().parent().parent().parent().parent().remove()"><i class="ace-icon fa fa-close"></i>删除</a></h4></div><div id="collapse' + length + '" class="panel-collapse collapse in"><div class="panel-body">' +
                '<div class="form-group"><label class="control-label col-xs-12 col-sm-3 no-padding-right"for="stemcelltransplantation_' + length + '">自体干细胞移植治疗:</label><div class="col-xs-12 col-sm-9"><div><label class="line-height-1  "><input value="1" type="radio" class="ace stemcelltransplantation" name="stemcelltransplantation_' + length + '"/><span class="lbl">是</span></label>&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;<label class="line-height-1  "><input value="2" type="radio" class="ace stemcelltransplantation" name="stemcelltransplantation_' + length + '"/><span class="lbl">否</span></label></div><div id="stemcelltransplantationDiv'+length+'" class="input-group" hidden><div class="input-group"><span class="input-group-addon"><i class="ace-icon fa fa-calendar"></i></span><input type="text" id="stemcelltransplantationDate_' + length + '" name="stemcelltransplantationDate" value="' + entry.stemcelltransplantationDate + '" class="form-control dataDay" style="width: 300px; "/>&nbsp;&nbsp<span>(格式:yyyy-mm-dd)</span></div></div></div></div>' +
                '  <div class="form-group"> <label class="control-label col-xs-12 col-sm-3 no-padding-right" for="curePlan' + length +
                '">药物治疗方案:</label><div class="col-xs-12 col-sm-9"><div class="clearfix"><textarea name="curePlan" id="curePlan' + length + '"class="autosize-transition form-control" ' +
                'style="overflow: hidden; word-wrap: break-word; resize: horizontal;">' + entry.curePlan + '</textarea></div></div></div>' +
                    '<div class="form-group"> <label class="control-label col-xs-12 col-sm-3 no-padding-right" for="curePlan">治疗方案所属治疗阶段:</label><div class="col-xs-12 col-sm-4">'+
                    '<select id="curePlanStep_'+length+'" name="curePlanStep" data-placeholder="">' +
                    '<option value="0" selected>未选择</option>' +
                    '<option value="1">诱导治疗</option>' +
                    '<option value="2">干细胞治疗后的巩固治疗</option>' +
                    '<option value="3">一线治疗</option>' +
                    '<option value="4">一线治疗后的维持治疗</option>' +
                    '<option value="5">二线治疗</option>' +
                    '<option value="6">三线治疗</option>' +
                    '<option value="7">其他</option>' +
                    '</select></div>'+
                    '<div class="col-xs-12 col-sm-5" id="divCurePlanStepOther_'+length+'" hidden><label class="control-label col-xs-12 col-sm-3 no-padding-right" for="estimateResultOtherLabel">请注明:</label><input type="text" name="curePlanStepOther" value="'+entry.curePlanStepOther+'"/></div></div>'+
                    '  <div class="form-group"><label class="control-label col-xs-12 col-sm-3 no-padding-right"' +
                '>治疗起止时间:</label><div class="col-xs-12 col-sm-9"><input name="startYear" value="' + entry.startYear + '" type="text" style="width: 80px;"/>年' +
                '<input name="startMonth" value="' + entry.startMonth + '" type="text" style="width: 80px; "/>月&nbsp;至' +
                '&nbsp;<input name="endYear" value="' + entry.endYear + '"  type="text" style="width: 80px; "/>年' +
                '<input name="endMonth" value="' + entry.endMonth + '" type="text" style="width: 80px; "/>月</div></div>' +
                '<div class="form-group"><label class="control-label col-xs-12 col-sm-3 no-padding-right" for="cycleNumber">本次治疗方案周期数:</label> <div class="col-xs-12 col-sm-9"><div class="clearfix"><input type="text" name="cycleCount"  value="' + entry.cycleCount + '" style="width: 150px"/></div></div></div>' +
                ' <div class="form-group"><label class="control-label col-xs-12 col-sm-3 no-padding-right">治疗完成后是否进行效果评估</label><div class="col-xs-12 col-sm-9">' +
                '<label class=" "><input value="1" type="radio" class="ace evaluateAfterCure" name="estimateAfterCure_' + length + '" /><span class="lbl">是</span></label>' +
                '&nbsp; &nbsp; &nbsp;<label class=" "><input value="2" type="radio" class="ace evaluateAfterCure" name="estimateAfterCure_' + length + '"/><span class="lbl">否</span></label></div></div>' +
                '<div class="form-group" id="divEvaluateRule'+length+'" hidden><label class="control-label col-xs-12 col-sm-3 no-padding-right" for="estimateStandard_' + length + '">疗效评估的标准是:</label><div class="col-xs-12 col-sm-9">' +
                '<label class="line-height-1  "><input value="1" type="radio" class="ace evaluateRule" name="estimateStandard_' + length + '"/><span class="lbl">IMWG</span></label>&nbsp; &nbsp;<label class="line-height-1  "><input value="2" type="radio" class="ace evaluateRule" name="estimateStandard_' + length + '"/><span class="lbl">其他</span>&nbsp; &nbsp;<input type="text" id="estimateStandardOther_' + length + '" class="text-150" value="' + entry.evaluateRuleOther + '" name="evaluateRuleOther"/></label></div></div>' +
                ' <div class="form-group" id="divEvaluateResult'+length+'" hidden> <label class="control-label col-xs-12 col-sm-3 no-padding-right" for="estimateResult_' + length + '">具体评估结果:</label><div class="col-xs-12 col-sm-4">' +
                '<select id="estimateResult_' + length + '" name="evaluateResult" data-placeholder="">' +
                '<option value="0" selected></option>' +
                '<option value="1">0.MCR(分子学完全缓解)</option>' +
                '<option value="2">1.ICR(免疫学完全缓解)</option>' +
                '<option value="3">2.sCR(严格完全缓解)</option>' +
                '<option value="4">3.CR(完全缓解)</option>' +
                '<option value="5">4.VGPR (很好的部分缓解)</option>' +
                '<option value="6">5.PR(部分缓解)</option>' +
                '<option value="7">6.MR(微小缓解)</option>' +
                '<option value="8">7.SD(疾病稳定)</option>' +
                '<option value="9">8.PD(疾病进展)</option>' +
                '<option value="10">9.其他</option>' +
                '</select></div><div class="col-xs-12 col-sm-5"><label id="estimateResultOtherLabel_' + length + '" class="control-label col-xs-12 col-sm-3 no-padding-right"for="estimateResultOtherLabel_' + length + '" hidden>请注明:</label><input type="text" id="estimateResultOther_' + length + '"name="evaluateResultOther" value="' + entry.evaluateResultOther + '" hidden/></div>' +
                '</div></div></div></div></td>'));
                $('#cureInfoTable tbody').append(element);
                if (entry.evaluateResult == 10) {
                    $('#estimateResultOtherLabel_' + length).show();
                    $('#estimateResultOther_' + length).show();
                }
                $('input[type=radio][name="stemcelltransplantation_' + length + '"][value="' + entry.stemcelltransplantation + '"]').prop('checked', true);
                $('input[type=radio][name="estimateAfterCure_' + length + '"][value="' + entry.evaluateAfterCure + '"]').prop('checked', true);
                if(entry.evaluateAfterCure==1) {
                    $('#divEvaluateResult'+length).show();
                    $('#divEvaluateRule'+length).show();
                }
                if(entry.curePlanStep==7) {
                    $('#divCurePlanStepOther_'+length).show();
                }
                if(entry.stemcelltransplantation==1) {
                    $('#stemcelltransplantationDiv'+length).show();
                }
                $('input[type=radio][name="estimateAfterCure_' + length + '"]').change(function () {
                    if (this.value == '1') {
                        $('#divEvaluateResult'+length).show();
                        $('#divEvaluateRule'+length).show();
                    } else if (this.value == '2') {
                        $('#divEvaluateResult'+length).hide();
                        $('#divEvaluateRule'+length).hide();
                    }
                });
                $('input[type=radio][name="stemcelltransplantation_' + length + '"]').change(function () {
                    if (this.value == '1') {
                        $('#stemcelltransplantationDiv'+length).show();
                    } else if (this.value == '2') {
                        $('#stemcelltransplantationDiv'+length).hide();
                    }
                });
                $('input[type=radio][name="estimateStandard_' + length + '"][value="' + entry.evaluateRule + '"]').prop('checked', true);
                $("#estimateResult_" + length).css('width', '300px').select2({allowClear: true}).select2('val', entry.evaluateResult)
                    .on('change', function () {
                        if ($("#estimateResult_" + length).select2('val') == 10) {
                            $('#estimateResultOtherLabel_' + length).show();
                            $('#estimateResultOther_' + length).show();
                        } else {
                            $('#estimateResultOtherLabel_' + length).hide();
                            $('#estimateResultOther_' + length).hide();
                        }
                        $(this).closest('form').validate().element($(this));
                    });
                $("#curePlanStep_" + length).css('width', '300px').select2({allowClear: true}).select2('val', entry.curePlanStep)
                    .on('change', function () {
                        if ($("#curePlanStep_" + length).select2('val') == 7) {
                            $('#divCurePlanStepOther_' + length).show();
                        } else {
                            $('#divCurePlanStepOther_' + length).hide();
                        }
                        $(this).closest('form').validate().element($(this));
                    });
            }
        });
    }

    if (patient.hospitaledInfos) {
        patient.hospitaledInfos.forEach(function (entry) {
            var length = $('#recordListTable tbody').find('tr').length+1;
            var element = $('<tr data-index="' + length + '"></tr>');
            element.append('<td>' + entry.startTime + '</td>');
            element.append('<td>' + entry.endTime + '</td>');
            element.append($('<td><textarea hidden>' + JSON.stringify(entry) + '</textarea><a style="cursor: pointer;color:red" onclick="removeSelf($(this))"><i class="ace-icon fa fa-close"></i>删除</a>&nbsp;&nbsp;' +
            '<a style="cursor: pointer;" onclick="fillHospitalizedForm(' + length + ',$(this).parent().find(\'textarea\').val())"><i class="ace-icon fa fa-edit"></i>编辑</a></td>'));
            $('#recordListTable tbody').append(element);
        });
    }
    if(patient.acqDescription){
        $('#acqDescription').val(patient.acqDescription);
    }
}

function prepareData() {
    var diagnosisId = $('#diagnosisInfoId').val();
    var diagnosisComplicationStatuses = [];
    $('#BFZTable tbody').find("tr").each(function () {
        var index = $(this).attr("data-index");
        if (index <= 10) { //内建的
            diagnosisComplicationStatuses.push({
                id: $(this).attr("data-id"),
                item: $(this).find('td').eq(0).html(),
                index: index,
                result: $(this).find('td').eq(1).find('input[type="radio"]:checked').val(),
                diagnosisId: diagnosisId
            });
        } else {
            diagnosisComplicationStatuses.push({
                id: $(this).attr("data-id"),
                item: $(this).find('td').eq(0).find('input').val(),
                index: index,
                result: $(this).find('td').eq(1).find('input[type="radio"]:checked').val(),
                diagnosisId: diagnosisId
            });
        }
    });
    var diagnosisComplicationItems = [];
    $('#historyTable tbody').find('tr').each(function () {
        var index = $(this).attr("data-index")
        diagnosisComplicationItems.push({
            // id: $(this).attr("data-id"),
            name: $(this).find('td').find('input').val(),
            index: index,
            //diagnosisDate: $(this).find('td').eq(1).find('input').val(),
            diagnosisDate:null,
            diagnosisId: diagnosisId
        });

    });
    var diagnosisPlasmacyteItems = [];
    $('#gcccheckItemTable tbody').find('tr').each(function () {
        var index = $(this).attr("data-index")
        if (index <= 5) { //内建的
            diagnosisPlasmacyteItems.push({
                id: $(this).attr("data-id"),
                type: $(this).find('td').eq(0).html(),
                index: index,
                rate: $(this).find('td').eq(1).find('input').val(),
                diagnosisId: diagnosisId
            });
        } else {
            diagnosisPlasmacyteItems.push({
                id: $(this).attr("data-id"),
                type: $(this).find('td').eq(0).find('input').val(),
                index: index,
                rate: $(this).find('td').eq(1).find('input').val(),
                diagnosisId: diagnosisId
            });
        }
    });
    var diagnosisIconographyItems = [];
    $('#checkItemTable tbody').find('tr').each(function () {
        var index = $(this).attr("data-index")
        if (index <= 5) { //内建的
            diagnosisIconographyItems.push({
                id: $(this).attr("data-id"),
                item: $(this).find('td').eq(0).html(),
                index: index,
                position: $(this).find('td').eq(1).find('textarea').val(),
                count: $(this).find('td').eq(2).find('textarea').val(),
                diagnosisId: diagnosisId
            });
        } else {
            diagnosisIconographyItems.push({
                id: $(this).attr("data-id"),
                item: $(this).find('td').eq(0).find('input').val(),
                index: index,
                position: $(this).find('td').eq(1).find('textarea').val(),
                count: $(this).find('td').eq(2).find('textarea').val(),
                diagnosisId: diagnosisId
            });
        }
    });
    var diagnosisParenchymaItems = [];
    $('#rzzCheckItemTable tbody').find('tr').each(function () {
        var index = $(this).attr("data-index")
        if (index <= 3) { //内建的
            diagnosisParenchymaItems.push({
                id: $(this).attr("data-id"),
                item: $(this).find('td').eq(0).html(),
                index: index,
                position: $(this).find('td').eq(1).find('textarea').val(),
                length: $(this).find('td').eq(2).find('input').eq(0).val(),
                width: $(this).find('td').eq(2).find('input').eq(1).val(),
                diagnosisId: diagnosisId
            });
        } else {
            diagnosisParenchymaItems.push({
                id: $(this).attr("data-id"),
                item: $(this).find('td').eq(0).find('input').val(),
                index: index,
                position: $(this).find('td').eq(1).find('textarea').val(),
                length: $(this).find('td').eq(2).find('input').eq(0).val(),
                width: $(this).find('td').eq(2).find('input').eq(1).val(),
                diagnosisId: diagnosisId
            });
        }
    });
    var diagnosisFishItems = [];
    var diagnosisFishStatus = $('input[name="fishexception"]:checked').val();
    if (diagnosisFishStatus == 1) {
        $('#fishcheckItemTable tbody').find('tr').each(function () {
            var index = $(this).attr("data-index")
            if (index <= 7) { //内建的
                diagnosisFishItems.push({
                    id: $(this).attr("data-id"),
                    item: $(this).find('td').eq(0).html(),
                    index: index,
                    rate: $(this).find('td').eq(1).find('input').val(),
                    diagnosisId: diagnosisId
                });
            } else {
                diagnosisFishItems.push({
                    id: $(this).attr("data-id"),
                    item: $(this).find('td').eq(0).find('input').val(),
                    index: index,
                    rate: $(this).find('td').eq(1).find('input').val(),
                    diagnosisId: diagnosisId
                });
            }
        });
    }
    var mmCureHistories = [];
    $('#cureInfoTable tbody').find('tr').each(function () {
        mmCureHistories.push({
            id: $(this).attr('data-id'),
            index: $(this).attr('data-index'),
            stemcelltransplantation: $(this).find('input.stemcelltransplantation:checked').val(),
            evaluateAfterCure: $(this).find('input.evaluateAfterCure:checked').val(),
            stemcelltransplantationDate: $(this).find('input[name="stemcelltransplantationDate"]').val(),
            curePlan: $(this).find('textarea[name="curePlan"]').val(),
            startYear: $(this).find('input[name="startYear"]').val(),
            startMonth: $(this).find('input[name="startMonth"]').val(),
            endYear: $(this).find('input[name="endYear"]').val(),
            endMonth: $(this).find('input[name="endMonth"]').val(),
            cycleCount: $(this).find('input[name="cycleCount"]').val(),
            evaluateRule: $(this).find('input.evaluateRule:checked').val(),
            evaluateRuleOther: $(this).find('input[name="evaluateRuleOther"]').val(),
            evaluateResult: $(this).find('select[name="evaluateResult"] option:selected').val(),
            curePlanStep: $(this).find('select[name="curePlanStep"] option:selected').val(),
            evaluateResultOther: $(this).find('input[name="evaluateResultOther"]').val(),
            curePlanStepOther: $(this).find('input[name="curePlanStepOther"]').val(),

        })

    });
    var hospitaledInfos = [];

    $('#recordListTable tbody').find('tr').each(function () {
        var infoStr = $(this).find('textarea').val();
        var hospitaledInfo = JSON.parse(infoStr);
        hospitaledInfo.index = $(this).attr('data-index');
        hospitaledInfos.push(hospitaledInfo);
    });
    return {
        id: $('#patientIdField').val(),
        birthday: $('#birthday').val(),
        fkhospitalid: $('#fkhospitalid').val(),
        gender: $("input[name='gender']:checked").val(),
        nation: $("input[name='nation']:checked").val(),
        nationOther: $('#nationOther').val(),
        place: $('#place').val(),
        height: $('#height').val(),
        weight: $('#weight').val(),
        bodysurfacearea: $('#bodysurfacearea').val(),
        smokingStatus: $("input[name='smokingStatus']:checked").val(),
        drinkStatus: $("input[name='drinkStatus']:checked").val(),
        ecogMark: $('#ecogMark').val(),
        karnofskyMark: $('#karnofskyMark').val(),

        familyIncome: $('#familyIncome').val(),
        maritalStatus: $('#maritalStatus').val(),
        eduLevel: $('#eduLevel').val(),
        jobStatus: $('#jobStatus').val(),
        insuranceType: $('#insuranceType').val(),
        otherInsurance: $('#otherInsurance').val(),
        diagnosisInfo: {
            id: diagnosisId,
            diagnosisDate: $('#diagnosisDate').val(),
            diagnosisSTXTime: $('#diagnosisSTXTime').val(),
            invasionDiagnosis: $("input[name='invasionDiagnosis']:checked").val(),
            clinicTypeDS: $("input[name='clinicTypeDS']:checked").val(),
            clinicTypeISS: $("input[name='clinicTypeISS']:checked").val(),
            diagnosisImmunoglobulinIgg: $("input[name='diagnosisImmunoglobulinIgg']:checked").val(),
            diagnosisImmunoglobulinIga: $("input[name='diagnosisImmunoglobulinIga']:checked").val(),
            diagnosisImmunoglobulinIgm: $("input[name='diagnosisImmunoglobulinIgm']:checked").val(),
            diagnosisImmunoglobulinIgd: $("input[name='diagnosisImmunoglobulinIgd']:checked").val(),
            diagnosisImmunoglobulinIge: $("input[name='diagnosisImmunoglobulinIge']:checked").val(),
            diagnosisImmunoglobulinLightChain: $("input[name='diagnosisImmunoglobulinLightChain']:checked").val(),
            diagnosisImmunoglobulinDoubleClone: $("#diagnosisImmunoglobulinDoubleClone").is(':checked') ? 1 : 0,/*
            diagnosisImmunoglobulinSecretion: $("#diagnosisImmunoglobulinSecretion").is(':checked') ? 1 : 0,
            diagnosisImmunoglobulinEvaluate: $("#diagnosisImmunoglobulinEvaluate").is(':checked') ? 1 : 0,*/
            diagnosisComplicationStatuses: diagnosisComplicationStatuses,
            diagnosisComplicationItems: diagnosisComplicationItems,
            diagnosisLaboratoryExamination: {
                id: $('#diagnosisLaboratoryExaminationId').val(),
                diagnosisExaminationXueStatus: $("input[name='diagnosisExaminationXueStatus']:checked").val(),
                diagnosisExaminationXIgg: $("input[name='diagnosisExaminationXIgg']:checked").val(),
                diagnosisExaminationXIga: $("input[name='diagnosisExaminationXIga']:checked").val(),
                diagnosisExaminationXIgm: $("input[name='diagnosisExaminationXIgm']:checked").val(),
                diagnosisExaminationXIge: $("input[name='diagnosisExaminationXIge']:checked").val(),
                diagnosisExaminationXIgd: $("input[name='diagnosisExaminationXIgd']:checked").val(),
                diagnosisExaminationXkLightChain: $("input[name='diagnosisExaminationXkLightChain']:checked").val(),
                diagnosisExaminationXnLightChain: $("input[name='diagnosisExaminationXnLightChain']:checked").val(),
                diagnosisExaminationNnStatus: $("input[name='diagnosisExaminationNnStatus']:checked").val(),
                diagnosisExaminationNkLightChain: $("input[name='diagnosisExaminationNkLightChain']:checked").val(),
                diagnosisExaminationNnLightChain: $("input[name='diagnosisExaminationNnLightChain']:checked").val(),
                diagnosisExaminationNIgg: $("input[name='diagnosisExaminationNIgg']").val(),
                diagnosisExaminationNIga: $("input[name='diagnosisExaminationNIga']").val(),
                diagnosisExaminationNIgm: $("input[name='diagnosisExaminationNIgm']").val(),
                diagnosisExaminationNIge: $("input[name='diagnosisExaminationNIge']").val(),
                diagnosisExaminationNIgd: $("input[name='diagnosisExaminationNIgd']").val(),
                diagnosisExaminationXkLightChainStatus: $("input[name='diagnosisExaminationXkLightChainStatus']:checked").val(),
                diagnosisExaminationNStatus: $("input[name='diagnosisExaminationNStatus']:checked").val(),
                diagnosisExaminationXYkLightChain: $("input[name='diagnosisExaminationXYkLightChain']").val(),
                diagnosisExaminationXYnLightChain: $("input[name='diagnosisExaminationXYnLightChain']").val(),
                diagnosisExaminationXYknLightChain: $("input[name='diagnosisExaminationXYknLightChain']").val(),
                diagnosisExaminationNMkLightChain: $("input[name='diagnosisExaminationNMkLightChain']").val(),
                diagnosisExaminationNMnLightChain: $("input[name='diagnosisExaminationNMnLightChain']").val(),
                diagnosisExaminationH24: $("input[name='diagnosisExaminationH24']").val(),
                diagnosisTopMP: $("input[name='diagnosisTopMP']").val(),
                diagnosisMPResult: $("input[name='diagnosisMPResult']").val(),
            },
            diagnosisPlasmacyteItems: diagnosisPlasmacyteItems,
            diagnosisIconographyItems: diagnosisIconographyItems,
            diagnosisParenchymaItems: diagnosisParenchymaItems,
            diagnosisFishStatus: diagnosisFishStatus,
            diagnosisFishItems: diagnosisFishItems
        },
        mmCureHistories: mmCureHistories,
        hospitaledInfos: hospitaledInfos,
        acqDescription:$('#acqDescription').val()
    };
}

function collectHospitalizedData() {
    var hospitaledInfoId = $('#hospitaledInfoId').val();
    var complicationStatusList = [];
    $('#BFZTable1 tbody').find("tr").each(function () {
        var index = $(this).attr("data-index")
        if (index <= 10) { //内建的
            complicationStatusList.push({
                id: $(this).attr("data-id"),
                item: $(this).find('td').eq(0).html(),
                index: index,
                result: $(this).find('td').eq(1).find('input[type="radio"]:checked').val(),
                hospitaledId: hospitaledInfoId
            });
        } else {
            complicationStatusList.push({
                id: $(this).attr("data-id"),
                item: $(this).find('td').eq(0).find('input').val(),
                index: index,
                result: $(this).find('td').eq(1).find('input[type="radio"]:checked').val(),
                hospitaledId: hospitaledInfoId
            });
        }
    });
    var hospitaledPlasmacyteItems = [];
    $('#gcccheckItemTable1 tbody').find('tr').each(function () {
        var index = $(this).attr("data-index")
        if (index <= 5) { //内建的
            hospitaledPlasmacyteItems.push({
                id: $(this).attr("data-id"),
                type: $(this).find('td').eq(0).html(),
                index: index,
                rate: $(this).find('td').eq(1).find('input').val(),
                hospitaledId: hospitaledInfoId
            });
        } else {
            hospitaledPlasmacyteItems.push({
                id: $(this).attr("data-id"),
                type: $(this).find('td').eq(0).find('input').val(),
                index: index,
                rate: $(this).find('td').eq(1).find('input').val(),
                hospitaledId: hospitaledInfoId
            });
        }
    });
    var iconographyItems = [];
    $('#YXXcheckItemTable tbody').find('tr').each(function () {
        var index = $(this).attr("data-index")
        if (index <= 5) { //内建的
            iconographyItems.push({
                id: $(this).attr("data-id"),
                item: $(this).find('td').eq(0).html(),
                index: index,
                position: $(this).find('td').eq(1).find('textarea').val(),
                count: $(this).find('td').eq(2).find('textarea').val(),
                hospitaledId: hospitaledInfoId
            });
        } else {
            iconographyItems.push({
                id: $(this).attr("data-id"),
                item: $(this).find('td').eq(0).find('input').val(),
                index: index,
                position: $(this).find('td').eq(1).find('textarea').val(),
                count: $(this).find('td').eq(2).find('textarea').val(),
                hospitaledId: hospitaledInfoId
            });
        }
    });
    var hospitaledParenchymaItems = [];
    $('#YXXcheckItemTable2 tbody').find('tr').each(function () {
        var index = $(this).attr("data-index")
        if (index <= 3) { //内建的
            hospitaledParenchymaItems.push({
                id: $(this).attr("data-id"),
                item: $(this).find('td').eq(0).html(),
                index: index,
                position: $(this).find('td').eq(1).find('textarea').val(),
                length: $(this).find('td').eq(2).find('input').eq(0).val(),
                width: $(this).find('td').eq(2).find('input').eq(1).val(),
                hospitaledId: hospitaledInfoId
            });
        } else {
            hospitaledParenchymaItems.push({
                id: $(this).attr("data-id"),
                item: $(this).find('td').eq(0).find('input').val(),
                index: index,
                position: $(this).find('td').eq(1).find('textarea').val(),
                length: $(this).find('td').eq(2).find('input').eq(0).val(),
                width: $(this).find('td').eq(2).find('input').eq(1).val(),
                hospitaledId: hospitaledInfoId
            });
        }
    });
    var hospitaledChemotherapyItems = [];
    $('#HLYWInfoTable tbody').find('tr').each(function () {
        var index = $(this).attr("data-index")
        hospitaledChemotherapyItems.push({
            /*id: $(this).attr("data-id"),*/
            //name: $(this).find('td').eq(0).find('select[id="followupChemotherapyItemName"]').val(),
            name: $(this).find('td').eq(0).find('input[id="followupChemotherapyName"]').val(),
            index: index,
            consumption: $(this).find('td').eq(1).find('input').val(),
            consumptionSize: $(this).find('td').eq(2).find('input[id="consumptSize"]').val(),
            //consumptionSize: $(this).find('td').eq(2).find('select[id="consumptionSize"]').val(),
            frequency: $(this).find('td').eq(3).find('input').val(),
            buyOuter: $(this).find('td').eq(4).find('input[type=radio]:checked').val(),
            hospitaledId: hospitaledInfoId
        });
    });
    var hospitaledSupportItems = [];
    $('#HLYWInfoTable2 tbody').find('tr').each(function () {
        var index = $(this).attr("data-index")
        hospitaledSupportItems.push({
            id: $(this).attr("data-id"),
            name: $(this).find('td').eq(1).find('input').val(),
            index: index,
            consumption: $(this).find('td').eq(2).find('input').val(),
            frequency: $(this).find('td').eq(3).find('input').val(),
            fitDrugs: $(this).find('td').eq(4).find('input').val(),
            buyOuter: $(this).find('td').eq(5).find('input[type=radio]:checked').val(),
            hospitaledId: hospitaledInfoId
        });
    });
    var badInformationStatus = $('input[type=radio][name=badInformationStatus]:checked').val();
    var badinformationItems = [];
    if (badInformationStatus == 1) {
        $('#badInformationTable tbody').find('tr').each(function () {
            badinformationItems.push({
                id: $(this).attr('data-id'),
                hospitaledId: hospitaledInfoId,
                index: $(this).attr('data-index'),
                badinformationName: $(this).find('input[name="badinformationName"]').val(),
                badinformationDate: $(this).find('input[name="badinformationDate"]').val(),
                badinformationLevel: $(this).find('input.badinformationLevel:checked').val(),
                badinformationCctaeStatus: $(this).find('input.badinformationCctaeStatus:checked').val(),
                badinformationCctaeLevel: $(this).find('input.badinformationCctaeLevel:checked').val(),
                badinformationMedicineRealation: $(this).find('input.badinformationMedicineRealation:checked').val(),
                badinformationNonMedicineRealation: $(this).find('input.badinformationNonMedicineRealation:checked').val(),
                badinformationSpecialInformation: $(this).find('input.badinformationSpecialInformation:checked').val(),
                badinformationPregnant: $(this).find('input.badinformationPregnant:checked').val(),
                badinformationOutcomeOfSubjects: $(this).find('input.badinformationOutcomeOfSubjects:checked').val(),
                badinformationCritical: $(this).find('input.badinformationCritical:checked').val()
            })
        });
    }
    var livingState = $('input[type="radio"][name="hospitaledLivingState"]:checked').val();
    var deathReason = "";
    var deathDate = "";
    if(livingState==2) {
        deathDate = $('#hospitaledDeathDate').val();
        deathReason = $('#hospitaledDeathReason').val();
    }
    var otherHospitalCost = [];
    $('#hospitaledCostTable tbody').find('tr.costItemAdded').each(function () {
        var index = $(this).attr("data-index")
        otherHospitalCost.push({
            id: $(this).attr("data-id"),
            name: $(this).find('td').eq(1).find('input').val(),
            value: $(this).find('td').eq(2).find('input').val(),
            order: index
        });
    });
    return {
        id: hospitaledInfoId,
        startTime: $('#startTime').val(),
        endTime: $('#endTime').val(),
        hospitalweight: $('#hospitalweight').val(),
        hospitalbodysurfacearea: $('#hospitalbodysurfacearea').val(),
        ecogMark: $('#hispitalizedEcogMark').val(),
        karnofskyMark: $('#hispitalizedKarnofskyMark').val(),
        complicationStatusList: complicationStatusList,
        hospitaledLaboratoryExamination: {
            id: $('#hospitaledLabId').val(),
            hospitalExaminationXueStatus: $('input[type=radio][name="hospitalExaminationXueStatus"]:checked').val(),
            hospitalExaminationXIgg: $('input[type=radio][name="hospitalExaminationXIgg"]:checked').val(),
            hospitalExaminationXIga: $('input[type=radio][name="hospitalExaminationXIga"]:checked').val(),
            hospitalExaminationXIgm: $('input[type=radio][name="hospitalExaminationXIgm"]:checked').val(),
            hospitalExaminationXIge: $('input[type=radio][name="hospitalExaminationXIge"]:checked').val(),
            hospitalExaminationXIgd: $('input[type=radio][name="hospitalExaminationXIgd"]:checked').val(),
            hospitalExaminationXkLightChain: $('input[type=radio][name="hospitalExaminationXkLightChain"]:checked').val(),
            hospitalExaminationXnLightChain: $('input[type=radio][name="hospitalExaminationXnLightChain"]:checked').val(),
            hospitalExaminationNnStatus: $('input[type=radio][name="hospitalExaminationNnStatus"]:checked').val(),
            hospitalExaminationNkLightChain: $('input[type=radio][name="hospitalExaminationNkLightChain"]:checked').val(),
            hospitalExaminationNnLightChain: $('input[type=radio][name="hospitalExaminationNnLightChain"]:checked').val(),
            hospitalExaminationNIgg: $('#hospitalExaminationNIgg').val(),
            hospitalExaminationNIga: $('#hospitalExaminationNIga').val(),
            hospitalExaminationNIgm: $('#hospitalExaminationNIgm').val(),
            hospitalExaminationNIge: $('#hospitalExaminationNIge').val(),
            hospitalExaminationNIgd: $('#hospitalExaminationNIgd').val(),
            hospitalExaminationXkLightChainStatus: $('input[type=radio][name="hospitalExaminationXkLightChainStatus"]:checked').val(),
            hospitalExaminationXYkLightChain: $('#hospitalExaminationXYkLightChain').val(),
            hospitalExaminationXYnLightChain: $('#hospitalExaminationXYnLightChain').val(),
            hospitalExaminationXYknLightChain: $('#hospitalExaminationXYknLightChain').val(),
            hospitalExaminationNStatus: $('input[type=radio][name="hospitalExaminationNStatus"]:checked').val(),
            hospitalExaminationNMkLightChain: $('#hospitalExaminationNMkLightChain').val(),
            hospitalExaminationNMnLightChain: $('#hospitalExaminationNMnLightChain').val(),
            hospitalExaminationH24: $('#hospitalExaminationH24').val(),
            hospitalExaminationTopMP: $('#hospitalExaminationTopMP').val(),
            hospitalExaminationMPResult: $('#hospitalExaminationMPResult').val(),
            hospitalTotalProtein: $('#hospitalTotalProtein').val(),
            hospitalWhiteProtein: $('#hospitalWhiteProtein').val(),
            hospitalGlobulinProtein: $('#hospitalGlobulinProtein').val(),
            hospitalAminotransferase: $('#hospitalAminotransferase').val(),
            hospitalAst: $('#hospitalAst').val(),
            hospitalGgt: $('#hospitalGgt').val(),
            hospitalLdh: $('#hospitalLdh').val(),
            hospitalUrea: $('#hospitalUrea').val(),
            hospitalCr: $('#hospitalCr').val(),
            hospitalCa: $('#hospitalCa').val(),
            hospitalPhoshatase: $('#hospitalPhoshatase').val(),
            hospitalBeta2GlobulinProtein: $('#hospitalBeta2GlobulinProtein').val(),
            hospitalWhiteBloodCell: $('#hospitalWhiteBloodCell').val(),
            hospitalNeutrophils: $('#hospitalNeutrophils').val(),
            hospitalLymphocyte: $('#hospitalLymphocyte').val(),
            hospitalHemoglobin: $('#hospitalHemoglobin').val(),
            hospitalPlateletCount: $('#hospitalPlateletCount').val(),
        },
        hospitaledPlasmacyteItems: hospitaledPlasmacyteItems,
        iconographyItems: iconographyItems,
        hospitaledParenchymaItems: hospitaledParenchymaItems,
        invasionDiagnosis: $('input[type="radio"][name="hospitalizedInvasionDiagnosis"]:checked').val(),
        clinicalStagesDS: $('input[type="radio"][name="HospitaledClinicalStagesDS"]:checked').val(),
        clinicalStagesISS: $('input[type="radio"][name="hospitaledClinicalStagesISS"]:checked').val(),
        hostipalstemcelltransplantation: $('input[type="radio"][name="hostipalstemcelltransplantation"]:checked').val(),
        changeCurePlan: $('input[type="radio"][name="changeCurePlan"]:checked').val(),
        hostipalstemcelltransplantationDate: $('#hostipalstemcelltransplantationDate').val(),
        curePlan: $('#hospitalCurePlanTA').val(),
        hospitalCurePlanStep: $('#hospitalCurePlanStep').select2('val'),
        hospitalCurePlanStepOther: $('#hospitalCurePlanStepOther').val(),
        hospitalCureCycle: $('#hospitalCureCycle').val(),
        curePlanAlter: $('#curePlanAlter').val(),
        changePlanReason: $('#changePlanReason').val(),
        changeCurePlanStep: $('#changeCurePlanStep').select2('val'),
        changeCurePlanStepOther: $('#changeCurePlanStepOther').val(),
        hospitaledChemotherapyItems: hospitaledChemotherapyItems,
        hospitaledSupportItems: hospitaledSupportItems,
        evaluateAfterCure: $('input[type="radio"][name="HospitaledEvaluateAfterCure"]:checked').val(),
        evaluateRule: $('input[type="radio"][name="hospitaledEvaluateRule"]:checked').val(),
        evaluateRuleOther: $('#evaluateRuleOther').val(),
        evaluateResult: $('#evaluateResult').val(),
        livingState:livingState ,
        deathDate: deathDate,
        deathReason: deathReason,
        badInformationStatus: badInformationStatus,
        badinformationItems: badinformationItems,
        hospitaledCost: {
            westernMed: $('#hospitaledCostTable tbody').find('input[name="westernMed"]').val(),
            cure: $('#hospitaledCostTable tbody').find('input[name="cure"]').val(),
            check: $('#hospitaledCostTable tbody').find('input[name="check"]').val(),
            inspect: $('#hospitaledCostTable tbody').find('input[name="inspect"]').val(),
            material: $('#hospitaledCostTable tbody').find('input[name="material"]').val(),
            bed: $('#hospitaledCostTable tbody').find('input[name="bed"]').val(),
            food: $('#hospitaledCostTable tbody').find('input[name="food"]').val(),
            nursing: $('#hospitaledCostTable tbody').find('input[name="nursing"]').val(),
            other: $('#hospitaledCostTable tbody').find('input[name="other"]').val(),
            total: $('#hospitaledCostTable tbody').find('input[name="total"]').val(),
            self: $('#hospitaledCostTable tbody').find('input[name="self"]').val(),
            outer: $('#hospitaledCostTable tbody').find('input[name="outer"]').val(),
            otherCostValue: $('#hospitaledCostTable tbody').find('input[name="otherCostValue"]').val(),
            otherCostName: $('#hospitaledCostTable tbody').find('input[name="otherCostName"]').val(),
            otherHospitalCost: otherHospitalCost
        }
    }
}

function resetHospitalizedAddPanel() {
    $('#addPanel').find('input[type=text]').val('');
    $('#addPanel').find('select').select2('val', 0);
    $('#addPanel').find('textarea').val('');
    $('#addPanel').find('input[type=radio]').prop('checked', false);
    $('#trHSTX').hide();
    $('.divHCurePlanStepOther').hide();
    $('.divCCurePlanStepOther').hide();
    $('#trhospitalExaminationXIgg').hide();
    $('#trhospitalExaminationXIga').hide();
    $('#trhospitalExaminationXIgm').hide();
    $('#trhospitalExaminationXIge').hide();
    $('#trhospitalExaminationXIgd').hide();
    $('#trhospitalExaminationXkLightChain').hide();
    $('#trhospitalExaminationXnLightChain').hide();

    $('#trhospitalExaminationNkLightChain').hide();
    $('#trhospitalExaminationNnLightChain').hide();
    $('#hospitaledCostTable tbody').find('tr.costItemAdded').each(function () {
        $(this).remove();
    });
    $('#BFZTable1 tbody').find("tr").each(function () {
        var index = $(this).attr("data-index")
        if (index > 11) $(this).remove();
        if (index == 11) $(this).attr("data-id", 0);
    });
    $('#gcccheckItemTable1 tbody').find('tr').each(function () {
        var index = $(this).attr("data-index")
        if (index > 6) $(this).remove();
        if (index == 6) $(this).attr("data-id", 0);
    });
    $('#YXXcheckItemTable tbody').find('tr').each(function () {
        var index = $(this).attr("data-index")
        if (index > 6) $(this).remove();
        if (index == 6) $(this).attr("data-id", 0);
    });
    $('#YXXcheckItemTable2 tbody').find('tr').each(function () {
        var index = $(this).attr("data-index")
        if (index > 4) $(this).remove();
        if (index == 4) $(this).attr("data-id", 0);
    });
    $('#HLYWInfoTable tbody').find('tr').each(function () {
        var index = $(this).attr("data-index")
        if (index > 1) $(this).remove();
        if (index == 1) $(this).attr("data-id", 0);
    });
    $('#HLYWInfoTable2 tbody').find('tr').each(function () {
        var index = $(this).attr("data-index")
        if (index > 1) $(this).remove();
        if (index == 1) $(this).attr("data-id", 0);
    });
    $('#badInformationTable tbody').find('tr').each(function () {
        var index = $(this).attr("data-index")
        if (index > 1) $(this).remove();
        if (index == 1) {
            $(this).attr("data-id", 0);
            $(this).hide();
        }
    });
}

function removeSelf(entry) {
    if($('#titleLabel').html()=="编辑住院信息") {
        bootbox.alert({
            buttons: {
                ok: {
                    label: '确认',
                    className: 'btn-primary'
                }
            },
            message: '编辑状态下无法删除',
        });
        return;
    }
    entry.parent().parent().remove()
}

function fillHospitalizedForm(index, hospitaledInfoStr) {
    if(!$('#addPanel').is(":hidden")) {
        bootbox.alert({
            buttons: {
                ok: {
                    label: '确认',
                    className: 'btn-primary'
                }
            },
            message: '有新增或修改的住院信息没有保存',
        });
        return;
    }
    $('#titleLabel').html("编辑住院信息");
    $('.hospitalRmBtn').prop("disabled",true);
    $('#hospitaledInfoIndex').val(index);
    var hospitaledInfo = JSON.parse(hospitaledInfoStr);
    if (hospitaledInfo) {
        $('#hospitaledInfoId').val(hospitaledInfo.id);
        $('#startTime').val(hospitaledInfo.startTime);
        $('#endTime').val(hospitaledInfo.endTime);
        $('#hospitalweight').val(hospitaledInfo.hospitalweight);
        $('#hospitalbodysurfacearea').val(hospitaledInfo.hospitalbodysurfacearea);
        $('#hispitalizedEcogMark').select2('val', hospitaledInfo.ecogMark);
        $('#hispitalizedKarnofskyMark').val(hospitaledInfo.karnofskyMark);
        if (hospitaledInfo.complicationStatusList) {
            hospitaledInfo.complicationStatusList.forEach(function (entry, index) {

                if (entry.index <= 11) {
                    $('#BFZTable1 tbody').find("tr").eq(entry.index - 1).attr('data-id', entry.id);
                    if (entry.index == 11) {
                        $('#BFZTable1 tbody').find("tr").eq(entry.index - 1).find('td').eq(0).find('input').val(entry.item);
                    }
                    if(entry.index==5&&entry.result==1) {
                        $('#trHSTX').show();
                    }
                    $('#BFZTable1 tbody').find("tr").eq(entry.index - 1).find("td").eq(1).find('input[type="radio"][value="' + entry.result + '"]').prop("checked", true);
                } else {
                    var length = $('#BFZTable1 tbody').find('tr').length+1;
                    var element = $('<tr data-id="' + entry.id + '" data-index="' + length + '"></tr>');
                    element.append($('<td>其他:&nbsp;<input type="text" value="' + entry.item + '" type="text"style="width: 300px;"/></td>'));
                    element.append($('<td><label class=" "><input value="1" type="radio" class="ace" name="BFZTable1Tr' + length +
                    '" /> <span class="lbl">是</span></label><label  ><input value="2" type="radio" class="ace" name="BFZTable1Tr' +length + '" /> <span class="lbl">否</span> </label> </td>'));
                    element.append($('<td><a style="cursor: pointer;color:red" onclick="$(this).parent().parent().remove()"><i class="ace-icon fa fa-close"></i>删除</a></td>'));
                    $('#BFZTable1 tbody').append(element);
                    $('#BFZTable1 tbody').find('input[name="BFZTable1Tr' + length + '"][value="' + entry.result + '"]').prop("checked", true);
                }
            });
        }
        if (hospitaledInfo.hospitaledLaboratoryExamination) {
            //let labObj = hospitaledInfo.hospitaledLaboratoryExamination;
            var labObj = hospitaledInfo.hospitaledLaboratoryExamination;
            $('#hospitaledLabId').val(labObj.id);
            $('input[type=radio][name="hospitalExaminationXueStatus"][value="' + labObj.hospitalExaminationXueStatus + '"]').prop('checked', true);
            if (labObj.hospitalExaminationXueStatus == 1) {
                $('#trhospitalExaminationXIgg').show();
                $('#trhospitalExaminationXIga').show();
                $('#trhospitalExaminationXIgm').show();
                $('#trhospitalExaminationXIge').show();
                $('#trhospitalExaminationXIgd').show();
                $('#trhospitalExaminationXkLightChain').show();
                $('#trhospitalExaminationXnLightChain').show();
            }
            $('input[type=radio][name="hospitalExaminationXIgg"][value="' + labObj.hospitalExaminationXIgg + '"]').prop('checked', true);
            $('input[type=radio][name="hospitalExaminationXIga"][value="' + labObj.hospitalExaminationXIga + '"]').prop('checked', true);
            $('input[type=radio][name="hospitalExaminationXIgm"][value="' + labObj.hospitalExaminationXIgm + '"]').prop('checked', true);
            $('input[type=radio][name="hospitalExaminationXIge"][value="' + labObj.hospitalExaminationXIge + '"]').prop('checked', true);
            $('input[type=radio][name="hospitalExaminationXIgd"][value="' + labObj.hospitalExaminationXIgd + '"]').prop('checked', true);
            $('input[type=radio][name="hospitalExaminationXkLightChain"][value="' + labObj.hospitalExaminationXkLightChain + '"]').prop('checked', true);
            $('input[type=radio][name="hospitalExaminationXnLightChain"][value="' + labObj.hospitalExaminationXnLightChain + '"]').prop('checked', true);

            $('input[type=radio][name="hospitalExaminationNnStatus"][value="' + labObj.hospitalExaminationNnStatus + '"]').prop('checked', true);
            if (labObj.hospitalExaminationNnStatus == 1) {
                $('#trhospitalExaminationNkLightChain').show();
                $('#trhospitalExaminationNnLightChain').show();
            }
            $('input[type=radio][name="hospitalExaminationNkLightChain"][value="' + labObj.hospitalExaminationNkLightChain + '"]').prop('checked', true);
            $('input[type=radio][name="hospitalExaminationNnLightChain"][value="' + labObj.hospitalExaminationNnLightChain + '"]').prop('checked', true);

            $('#hospitalExaminationNIgg').val(labObj.hospitalExaminationNIgg);
            $('#hospitalExaminationNIga').val(labObj.hospitalExaminationNIga);
            $('#hospitalExaminationNIgm').val(labObj.hospitalExaminationNIgm);
            $('#hospitalExaminationNIge').val(labObj.hospitalExaminationNIge);
            $('#hospitalExaminationNIgd').val(labObj.hospitalExaminationNIgd);
            $('input[type=radio][name="hospitalExaminationXkLightChainStatus"][value="' + labObj.hospitalExaminationXkLightChainStatus + '"]').prop('checked', true);
            if (labObj.hospitalExaminationXkLightChainStatus == 1) {
                $('#trhospitalExaminationXYkLightChain').show();
                $('#trhospitalExaminationXYnLightChain').show();
                $('#trhospitalExaminationXYknLightChain').show();
            }
            $('#hospitalExaminationXYkLightChain').val(labObj.hospitalExaminationXYkLightChain);
            $('#hospitalExaminationXYnLightChain').val(labObj.hospitalExaminationXYnLightChain);
            $('#hospitalExaminationXYknLightChain').val(labObj.hospitalExaminationXYknLightChain);


            $('input[type=radio][name="hospitalExaminationNStatus"][value="' + labObj.hospitalExaminationNStatus + '"]').prop('checked', true);
            if (labObj.hospitalExaminationNStatus == 1) {
                $('#trHospitalExaminationNMkLightChain').show();
                $('#trHospitalExaminationNMnLightChain').show();
            }
            $('#hospitalExaminationNMkLightChain').val(labObj.hospitalExaminationNMkLightChain);
            $('#hospitalExaminationNMnLightChain').val(labObj.hospitalExaminationNMnLightChain);
            $('#hospitalExaminationH24').val(labObj.hospitalExaminationH24);
            $('#hospitalExaminationTopMP').val(labObj.hospitalExaminationTopMP);
            $('#hospitalExaminationMPResult').val(labObj.hospitalExaminationMPResult);
            $('#hospitalTotalProtein').val(labObj.hospitalTotalProtein);
            $('#hospitalWhiteProtein').val(labObj.hospitalWhiteProtein);
            $('#hospitalGlobulinProtein').val(labObj.hospitalGlobulinProtein);
            $('#hospitalAminotransferase').val(labObj.hospitalAminotransferase);
            $('#hospitalAst').val(labObj.hospitalAst);
            $('#hospitalGgt').val(labObj.hospitalGgt);
            $('#hospitalLdh').val(labObj.hospitalLdh);
            $('#hospitalUrea').val(labObj.hospitalUrea);
            $('#hospitalCr').val(labObj.hospitalCr);
            $('#hospitalCa').val(labObj.hospitalCa);
            $('#hospitalPhoshatase').val(labObj.hospitalPhoshatase);
            $('#hospitalBeta2GlobulinProtein').val(labObj.hospitalBeta2GlobulinProtein);
            $('#hospitalWhiteBloodCell').val(labObj.hospitalWhiteBloodCell);
            $('#hospitalNeutrophils').val(labObj.hospitalNeutrophils);
            $('#hospitalLymphocyte').val(labObj.hospitalLymphocyte);
            $('#hospitalHemoglobin').val(labObj.hospitalHemoglobin);
            $('#hospitalPlateletCount').val(labObj.hospitalPlateletCount);
        }
        if (hospitaledInfo.hospitaledPlasmacyteItems) {
            hospitaledInfo.hospitaledPlasmacyteItems.forEach(function (entry, index) {
                if (entry.index <= 6) {
                    var trObj = $('#gcccheckItemTable1 tbody').find("tr").eq(entry.index - 1);
                    trObj.attr('data-id', entry.id);
                    if (entry.index == 6) {
                        trObj.find('td').eq(0).find('input').val(entry.type);
                    }
                    trObj.find("td").eq(1).find('input').val(entry.rate);
                } else {
                    var element = $('<tr data-id="' + entry.id + '" data-index="' + entry.index + '"></tr>');
                    element.append($(' <td>其他:&nbsp;<input name="name" value="' + entry.type + '"  type="text" style="width: 200px;"/></td>'));
                    element.append($('<td><input type="text" id="other'+ entry.index +'" class="zsxSize" name="other" value="' + entry.rate + '"/></td>'));
                    element.append($('<td><a style="cursor: pointer;color:red" onclick="$(this).parent().parent().remove()"><i class="ace-icon fa fa-close"></i>删除</a></td>'));
                    $('#gcccheckItemTable1 tbody').append(element);
                }
            });
        }
        if (hospitaledInfo.iconographyItems) {
            hospitaledInfo.iconographyItems.forEach(function (entry, index) {
                var trObj = $('#YXXcheckItemTable tbody').find("tr").eq(entry.index - 1);
                if (entry.index <= 6) {
                    trObj.attr('data-id', entry.id);
                    if (entry.index == 6) {
                        trObj.find("td").eq(0).find('input').val(entry.item);
                    }
                    trObj.find("td").eq(1).find('textarea').val(entry.position);
                    trObj.find("td").eq(2).find('textarea').val(entry.count);
                } else {
                    var element = $('<tr data-id="' + entry.id + '" data-index="' + entry.index + '"></tr>');
                    element.append($(' <td>其他:&nbsp;<input name="name" value="' + entry.item + '"  type="text" style="width: 100px;"/></td>'));
                    element.append($('<td><textarea class="autosize-transition form-control" style="overflow: hidden; word-wrap: break-word; resize: horizontal;">' + entry.position + '</textarea> </td>'));
                    element.append($('<td><textarea class="autosize-transition form-control"style="overflow: hidden; word-wrap: break-word; resize: horizontal;">' + entry.count + '</textarea> </td>'));
                    element.append($('<td><a style="cursor: pointer;color:red" onclick="$(this).parent().parent().remove()"><i class="ace-icon fa fa-close"></i>删除</a></td>'));
                    $('#YXXcheckItemTable tbody').append(element);
                }
            });
        }
        if (hospitaledInfo.hospitaledParenchymaItems) {
            hospitaledInfo.hospitaledParenchymaItems.forEach(function (entry, index) {
                if (entry.index <= 4) {
                    var trObj = $('#YXXcheckItemTable2 tbody').find("tr").eq(entry.index - 1);
                    trObj.attr('data-id', entry.id);
                    if (entry.index == 4) {
                        trObj.find('td').eq(0).find('input').val(entry.item);
                    }
                    trObj.find("td").eq(1).find('textarea').val(entry.position);
                    trObj.find("td").eq(2).find('input').eq(0).val(entry.length);
                    trObj.find("td").eq(2).find('input').eq(1).val(entry.width);
                } else {
                    var element = $('<tr data-id="' + entry.id + '" data-index="' + entry.index + '"></tr>');
                    element.append($(' <td>其他:&nbsp;<input name="name" value="' + entry.item + '" type="text"style="width: 90px;"/></td>'));
                    element.append($('<td><textarea class="autosize-transition form-control"style="overflow: hidden; word-wrap: break-word; resize: horizontal;">' + entry.position + '</textarea> </td>'));
                    element.append($('<td><input type="text" value="' + entry.length + '" id="other1'+entry.index+'" class="cmSize"/>cm * <input type="text" value="' + entry.width + '" id="other2'+entry.index+'" class="cmSize"/>cm </td>'));

                    if (entry.index == 4) {
                        element.append($('<td><a style="cursor: pointer;" id="YXXaddCheckItemBtn2"><i class="ace-icon fa fa-plus-circle"></i>新增</a></td>'));
                        $('#YXXcheckItemTable2 tbody').append(element);
                        $('#YXXaddCheckItemBtn2').on('click', function () {
                            var length = $('#rzzCheckItemTable tbody').find('tr').length + 1;
                            var element = $('<tr data-id="0" data-index="' + length + '"></tr>');
                            element.append($(' <td>其他:&nbsp;<input name="name"  type="text"style="width: 100px;"/></td>'));
                            element.append($('<td><textarea class="autosize-transition form-control"style="overflow: hidden; word-wrap: break-word; resize: horizontal;"></textarea> </td>'));
                            element.append($('<td><input type="text" id="other01'+length+'" class="cmSize"/>cm * <input type="text" id="other02'+length+'" class="cmSize"/>cm </td>'));
                            element.append($('<td><a style="cursor: pointer;color:red" onclick="$(this).parent().parent().remove()"><i class="ace-icon fa fa-close"></i>删除</a></td>'));
                            $('#YXXcheckItemTable2 tbody').append(element);
                        });
                    } else {
                        element.append($('<td><a style="cursor: pointer;color:red" onclick="$(this).parent().parent().remove()"><i class="ace-icon fa fa-close"></i>删除</a></td>'));
                        $('#YXXcheckItemTable2 tbody').append(element);
                    }
                }
            });
        }
        $('input[type="radio"][name="hospitalizedInvasionDiagnosis"][value="' + hospitaledInfo.invasionDiagnosis + '"').prop('checked', true);
        $('input[type="radio"][name="HospitaledClinicalStagesDS"][value="' + hospitaledInfo.clinicalStagesDS + '"]').prop('checked', true);
        $('input[type="radio"][name="hospitaledClinicalStagesISS"][value="' + hospitaledInfo.clinicalStagesISS + '"]').prop('checked', true);
        $('input[type="radio"][name="hostipalstemcelltransplantation"][value="' + hospitaledInfo.hostipalstemcelltransplantation + '"]').prop('checked', true);
        if (hospitaledInfo.hostipalstemcelltransplantation == '1') {
            $('#hostipalstemcelltransplantationDateDiv').show();
        } else if (hospitaledInfo.hostipalstemcelltransplantation == '2') {
            $('#hostipalstemcelltransplantationDateDiv').hide();
        };
        $('#hostipalstemcelltransplantationDate').val(hospitaledInfo.hostipalstemcelltransplantationDate);
        $('input[type="radio"][name="changeCurePlan"][value="' + hospitaledInfo.changeCurePlan + '"]').prop('checked', true);

            if (hospitaledInfo.changeCurePlan == '1') {
                $('#changePlanReasonDiv').show();
            } else if (hospitaledInfo.changeCurePlan == '2') {
                $('#changePlanReasonDiv').hide();
            };

        $('#hospitalCurePlanTA').val(hospitaledInfo.curePlan);
        $('#hospitalCurePlanStep').select2('val',hospitaledInfo.hospitalCurePlanStep);
        if(hospitaledInfo.hospitalCurePlanStep==7){
            $('.divHCurePlanStepOther').show();
        }
        $('#hospitalCurePlanStepOther').val(hospitaledInfo.hospitalCurePlanStepOther);
        $('#hospitalCureCycle').val(hospitaledInfo.hospitalCureCycle);
        $('#curePlanAlter').val(hospitaledInfo.curePlanAlter);
        $('#changePlanReason').val(hospitaledInfo.changePlanReason);
        $('#changeCurePlanStep').select2('val',hospitaledInfo.changeCurePlanStep);
        if(hospitaledInfo.changeCurePlanStep==7) {
            $('#changeCurePlanStepOther').val(hospitaledInfo.changeCurePlanStepOther);
            $('.divCCurePlanStepOther').show();
        }

        if (hospitaledInfo.hospitaledChemotherapyItems) {
            hospitaledInfo.hospitaledChemotherapyItems.forEach(function (entry, index) {
                if (entry.index == 1) {
                    var trObj = $('#HLYWInfoTable tbody').find("tr").eq(0);
                    trObj.attr("data-id", entry.id);
                    trObj.find('td').eq(0).find('select[id=followupChemotherapyItemName]').select2('val', entry.name);
                    trObj.find('td').eq(0).find('input[id=followupChemotherapyName]').val(entry.name);
                    trObj.find('td').eq(1).find('input').val(entry.consumption);
                    trObj.find('td').eq(2).find('select[id=consumptionSize]').select2('val', entry.consumptionSize);
                    trObj.find('td').eq(2).find('input[id=consumptSize]').val(entry.consumptionSize);
                    trObj.find('td').eq(3).find('input').val(entry.frequency);
                    trObj.find('td').eq(4).find('input[type=radio][value="' + entry.buyOuter + '"]').prop('checked', true);

                    $('#HLYWInfoTable tbody').find('select[id="followupChemotherapyItemName"]').select2({'width':'190px'});
                    $('#HLYWInfoTable tbody').find('select[id="consumptionSize"]').select2({'width':'100px'});
                } else {
                    var length = $('#HLYWInfoTable tbody').find("tr").length + 1;
                    var element = $('<tr data-id="' + entry.id + '" data-index="' + entry.index + '"></tr>');
                    element.append($('<th>' + length + '</th>'));
                    element.append($('<td colspan="1"><div   style="position:relative;"> ' +
                    '<span   style="margin-left:188px;width:18px;overflow:hidden;"> <select id="followupChemotherapyItemName" ' +
                    ' data-placeholder="" name="name' + entry.index + '" '+
                    ' class="select2-300" style="width:200px;;margin-left:-188px"  onchange="setSecond($(this))">  ' +
                    '<option value="" selected></option>'+
                    '<option value="硼替佐米">硼替佐米</option> ' +
                    '<option value="地塞米松">地塞米松</option>' +
                    '<option value="表柔比星">表柔比星</option> ' +
                    '<option value="吡柔比星">吡柔比星</option>' +
                    '<option value="沙利度胺">沙利度胺</option> ' +
                    '<option value="来那度胺">来那度胺</option>   ' +
                    '<option value="马法兰">马法兰</option> ' +
                    '<option value="多柔比星">多柔比星</option>' +
                    '<option value="顺铂">顺铂</option> ' +
                    '<option value="环磷酰胺">环磷酰胺</option> ' +
                    '<option value="泼尼松">泼尼松</option> </select>' +
                    '</span><input  id="followupChemotherapyName" name="name' + entry.index + '" type="text" style="width:170px;height:100%;position:absolute;left:0px;"> ' +
                    '</div></td>'));

                    element.append($('<td><input type="text" style="width:100%;" value="' + entry.consumption + '" name="amount"/></td>'));
                    element.append($('<td colspan="1"> ' +
                    '<div   style="position:relative;"> ' +
                    '<span   style="width:18px;overflow:hidden;"> ' +
                    '<select id="consumptionSize" name="consumptionSize' + entry.index + '"data-placeholder=""' +
                    'class="select2-300" style="width:200px;" onchange="setSize($(this))">'+
                    '<option value=""></option>'+
                    '<option value="mg">mg</option>'+
                    '<option value="mg/m2">mg/m2</option>'+
                    '<option value="mg/kg">mg/kg</option>'+
                    '<option value="g">g</option></select></span> ' +
                    '<input  name="consumptionSize' + entry.index + '" id="consumptSize" type="text" style="width:80px;height:100%;position:absolute;left:0px;"/> ' +
                    '</div></td>'));
                    element.append($('<td><input type="text" style="width:100%;" value="' + entry.frequency + '" name="feq"/></td>'));
                    element.append($('<td><label> <input value="1" type="radio" class="ace" name="isOuter1' + length + '" /><span class="lbl">是</span></label>' +
                    '<label ><input value="2" type="radio" class="ace" name="isOuter1' + length + '"/><span class="lbl">否</span></label></td>'));
                    element.append($('<td><a style="cursor: pointer;color:red" onclick="$(this).parent().parent().remove()"><i class="ace-icon fa fa-close"></i>删除</a></td>'));
                    $('#HLYWInfoTable tbody').append(element);
                    $('#HLYWInfoTable tbody').find('input[type=radio][name="isOuter1' + entry.index + '"][value="' + entry.buyOuter + '"]').prop("checked", true);
                    $('#HLYWInfoTable tbody').find('select[id="followupChemotherapyItemName"][name="name' + entry.index + '"]').val(entry.name).trigger("change");
                    $('#HLYWInfoTable tbody').find('select[id="consumptionSize"][name="consumptionSize' + entry.index + '"]').val(entry.consumptionSize).trigger("change");
                    $('#HLYWInfoTable tbody').find('select[id="followupChemotherapyItemName"][name="name' + entry.index + '"]').select2({'width':'190px'});
                    $('#HLYWInfoTable tbody').find('select[id="consumptionSize"][name="consumptionSize' + entry.index + '"]').select2({'width':'100px'});

                    $('#HLYWInfoTable tbody').find('input[name="consumptionSize' + entry.index + '"]').val(entry.consumptionSize);
                    $('#HLYWInfoTable tbody').find('input[name="name' + entry.index + '"]').val(entry.name);
                }
            });
        }
        if (hospitaledInfo.hospitaledSupportItems) {
            hospitaledInfo.hospitaledSupportItems.forEach(function (entry, index) {
                if (entry.index == 1) {
                    var trObj = $('#HLYWInfoTable2 tbody').find("tr").eq(0);
                    trObj.attr("data-id", entry.id);
                    trObj.find('td').eq(0).html("1");
                    trObj.find('td').eq(1).find('input').val(entry.name);
                    trObj.find('td').eq(2).find('input').val(entry.consumption);
                    trObj.find('td').eq(3).find('input').val(entry.frequency);
                    trObj.find('td').eq(4).find('input').val(entry.fitDrugs);
                    trObj.find('td').eq(5).find('input[type=radio][value="' + entry.buyOuter + '"]').prop('checked', true);
                } else {
                    var length = $('#HLYWInfoTable2 tbody').find("tr").length + 1;
                    var element = $('<tr data-id="' + entry.id + '" data-index="' + entry.index + '"></tr>');
                    element.append($('<td>' + length + '</td>'));
                    element.append($('<td><input type="text" style="width:100%;" value="' + entry.name + '" name="name"/></td>'));
                    element.append($('<td><input type="text" style="width:100%;" value="' + entry.consumption + '" name="amount"/></td>'));
                    element.append($('<td><input type="text" style="width:100%;" value="' + entry.frequency + '" name="feq"/></td>'));
                    element.append($('<td><input type="text" style="width:100%;" value="' + entry.fitDrugs + '" name="fitDrugs"/></td>'));
                    element.append($('<td><label> <input value="1" type="radio" class="ace" name="isOuter2' + length + '" /><span class="lbl">是</span></label>' +
                    '<label  ><input value="2" type="radio" class="ace" name="isOuter2' + length + '"/><span class="lbl">否</span></label></td>'));
                    element.append($('<td><a style="cursor: pointer;color:red" onclick="$(this).parent().parent().remove()"><i class="ace-icon fa fa-close"></i>删除</a></td>'));
                    $('#HLYWInfoTable2 tbody').append(element);
                    $('#HLYWInfoTable2 tbody').find('input[type=radio][name="isOuter2' + entry.index + '"][value="' + entry.buyOuter + '"]').prop("checked", true);
                }
            });
        }
        $('input[type="radio"][name="HospitaledEvaluateAfterCure"][value="' + hospitaledInfo.evaluateAfterCure + '"]').prop('checked', true);
        if(hospitaledInfo.evaluateAfterCure==1) {
            $('#trEvaluateResult').show();
            $('#trHospitaledEvaluateRule').show();
        } else {
            $('#trEvaluateResult').hide();
            $('#trHospitaledEvaluateRule').hide();
        }
        $('input[type="radio"][name="hospitaledEvaluateRule"][value="' + hospitaledInfo.evaluateRule + '"]').prop('checked', true);
        $('#evaluateRuleOther').val(hospitaledInfo.evaluateRuleOther);
        $('#evaluateResult').select2('val', hospitaledInfo.evaluateResult);
        $('input[type=radio][name="hospitaledLivingState"][value="' + hospitaledInfo.livingState + '"]').prop('checked', true);
        if(hospitaledInfo.livingState==2) {
            $('#hospitaledDeathDate').val(hospitaledInfo.deathDate);
            $('#hospitaledDeathReason').val(hospitaledInfo.deathReason);
            $('.livingDeathGroup').show();
        } else {
            $('.livingDeathGroup').hide();
        }

        $('input[type=radio][name=badInformationStatus][value="' + hospitaledInfo.badInformationStatus + '"]').prop('checked', true);
        // fill badInformationStatus
        if (hospitaledInfo.badInformationStatus == 1) {
            if (hospitaledInfo.badinformationItems) {
                hospitaledInfo.badinformationItems.forEach(function (entry) {
                    if (entry.index == 1) {
                        var trObj = $('#badInformationTable tbody').find("tr").eq(0);
                        trObj.attr("data-id", entry.id);
                        trObj.find('input[name="badinformationName"]').val(entry.badinformationName);
                        trObj.find('input[name="badinformationDate"]').val(entry.badinformationDate);
                        trObj.find('input.badinformationLevel[value="' + entry.badinformationLevel + '"]').prop('checked', true);
                        trObj.find('input.badinformationCctaeStatus[value="' + entry.badinformationCctaeStatus + '"]').prop('checked', true);
                        trObj.find('input.badinformationCctaeLevel[value="' + entry.badinformationCctaeLevel + '"]').prop('checked', true);
                        trObj.find('input.badinformationMedicineRealation[value="' + entry.badinformationMedicineRealation + '"]').prop('checked', true);
                        trObj.find('input.badinformationNonMedicineRealation[value="' + entry.badinformationNonMedicineRealation + '"]').prop('checked', true);
                        trObj.find('input.badinformationSpecialInformation[value="' + entry.badinformationSpecialInformation + '"]').prop('checked', true);
                        trObj.find('input.badinformationPregnant[value="' + entry.badinformationPregnant + '"]').prop('checked', true);
                        trObj.find('input.badinformationOutcomeOfSubjects[value="' + entry.badinformationOutcomeOfSubjects + '"]').prop('checked', true);
                        trObj.find('input.badinformationCritical[value="' + entry.badinformationCritical + '"]').prop('checked', true);
                        if (entry.badinformationCctaeStatus == 1) {
                            $('#divcteaeStatuslevel').show();
                        } else {
                            $('#divcteaeStatuslevel').hide();
                        }
                    } else {
                        $('#badInformationTable tbody').find('.collapse').removeClass('in');
                        var length = $('#badInformationTable tbody').find('tr').length + 1;
                        var element = $('<tr class="trbadMessage" id=trBadAccordion"' + length + '" data-id="0" data-index="' + length + '"></tr>');
                        element.append($('<td colspan="' + length + '"><div class="panel panel-default">' +
                        '<div class="panel-heading">' +
                        '<h4 class="panel-title">' +
                        '<a data-toggle="collapse" data-parent="#trBadAccordion' + length + '" href="#badAccordion' + length + '">第' + length + '次不良事件信息 </a>' +
                        '<a style="cursor: pointer;color:red" onclick="$(this).parent().parent().parent().parent().parent().remove()"><i class="ace-icon fa fa-close"></i>删除</a></h4></div><div id="badAccordion' + length + '" class="panel-collapse collapse in"><div class="panel-body">' +
                        '<div class="form-group"><label class="control-label col-xs-12 col-sm-3 no-padding-right">不良事件名称:</label><div class="col-xs-12 col-sm-9"><div class="clearfix"><input name="badinformationName" value="' + entry.badinformationName + '" type="text" class="text-300"/></div></div></div>' +
                        '<div class="form-group"><label class="control-label col-xs-12 col-sm-3 no-padding-right">纪录日期:</label><div class="col-xs-12 col-sm-9"><div class="input-group"><span class="input-group-addon"><i class="ace-icon fa fa-calendar"></i></span><input type="text" value="' + entry.badinformationDate + '" name="badinformationDate" class="form-control text-265 dataDay"/>&nbsp;&nbsp;<span>(格式:yyyy-mm-dd)</span></div></div></div>' +
                        '<div class="form-group"><label class="control-label col-xs-12 col-sm-3 no-padding-right">严重程度评估:</label><div class="col-xs-12 col-sm-9"><div class="clearfix"><label class=" "><input value="1" type="radio"class="ace badinformationLevel" name="yanzhongStatus' + length + '"/><span class="lbl">轻度</span></label>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<label class=" "><input value="2" type="radio" class="ace badinformationLevel" name="yanzhongStatus' + length + '"/><span class="lbl">中度</span></label>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<label class=" "><input value="3" type="radio" class="ace badinformationLevel" name="yanzhongStatus' + length + '"/><span class="lbl">重度</span></label></div></div></div>' +
                        '<div class="form-group"><label class="control-label col-xs-12 col-sm-3 no-padding-right">是否采用CTE-AE 3.0评估:</label><div class="col-xs-12 col-sm-9"><label class=" "><input value="1" type="radio"class="ace badinformationCctaeStatus" name="cteaeStatus' + length + '"/><span class="lbl">是</span></label>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<label class=" "><input value="2" type="radio"class="ace badinformationCctaeStatus" name="cteaeStatus' + length + '"/><span class="lbl">否</span></label>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<label class=" "><input value="3" type="radio"class="ace"name="cteaeStatus' + length + '"/><span class="lbl">未知</span></label></div></div>' +
                        '<div class="form-group" hidden id="divcteaeStatuslevel' + length + '"><label class="control-label col-xs-12 col-sm-3 no-padding-right">请勾选级别</label> <div class="col-xs-12 col-sm-9"><label class=" "><input value="1" type="radio"class="ace badinformationCctaeLevel" name="cteaeStatuslevel' + length + '"/><span class="lbl">1</span></label>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<label class=" "><input value="2" type="radio" class="ace badinformationCctaeLevel" name="cteaeStatuslevel' + length + '"/><span class="lbl">2</span></label>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<label class=" "><input value="3" type="radio"class="ace badinformationCctaeLevel" name="cteaeStatuslevel' + length + '"/><span class="lbl">3</span></label>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<label class=" "><input value="4" type="radio"class="ace badinformationCctaeLevel" name="cteaeStatuslevel' + length + '"/><span class="lbl">4</span></label>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<label class=" "><input value="5" type="radio"class="ace badinformationCctaeLevel" name="cteaeStatuslevel' + length + '"/><span class="lbl">5</span></label></div></div>' +
                        '<div class="form-group"><label class="control-label col-xs-12 col-sm-3 no-padding-right">与当前治疗药物的关系:</label><div class="col-xs-12 col-sm-9"><div class="clearfix"><label class=" "><input value="1" type="radio" class="ace badinformationMedicineRealation" name="guanxiStatus' + length + '"/><span class="lbl">无关</span></label>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<label class=" "><input value="2" type="radio"class="ace badinformationMedicineRealation"name="guanxiStatus' + length + '"/><span class="lbl">可能无关</span></label>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<label class=" "><input value="3" type="radio"class="ace badinformationMedicineRealation" name="guanxiStatus' + length + '"/><span class="lbl">可能有关</span></label>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<label class=" "><input value="4" type="radio"class="ace badinformationMedicineRealation"name="guanxiStatus' + length + '"/><span class="lbl">很可能有关</span></label>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<label class=" "><input value="5" type="radio"class="ace"name="guanxiStatus' + length + '"/><span class="lbl">有关</span></label></div></div></div>' +
                        '<div class="form-group"><label class="control-label col-xs-12 col-sm-3 no-padding-right">与当前非治疗药物的关系:</label><div class="col-xs-12 col-sm-9"><label class=" "><input value="1" type="radio" class="ace badinformationNonMedicineRealation" name="guanxifeiStatus' + length + '"/><span class="lbl">无关</span></label>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<label class=" "><input value="2" type="radio"class="ace badinformationNonMedicineRealation" name="guanxifeiStatus' + length + '"/><span class="lbl">可能无关</span></label>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<label class=" "><input value="3" type="radio" class="ace badinformationNonMedicineRealation" name="guanxifeiStatus' + length + '"/><span class="lbl">可能有关</span></label> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<label class=" "><input value="4" type="radio"class="ace badinformationNonMedicineRealation"name="guanxifeiStatus' + length + '"/><span class="lbl">很可能有关</span></label>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<label class=" "><input value="5" type="radio"class="ace badinformationMedicineRealation"name="guanxifeiStatus' + length + '"/><span class="lbl">有关</span></label></div></div>' +
                        '<div class="form-group"><label class="control-label col-xs-12 col-sm-3 no-padding-right">特殊情况:</label><div class="col-xs-12 col-sm-9"><label class=" "><input value="1" type="radio" class="ace badinformationSpecialInformation" name="teshuStatus' + length + '"/><span class="lbl">杨森药品剂量过大</span></label>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<label class=" "><input value="2" type="radio" class="ace badinformationSpecialInformation" name="teshuStatus' + length + '"/><span class="lbl">哺乳期杨森研究药品暴露</span></label>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<label class=" "><input value="3" type="radio" class="ace badinformationSpecialInformation" name="teshuStatus' + length + '"/><span class="lbl">怀疑滥用/误用杨森药品</span></label>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<label class=" "><input value="4" type="radio" class="ace badinformationSpecialInformation" name="teshuStatus' + length + '"/><span class="lbl">无意或意外接触到杨森研究药品</span></label>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<label class=" "><input value="5" type="radio" class="ace badinformationSpecialInformation"name="teshuStatus' + length + '"/><span class="lbl">杨森研究药品任何预期的药理作用的失败（如缺乏效果）</span></label>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<label class=" "><input value="6" type="radio"class="ace badinformationSpecialInformation" name="teshuStatus' + length + '"/><span class="lbl">使用杨森研究药品获得非预期的药理作用或临床疗效</span></label>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<label class=" "><input value="7" type="radio" class="ace badinformationSpecialInformation" name="teshuStatus' + length + '"/><span class="lbl">涉及药物的药物错投（有或没有病人使用杨森研究药品，如药品混淆）</span></label></div></div>' +
                        '<div class="form-group"><label class="control-label col-xs-12 col-sm-3 no-padding-right">妊娠异常情况:</label><div class="col-xs-12 col-sm-9"><label class=" "><input value="1" type="radio" class="ace badinformationPregnant" name="huaiyunStatus' + length + '"/><span class="lbl">流产</span></label>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<label class=" "><input value="2" type="radio"class="ace badinformationPregnant" name="huaiyunStatus' + length + '"/><span class="lbl">胎儿死亡</span></label>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<label class=" "><input value="3" type="radio" class="ace badinformationPregnant" name="huaiyunStatus' + length + '"/><span class="lbl">死胎</span></label>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<label class=" "><input value="4" type="radio"class="ace"name="huaiyunStatus' + length + '"/><span class="lbl">先天性异常</span></label>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<label class=" "><input value="5" type="radio" class="ace badinformationPregnant" name="huaiyunStatus' + length + '"/><span class="lbl">异位妊娠</span></label></div></div>' +
                        '<div class="form-group"><label class="control-label col-xs-12 col-sm-3 no-padding-right">受试者转归:</label><div class="col-xs-12 col-sm-9"><label class=" "><input value="1" type="radio" class="ace badinformationOutcomeOfSubjects" name="zhuanguiStatus' + length + '"/><span class="lbl">恢复</span></label>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<label class=" "><input value="2" type="radio"class="ace badinformationOutcomeOfSubjects" name="zhuanguiStatus' + length + '"/><span class="lbl">尚未恢复</span></label>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<label class=" "><input value="3" type="radio"class="ace badinformationOutcomeOfSubjects" name="zhuanguiStatus' + length + '"/><span class="lbl">死于不良事件</span></label>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<label class=" "><input value="4" type="radio" class="ace badinformationOutcomeOfSubjects" name="zhuanguiStatus' + length + '"/><span class="lbl">未知</span></label></div></div>' +
                        '<div class="form-group"><label class="control-label col-xs-12 col-sm-3 no-padding-right">是否作为严重不良事件报告:</label><div class="col-xs-12 col-sm-9"><label class=" "><input value="1" type="radio" class="ace badinformationCritical" name="baogaoStatus' + length + '"/><span class="lbl">是（同时填写严重不良事件表）</span></label>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<label class=" "><input value="2" type="radio"class="ace badinformationCritical" name="baogaoStatus' + length + '"/><span class="lbl">否</span></label></div></div>' +
                        '</div></div></div></td>'));
                        $('#badInformationTable tbody').append(element);
                        $('input[type=radio][name=yanzhongStatus' + length + '][value="' + entry.badinformationLevel + '"]').prop('checked', true);
                        $('input[type=radio][name=cteaeStatus' + length + '][value="' + entry.badinformationCctaeStatus + '"]').prop('checked', true);
                        $('input[type=radio][name=cteaeStatuslevel' + length + '][value="' + entry.badinformationCctaeLevel + '"]').prop('checked', true);
                        $('input[type=radio][name=yanzhongStatus' + length + '][value="' + entry.badinformationCctaeLevel + '"]').prop('checked', true);
                        $('input[type=radio][name=guanxiStatus' + length + '][value="' + entry.badinformationMedicineRealation + '"]').prop('checked', true);
                        $('input[type=radio][name=guanxifeiStatus' + length + '][value="' + entry.badinformationNonMedicineRealation + '"]').prop('checked', true);
                        $('input[type=radio][name=teshuStatus' + length + '][value="' + entry.badinformationSpecialInformation + '"]').prop('checked', true);
                        $('input[type=radio][name=huaiyunStatus' + length + '][value="' + entry.badinformationPregnant + '"]').prop('checked', true);
                        $('input[type=radio][name=zhuanguiStatus' + length + '][value="' + entry.badinformationOutcomeOfSubjects + '"]').prop('checked', true);
                        $('input[type=radio][name=baogaoStatus' + length + '][value="' + entry.badinformationCritical + '"]').prop('checked', true);
                        if (entry.badinformationCctaeStatus == 1) {
                            $('#divcteaeStatuslevel' + length + '').show();
                        } else {
                            $('#divcteaeStatuslevel' + length + '').hide();
                        }
                        $('input[type=radio][name=cteaeStatus' + length + ']').change(function () {
                            if (this.value == '1') {
                                $('#divcteaeStatuslevel' + length + '').show();
                            } else {
                                $('#divcteaeStatuslevel' + length + '').hide();
                            }
                        });
                    }
                });
            }
            $('#addbadBtn').prop('disabled', false);
            $('.trbadMessage').show();
        } else {
            $('#addbadBtn').prop('disabled', true);
            $('.trbadMessage').hide();
        }
        if (hospitaledInfo.hospitaledCost) {
            var hospitaledCost = hospitaledInfo.hospitaledCost;
            $('#hospitaledCostTable tbody').find('input[name="westernMed"]').val(hospitaledCost.westernMed);
            $('#hospitaledCostTable tbody').find('input[name="cure"]').val(hospitaledCost.cure);
            $('#hospitaledCostTable tbody').find('input[name="check"]').val(hospitaledCost.check);
            $('#hospitaledCostTable tbody').find('input[name="inspect"]').val(hospitaledCost.inspect);
            $('#hospitaledCostTable tbody').find('input[name="material"]').val(hospitaledCost.material);
            $('#hospitaledCostTable tbody').find('input[name="bed"]').val(hospitaledCost.bed);
            $('#hospitaledCostTable tbody').find('input[name="food"]').val(hospitaledCost.food);
            $('#hospitaledCostTable tbody').find('input[name="nursing"]').val(hospitaledCost.nursing);
            $('#hospitaledCostTable tbody').find('input[name="other"]').val(hospitaledCost.other);
            $('#hospitaledCostTable tbody').find('input[name="total"]').val(hospitaledCost.total);
            $('#hospitaledCostTable tbody').find('input[name="self"]').val(hospitaledCost.self);
            $('#hospitaledCostTable tbody').find('input[name="outer"]').val(hospitaledCost.outer);
            $('#hospitaledCostTable tbody').find('input[name="otherCostName"]').val(hospitaledCost.otherCostName);
            $('#hospitaledCostTable tbody').find('input[name="otherCostValue"]').val(hospitaledCost.otherCostValue);
            if(hospitaledInfo.hospitaledCost.otherHospitalCost) {
                hospitaledInfo.hospitaledCost.otherHospitalCost.forEach(function (entry, index) {
                    var length = $('#hospitaledCostTable tbody').find('tr').length;
                    var element = $('<tr class="costItemAdded" data-id="'+entry.id+'" data-index="'+length+'"></tr>');
                    element.append($('<td>' + length + '</td>'));
                    element.append($('<td>其他未包括费用类型:&nbsp;<input name="name" type="text" value="'+entry.name+'" style="width: 100px;"/></td>'));
                    element.append($('<td><input type="text" style="width:100%;" value="'+entry.value+'" class="full-width cmSize"/></td>'));
                    element.append($('<td><a style="cursor: pointer;color:red" onclick="$(this).parent().parent().remove()"><i class="ace-icon fa fa-close"></i>删除</a></td>'));
                    $('#hospitaledCostTable tbody').append(element);
                });
            }

        }
    } else {
        $('#hospitaledInfoId').val(0);
        $('#addbadBtn').prop('disabled', true);
        $('.trbadMessage').hide();
    }
    $('#addPanel').show();
}

