<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"></c:set>

<link rel="stylesheet" href="${contextPath}/static/assets/css/select2.css"/>

<div class="page-header">
    <h4 class="widget-title green bolder ">
        患者知情同意书状态
    </h4>
</div><!-- /.page-header -->
<div class="row">
    <div class="col-xs-12">
        <!-- PAGE CONTENT BEGINS -->
        <form class="form-horizontal" role="form" id="form-informedcontact">
            <input id="hospitalId" value="${hospitalId}" hidden/>
           <div class="form-group">
	            <label class="control-label col-xs-12 col-sm-4 no-padding-right" for="patientId">患者研究编号:</label>
	
	            <div class="col-xs-12 col-sm-8">
	                   <label name="patientId" id="patientId" style="padding-top: 5px">
	                          <b></b>
	                   </label>
	            </div>
	       </div>
	       <div class="form-group">
	            <label class="control-label col-xs-12 col-sm-4 no-padding-right" for="patientId">患者出生日期:</label>
	
	            <div class="col-xs-12 col-sm-8">
	                   <label id="birthday" style="padding-top: 5px">
	                          <b></b>
	                   </label>
	            </div>
	        </div>
           <div class="form-group">
                <label class="control-label col-xs-12 col-sm-4 no-padding-right">操作类型:</label>

                <div class="col-xs-12 col-sm-8">
                    <label class="line-height-1">
                        <input value="2" type="radio" class="ace" name="operateType"/>
                        <span class="lbl">同意</span>
                    </label>
                    &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;
                    <label class="line-height-1">
                        <input value="3" type="radio" class="ace" name="operateType"/>
                        <span class="lbl">拒绝</span>
                    </label>
                </div>
            </div>
			<div class="form-group">
                   <label class="control-label col-xs-12 col-sm-4 no-padding-right"
                            for="operateDate">签署日期：</label>
				   <div class="col-xs-12 col-sm-8">
                            <div class="input-group">
								 <span class="input-group-addon">
									   <i class="ace-icon fa fa-calendar"></i>
								 </span>

                                 <input type="text" id="operateDate"
                                       class="form-control text-300 dataDay"/>
                                       &nbsp;&nbsp;
                                 <span>
                                       (格式:yyyy-mm-dd)
								 </span>
                             </div>
                    </div>
            	</div>			
            <div class="clearfix form-actions">
                <div class="col-md-offset-4 col-md-7">
                    <button class="btn btn-primary" type="button" id="submitBtn">
                        <i class="ace-icon fa fa-check bigger-110"></i>
                        提交
                    </button>

                    &nbsp; &nbsp; &nbsp;
                    <button class="btn btn-primary" type="button" id="saveBtn">
                        <i class="ace-icon fa fa-floppy-o bigger-110"></i>
                        保存
                    </button>

                    &nbsp; &nbsp; &nbsp;
                    <button class="btn" type="reset">
                        <i class="ace-icon fa fa-cog bigger-110"></i>
                        取消
                    </button>
                    &nbsp; &nbsp; &nbsp;
                    <button class="btn btn-" type="button" onclick="history.back(-1);">
                        <i class="ace-icon fa fa-undo bigger-110"></i>
                        返回
                    </button>
                </div>
            </div>
        </form>
    </div>
</div>
<!-- /.col -->
</div><!-- /.row -->
<style>
    .error{
        color:red;
    }
</style>
<!-- page specific plugin scripts -->
<script type="text/javascript">
    function fillInfo(informed) {
        if(!informed) return;
        $('#patientId b').html(informed.patientId);
        $('#hospitalId').val(informed.hospitalId);
        $('#birthday b').html(informed.birthday);
        $('input[type=radio][name=operateType][value="'+informed.agreeInformedConsentStatus+'"]').prop('checked',true);
        $('#operateDate').val(informed.informedConsentDate);
    }
    function saveData(confirm) {
        var informedData = {
            patientId:$('#patientId b').html(),
            hospitalId:$('#hospitalId').val(),
            agreeInformedConsentStatus:$('input[type=radio][name=operateType]:checked').val(),
            informedConsentDate:$('#operateDate').val()
        };
        if(!informedData.agreeInformedConsentStatus) {
            bootbox.alert({
                buttons: {
                    ok: {
                        label: '确认',
                        className: 'btn-primary'
                    }
                },
                message: '请填写知情同意书状态',
            });
            return;
        }
        $.ajax({
            dataType: "json",
            contentType: 'application/json',
            url: "${contextPath}/patient/informedInfo?confirm="+confirm,
            type: "post",
            data: JSON.stringify(informedData),
            success: function (response) {
                if (response.success) {
                    bootbox.alert({
                        buttons: {
                            ok: {
                                label: '确认',
                                className: 'btn-primary'
                            }
                        },
                        message: '保存成功',
                    });
                } else {
                    bootbox.alert({
                        buttons: {
                            ok: {
                                label: '确认',
                                className: 'btn-primary'
                            }
                        },
                        message: '保存出错,请联系管理员',
                    });
                }
            }
        });
    }
    var scripts = [null, "${contextPath}/static/assets/js/bootbox.js", "${contextPath}/static/assets/js/jquery.validate.js", "${contextPath}/static/assets/js/additional-methods.js", "${contextPath}/static/assets/js/bootbox.js", "${contextPath}/static/assets/js/jquery.maskedinput.js", null]
    $('.page-content-area').ace_ajax('loadScripts', scripts, function () {
        $('.width-300').css('width', '300px');
        $(".text-350").css('width', '350px');
        if(${editable}) {
            $('#submitBtn').attr('disabled',false);
            $('#saveBtn').attr('disabled',false);
        } else {
            $('#submitBtn').attr('disabled',true);
            $('#saveBtn').attr('disabled',true);
        }
        $().ready(function() {
            $("#form-informedcontact").validate();
        });
    });

    $(".text-300").css('width', '300px');
    $.ajax({
        dataType : "json",
        url : "${contextPath}/patient/informedInfo/${patientId}?hospitalId=${hospitalId}",
        type : "get",
        success: function (response) {
            fillInfo(response.result);
        }
    });
    $('#saveBtn').click(function (e) {
        saveData(0);
    });
    $('#submitBtn').click(function (e) {
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
            message: '确认提交知情同意书状态,提交后不可再修改？',
            callback: function (result) {
                if (result) {
                    saveData(1);
                    $('#submitBtn').attr('disabled',true);
                    $('#saveBtn').attr('disabled',true);
                }
            }
        });

    });
</script>
