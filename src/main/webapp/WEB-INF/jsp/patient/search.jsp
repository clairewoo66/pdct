<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"></c:set>

<link rel="stylesheet" href="${contextPath}/static/assets/css/select2.css"/>

<div class="page-header">
    <h4 class="widget-title green bolder ">
        检索患者
    </h4>
</div>
<!-- /.page-header -->
<div class="row">
    <div class="col-xs-12">
        <!-- PAGE CONTENT BEGINS -->
        <form class="form-horizontal" role="form">
            <div class="form-group">
                <input id="hospitalIds" hidden/>
                <label class="control-label col-xs-12 col-sm-4 no-padding-right" for="patientHospital">就诊医院:</label>

                <div class="col-xs-12 col-sm-4">
                    <select id="patientHospital" name="patientHospital">
                    </select>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-xs-12 col-sm-4 no-padding-right" for="patientId">患者研究编号:</label>

                <div class="col-xs-12 col-sm-8">
                    <input type="text" name="patientId" id="patientId"
                           class="text-350"/><span>(示例号:CTI01020160918)</span>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-xs-12 col-sm-4 no-padding-right">操作类型:</label>

                <div class="col-xs-12 col-sm-8">
                    <c:if test="${acquisitionView}">
                        <label class="line-height-1">
                            <input value="0" type="radio" class="ace" name="operateType"/>
                            <span class="lbl">回顾性数据采集</span>
                        </label>
                        &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;
                    </c:if>

                    <c:if test="${contactView}">
                        <label class="line-height-1">
                            <input value="1" type="radio" class="ace" name="operateType"/>
                            <span class="lbl">联系患者</span>
                        </label>
                        &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;
                    </c:if>
                    <c:if test="${informView}">
                        <label class="line-height-1">
                            <input value="2" type="radio" class="ace" name="operateType"/>
                            <span class="lbl">患者知情同意书签署状态</span>
                        </label>
                        &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;
                    </c:if>
                    <c:if test="${followupView}">
                        <label class="line-height-1">
                            <input value="3" type="radio" class="ace" name="operateType"/>
                            <span class="lbl">随访数据采集</span>
                        </label>
                    </c:if>
                </div>
            </div>

            <div class="clearfix form-actions">
                <div class="col-xs-12 col-sm-12 center">
                    <button class="btn btn-primary" type="button" id="scheduleBtn">
                        <i class="ace-icon fa fa-cogs bigger-110"></i>
                        患者进度查询
                    </button>

                    &nbsp; &nbsp; &nbsp;
                    <button class="btn btn-primary" type="button" id="searchBtn">
                        <i class="ace-icon fa fa-check bigger-110"></i>
                        操作
                    </button>

                    &nbsp; &nbsp; &nbsp;
                    <button class="btn" type="reset">
                        <i class="ace-icon fa fa-undo bigger-110"></i>
                        取消
                    </button>
                </div>
            </div>
        </form>
    </div>
</div>
<!-- /.col -->
</div><!-- /.row -->

<!-- page specific plugin scripts -->
<script type="text/javascript">
    function setupHospitalList(list) {
        if (list) {
            if(list.length<=0) {
                bootbox.alert({
                    buttons: {
                        ok: {
                            label: '确认',
                            className: 'btn-primary'
                        }
                    },
                    message: '该用户未绑定医院,请联系管理员',
                });
                return;
            }
            var idList = [];

            list.forEach(function (entry) {
                idList.push(entry.id);
                $('#patientHospital').append('<option value="' + entry.id + '">' + entry.name + '</option>')
            });
            $('#hospitalIds').val(idList.join(','));
            $('#patientHospital option:first').prop('checked',true);
        } else {
            bootbox.alert({
                buttons: {
                    ok: {
                        label: '确认',
                        className: 'btn-primary'
                    }
                },
                message: '无法获取当前用户的医院信息,请联系管理员',
            });
        }
    }
    var scripts = [null, "${contextPath}/static/assets/js/bootbox.js", "${contextPath}/static/assets/js/jquery.validate.js", "${contextPath}/static/assets/js/additional-methods.js", "${contextPath}/static/assets/js/bootbox.js", "${contextPath}/static/assets/js/jquery.maskedinput.js", "${contextPath}/static/assets/js/select2.js", "${contextPath}/static/assets/js/date-time/bootstrap-datepicker.js", null]
    $('.page-content-area').ace_ajax('loadScripts', scripts, function () {
        $('.width-300').css('width', '300px');
        $(".select2-350").css('width', '350px').select2();
        $(".text-350").css('width', '350px');
        $.ajax({
            dataType: "json",
            url: "${contextPath}user/bindHospitalList?id=${sessionScope.SESSION_USER.id}",
            type: "get",
            success: function (response) {
                if (response.success) {
                    setupHospitalList(response.result);
                } else {
                    bootbox.alert({
                        buttons: {
                            ok: {
                                label: '确认',
                                className: 'btn-primary'
                            }
                        },
                        message: '无法获取当前用户的医院信息,请联系管理员',
                    });
                }
                $("#patientHospital").css('width', '350px').select2();
            }
        });
        $('#scheduleBtn').on('click', function () {
            var hospitalId = $('#patientHospital').val();
            if(!hospitalId) {
                bootbox.alert({
                    buttons: {
                        ok: {
                            label: '确认',
                            className: 'btn-primary'
                        }
                    },
                    message: '请先选择医院',
                });
                return;
            }
            window.location.href = "#page/contactpatient?hospitalId=" + $('#hospitalIds').val();
        });
       $('input[type=radio][name="operateType"]:first').prop('checked',true);

        $('#searchBtn').on('click', function () {
            var patientId = $('#patientId').val();
            var hospitalId = $('#patientHospital').val();
            var type = $("input[name='operateType']:checked").val();
            if (!hospitalId) {
                bootbox.alert({
                    buttons: {
                        ok: {
                            label: '确认',
                            className: 'btn-primary'
                        }
                    },
                    message: '请先选择医院',
                });
                return;
            }
            if (type == 0) { //
                if (!patientId || patientId.trim().length == 0) {
                    bootbox.alert({
                        buttons: {
                            ok: {
                                label: '确认',
                                className: 'btn-primary'
                            }
                        },
                        message: '请填写病人ID',
                    });
                    return;
                }
                $.ajax({
                    dataType: "json",
                    url: "${contextPath}/patient/simpleInfo/" + patientId + "?hospitalId=" + hospitalId,
                    type: "get",
                    success: function (response) {
                        if (response.success) {
                            if(response.result.acquisitionStatus==1) { //未完成
                                if(${acquisitionModify}) {//有权限修改的
                                    bootbox.confirm({
                                        buttons: {
                                            confirm: {
                                                label: '更新',
                                                className: 'btn-primary'
                                            },
                                            cancel: {
                                                label: '取消',
                                                className: 'btn'
                                            }
                                        },
                                        message: '该患者的回顾性数据未录入完成,是否需要更新？',
                                        callback: function (result) {
                                            if (result)
                                                window.location.href = "#page/acquisition?hospitalId=" + hospitalId + "&patientId=" + patientId;
                                        }
                                    });
                                } else {
                                    bootbox.alert({
                                        buttons: {
                                            ok: {
                                                label: '确认',
                                                className: 'btn-primary'
                                            }
                                        },
                                        message: '该患者的回顾性数据未录入完成,请联系数据采集员录入信息'
                                    });
                                }
                            } else {
                                bootbox.confirm({
                                    buttons: {
                                        confirm: {
                                            label: '查看',
                                            className: 'btn-primary'
                                        },
                                        cancel: {
                                            label: '取消',
                                            className: 'btn'
                                        }
                                    },
                                    message: '该患者的回顾性数据已经录入完成,是否需要查看？',
                                    callback: function (result) {
                                        if (result)
                                            window.location.href = "#page/acquisition?hospitalId=" + hospitalId + "&patientId=" + patientId;
                                    }
                                });
                            }
                        } else {
                            bootbox.confirm({
                                buttons: {
                                    confirm: {
                                        label: '新增',
                                        className: 'btn-primary'
                                    },
                                    cancel: {
                                        label: '取消',
                                        className: 'btn'
                                    }
                                },
                                message: '该患者的研究编号在系统中不存在，是否需要新增患者的回顾性数据采集信息？',
                                callback: function (result) {
                                    if (result)
                                        window.location.href = "#page/acquisition?hospitalId=" + hospitalId + "&patientId=" + patientId;
                                }
                            });
                        }
                    }
                });
            } else if (type == 1) {
                if ((!patientId) || (patientId.trim().length == 0)) {//显示所有
                    window.location.href = "#page/contactpatient?hospitalId=" + hospitalId;
                } else {
                    $.ajax({
                        dataType: "json",
                        url: "${contextPath}/patient/simpleInfo/" + patientId + "?hospitalId=" + hospitalId,
                        type: "get",
                        success: function (response) {
                            if ((response.result) && (response.result.acquisitionStatus == 2)) {
                                if (response.result.livingState == 2 || response.result.contactStatus == 3) {
                                    bootbox.alert({
                                        buttons: {
                                            ok: {
                                                label: '确认',
                                                className: 'btn-primary'
                                            }
                                        },
                                        message: '当前患者已死亡,无需联系',
                                    });
                                } else if (response.result.contactStatus == 2) {
                                    bootbox.confirm({
                                        buttons: {
                                            confirm: {
                                                label: '查看',
                                                className: 'btn-primary'
                                            },
                                            cancel: {
                                                label: '取消',
                                                className: 'btn'
                                            }
                                        },
                                        message: '该患者已联系完毕，是否需要查看联系状态？',
                                        callback: function (result) {
                                            if (result)
                                                window.location.href = "#page/contact?hospitalId=" + hospitalId + "&patientId=" + patientId;
                                        }
                                    });
                                } else {
                                    if(${contactModify}) {
                                        bootbox.confirm({
                                            buttons: {
                                                confirm: {
                                                    label: '更新',
                                                    className: 'btn-primary'
                                                },
                                                cancel: {
                                                    label: '取消',
                                                    className: 'btn'
                                                }
                                            },
                                            message: '该患者尚未联系完成，是否需要更新联系状态？',
                                            callback: function (result) {
                                                if (result)
                                                    window.location.href = "#page/contact?hospitalId=" + hospitalId + "&patientId=" + patientId;
                                            }
                                        });
                                    } else {
                                        bootbox.alert({
                                            buttons: {
                                                ok: {
                                                    label: '确认',
                                                    className: 'btn-primary'
                                                }
                                            },
                                            message: '该患者尚未联系完成,无法查看'
                                        });
                                    }

                                }
                            } else {
                                bootbox.alert({
                                    buttons: {
                                        ok: {
                                            label: '确认',
                                            className: 'btn-primary'
                                        }
                                    },
                                    message: '当前患者尚未完成回顾性数据采集信息,无法查看',
                                });
                            }
                        }
                    });
                }
            } else if (type == 2) {
                if ((!patientId) || (patientId.trim().length == 0)) {//显示所有
                    window.location.href = "#page/contactpatient?hospitalId=" + hospitalId;
                } else {
                    $.ajax({
                        dataType: "json",
                        url: "${contextPath}/patient/simpleInfo/" + patientId + "?hospitalId=" + hospitalId,
                        type: "get",
                        success: function (response) {
                            if (response.result && (response.result.acquisitionStatus == 2)) {
                                if (response.result.contactStatus == 3) {
                                    bootbox.alert({
                                        buttons: {
                                            ok: {
                                                label: '确认',
                                                className: 'btn-primary'
                                            }
                                        },
                                        message: '当前患者已经死亡,更新知情同意书状态为不适用',
                                    });
                                } else if (response.result.contactStatus == 2) {
                                    if (response.result.agreementStatus == 2) {
                                        bootbox.confirm({
                                            buttons: {
                                                confirm: {
                                                    label: '查看',
                                                    className: 'btn-primary'
                                                },
                                                cancel: {
                                                    label: '取消',
                                                    className: 'btn'
                                                }
                                            },
                                            message: '该患者已经联系，是否需要查看知情同意书状态？',
                                            callback: function (result) {
                                                if (result)
                                                    window.location.href = "#page/informedconsent?hospitalId=" + hospitalId + "&patientId=" + patientId;
                                            }
                                        });
                                    } else if (response.result.agreementStatus == 3) {
                                        bootbox.alert({
                                            buttons: {
                                                ok: {
                                                    label: '确认',
                                                    className: 'btn-primary'
                                                }
                                            },
                                            message: '当前患者知情同意书状态为"拒绝",无法更新',
                                        });
                                    } else if (response.result.agreementStatus == 4) {
                                        bootbox.alert({
                                            buttons: {
                                                ok: {
                                                    label: '确认',
                                                    className: 'btn-primary'
                                                }
                                            },
                                            message: '当前患者知情同意书状态为"不适用",无法更新',
                                        });
                                    } else {
                                        if(${informModify}) {
                                            bootbox.confirm({
                                                buttons: {
                                                    confirm: {
                                                        label: '查看',
                                                        className: 'btn-primary'
                                                    },
                                                    cancel: {
                                                        label: '取消',
                                                        className: 'btn'
                                                    }
                                                },
                                                message: '该患者尚未完成知情同意书，是否需要更新知情同意书状态？',
                                                callback: function (result) {
                                                    if (result)
                                                        window.location.href = "#page/informedconsent?hospitalId=" + hospitalId + "&patientId=" + patientId;
                                                }
                                            });
                                        } else {
                                            bootbox.alert({
                                                buttons: {
                                                    ok: {
                                                        label: '确认',
                                                        className: 'btn-primary'
                                                    }
                                                },
                                                message: '该患者尚未完成知情同意书,无法查看',
                                            });
                                        }
                                    }
                                } else {
                                    bootbox.alert({
                                        buttons: {
                                            ok: {
                                                label: '确认',
                                                className: 'btn-primary'
                                            }
                                        },
                                        message: '当前患者尚未取得联系,无法进行知情同意书状态更新',
                                    });
                                }

                            } else {
                                bootbox.alert({
                                    buttons: {
                                        ok: {
                                            label: '确认',
                                            className: 'btn-primary'
                                        }
                                    },
                                    message: '当前患者尚未完成回顾性数据采集,请联系数据人员进行完善',
                                });
                            }
                        }
                    });
                }
            } else if (type == 3) {
                $.ajax({
                    dataType: "json",
                    url: "${contextPath}/patient/simpleInfo/" + patientId + "?hospitalId=" + hospitalId,
                    type: "get",
                    success: function (response) {
                        if (response.result && (response.result.acquisitionStatus == 2)) {
                            if (response.result.contactStatus == 3) {
                                bootbox.alert({
                                    buttons: {
                                        ok: {
                                            label: '确认',
                                            className: 'btn-primary'
                                        }
                                    },
                                    message: '当前患者已经死亡,更新数据采集状态为不适用',
                                });
                            } else if (response.result.contactStatus == 2) {
                                if (response.result.agreementStatus == 2) {
                                    if (response.result.followupStatus == 2) {
                                        bootbox.confirm({
                                            buttons: {
                                                confirm: {
                                                    label: '查看',
                                                    className: 'btn-primary'
                                                },
                                                cancel: {
                                                    label: '取消',
                                                    className: 'btn'
                                                }
                                            },
                                            message: '当前患者随访数据已经采集完毕,是否需要查看？',
                                            callback: function (result) {
                                                if (result)
                                                    window.location.href = "#page/followup?hospitalId=" +
                                                            $('#patientHospital').val() + "&patientId=" + patientId;
                                            }
                                        });
                                    } else {
                                        if(${followupModify}) {
                                            bootbox.confirm({
                                                buttons: {
                                                    confirm: {
                                                        label: '更新',
                                                        className: 'btn-primary'
                                                    },
                                                    cancel: {
                                                        label: '取消',
                                                        className: 'btn'
                                                    }
                                                },
                                                message: '当前患者随访数据尚未采集完毕,是否需要更新？',
                                                callback: function (result) {
                                                    if (result)
                                                        window.location.href = "#page/followup?hospitalId=" +
                                                                $('#patientHospital').val() + "&patientId=" + patientId;
                                                }
                                            });
                                        } else {
                                            bootbox.alert({
                                                buttons: {
                                                    ok: {
                                                        label: '确认',
                                                        className: 'btn-primary'
                                                    }
                                                },
                                                message: '当前患者随访数据尚未采集完毕,无法查看',
                                            });
                                        }
                                    }
                                } else if (response.result.agreementStatus == 3) {
                                    bootbox.alert({
                                        buttons: {
                                            ok: {
                                                label: '确认',
                                                className: 'btn-primary'
                                            }
                                        },
                                        message: '当前患者知情同意书状态为"拒绝",更新数据采集状态为不适用',
                                    });
                                } else if (response.result.agreementStatus == 4) {
                                    bootbox.alert({
                                        buttons: {
                                            ok: {
                                                label: '确认',
                                                className: 'btn-primary'
                                            }
                                        },
                                        message: '当前患者知情同意书状态为"不适用",更新数据采集状态为不适用',
                                    });
                                } else {
                                    bootbox.alert({
                                        buttons: {
                                            ok: {
                                                label: '确认',
                                                className: 'btn-primary'
                                            }
                                        },
                                        message: '当前患者未完成知情同意书录入,暂时无法录入采集信息',
                                    });
                                }
                            } else {
                                bootbox.alert({
                                    buttons: {
                                        ok: {
                                            label: '确认',
                                            className: 'btn-primary'
                                        }
                                    },
                                    message: '当前患者尚未取得联系,暂时无法录入随访数据',
                                });
                            }

                        } else {
                            bootbox.alert({
                                buttons: {
                                    ok: {
                                        label: '确认',
                                        className: 'btn-primary'
                                    }
                                },
                                message: '当前患者尚未完成回顾性数据采集,请联系数据人员进行完善',
                            });
                        }
                    }
                });
            }
        });
    });
</script>
