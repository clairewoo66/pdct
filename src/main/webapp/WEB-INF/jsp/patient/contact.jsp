<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"></c:set>

<link rel="stylesheet" href="${contextPath}/static/assets/css/select2.css"/>

<div class="page-header">
    <h4 class="widget-title green bolder ">
        联系患者
    </h4>
</div><!-- /.page-header -->
<div class="row">
    <div class="col-xs-12">
        <!-- PAGE CONTENT BEGINS -->
        <form class="form-horizontal" role="form"  id="form-contact" >
           <div class="form-group">
	            <label class="control-label col-xs-12 col-sm-4 no-padding-right" for="patientId">患者研究编号:</label>

	            <div class="col-xs-12 col-sm-8">
                    <input id="hospitalId" value="${hospitalId}" hidden/>
	                   <label id="patientId" style="padding-top: 5px">

	                   </label>
	            </div>
	       </div>
	       <div class="form-group">
	            <label class="control-label col-xs-12 col-sm-4 no-padding-right" for="patientId">患者出生日期:</label>
	
	            <div class="col-xs-12 col-sm-8">
	                   <label id="birthday" style="padding-top: 5px">
	                   </label>
	            </div>
	        </div>

           <div class="form-group">
                <label class="control-label col-xs-12 col-sm-4 no-padding-right">联系患者时间:</label>
               <div class="col-xs-12 col-sm-8">
                   <div class="input-group">
                              <span class="input-group-addon">
                              <i class="ace-icon fa fa-calendar"></i>
                              </span>
                       <input type="text" id="contactTime"
                              name="contactTime"
                              class="form-control date-picker width-300 dataDay"
                              data-date-format="yyyy-mm-dd"/>
                   </div>
               </div>
            </div>
            
           <div class="form-group">
                <label class="control-label col-xs-12 col-sm-4 no-padding-right">患者存活状态:</label>

                <div class="col-xs-12 col-sm-8">
                    <label class="line-height-1">
                        <input value="1" type="radio" class="ace" name="islifeState"/>
                        <span class="lbl">存活</span>
                    </label>
                    &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;
                    <label class="line-height-1">
                        <input value="2" type="radio" class="ace" name="islifeState"/>
                        <span class="lbl">死亡</span>
                    </label>
                    
                </div>
            </div>
            
            <div class="form-group" id="deathGroup1" hidden>
                    <label class="control-label col-xs-12 col-sm-4 no-padding-right" for="deathTime">死亡时间:</label>
                    <div class="col-xs-12 col-sm-8">
                         <div class="input-group">
                              <span class="input-group-addon">
                              <i class="ace-icon fa fa-calendar"></i>
                              </span>
                              <input type="text" id="deathTime"
                                 name="deathTime"
                                 class="form-control width-300 dataDay"
                                 data-date-format="yyyy-mm-dd"/>
                         </div>
                    </div>
            </div>
            
            <div class="form-group" id="deathGroup2" hidden>
                     <label class="control-label col-xs-12 col-sm-4 no-padding-right">死亡原因:</label>

                                                        
                     <div class="col-xs-12 col-sm-8">
                             <textarea class="autosize-transition form-control"  id="deathReason"
                                       style="overflow: hidden; word-wrap: break-word; resize: horizontal;"></textarea>
                             <%--<input type="textarea" id="deathReason" style="width:60%">--%>
                     </div>
            </div>
            
            <div class="form-group" id="islifeGroup1" hidden>
                     <label class="control-label col-xs-12 col-sm-4 no-padding-right">患者是否愿意随访:</label>

                                                        
                     <div class="col-xs-12 col-sm-8">
	                    <label class="line-height-1">
	                        <input value="1" type="radio" class="ace" name="isneedFollowUpState"/>
	                        <span class="lbl">愿意</span>
	                    </label>
	                    &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;
	                    <label class="line-height-1">
	                        <input value="2" type="radio" class="ace" name="isneedFollowUpState"/>
	                        <span class="lbl">拒绝</span>
	                    </label>
                    </div>
            </div>
            
            <div class="form-group" id="islifeGroup2" hidden>
                    <label class="control-label col-xs-12 col-sm-4 no-padding-right">随访时间:</label>
                    <div class="col-xs-12 col-sm-8">
                         <div class="input-group">
                              <span class="input-group-addon">
                              <i class="ace-icon fa fa-calendar"></i>
                              </span>
                              <input type="text" id="followupTime"
                                 name="followupTime"
                                 class="form-control date-picker width-300 dataDay"
                                 data-date-format="yyyy-mm-dd"/>
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
                        重置
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

<!-- page specific plugin scripts -->
<style>
    .error{
        color:red;
    }
</style>

<!-- page specific plugin scripts -->
<script type="text/javascript">
    function fillContactInfo(contactInfo) {
        if(!contactInfo) return;
        $('#patientId').html('<b>'+contactInfo.patientId+'</b>');
        $('#birthday').html('<b>'+contactInfo.birthday+'</b>');
        if(contactInfo.createDate) {
            //$('#contactTime').val(contactInfo.createDate);
            $('#contactTime').val(moment(contactInfo.createDate).format('YYYY-MM-DD'));
        } else {
            $('#contactTime').val(moment(new Date()).format('YYYY-MM-DD'));
        }
        $('input[type=radio][name=islifeState][value="'+contactInfo.livingState+'"]').prop('checked',true);
        if(contactInfo.livingState==2) {
            $('#deathTime').val(contactInfo.deathDate);
            $('#deathReason').val(contactInfo.deathReason);
            $('#deathGroup1').show();
            $('#deathGroup2').show();
            $('#islifeGroup1').hide();
            $('#islifeGroup2').hide();
        } else if(contactInfo.livingState==1) {
            $('#deathGroup1').hide();
            $('#deathGroup2').hide();
            $('#islifeGroup1').show();
            $('input[type=radio][name=isneedFollowUpState][value="'+contactInfo.agreeVisit+'"]').prop('checked',true);
            if(contactInfo.agreeVisit==1) {
                $('#islifeGroup2').show();
                $('#followupTime').val(contactInfo.visitDate);
            }
        }
    }
    function saveData(confirm) {
        var contactData = {
            patientId:$('#patientId b').html(),
            hospitalId:$('#hospitalId').val(),
            birthday:$('#birthday b').html(),
            //createDate:$('#contactTime b').html(),
            livingState:$('input[type=radio][name=islifeState]:checked').val(),
            agreeVisit:$('input[type=radio][name=isneedFollowUpState]:checked').val(),
            deathDate:$('#deathTime').val(),
            deathReason:$('#deathReason').val(),
            visitDate:$('#followupTime').val(),
            createDate:$('#contactTime').val()
        };
        if(!contactData.livingState) {
            bootbox.alert({
                buttons: {
                    ok: {
                        label: '确认',
                        className: 'btn-primary'
                    }
                },
                message: '请选择生存状态'
            });
            return;
        } else if(contactData.livingState==1&&(!contactData.agreeVisit)) {
            bootbox.alert({
                buttons: {
                    ok: {
                        label: '确认',
                        className: 'btn-primary'
                    }
                },
                message: '请填写是否愿意随访'
            });
            return;
        }
        $.ajax({
            dataType: "json",
            contentType: 'application/json',
            url: "${contextPath}/patient/contactInfo?confirm="+confirm,
            type: "post",
            data: JSON.stringify(contactData),
            success: function (response) {
                if (response.success) {
                    bootbox.alert({
                        buttons: {
                            ok: {
                                label: '确认',
                                className: 'btn-primary'
                            }
                        },
                        message: '保存成功'
                    });
                } else {
                    bootbox.alert({
                        buttons: {
                            ok: {
                                label: '确认',
                                className: 'btn-primary'
                            }
                        },
                        message: '保存出错'
                    });
                }
            }
        });
    }
    var scripts = [null, "${contextPath}/static/assets/js/date-time/moment.js","${contextPath}/static/assets/js/bootbox.js", "${contextPath}/static/assets/js/jquery.validate.js", "${contextPath}/static/assets/js/additional-methods.js", "${contextPath}/static/assets/js/bootbox.js", "${contextPath}/static/assets/js/jquery.maskedinput.js","${contextPath}/static/assets/js/jquery.validate.js", null]
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
            $("#form-contact").validate();
        });
        
        $('input[type=radio][name=islifeState]').change(function () {
            if (this.value == '2') {//死亡
                $('input[type=radio][name=isneedFollowUpState]').prop('checked',false);
                $('#followupTime').val('');
                $('#deathGroup1').show();
                $('#deathGroup2').show();
                $('#islifeGroup1').hide();
                $('#islifeGroup2').hide();
            } else if (this.value == '1') {//存活
                $('#deathGroup1').hide();
                $('#deathGroup2').hide();
                $('#islifeGroup1').show();
                $('#deathTime').val('');
                $('#deathReason').val('');
               if($('input[type=radio][name=isneedFollowUpState]')[0].checked){
                	$('#islifeGroup2').show();
                }
            }
        });
        
        $('input[type=radio][name=isneedFollowUpState]').change(function () {
            if (this.value == '1') {
               	$('#islifeGroup2').show();
            } else {
                $('#islifeGroup2').hide();
                $('#followupTime').val('');
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
                message: '确认提交联系患者信息,提交后不可再修改？',
                callback: function (result) {
                    if (result) {
                        saveData(1);
                        $('#submitBtn').attr('disabled',true);
                        $('#saveBtn').attr('disabled',true);
                    }
                }
            });

        });

        $.ajax({
            dataType : "json",
            url : "${contextPath}/patient/contactInfo/${patientId}?hospitalId=${hospitalId}",
            type : "get",
            success: function (response) {
                fillContactInfo(response.result);
            }
        });
    });
</script>
