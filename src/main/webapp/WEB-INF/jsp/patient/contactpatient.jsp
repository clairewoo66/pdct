<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"></c:set>


<!-- ajax layout which only needs content area -->
<div class="page-header">
    <h4 class="widget-title green bolder ">
        患者进度查询
    </h4>
</div>
<!-- /.page-header -->
<div class="row">
    <div class="col-xs-12">
        <table id="sample-table-2" class="table table-striped table-bordered table-hover">
            <thead>
            <tr>
                <th class="center">
                    <label class="position-relative">
                        <input type="checkbox" class="ace"/>
                        <span class="lbl"></span>
                    </label>
                </th>
                <th class="center">患者研究编号</th>
                <th class="center">患者所在医院</th>
                <th class="center">回顾性数据采集完成状态</th>
                <th class="center">联系患者状态</th>
                <th class="center">患者知情同意书状态</th>
                <th class="center">随访数据采集状态</th>
            </tr>
            </thead>
            <tbody>
            </tbody>
        </table>
    </div>
</div>

<!-- PAGE CONTENT ENDS -->
</div><!-- /.col -->
</div><!-- /.row -->

<!-- page specific plugin scripts -->
<script type="text/javascript">

    function showWarning() {
        bootbox.alert({
            buttons: {
                ok: {
                    label: '确认',
                    className: 'btn-warning'
                }
            },
            message: '该患者状态为已死亡/不适用,无法操作,请联系管理员',
        });
    }

    var scripts = [null, "${contextPath}/static/assets/js/bootbox.js", "${contextPath}/static/assets/js/jquery.dataTables.js", "${contextPath}/static/assets/js/jquery.dataTables.bootstrap.js", null]
    $('.page-content-area').ace_ajax('loadScripts', scripts, function () {
        //inline scripts related to this pagefollowup-btn
        jQuery(function ($) {
            $.ajax({
                dataType: "json",
                url: "${contextPath}/hospital/listByIds?ids=${hospitalId}",
                type: "get",
                success: function (response) {
                    var hospitalMap = {};
                  if(response.result) {
                      for(var i=0;i<response.result.length;i++) {
                          var hospital = response.result[i];
                          hospitalMap[hospital.id]=hospital.name;
                      }
                  }
                    $('#sample-table-2')
                            .dataTable({
                                bLengthChange: false, //关闭每页显示多少条数据
                                bFilter: true,
                                bAutoWidth: true,
                                bServerSide: true,
                                sAjaxSource: "${contextPath}/patient/dataTablesList?hospitalId=${hospitalId}",
                                "aoColumns": [
                                    {
                                        "mData": "id", "bSortable": false, "sClass": "center",
                                        "mRender": function (data, type, row) {
                                            return '<label class="position-relative"><input type="checkbox" class="ace" /><span class="lbl"></span></label>';
                                        }
                                    },
                                    {
                                        "mData": "patientId", "bSortable": true, "sClass": "center",
                                    },
                                    {
                                        "mData": "fkhospitalid", "bSortable": false, "sClass": "center",
                                        "mRender": function (data, type, row) {
                                            return hospitalMap[row.fkhospitalid];
                                        }
                                    },
                                    {
                                        "mData": "acquisitionStatus", "bSortable": true, "sClass": "center",
                                        "mRender": function (data, type, row) {
                                            if (row.acquisitionStatus == 2) {
                                                if(${acquisitionView}) {
                                                    return '<button class="btn btn-xs btn-primary collect-btn" onclick="operationalAnalysis(\'updateAcquistion\',\'' + row.patientId + '\',\'' + row.fkhospitalid + '\');">已完成</button>';
                                                } else {
                                                    return '<button disabled class="btn btn-xs btn-primary collect-btn" onclick="operationalAnalysis(\'updateAcquistion\',\'' + row.patientId + '\',\'' + row.fkhospitalid + '\');">已完成</button>';
                                                }
                                            } else {
                                                if(${acquisitionView}) {
                                                    return '<button class="btn btn-xs btn-danger collect-btn" onclick="operationalAnalysis(\'undoAcquistion\',\'' + row.patientId + '\',\'' + row.fkhospitalid + '\');">未完成</button>';
                                                } else {
                                                    return '<button disabled class="btn btn-xs btn-danger collect-btn" onclick="operationalAnalysis(\'undoAcquistion\',\'' + row.patientId + '\',\'' + row.fkhospitalid + '\');">未完成</button>';
                                                }
                                            }
                                        }
                                    },
                                    {
                                        "mData": "contactStatus", "bSortable": true, "sClass": "center",
                                        "mRender": function (data, type, row) {
                                            if (row.acquisitionStatus != 2) {
                                                if(${contactView}) {
                                                    return '<button class="btn btn-xs btn-danger collect-btn" onclick="operationalAnalysis(\'undoAcquistion\',\'' + row.patientId + '\',\'' + row.fkhospitalid + '\');">未完成</button>';
                                                } else {
                                                    return '<button disabled class="btn btn-xs btn-danger collect-btn" onclick="operationalAnalysis(\'undoAcquistion\',\'' + row.patientId + '\',\'' + row.fkhospitalid + '\');">未完成</button>';
                                                }
                                            } else if (row.contactStatus == 3) {//已死亡
                                                if(${contactView}) {
                                                    return '<button class="btn btn-xs btn-xs contact-btn" onclick="showWarning();">已死亡</button>';
                                                } else {
                                                    return '<button disabled class="btn btn-xs btn-xs contact-btn" onclick="showWarning();">已死亡</button>';
                                                }
                                            } else if (row.contactStatus == 2) {//已完成
                                                if(${contactView}) {
                                                    return '<button class="btn btn-xs btn-primary contact-btn" onclick="operationalAnalysis(\'updateContact\',\'' + row.patientId + '\',\'' + row.fkhospitalid + '\');">已完成</button>';
                                                } else {
                                                    return '<button disabled class="btn btn-xs btn-primary contact-btn" onclick="operationalAnalysis(\'updateContact\',\'' + row.patientId + '\',\'' + row.fkhospitalid + '\');">已完成</button>';
                                                }
                                            } else {
                                                if(${contactView}) {
                                                    return '<button class="btn btn-xs btn-danger contact-btn" onclick="operationalAnalysis(\'undoContact\',\'' + row.patientId + '\',\'' + row.fkhospitalid + '\');">未完成</button>';
                                                } else {
                                                    return '<button disabled class="btn btn-xs btn-danger contact-btn" onclick="operationalAnalysis(\'undoContact\',\'' + row.patientId + '\',\'' + row.fkhospitalid + '\');">未完成</button>';
                                                }
                                            }
                                        }
                                    },
                                    {
                                        "mData": "agreementStatus", "bSortable": true, "sClass": "center",
                                        "mRender": function (data, type, row) {
                                            if (row.acquisitionStatus != 2) {
                                                if(${informView}) {
                                                    return '<button class="btn btn-xs btn-danger contact-btn" onclick="operationalAnalysis(\'undoAcquistion&undoContact\',\'' + row.patientId + '\',\'' + row.fkhospitalid + '\');">未完成</button>';
                                                } else {
                                                    return '<button disabled class="btn btn-xs btn-danger contact-btn" onclick="operationalAnalysis(\'undoAcquistion&undoContact\',\'' + row.patientId + '\',\'' + row.fkhospitalid + '\');">未完成</button>';
                                                }
                                            } else if (row.contactStatus == 3) {//已死亡
                                                if(${informView}) {
                                                    return '<button class="btn btn-xs btn-xs contact-btn" onclick="showWarning();">不适用</button>';
                                                } else {
                                                    return '<button disabled class="btn btn-xs btn-xs contact-btn" onclick="showWarning();">不适用</button>';
                                                }
                                            } else if (row.contactStatus == 2) {
                                                if (row.agreementStatus == 4) {
                                                    if(${informView}) {
                                                        return '<button class="btn btn-xs btn-xs contact-btn" onclick="showWarning();">不适用</button>';
                                                    } else {
                                                        return '<button disabled class="btn btn-xs btn-xs contact-btn" onclick="showWarning();">不适用</button>';
                                                    }
                                                } else if (row.agreementStatus == 3) {
                                                    if(${informView}) {
                                                        return '<button class="btn btn-xs agreement-btn" onclick="showWarning();">拒绝</button>';
                                                    } else {
                                                        return '<button disabled class="btn btn-xs agreement-btn" onclick="showWarning();">拒绝</button>';
                                                    }
                                                } else if (row.agreementStatus == 2) {
                                                    if(${informView}) {
                                                        return '<button class="btn btn-xs btn-primary agreement-btn" onclick="operationalAnalysis(\'updateInfomed\',\'' + row.patientId + '\',\'' + row.fkhospitalid + '\');">同意</button>';
                                                    } else {
                                                        return '<button disabled class="btn btn-xs btn-primary agreement-btn" onclick="operationalAnalysis(\'updateInfomed\',\'' + row.patientId + '\',\'' + row.fkhospitalid + '\');">同意</button>';
                                                    }
                                                } else {
                                                    if(${informView}) {
                                                        return '<button class="btn btn-xs btn-danger agreement-btn" onclick="operationalAnalysis(\'undoInfomed\',\'' + row.patientId + '\',\'' + row.fkhospitalid + '\');">未完成</button>';
                                                    } else {
                                                        return '<button disabled class="btn btn-xs btn-danger agreement-btn" onclick="operationalAnalysis(\'undoInfomed\',\'' + row.patientId + '\',\'' + row.fkhospitalid + '\');">未完成</button>';
                                                    }
                                                }
                                            } else {
                                                if(${informView}) {
                                                    return '<button class="btn btn-xs btn-danger agreement-btn" onclick="operationalAnalysis(\'undoContact&undoInfomed\',\'' + row.patientId + '\',\'' + row.fkhospitalid + '\');">未完成</button>';
                                                } else {
                                                    return '<button disabled class="btn btn-xs btn-danger agreement-btn" onclick="operationalAnalysis(\'undoContact&undoInfomed\',\'' + row.patientId + '\',\'' + row.fkhospitalid + '\');">未完成</button>';
                                                }
                                            }
                                        }
                                    },
                                    {
                                        "mData": "followupStatus", "bSortable": true, "sClass": "center",
                                        "mRender": function (data, type, row) {
                                            if (row.acquisitionStatus != 2) {
                                                if(${followupView}) {
                                                    return '<button class="btn btn-xs btn-danger followup-btn" onclick="operationalAnalysis(\'undoAcquistion&undoContact&undoInfomed&undoFollowUp\',\'' + row.patientId + '\',\'' + row.fkhospitalid + '\');">未完成</button>';
                                                } else {
                                                    return '<button disabled class="btn btn-xs btn-danger followup-btn" onclick="operationalAnalysis(\'undoAcquistion&undoContact&undoInfomed&undoFollowUp\',\'' + row.patientId + '\',\'' + row.fkhospitalid + '\');">未完成</button>';
                                                }
                                            } else if (row.contactStatus == 3) {//已死亡
                                                if(${followupView}) {
                                                    return '<button class="btn btn-xs btn-xs contact-btn" onclick="showWarning();">不适用</button>';
                                                } else {
                                                    return '<button disabled class="btn btn-xs btn-xs contact-btn" onclick="showWarning();">不适用</button>';
                                                }
                                            } else if (row.contactStatus == 2) {
                                                if (row.agreementStatus == 4) {
                                                    if(${followupView}) {
                                                        return '<button class="btn btn-xs btn-xs contact-btn" onclick="showWarning();">不适用</button>';
                                                    } else {
                                                        return '<button disabled class="btn btn-xs btn-xs contact-btn" onclick="showWarning();">不适用</button>';
                                                    }
                                                } else if (row.agreementStatus == 3) {
                                                    if(${followupView}) {
                                                        return '<button class="btn btn-xs agreement-btn" onclick="showWarning();">不适用</button>';
                                                    } else {
                                                        return '<button disabled class="btn btn-xs agreement-btn" onclick="showWarning();">不适用</button>';
                                                    }
                                                } else if (row.agreementStatus == 2) {
                                                    if (row.followupStatus == 3) {
                                                        if(${followupView}) {
                                                            return '<button class="btn btn-xs btn-xs contact-btn" onclick="showWarning();">不适用</button>';
                                                        } else {
                                                            return '<button disabled class="btn btn-xs btn-xs contact-btn" onclick="showWarning();">不适用</button>';
                                                        }
                                                    } else if (row.followupStatus == 2) {
                                                        if(${followupView}) {
                                                            return '<button class="btn btn-xs btn-primary followup-btn" onclick="operationalAnalysis(\'updateFollowUp\',\'' + row.patientId + '\',\'' + row.fkhospitalid + '\');">已完成</button>';
                                                        } else {
                                                            return '<button disabled class="btn btn-xs btn-primary followup-btn" onclick="operationalAnalysis(\'updateFollowUp\',\'' + row.patientId + '\',\'' + row.fkhospitalid + '\');">已完成</button>';
                                                        }
                                                    } else {
                                                        if(${followupView}) {
                                                            return '<button class="btn btn-xs btn-danger followup-btn" onclick="operationalAnalysis(\'undoFollowUp\',\'' + row.patientId + '\',\'' + row.fkhospitalid + '\');">未完成</button>';
                                                        } else {
                                                            return '<button disabled class="btn btn-xs btn-danger followup-btn" onclick="operationalAnalysis(\'undoFollowUp\',\'' + row.patientId + '\',\'' + row.fkhospitalid + '\');">未完成</button>';
                                                        }
                                                    }
                                                } else {
                                                    if(${followupView}) {
                                                        return '<button class="btn btn-xs btn-danger followup-btn" onclick="operationalAnalysis(\'undoInfomed&undoFollowUp\',\'' + row.patientId + '\',\'' + row.fkhospitalid + '\');">未完成</button>';
                                                    } else {
                                                        return '<button disabled class="btn btn-xs btn-danger followup-btn" onclick="operationalAnalysis(\'undoInfomed&undoFollowUp\',\'' + row.patientId + '\',\'' + row.fkhospitalid + '\');">未完成</button>';
                                                    }
                                                }
                                            } else {
                                                if(${followupView}) {
                                                    return '<button class="btn btn-xs btn-danger followup-btn" onclick="operationalAnalysis(\'undoContact&undoInfomed&undoFollowUp\',\'' + row.patientId + '\',\'' + row.fkhospitalid + '\');">未完成</button>';
                                                } else {
                                                    return '<button disabled class="btn btn-xs btn-danger followup-btn" onclick="operationalAnalysis(\'undoContact&undoInfomed&undoFollowUp\',\'' + row.patientId + '\',\'' + row.fkhospitalid + '\');">未完成</button>';
                                                }
                                            }
                                        }
                                    }
                                ],
                                "aaSorting": [],
                                "oLanguage": {
                                    "sProcessing": "正在加载中......",
                                    "sLengthMenu": "每页显示 _MENU_ 条记录",
                                    "sZeroRecords": "对不起，查询不到相关数据！",
                                    "sEmptyTable": "表中无数据存在！",
                                    "sInfo": "当前显示 _START_ 到 _END_ 条，共 _TOTAL_ 条记录",
                                    "sInfoFiltered": "数据表中共为 _MAX_ 条记录",
                                    "sSearch": "搜索",
                                    "oPaginate": {
                                        "sFirst": "首页",
                                        "sPrevious": "上一页",
                                        "sNext": "下一页",
                                        "sLast": "末页"
                                    }
                                }
                            });
                }
            });


            /**
             var tableTools = new $.fn.dataTable.TableTools( oTable1, {
			"sSwfPath": "../../copy_csv_xls_pdf.swf",
	        "buttons": [
	            "copy",
	            "csv",
	            "xls",
				"pdf",
	            "print"
	        ]
	    } );
             $( tableTools.fnContainer() ).insertBefore('#sample-table-2');
             */


            //oTable1.fnAdjustColumnSizing();


            $(document).on('click', 'th input:checkbox', function () {
                var that = this;
                $(this).closest('table').find('tr > td:first-child input:checkbox')
                        .each(function () {
                            this.checked = that.checked;
                            $(this).closest('tr').toggleClass('selected');
                        });
            });


            $('[data-rel="tooltip"]').tooltip({placement: tooltip_placement});
            function tooltip_placement(context, source) {
                var $source = $(source);
                var $parent = $source.closest('table')
                var off1 = $parent.offset();
                var w1 = $parent.width();

                var off2 = $source.offset();
                //var w2 = $source.width();

                if (parseInt(off2.left) < parseInt(off1.left) + parseInt(w1 / 2)) return 'right';
                return 'left';
            }
        });
    });
    function gotoAcquisition(patientId, hospitalId) {
        if (${acquisitionView}) {
            window.location.href = "#page/acquisition?hospitalId=" + hospitalId + "&patientId=" + patientId;
        }
    }
    function gotoContact(patientId, hospitalId) {
        if (${contactView}) {
            window.location.href = "#page/contact?hospitalId=" + hospitalId + "&patientId=" + patientId;
        }
    }
    function gotoInformed(patientId, hospitalId) {
        if (${informView}) {
            window.location.href = "#page/informedconsent?hospitalId=" + hospitalId + "&patientId=" + patientId;
        }
    }
    function gotoFollowup(patientId, hospitalId) {
        if (${followupView}) {
            window.location.href = "#page/followup?hospitalId=" + hospitalId + "&patientId=" + patientId;
        }
    }
    function operationalAnalysis(itemtype, patientId, hospitalId) {
        if (itemtype == "updateAcquistion") {
            bootbox.confirm({
                buttons: {
                    confirm: {
                        label: '确认',
                        className: 'btn-primary'
                    },
                    cancel: {
                        label: '取消',
                        className: 'btn'
                    }
                },
                message: '该患者的回顾性数据已经完成,是否需要查看？',
                callback: function (result) {
                    if (result)
                        gotoAcquisition(patientId, hospitalId);
                }
            });
        } else if (itemtype == "updateContact") {
            bootbox.confirm({
                buttons: {
                    confirm: {
                        label: '确认',
                        className: 'btn-primary'
                    },
                    cancel: {
                        label: '取消',
                        className: 'btn'
                    }
                },
                message: '已经联系当前患者，是否需要查看?',
                callback: function (result) {
                    if (result)
                        gotoContact(patientId, hospitalId);
                }
            });
        } else if (itemtype == "updateInfomed") {
            bootbox.confirm({
                buttons: {
                    confirm: {
                        label: '确认',
                        className: 'btn-primary'
                    },
                    cancel: {
                        label: '取消',
                        className: 'btn'
                    }
                },
                message: '已经完成患者知情同意书状态，是否查看。',
                callback: function (result) {
                    if (result)
                        gotoInformed(patientId, hospitalId);
                }
            });
        } else if (itemtype == "updateFollowUp") {
            bootbox.confirm({
                buttons: {
                    confirm: {
                        label: '确认',
                        className: 'btn-primary'
                    },
                    cancel: {
                        label: '取消',
                        className: 'btn'
                    }
                },
                message: '已完成随访数据采集，是否查看？',
                callback: function (result) {
                    if (result)
                        gotoFollowup(patientId, hospitalId);
                }
            });
        } else if (itemtype == "undoAcquistion") {
            if(${acquisitionModify}) {
                bootbox.confirm({
                    buttons: {
                        confirm: {
                            label: '确认',
                            className: 'btn-primary'
                        },
                        cancel: {
                            label: '取消',
                            className: 'btn'
                        }
                    },
                    message: '该患者的回顾性数据尚未完成,是否需要完善？',
                    callback: function (result) {
                        if (result)
                            gotoAcquisition(patientId, hospitalId);
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
                    message: '该患者的回顾性数据尚未完成,请联系数据采集员录入信息',
                });
            }

        } else if (itemtype == "undoAcquistion&undoContact") {
            if(${acquisitionModify}) {
                bootbox.confirm({
                    buttons: {
                        confirm: {
                            label: '确认',
                            className: 'btn-primary'
                        },
                        cancel: {
                            label: '取消',
                            className: 'btn'
                        }
                    },
                    message: '该患者的回顾性数据尚未完成,请先完善再联系患者。',
                    callback: function (result) {
                        if (result)
                            gotoAcquisition(patientId, hospitalId);
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
                    message: '该患者的回顾性数据尚未完成,请先联系数据采集员录入信息',
                });
            }

        } else if (itemtype == "undoAcquistion&undoContact&undoInfomed") {
            if(${acquisitionModify}) {
                bootbox.confirm({
                    buttons: {
                        confirm: {
                            label: '确认',
                            className: 'btn-primary'
                        },
                        cancel: {
                            label: '取消',
                            className: 'btn'
                        }
                    },
                    message: '该患者的回顾性数据尚未完成,请先完善并联系患者，再更新患者知情同意书。',
                    callback: function (result) {
                        if (result)
                            gotoAcquisition(patientId, hospitalId);
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
                    message: '该患者的回顾性数据尚未完成,请先联系数据采集员录入信息',
                });
            }

        } else if (itemtype == "undoAcquistion&undoContact&undoInfomed&undoFollowUp") {
            if(${acquisitionModify}) {
                bootbox.confirm({
                    buttons: {
                        confirm: {
                            label: '确认',
                            className: 'btn-primary'
                        },
                        cancel: {
                            label: '取消',
                            className: 'btn'
                        }
                    },
                    message: '该患者的回顾性数据尚未完成,请先完善并联系患者，取得患者知情同意书之后才能完善随访数据采集信息。',
                    callback: function (result) {
                        if (result)
                            gotoAcquisition(patientId, hospitalId);
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
                    message: '该患者的回顾性数据尚未完成,请先联系数据采集员录入信息',
                });
            }

        } else if (itemtype == "undoContact") {
            if(${contactModify}) {
                bootbox.confirm({
                    buttons: {
                        confirm: {
                            label: '确认',
                            className: 'btn-primary'
                        },
                        cancel: {
                            label: '取消',
                            className: 'btn'
                        }
                    },
                    message: '尚未联系当前患者，是否需要联系？',
                    callback: function (result) {
                        if (result)
                            gotoContact(patientId, hospitalId);
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
                    message: '尚未联系当前患者,请先联系护士完善患者联系信息',
                });
            }

        } else if (itemtype == "undoContact&undoInfomed") {
            if(${contactModify}) {
                bootbox.confirm({
                    buttons: {
                        confirm: {
                            label: '确认',
                            className: 'btn-primary'
                        },
                        cancel: {
                            label: '取消',
                            className: 'btn'
                        }
                    },
                    message: '尚未联系当前患者，请先联系患者再更新患者知情同意书状态。',
                    callback: function (result) {
                        if (result)
                            gotoContact(patientId, hospitalId);
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
                    message: '尚未联系当前患者,请先联系护士完善患者联系信息',
                });
            }

        } else if (itemtype == "undoContact&undoInfomed&undoFollowUp") {
            if(${contactModify}) {
                bootbox.confirm({
                    buttons: {
                        confirm: {
                            label: '确认',
                            className: 'btn-primary'
                        },
                        cancel: {
                            label: '取消',
                            className: 'btn'
                        }
                    },
                    message: '尚未联系当前患者，请先联系患者完成更新患者知情同意书状态，最后才可进行随访数据采集。',
                    callback: function (result) {
                        if (result)
                            gotoContact(patientId, hospitalId);
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
                    message: '尚未联系当前患者,请先联系护士完善患者联系信息',
                });
            }

        } else if (itemtype == "undoInfomed") {
            if(${informModify}) {
                bootbox.confirm({
                    buttons: {
                        confirm: {
                            label: '确认',
                            className: 'btn-primary'
                        },
                        cancel: {
                            label: '取消',
                            className: 'btn'
                        }
                    },
                    message: '尚未更新患者知情同意书状态，是否更新？',
                    callback: function (result) {
                        if (result)
                            gotoInformed(patientId, hospitalId);
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
                    message: '尚未更新患者知情同意书状态,请先联系医生完善知情同意书信息',
                });
            }

        } else if (itemtype == "undoInfomed&undoFollowUp") {

            if(${informModify}) {
                bootbox.confirm({
                    buttons: {
                        confirm: {
                            label: '确认',
                            className: 'btn-primary'
                        },
                        cancel: {
                            label: '取消',
                            className: 'btn'
                        }
                    },
                    message: '尚未更新患者知情同意书状态，请更新后再进行随访数据采集。',
                    callback: function (result) {
                        if (result)
                            gotoInformed(patientId, hospitalId);
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
                    message: '尚未更新患者知情同意书状态,请先联系医生完善知情同意书信息',
                });
            }
        } else if (itemtype == "undoFollowUp") {
            if(${followupModify}) {
                bootbox.confirm({
                    buttons: {
                        confirm: {
                            label: '确认',
                            className: 'btn-primary'
                        },
                        cancel: {
                            label: '取消',
                            className: 'btn'
                        }
                    },
                    message: '尚未完成随访数据采集，是否完善？',
                    callback: function (result) {
                        if (result)
                            gotoFollowup(patientId, hospitalId);
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
                    message: '尚未完成随访数据采集,请先联系医生/护士完善随访信息',
                });
            }

        }
    }


</script>
