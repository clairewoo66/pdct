<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"></c:set>

<link rel="stylesheet" href="${contextPath}/static/assets/css/select2.css"/>
<div class="row">
    <div class="col-xs-12">
        <div class="widget-body">
            <div class="widget-main">
                <div class="row">
                    <div class="col-xs-12 label label-lg label-success arrowed-in arrowed-right">
                        <b id='maodian'>患者研究编号:${patientId}</b>
                        <%--<h1 id='maodian'>患者研究编号:${patientId}</h1>--%>
                    </div>
                </div>
                <hr/>
                <!-- #section:plugins/fuelux.wizard -->
                <div id="fuelux-wizard-container">
                    <div>
                        <!-- #section:plugins/fuelux.wizard.steps -->
                        <ul class="steps">
                            <li data-step="1" class="active">
                                <span class="step">1</span>
                                <span class="title">患者信息</span>
                            </li>

                            <li data-step="2">
                                <span class="step">2</span>
                                <span class="title">疾病诊断信息</span>
                            </li>

                            <li data-step="3">
                                <span class="step">3</span>
                                <span class="title">既往MM相关的治疗信息</span>
                            </li>

                            <li data-step="4">
                                <span class="step">4</span>
                                <span class="title">观察期间的住院治疗信息</span>
                            </li>
                            <li data-step="5">
                                <span class="step">5</span>
                                <span class="title">完成</span>
                            </li>
                        </ul>

                        <!-- /section:plugins/fuelux.wizard.steps -->
                    </div>

                    <hr/>

                    <!-- #section:plugins/fuelux.wizard.container -->
                    <div class="step-content pos-rel">
                        <div class="step-pane active" data-step="1">
                            <form class="form-horizontal" id="form-step1" method="get">
                                <div class="form-group">
                                    <!-- <h4 class="lighter block green bolder col-xs-12 col-sm-2 no-padding-right">患者信息</h4> -->
                                    <h4 class="control-label green bolder col-xs-12 col-sm-2 no-padding-right">
                                        人口统计学变量</h4>

                                </div>
                                <!--  <h4 class="lighter block green bolder">1.人口统计学变量</h4> -->
                                <div class="form-group">
                                    <input id="patientIdField" hidden value="0"/>
                                    <input id="fkhospitalid" hidden value="0"/>
                                    <label class="control-label col-xs-12 col-sm-2 no-padding-right"
                                           for="birthday">出生日期:</label>
                                    <div class="col-xs-12 col-sm-9">
                                        <div class="input-group">
                                                <span class="input-group-addon">
                                                    <i class="ace-icon fa fa-calendar"></i>
                                                </span>

                                            <input type="text" id="birthday" name="birthday"
                                                   class="form-control text-265 dataDay"/>
                                            &nbsp;&nbsp;
                                            <span>
                                                (格式:yyyy-mm-dd)
                                            </span>
                                        </div>
                                    </div>
                                </div>

                                <div class="space-2"></div>

                                <div class="form-group">
                                    <label class="control-label col-xs-12 col-sm-2 no-padding-right">性别:</label>
                                    <div class="col-xs-12 col-sm-9">
                                        <label class="line-height-1">
                                            <input value="1" type="radio" class="ace" name="gender"
                                                    />
                                            <span class="lbl">男</span>
                                        </label>
                                        &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;
                                        <label class="line-height-1">
                                            <input value="2" type="radio" class="ace" name="gender"/>
                                            <span class="lbl">女</span>
                                        </label>
                                    </div>
                                </div>

                                <div class="space-2"></div>
                                <div class="form-group">
                                    <label class="control-label col-xs-12 col-sm-2 no-padding-right">民族:</label>
                                    <div class="col-xs-12 col-sm-9">
                                        <label class="line-height-1  ">
                                            <input value="1" type="radio" class="ace" name="nation"
                                                    />
                                            <span class="lbl">汉族</span>
                                        </label>
                                        &nbsp; &nbsp;
                                        <label class="line-height-1  ">
                                            <input value="2" type="radio" class="ace" name="nation"/>
                                            <span class="lbl">其他</span>&nbsp; &nbsp;
                                            <input type="text" id="nationOther" class="text-150" name="nationOther"/>

                                        </label>

                                    </div>
                                </div>
                                <div class="space-2"></div>
                                <div class="form-group">
                                    <label class="control-label col-xs-12 col-sm-2 no-padding-right"
                                           for="place">居住地:</label>
                                    <div class="col-xs-12 col-sm-9">
                                        <select id="place" name="place"
                                                class="select2-300" data-placeholder="">
                                            <option value="0" selected>未选择</option>
                                            <option value="1">市区</option>
                                            <option value="2">郊区</option>
                                            <option value="3">农村</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="space-2"></div>
                                <div class="form-group">
                                    <label class="control-label col-xs-12 col-sm-2 no-padding-right "
                                           for="height">身高(cm):</label>

                                    <div class="col-xs-12 col-sm-9">
                                        <div class="clearfix">
                                            <input type="text" name="height" id="height" class="text-300 cmSize"/>
                                        </div>
                                    </div>
                                </div>
                                <div class="space-2"></div>
                                <div class="form-group">

                                    <label class="control-label col-xs-12 col-sm-2 no-padding-right"
                                           for="weight">体重(kg):</label>

                                    <div class="col-xs-12 col-sm-9">
                                        <div class="clearfix">
                                            <input type="text" name="weight" id="weight" class="text-300 cmSize"/>
                                        </div>
                                    </div>
                                </div>
                                <div class="space-2"></div>
                                <div class="form-group">

                                    <label class="control-label col-xs-12 col-sm-2 no-padding-right"
                                           for="bodysurfacearea">体表面积(平方米):</label>

                                    <div class="col-xs-12 col-sm-9">
                                        <div class="clearfix">
                                            <input type="text" name="bodysurfacearea" id="bodysurfacearea"
                                                   class="text-300 cmSize"/>
                                        </div>
                                    </div>
                                </div>
                                <div class="space-2"></div>
                                <div class="form-group">
                                    <label class="control-label col-xs-12 col-sm-2 no-padding-right">是否吸烟:</label>

                                    <div class="col-xs-12 col-sm-9">
                                        <label class=" ">
                                            <input value="1" type="radio" class="ace" name="smokingStatus"
                                                    />
                                            <span class="lbl">从未吸烟</span>
                                        </label>
                                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                        <label class=" ">
                                            <input value="2" type="radio" class="ace" name="smokingStatus"/>
                                            <span class="lbl">已经戒烟</span>
                                        </label>
                                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                        <label class=" ">
                                            <input value="3" type="radio" class="ace" name="smokingStatus"/>
                                            <span class="lbl">仍在吸烟</span>
                                        </label>
                                    </div>
                                </div>
                                <div class="space-2"></div>
                                <div class="form-group">
                                    <label class="control-label col-xs-12 col-sm-2 no-padding-right">是否饮酒:</label>

                                    <div class="col-xs-12 col-sm-9">
                                        <label class=" ">
                                            <input value="1" type="radio" class="ace" name="drinkStatus"
                                                    />
                                            <span class="lbl">酗酒</span>
                                        </label>
                                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                        <label class=" ">
                                            <input value="2" type="radio" class="ace" name="drinkStatus"/>
                                            <span class="lbl">偶尔</span>
                                        </label>
                                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                        <label class=" ">
                                            <input value="3" type="radio" class="ace" name="drinkStatus"/>
                                            <span class="lbl">从未</span>
                                        </label>
                                    </div>
                                </div>
                                <div class="space-2"></div>
                                <div class="form-group">
                                    <label class="control-label col-xs-12 col-sm-2 no-padding-right"
                                           for="ecogMark">ECOG评分:</label>

                                    <div class="col-xs-12 col-sm-9">
                                        <select id="ecogMark" class="select2-300" name="ecogMark">
                                            <option value="0" selected>未选择</option>
                                            <option value="1">0分</option>
                                            <option value="2">1分</option>
                                            <option value="3">2分</option>
                                            <option value="4">3分</option>
                                            <option value="5">4分</option>
                                            <option value="6">5分</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="space-2"></div>
                                <div class="form-group">
                                    <label class="control-label col-xs-12 col-sm-2 no-padding-right"
                                           for="karnofskyMark">Karnofsky评分:</label>

                                    <div class="col-xs-12 col-sm-9">
                                        <div class="clearfix">
                                            <input type="text" name="karnofskyMark" id="karnofskyMark"
                                                   class="text-300 zszSize"/>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <!-- <h4 class="lighter block green bolder col-xs-12 col-sm-2 no-padding-right">患者信息</h4> -->
                                    <h4 class="control-label green bolder col-xs-12 col-sm-2 no-padding-right">
                                        社会经济学变量</h4>

                                </div>
                                <!-- <h4 class="lighter block green bolder">2.社会经济学变量</h4> -->
                                <div class="form-group">
                                    <label class="control-label col-xs-12 col-sm-2 no-padding-right"
                                           for="maritalStatus">婚姻状态:</label>

                                    <div class="col-xs-12 col-sm-9">
                                        <select id="maritalStatus" class="select2-300" name="maritalStatus">
                                            <option value="0" selected>未选择</option>
                                            <option value="1">未婚</option>
                                            <option value="2">已婚</option>
                                            <option value="3">离异</option>
                                            <option value="4">丧偶</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="space-2"></div>
                                <div class="form-group">
                                    <label class="control-label col-xs-12 col-sm-2 no-padding-right"
                                           for="eduLevel">教育程度:</label>

                                    <div class="col-xs-12 col-sm-9">
                                        <select id="eduLevel" class="select2-300" name="eduLevel">
                                            <option value="0" selected>未选择</option>
                                            <option value="1">高中以下</option>
                                            <option value="2">高中及中专</option>
                                            <option value="3">本科及大专</option>
                                            <option value="4">本科以上</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="space-2"></div>
                                <div class="form-group">
                                    <label class="control-label col-xs-12 col-sm-2 no-padding-right"
                                           for="jobStatus">工作状况:</label>

                                    <div class="col-xs-12 col-sm-9">
                                        <select id="jobStatus" class="select2-300" name="jobStatus">
                                            <option value="0" selected>未选择</option>
                                            <option value="1">在校学生</option>
                                            <option value="2">全职</option>
                                            <option value="3">待业</option>
                                            <option value="4">务农</option>
                                            <option value="5">退休</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="space-2"></div>
                                <div class="form-group">
                                    <label class="control-label col-xs-12 col-sm-2 no-padding-right"
                                           for="insuranceType">医保类型:</label>

                                    <div class="col-xs-12 col-sm-4">
                                        <select id="insuranceType" name="insuranceType">
                                            <option value="0" selected>未选择</option>
                                            <option value="1">城镇职工医保</option>
                                            <option value="2">城镇居民医保</option>
                                            <option value="3">新农合</option>
                                            <option value="4">商业医保</option>
                                            <option value="5">完全自费</option>
                                            <option value="6">其他</option>
                                        </select>
                                        &nbsp;&nbsp;
                                    </div>
                                    <div class="col-xs-12 col-sm-3">
                                        <label id="otherInsuranceLabel"
                                               class="control-label col-xs-12 col-sm-3 no-padding-right"
                                               for="otherInsurance" hidden>请注明:</label>
                                        <input type="text" id="otherInsurance" name="otherInsurance" hidden/>
                                    </div>
                                </div>
                            </form>
                        </div>

                        <div class="step-pane" data-step="2">
                            <form class="form-horizontal" id="form-step2" method="get">
                                <input id="diagnosisInfoId" value="0" hidden/>
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-1"></div>
                                    <div class="col-xs-12 col-sm-10">
                                        <table class="table">
                                            <thead>
                                            <tr style="background-color:#80be4a">
                                                <td colspan="2"><font color="#ffffff">3.疾病诊断信息</font></td>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <tr>
                                                <td width="20%">初次诊断时间:</td>
                                                <td width="74%">
                                                    <div class="input-group">
                                                            <span class="input-group-addon">
                                                            <i class="ace-icon fa fa-calendar"></i>
                                                            </span>

                                                        <input type="text" id="diagnosisDate" name="diagnosisDate"
                                                               class="form-control text-265 dataDay"/>
                                                        &nbsp;&nbsp;
                                                        <span>
                                                                (格式:yyyy-mm-dd)
                                                            </span>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>诊断时是否发生髓外侵犯:</td>
                                                <td>
                                                    <div>
                                                        <label class="line-height-1  ">
                                                            <input value="1" type="radio" class="ace"
                                                                   name="invasionDiagnosis"
                                                                    />
                                                            <span class="lbl">是</span>
                                                        </label>
                                                        &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;
                                                        <label class="line-height-1  ">
                                                            <input value="2" type="radio" class="ace"
                                                                   name="invasionDiagnosis"/>
                                                            <span class="lbl">否</span>
                                                        </label>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>Durie-Salmon分期法:</td>
                                                <td>
                                                    <div>
                                                        <label class="">
                                                            <span class="lbl">I期:</span>
                                                        </label>
                                                        &nbsp; &nbsp;
                                                        <label class=" ">
                                                            <input value="1" type="radio" class="ace"
                                                                   name="clinicTypeDS"
                                                                    />
                                                            <span class="lbl">Ia期</span>
                                                        </label>
                                                        &nbsp; &nbsp;
                                                        <label class=" ">
                                                            <input value="2" type="radio" class="ace"
                                                                   name="clinicTypeDS"
                                                                    />
                                                            <span class="lbl">Ib期</span>
                                                        </label>
                                                        &nbsp; &nbsp;
                                                        <label class=" ">
                                                            <span class="lbl">II期:</span>
                                                        </label>
                                                        &nbsp; &nbsp;
                                                        <label class=" ">
                                                            <input value="3" type="radio" class="ace"
                                                                   name="clinicTypeDS"
                                                                    />
                                                            <span class="lbl">IIa期</span>
                                                        </label>
                                                        &nbsp; &nbsp;
                                                        <label class=" ">
                                                            <input value="4" type="radio" class="ace"
                                                                   name="clinicTypeDS"
                                                                    />
                                                            <span class="lbl">IIb期</span>
                                                        </label>
                                                        &nbsp; &nbsp;
                                                        <label class=" ">
                                                            <span class="lbl">III期:</span>
                                                        </label>
                                                        &nbsp; &nbsp;
                                                        <label class=" ">
                                                            <input value="5" type="radio" class="ace"
                                                                   name="clinicTypeDS"
                                                                    />
                                                            <span class="lbl">IIIa期</span>
                                                        </label>
                                                        &nbsp; &nbsp;
                                                        <label class=" ">
                                                            <input value="6" type="radio" class="ace"
                                                                   name="clinicTypeDS"
                                                                    />
                                                            <span class="lbl">IIIb期</span>
                                                        </label>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>ISS国际分期系统:</td>
                                                <td>
                                                    <div>
                                                        <label class=" ">
                                                            <input value="1" type="radio" class="ace"
                                                                   name="clinicTypeISS"
                                                                    />
                                                            <span class="lbl">I期</span>
                                                        </label>
                                                        &nbsp; &nbsp;
                                                        <label class=" ">
                                                            <input value="2" type="radio" class="ace"
                                                                   name="clinicTypeISS"
                                                                    />
                                                            <span class="lbl">II期</span>
                                                        </label>
                                                        &nbsp; &nbsp;
                                                        <label class=" ">
                                                            <input value="3" type="radio" class="ace"
                                                                   name="clinicTypeISS"
                                                                    />
                                                            <span class="lbl">III期</span>
                                                        </label>

                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="2">免疫球蛋白分型</td>
                                            </tr>
                                            <tr>
                                                <td>IgG型</td>
                                                <td>
                                                    <div>
                                                        <label class=" ">
                                                            <input value="1" type="radio" class="ace"
                                                                   name="diagnosisImmunoglobulinIgg"
                                                                    />
                                                            <span class="lbl">κ轻链</span>
                                                        </label>
                                                        &nbsp; &nbsp;
                                                        <label class=" ">
                                                            <input value="2" type="radio" class="ace"
                                                                   name="diagnosisImmunoglobulinIgg"
                                                                    />
                                                            <span class="lbl">λ轻链</span>
                                                        </label>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>IgA型</td>
                                                <td>
                                                    <div>
                                                        <label class=" ">
                                                            <input value="3" type="radio" class="ace"
                                                                   name="diagnosisImmunoglobulinIgg"
                                                                    />
                                                            <span class="lbl">κ轻链</span>
                                                        </label>
                                                        &nbsp; &nbsp;
                                                        <label class=" ">
                                                            <input value="4" type="radio" class="ace"
                                                                   name="diagnosisImmunoglobulinIgg"
                                                                    />
                                                            <span class="lbl">λ轻链</span>
                                                        </label>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>IgM型</td>
                                                <td>
                                                    <div>
                                                        <label class=" ">
                                                            <input value="5" type="radio" class="ace"
                                                                   name="diagnosisImmunoglobulinIgg"
                                                                    />
                                                            <span class="lbl">κ轻链</span>
                                                        </label>
                                                        &nbsp; &nbsp;
                                                        <label class=" ">
                                                            <input value="6" type="radio" class="ace"
                                                                   name="diagnosisImmunoglobulinIgg"
                                                                    />
                                                            <span class="lbl">λ轻链</span>
                                                        </label>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>IgD型</td>
                                                <td>
                                                    <div>
                                                        <label class=" ">
                                                            <input value="7" type="radio" class="ace"
                                                                   name="diagnosisImmunoglobulinIgg"
                                                                    />
                                                            <span class="lbl">κ轻链</span>
                                                        </label>
                                                        &nbsp; &nbsp;
                                                        <label class=" ">
                                                            <input value="8" type="radio" class="ace"
                                                                   name="diagnosisImmunoglobulinIgg"
                                                                    />
                                                            <span class="lbl">λ轻链</span>
                                                        </label>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>IgE型</td>
                                                <td>
                                                    <div>
                                                        <label class=" ">
                                                            <input value="9" type="radio" class="ace"
                                                                   name="diagnosisImmunoglobulinIgg"
                                                                    />
                                                            <span class="lbl">κ轻链</span>
                                                        </label>
                                                        &nbsp; &nbsp;
                                                        <label class=" ">
                                                            <input value="10" type="radio" class="ace"
                                                                   name="diagnosisImmunoglobulinIgg"
                                                                    />
                                                            <span class="lbl">λ轻链</span>
                                                        </label>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>轻链型</td>
                                                <td>
                                                    <div>
                                                        <label class=" ">
                                                            <input value="11" type="radio" class="ace"
                                                                   name="diagnosisImmunoglobulinIgg"
                                                                    />
                                                            <span class="lbl">κ轻链</span>
                                                        </label>
                                                        &nbsp; &nbsp;
                                                        <label class=" ">
                                                            <input value="12" type="radio" class="ace"
                                                                   name="diagnosisImmunoglobulinIgg"
                                                                    />
                                                            <span class="lbl">λ轻链</span>
                                                        </label>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="2">
                                                    <label class=" ">
                                                        <input value="13" type="radio" class="ace"
                                                               name="diagnosisImmunoglobulinIgg"/>
                                                        <span class="lbl">双克隆型</span>
                                                    </label>
                                                    &nbsp; &nbsp;
                                                    <label class=" ">
                                                        <input value="14" type="radio" class="ace"
                                                               name="diagnosisImmunoglobulinIgg"/>
                                                        <span class="lbl">非分泌型/寡分泌型</span>
                                                    </label>
                                                    &nbsp; &nbsp;
                                                    <label class=" ">
                                                        <input value="15" type="radio" class="ace"
                                                               name="diagnosisImmunoglobulinIgg"/>
                                                        <span class="lbl">未评价/未知</span>
                                                    </label>
                                                </td>
                                            </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-1"></div>
                                    <div class="col-xs-12 col-sm-10">
                                        <table class="table" id="BFZTable">
                                            <thead>
                                            <tr style="background-color:#80be4a">
                                                <td colspan="3"><font color="#ffffff">4.诊断时疾病相关并发症发生情况</font></td>

                                            </tr>
                                            </thead>
                                            <tbody>
                                            <%--<tr data-id="0" data-index="1">
                                                <td width="60%">骨相关事件</td>
                                                <td width="25%">
                                                    <label>
                                                        <input value="1" type="radio" class="ace" name="guState"
                                                                />
                                                        <span class="lbl">是</span>
                                                    </label>
                                                    <label>
                                                        <input value="2" type="radio" class="ace" name="guState"
                                                                />
                                                        <span class="lbl">否</span>
                                                    </label>
                                                </td>
                                                <td width="15%"></td>
                                            </tr>--%>
                                            <tr id="trGaoGaiXueZheng" data-id="0" data-index="1">
                                                <td width="40%">高钙血症</td>
                                                <td width="50%">
                                                    <label>
                                                        <input value="1" type="radio" class="ace"
                                                               name="trGaoGaiXueZhengName"
                                                                />
                                                        <span class="lbl">是</span>
                                                    </label>
                                                    <label>
                                                        <input value="2" type="radio" class="ace"
                                                               name="trGaoGaiXueZhengName"
                                                                />
                                                        <span class="lbl">否</span>
                                                    </label>
                                                </td>
                                                <td width="10%"></td>
                                            </tr>
                                            <tr  id="trGuZhe" data-id="0" data-index="2">
                                                <td>病理性骨折</td>
                                                <td>
                                                    <label>
                                                        <input value="1" type="radio" class="ace" name="trGuZheName"
                                                                />
                                                        <span class="lbl">是</span>
                                                    </label>
                                                    <label>
                                                        <input value="2" type="radio" class="ace" name="trGuZheName"
                                                                />
                                                        <span class="lbl">否</span>
                                                    </label>
                                                </td>
                                                <td></td>
                                            </tr>
                                            <tr  id="trJiSuiYaPo" data-id="0" data-index="3">
                                                <td>脊髓压迫</td>
                                                <td>
                                                    <label>
                                                        <input value="1" type="radio" class="ace" name="trJiSuiYaPoName"
                                                                />
                                                        <span class="lbl">是</span>
                                                    </label>
                                                    <label>
                                                        <input value="2" type="radio" class="ace" name="trJiSuiYaPoName"
                                                                />
                                                        <span class="lbl">否</span>
                                                    </label>
                                                </td>
                                                <td></td>
                                            </tr>
                                            <tr  id="trGuTong" data-id="0" data-index="4">
                                                <td>需要进行放射治疗的骨痛</td>
                                                <td>
                                                    <label>
                                                        <input value="1" type="radio" class="ace" name="trGuTongName"
                                                                />
                                                        <span class="lbl">是</span>
                                                    </label>
                                                    <label>
                                                        <input value="2" type="radio" class="ace" name="trGuTongName"
                                                                />
                                                        <span class="lbl">否</span>
                                                    </label>
                                                </td>
                                                <td></td>
                                            </tr>
                                            <tr data-id="0" data-index="5">
                                                <td>慢性肾病</td>
                                                <td>
                                                    <label>
                                                        <input value="1" type="radio" class="ace" name="BFZTableTr5"
                                                                />
                                                        <span class="lbl">是</span>
                                                    </label>
                                                    <label>
                                                        <input value="2" type="radio" class="ace" name="BFZTableTr5"
                                                                />
                                                        <span class="lbl">否</span>
                                                    </label>
                                                </td>
                                                <td></td>
                                            </tr>
                                            <tr data-id="0" data-index="6" hidden id="trSTX">
                                                <td>患者是否接受透析治疗</td>
                                                <td>
                                                    <label>
                                                        <input value="1" type="radio" class="ace" name="BFZTableTr6"
                                                        />
                                                        <span class="lbl">是</span>
                                                    </label>
                                                    <label>
                                                        <input value="2" type="radio" class="ace" name="BFZTableTr6"
                                                        />
                                                        <span class="lbl">否</span>
                                                    </label>
                                                    <div id="diagnosisSTXTimeDiv" hidden>
                                                        <label>治疗时间:</label>
                                                        <div class="input-group">
                                                                <span class="input-group-addon">
                                                                    <i class="ace-icon fa fa-calendar"></i>
                                                                </span>
                                                            <input type="text" id="diagnosisSTXTime"  class="form-control text-265 dataDay"/>&nbsp;&nbsp;
                                                            <span>
                                                                (格式:yyyy-mm-dd)
                                                                </span>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td></td>
                                            </tr>
                                            <tr data-id="0" data-index="7">
                                                <td>高粘滞血症</td>
                                                <td>
                                                    <label>
                                                        <input value="1" type="radio" class="ace" name="BFZTableTr7"
                                                                />
                                                        <span class="lbl">是</span>
                                                    </label>
                                                    <label>
                                                        <input value="2" type="radio" class="ace" name="BFZTableTr7"
                                                                />
                                                        <span class="lbl">否</span>
                                                    </label>
                                                </td>
                                                <td></td>
                                            </tr>
                                            <tr data-id="0" data-index="8">
                                                <td>贫血</td>
                                                <td>
                                                    <label>
                                                        <input value="1" type="radio" class="ace" name="BFZTableTr8"
                                                                />
                                                        <span class="lbl">是</span>
                                                    </label>
                                                    <label>
                                                        <input value="2" type="radio" class="ace" name="BFZTableTr8"
                                                                />
                                                        <span class="lbl">否</span>
                                                    </label>
                                                </td>
                                                <td></td>
                                            </tr>
                                            <tr data-id="0" data-index="9">
                                                <td>凝血/血栓形成</td>
                                                <td>
                                                    <label>
                                                        <input value="1" type="radio" class="ace" name="BFZTableTr9"
                                                                />
                                                        <span class="lbl">是</span>
                                                    </label>
                                                    <label>
                                                        <input value="2" type="radio" class="ace" name="BFZTableTr9"
                                                                />
                                                        <span class="lbl">否</span>
                                                    </label>
                                                </td>
                                                <td></td>
                                            </tr>
                                            <tr data-id="0" data-index="10">
                                                <td>出血</td>
                                                <td>
                                                    <label>
                                                        <input value="1" type="radio" class="ace" name="BFZTableTr10"
                                                                />
                                                        <span class="lbl">是</span>
                                                    </label>
                                                    <label>
                                                        <input value="2" type="radio" class="ace" name="BFZTableTr10"
                                                                />
                                                        <span class="lbl">否</span>
                                                    </label>
                                                </td>
                                                <td></td>
                                            </tr>

                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-1"></div>
                                    <div class="col-xs-12 col-sm-10">
                                        <table class="table" id="historyTable">
                                            <thead>
                                            <tr style="background-color:#80be4a">
                                                <td colspan="3"><font color="#ffffff">5.疾病诊断时共患病发生情况</font></td>
                                            </tr>
                                            <tr>
                                                <td width="85%">疾病名称</td>
                                                <%--<td width="40%">诊断日期(格式:yyyy-mm-dd)</td>--%>
                                                <td width="15%"></td>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <tr data-id="0" data-index="1">
                                                <td><input type="text" style="width: 350px" name="name"/></td>
                                                <%--<td>--%>
                                                    <%--<div class="input-group">--%>
                                                            <%--<span class="input-group-addon">--%>
                                                            <%--<i class="ace-icon fa fa-calendar"></i>--%>
                                                            <%--</span>--%>

                                                        <%--<input type="text" name="historyDay"--%>
                                                               <%--class="form-control text-265 dataDay"/>--%>
                                                    <%--</div>--%>
                                                <%--</td>--%>
                                                <td>
                                                    <a style="cursor: pointer;" id="addHistoryBtn"><i
                                                            class="ace-icon fa fa-plus-circle"></i>新增</a>
                                                </td>
                                            </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <input id="diagnosisLaboratoryExaminationId" hidden value="0"/>
                                    <div class="col-xs-12 col-sm-1"></div>
                                    <div class="col-xs-12 col-sm-10">
                                        <table class="table" id="diagnosisLabExamTable">
                                            <thead>
                                            <tr style="background-color:#80be4a">
                                                <td colspan="2"><font color="#ffffff">6.疾病诊断时疾病相关实验室检查</font></td>

                                            </tr>
                                            </thead>
                                            <tbody>
                                            <tr>
                                                <td colspan="2">是否有血清免疫固定电泳检查</td>
                                            </tr>
                                            <tr>
                                                <td colspan="2">
                                                    <label>
                                                        <input value="1" type="radio" class="ace"
                                                               name="diagnosisExaminationXueStatus"
                                                        />
                                                        <span class="lbl">有。如果有，请在下表中填写结果</span>
                                                    </label>
                                                    <label>
                                                        <input value="2" type="radio" class="ace"
                                                               name="diagnosisExaminationXueStatus"
                                                        />
                                                        <span class="lbl">没有</span>
                                                    </label>
                                                </td>
                                            </tr>
                                            <tr hidden id="trdiagnosisExaminationXIgg">
                                                <td width="60%">IgG</td>
                                                <td width="40%">
                                                    <label>
                                                        <input value="1" type="radio" class="ace"
                                                               name="diagnosisExaminationXIgg"
                                                        />
                                                        <span class="lbl">阳性</span>
                                                    </label>
                                                    <label>
                                                        <input value="2" type="radio" class="ace"
                                                               name="diagnosisExaminationXIgg"
                                                        />
                                                        <span class="lbl">阴性</span>
                                                    </label>
                                                </td>
                                            </tr>
                                            <tr hidden id="trdiagnosisExaminationXIga">
                                                <td>IgA</td>
                                                <td>
                                                    <label>
                                                        <input value="1" type="radio" class="ace"
                                                               name="diagnosisExaminationXIga"
                                                        />
                                                        <span class="lbl">阳性</span>
                                                    </label>
                                                    <label>
                                                        <input value="2" type="radio" class="ace"
                                                               name="diagnosisExaminationXIga"
                                                        />
                                                        <span class="lbl">阴性</span>
                                                    </label>
                                                </td>
                                            </tr>
                                            <tr hidden id="trdiagnosisExaminationXIgm">
                                                <td>IgM</td>
                                                <td>
                                                    <label>
                                                        <input value="1" type="radio" class="ace"
                                                               name="diagnosisExaminationXIgm"
                                                        />
                                                        <span class="lbl">阳性</span>
                                                    </label>
                                                    <label>
                                                        <input value="2" type="radio" class="ace"
                                                               name="diagnosisExaminationXIgm"
                                                        />
                                                        <span class="lbl">阴性</span>
                                                    </label>
                                                </td>
                                            </tr>
                                            <tr hidden id="trdiagnosisExaminationXIge">
                                                <td>IgE</td>
                                                <td>
                                                    <label>
                                                        <input value="1" type="radio" class="ace"
                                                               name="diagnosisExaminationXIge"
                                                        />
                                                        <span class="lbl">阳性</span>
                                                    </label>
                                                    <label>
                                                        <input value="2" type="radio" class="ace"
                                                               name="diagnosisExaminationXIge"
                                                        />
                                                        <span class="lbl">阴性</span>
                                                    </label>
                                                </td>
                                            </tr>
                                            <tr hidden id="trdiagnosisExaminationXIgd">
                                                <td>IgD</td>
                                                <td>
                                                    <label>
                                                        <input value="1" type="radio" class="ace"
                                                               name="diagnosisExaminationXIgd"
                                                        />
                                                        <span class="lbl">阳性</span>
                                                    </label>
                                                    <label>
                                                        <input value="2" type="radio" class="ace"
                                                               name="diagnosisExaminationXIgd"
                                                        />
                                                        <span class="lbl">阴性</span>
                                                    </label>
                                                </td>
                                            </tr>
                                            <tr hidden id="trdiagnosisExaminationXkLightChain">
                                                <td>血κ轻链</td>
                                                <td>
                                                    <label>
                                                        <input value="1" type="radio" class="ace"
                                                               name="diagnosisExaminationXkLightChain"
                                                        />
                                                        <span class="lbl">阳性</span>
                                                    </label>
                                                    <label>
                                                        <input value="2" type="radio" class="ace"
                                                               name="diagnosisExaminationXkLightChain"
                                                        />
                                                        <span class="lbl">阴性</span>
                                                    </label>
                                                </td>
                                            </tr>
                                            <tr hidden id="trdiagnosisExaminationXnLightChain">
                                                <td>血λ轻链</td>
                                                <td>
                                                    <label>
                                                        <input value="1" type="radio" class="ace"
                                                               name="diagnosisExaminationXnLightChain"
                                                        />
                                                        <span class="lbl">阳性</span>
                                                    </label>
                                                    <label>
                                                        <input value="2" type="radio" class="ace"
                                                               name="diagnosisExaminationXnLightChain"
                                                        />
                                                        <span class="lbl">阴性</span>
                                                    </label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="2">是否有尿免疫固定电泳检查</td>
                                            </tr>
                                            <tr>
                                                <td colspan="2">
                                                    <label>
                                                        <input value="1" type="radio" class="ace"
                                                               name="diagnosisExaminationNnStatus"
                                                                />
                                                        <span class="lbl">有。如果有，请在下表中填写结果</span>
                                                    </label>
                                                    <label>
                                                        <input value="2" type="radio" class="ace"
                                                               name="diagnosisExaminationNnStatus"
                                                                />
                                                        <span class="lbl">没有</span>
                                                    </label>
                                                </td>
                                            </tr>
                                            <tr hidden id="trdiagnosisExaminationNkLightChain">
                                                <td>尿κ轻链</td>
                                                <td>
                                                    <label>
                                                        <input value="1" type="radio" class="ace"
                                                               name="diagnosisExaminationNkLightChain"
                                                                />
                                                        <span class="lbl">阳性</span>
                                                    </label>
                                                    <label>
                                                        <input value="2" type="radio" class="ace"
                                                               name="diagnosisExaminationNkLightChain"
                                                                />
                                                        <span class="lbl">阴性</span>
                                                    </label>
                                                </td>
                                            </tr>
                                            <tr hidden id="trdiagnosisExaminationNnLightChain">
                                                <td>尿λ轻链</td>
                                                <td>
                                                    <label>
                                                        <input value="1" type="radio" class="ace"
                                                               name="diagnosisExaminationNnLightChain"
                                                                />
                                                        <span class="lbl">阳性</span>
                                                    </label>
                                                    <label>
                                                        <input value="2" type="radio" class="ace"
                                                               name="diagnosisExaminationNnLightChain"
                                                                />
                                                        <span class="lbl">阴性</span>
                                                    </label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="2">血清M蛋白电泳检查</td>
                                            </tr>
                                            <tr>
                                                <td>IgG (g/L)</td>
                                                <td><input name="diagnosisExaminationNIgg" type="text" class="cmSize"/></td>
                                            </tr>
                                            <tr>
                                                <td>IgA (g/L)</td>
                                                <td><input name="diagnosisExaminationNIga" type="text" class="cmSize"/></td>
                                            </tr>
                                            <tr>
                                                <td>IgM (g/L)</td>
                                                <td><input name="diagnosisExaminationNIgm" type="text" class="cmSize"/></td>
                                            </tr>
                                            <tr>
                                                <td>IgE (IU/ml)</td>
                                                <td><input name="diagnosisExaminationNIge" type="text" class="cmSize"/></td>
                                            </tr>
                                            <tr>
                                                <td>IgD (g/L)</td>
                                                <td><input name="diagnosisExaminationNIgd" type="text" class="cmSize"/></td>
                                            </tr>
                                            <tr>
                                                <td colspan="2">是否有血清游离轻链检查</td>
                                            </tr>
                                            <tr>
                                                <td colspan="2">
                                                    <label>
                                                        <input value="1" type="radio" class="ace"
                                                               name="diagnosisExaminationXkLightChainStatus"
                                                                />
                                                        <span class="lbl">有。如果有，请在下表中填写结果</span>
                                                    </label>
                                                    <label>
                                                        <input value="2" type="radio" class="ace"
                                                               name="diagnosisExaminationXkLightChainStatus"
                                                                />
                                                        <span class="lbl">没有</span>
                                                    </label>
                                                </td>
                                            </tr>
                                            <tr hidden id="trdiagnosisExaminationXYkLightChain">
                                                <td>κ轻链 (mg/dl)</td>
                                                <td>
                                                    <input name="diagnosisExaminationXYkLightChain" type="text" class="cmSize"/>
                                                </td>
                                            </tr>
                                            <tr hidden id="trdiagnosisExaminationXYnLightChain">
                                                <td>λ轻链 (mg/dl)</td>
                                                <td>
                                                    <input name="diagnosisExaminationXYnLightChain" type="text" class="cmSize"/>
                                                </td>
                                            </tr>
                                            <tr hidden id="trdiagnosisExaminationXYknLightChain">
                                                <td>轻链κ/λ比值</td>
                                                <td>
                                                    <input name="diagnosisExaminationXYknLightChain" type="text" class="zsfSize"/>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="2">是否有尿M蛋白电泳检查</td>
                                            </tr>

                                            <tr>
                                                <td colspan="2">
                                                    <label>
                                                        <input value="1" type="radio" class="ace"
                                                               name="diagnosisExaminationNStatus"
                                                        />
                                                        <span class="lbl">有。如果有，请在下表中填写结果</span>
                                                    </label>
                                                    <label>
                                                        <input value="2" type="radio" class="ace"
                                                               name="diagnosisExaminationNStatus"
                                                        />
                                                        <span class="lbl">没有</span>
                                                    </label>
                                                </td>
                                            </tr>
                                            <tr hidden id="trDiagnosisExaminationNMkLightChain">
                                                <td>κ轻链 (mg/dl)</td>
                                                <td>
                                                    <input name="diagnosisExaminationNMkLightChain" type="text" class="cmSize"/>
                                                </td>
                                            </tr>
                                            <tr hidden id="trDiagnosisExaminationNMnLightChain">
                                                <td>λ轻链 (mg/dl)</td>
                                                <td>
                                                    <input name="diagnosisExaminationNMnLightChain" type="text" class="cmSize"/>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td >24小时尿蛋白定量：
                                                </td>
                                                <td>
                                                    <input name="diagnosisExaminationH24"
                                                           type="text" class="cmSize"/>(g/24h)
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>M蛋白峰值：
                                                </td>
                                                <td>
                                                    <input name="diagnosisTopMP"
                                                           type="text" class="zsxSize"/>(%)
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>M蛋白定量结果：
                                                </td>
                                                <td>
                                                    <input name="diagnosisMPResult"
                                                           type="text" class="cmSize"/>(g/L)
                                                </td>
                                            </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-1"></div>
                                    <div class="col-xs-12 col-sm-10">
                                        <table class="table" id="gcccheckItemTable">
                                            <thead>
                                            <tr style="background-color:#80be4a">
                                                <td colspan="3"><font color="#ffffff">7.疾病诊断时骨髓穿刺涂片细胞学检查</font></td>

                                            </tr>
                                            <tr>
                                                <td width="45%">浆细胞类型</td>
                                                <td width="40%">浆细胞比例</td>
                                                <td width="15%"></td>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <tr data-id="0" data-index="1">
                                                <td>所有浆细胞 (%)</td>
                                                <td><input type="text" class="zsxSize" id="syxb"/></td>
                                                <td></td>
                                            </tr>
                                            <tr data-id="0" data-index="2">
                                                <td>原浆细胞 (%)</td>
                                                <td><input type="text" class="zsxSize" id="yxb"/></td>
                                                <td></td>
                                            </tr>
                                            <tr data-id="0" data-index="3">
                                                <td>幼浆细胞 (%)</td>
                                                <td><input type="text" class="zsxSize" id="yjxb"/></td>
                                                <td></td>
                                            </tr>
                                            <tr data-id="0" data-index="4">
                                                <td>中间浆细胞 (%)</td>
                                                <td><input type="text" class="zsxSize" id="zjxb"/></td>
                                                <td></td>
                                            </tr>
                                            <tr data-id="0" data-index="5">
                                                <td>成熟浆细胞 (%)</td>
                                                <td><input type="text" class="zsxSize" id="csxb"/></td>
                                                <td></td>
                                            </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-1"></div>
                                    <div class="col-xs-12 col-sm-10">
                                        <table class="table" id="checkItemTable">
                                            <thead>
                                            <tr style="background-color:#80be4a">
                                                <td colspan="4"><font color="#ffffff">8.疾病诊断时全身骨骼影像学检查</font></td>

                                            </tr>
                                            <tr>
                                                <td width="30%">检查项目</td>
                                                <td width="30%">溶骨性病变位置</td>
                                                <td width="25%">溶骨性病变数量</td>
                                                <td width="15%"></td>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <tr data-id="0" data-index="1">
                                                <td>X光</td>
                                                <td><textarea class="autosize-transition form-control"
                                                              style="overflow: hidden; word-wrap: break-word; resize: horizontal;"></textarea>
                                                </td>
                                                <td><textarea class="autosize-transition form-control" id="X"
                                                              style="overflow: hidden; word-wrap: break-word; resize: horizontal;"></textarea>
                                                </td>
                                                <td></td>
                                            </tr>

                                            <tr data-id="0" data-index="2">
                                                <td>CT</td>
                                                <td><textarea class="autosize-transition form-control"
                                                              style="overflow: hidden; word-wrap: break-word; resize: horizontal;"></textarea>
                                                </td>
                                                <td><textarea class="autosize-transition form-control" id="CT"
                                                              style="overflow: hidden; word-wrap: break-word; resize: horizontal;"></textarea>
                                                </td>
                                                <td></td>
                                            </tr>
                                            <tr data-id="0" data-index="3">
                                                <td>MRI</td>
                                                <td><textarea class="autosize-transition form-control"
                                                              style="overflow: hidden; word-wrap: break-word; resize: horizontal;"></textarea>
                                                </td>
                                                <td><textarea class="autosize-transition form-control" id="MRI"
                                                              style="overflow: hidden; word-wrap: break-word; resize: horizontal;"></textarea>
                                                </td>
                                                <td></td>
                                            </tr>
                                            <tr data-id="0" data-index="4">
                                                <td>PET-CT</td>
                                                <td><textarea class="autosize-transition form-control"
                                                              style="overflow: hidden; word-wrap: break-word; resize: horizontal;"></textarea>
                                                </td>
                                                <td><textarea class="autosize-transition form-control" id="PETCT"
                                                              style="overflow: hidden; word-wrap: break-word; resize: horizontal;"></textarea>
                                                </td>
                                                <td></td>
                                            </tr>
                                            <tr data-id="0" data-index="5">
                                                <td>同位素骨扫描</td>
                                                <td><textarea class="autosize-transition form-control"
                                                              style="overflow: hidden; word-wrap: break-word; resize: horizontal;"></textarea>
                                                </td>
                                                <td><textarea class="autosize-transition form-control" id="TWS"
                                                              style="overflow: hidden; word-wrap: break-word; resize: horizontal;"></textarea>
                                                </td>
                                                <td></td>
                                            </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-1"></div>
                                    <div class="col-xs-12 col-sm-10">
                                        <table class="table" id="rzzCheckItemTable">
                                            <thead>
                                            <tr style="background-color:#80be4a">
                                                <td colspan="4"><font color="#ffffff">9.疾病诊断时全身软组织浆细胞瘤检查</font></td>

                                            </tr>
                                            <tr>
                                                <td width="20%">检查项目</td>
                                                <td width="25%">病变位置</td>
                                                <td width="47%">占位大小</td>
                                                <td width="8%"></td>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <tr data-id="0" data-index="1">
                                                <td>CT</td>
                                                <td><textarea class="autosize-transition form-control"
                                                              style="overflow: hidden; word-wrap: break-word; resize: horizontal;"></textarea>
                                                </td>
                                                <td><input name="ctn1" type="text" class="cmSize"/>cm * <input name="ctn2"
                                                                                                               type="text" class="cmSize"/>cm
                                                </td>
                                                <td></td>
                                            </tr>

                                            <tr data-id="0" data-index="2">
                                                <td>MRI</td>
                                                <td><textarea class="autosize-transition form-control"
                                                              style="overflow: hidden; word-wrap: break-word; resize: horizontal;"></textarea>
                                                </td>
                                                <td><input name="mri1" type="text" class="cmSize"/>cm * <input name="mri2"
                                                                                                               type="text" class="cmSize"/>cm
                                                </td>
                                                <td></td>
                                            </tr>
                                            <tr data-id="0" data-index="3">
                                                <td>PET-CT</td>
                                                <td><textarea class="autosize-transition form-control"
                                                              style="overflow: hidden; word-wrap: break-word; resize: horizontal;"></textarea>
                                                </td>
                                                <td><input name="pet1" type="text" class="cmSize"/>cm * <input name="pet2"
                                                                                                               type="text" class="cmSize"/>cm
                                                </td>
                                                <td></td>
                                            </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-1"></div>
                                    <div class="col-xs-12 col-sm-10">
                                        <table class="table" id="fishcheckItemTable">
                                            <thead>
                                            <tr style="background-color:#80be4a">
                                                <td colspan="4"><font color="#ffffff">10.FISH检查</font></td>

                                            </tr>
                                            <tr>
                                                <td colspan="3">患者是否存在染色体异常:</td>
                                            </tr>
                                            <tr>
                                                <td colspan="3">
                                                    <div>
                                                        <label class="line-height-1  ">
                                                            <input value="1" type="radio" class="ace"
                                                                   name="fishexception"
                                                                    />
                                                            <span class="lbl">是。如果是，请在下表填写结果</span>
                                                        </label>
                                                        &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;
                                                        <label class="line-height-1  ">
                                                            <input value="2" type="radio" class="ace"
                                                                   name="fishexception"/>
                                                            <span class="lbl">否</span>
                                                        </label>
                                                        &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;
                                                        <label class="line-height-1  ">
                                                            <input value="3" type="radio" class="ace"
                                                                   name="fishexception"/>
                                                            <span class="lbl">未检查</span>
                                                        </label>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr hidden id="trfishItem">
                                                <td width="40%">检查项目</td>
                                                <td width="45%">比例</td>
                                                <td width="15%"></td>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <tr hidden id="trfishIghItem" data-id="0" data-index="1">
                                                <td>IgH重排 (%)</td>
                                                <td><input name="igh" type="text" class="zsxSize" id="IgH"/></td>
                                                <td></td>
                                            </tr>
                                            <tr hidden id="trfish13qItem" data-id="0" data-index="2">
                                                <td> 13q缺失 (%)</td>
                                                <td><input name="13q" type="text" class="zsxSize" id="13q"/></td>
                                                <td></td>
                                            </tr>
                                            <tr hidden id="trfish17qItem" data-id="0" data-index="3">
                                                <td> 17p缺失 (%)</td>
                                                <td><input name="17q" type="text" class="zsxSize" id="17p"/></td>
                                                <td></td>
                                            </tr>
                                            <tr hidden id="trfish1q21Item" data-id="0" data-index="4">
                                                <td>1q21扩增(%)</td>
                                                <td><input name="1q21" type="text" class="zsxSize" id="1q21"/></td>
                                                <td></td>
                                            </tr>
                                            <tr hidden id="trfisht414Item" data-id="0" data-index="5">
                                                <td>t(4;14) (%)</td>
                                                <td><input name="t414" type="text" class="zsxSize" id="t1"/></td>
                                                <td></td>
                                            </tr>
                                            <tr hidden id="trfisht1114Item" data-id="0" data-index="6">
                                                <td>t(11;14) (%)</td>
                                                <td><input name="t1114" type="text" class="zsxSize" id="t2"/></td>
                                                <td></td>
                                            </tr>
                                            <tr hidden id="trfisht1416Item" data-id="0" data-index="7">
                                                <td>t(14;16) (%)</td>
                                                <td><input name="t1416" type="text" class="zsxSize" id="t3"/></td>
                                                <td></td>
                                            </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </form>
                        </div>

                        <div class="step-pane" data-step="3">
                            <form class="form-horizontal" id="form-step3" method="get">
                                <div class="form-group">
                                    <label class="control-label col-xs-12 col-sm-1 no-padding-right"></label>
                                    <h4 class="green bolder col-xs-12 col-sm-9">既往MM相关的治疗信息</h4>

                                </div>
                                <div class="form-group">
                                    <label class="control-label col-xs-12 col-sm-1 no-padding-right"></label>

                                    <div class="col-xs-12 col-sm-10">
                                        <div class="panel-group" id="accordion">
                                            <button type="button" id="addCureInfoBtn" class="btn btn-primary">
                                                <i class="ace-icon fa fa-plus-circle"></i>
                                                新增治疗信息
                                            </button>
                                            <br/>
                                            <br/>
                                            <table class="table" id="cureInfoTable">
                                                <tbody>
                                                <tr data-id="0" data-index="1">
                                                    <td>
                                                        <div class="panel panel-default">
                                                            <div class="panel-heading">
                                                                <h4 class="panel-title">
                                                                    <a data-toggle="collapse" data-parent="#accordion"
                                                                       href="#collapse1">
                                                                        第1次治疗信息
                                                                    </a>
                                                                </h4>
                                                            </div>
                                                        </div>
                                                        <div id="collapse1" class="panel-collapse collapse in">
                                                            <div class="panel-body">
                                                                <div class="form-group">
                                                                    <label class="control-label col-xs-12 col-sm-3 no-padding-right">自体干细胞移植治疗:</label>

                                                                    <div class="col-xs-12 col-sm-9">
                                                                        <div>
                                                                            <label class="line-height-1  ">
                                                                                <input value="1" type="radio"
                                                                                       class="ace stemcelltransplantation"
                                                                                       name="stemcelltransplantation"
                                                                                        />
                                                                                <span class="lbl">是</span>
                                                                            </label>
                                                                            &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;
                                                                            <label class="line-height-1  ">
                                                                                <input value="2" type="radio"
                                                                                       class="ace stemcelltransplantation"
                                                                                       name="stemcelltransplantation"/>
                                                                                <span class="lbl">否</span>
                                                                            </label>
                                                                        </div>
                                                                        <div name="stemcelltransplantationDiv" id="stemcelltransplantationDiv" class="input-group" hidden>
                                                                        <div class="input-group">
                                                                                <span class="input-group-addon">
                                                                                <i class="ace-icon fa fa-calendar"></i>
                                                                                </span>

                                                                            <input type="text"
                                                                                   name="stemcelltransplantationDate"
                                                                                   class="form-control text-265 dataDay"/>
                                                                            &nbsp;&nbsp;
                                                                            <span>
                                                                                    (格式:yyyy-mm-dd)
                                                                                </span>
                                                                        </div>
                                                                            </div>
                                                                    </div>
                                                                </div>
                                                                <div class="form-group">
                                                                    <label class="control-label col-xs-12 col-sm-3 no-padding-right"
                                                                           for="curePlan">药物治疗方案:</label>

                                                                    <div class="col-xs-12 col-sm-9">
                                                                        <div class="clearfix">
                                                                                   <textarea id="curePlan" name="curePlan"
                                                                                             class="autosize-transition form-control"
                                                                                             style="overflow: hidden; word-wrap: break-word; resize: horizontal;"></textarea>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="form-group">
                                                                    <label class="control-label col-xs-12 col-sm-3 no-padding-right"
                                                                           for="curePlan">治疗起止时间:</label>

                                                                    <div class="col-xs-12 col-sm-9">
                                                                        <input name="startYear" type="text"
                                                                               style="width: 80px;"/>年&nbsp;
                                                                        <input name="startMonth" type="text"
                                                                               style="width: 80px;"/>月&nbsp;至
                                                                        &nbsp;<input name="endYear"
                                                                                     type="text"
                                                                                     style="width: 80px;"/>年&nbsp;
                                                                        <input name="endMonth" type="text"
                                                                               style="width: 80px;"/>月
                                                                    </div>
                                                                </div>
                                                                <div class="form-group">
                                                                    <label class="control-label col-xs-12 col-sm-3 no-padding-right"
                                                                           for="curePlan">治疗方案所属治疗阶段:</label>

                                                                    <div class="col-xs-12 col-sm-4">
                                                                        <select id="curePlanStep"
                                                                                name="curePlanStep"
                                                                                data-placeholder="">
                                                                            <option value="0" selected>未选择</option>
                                                                            <option value="1">诱导治疗
                                                                            </option>
                                                                            <option value="2">干细胞治疗后的巩固治疗</option>
                                                                            <option value="3">一线治疗</option>
                                                                            <option value="4">一线治疗后的维持治疗</option>
                                                                            <option value="5">二线治疗</option>
                                                                            <option value="6">三线治疗</option>
                                                                            <option value="7">其他</option>
                                                                        </select>
                                                                    </div>
                                                                    <div class="col-xs-12 col-sm-5" id="divCurePlanStepOther" hidden>
                                                                        <label
                                                                               class="control-label col-xs-12 col-sm-3 no-padding-right"
                                                                               for="estimateResultOtherLabel" >请注明:</label>
                                                                        <input type="text" id="curePlanStepOther"
                                                                               name="curePlanStepOther" />
                                                                    </div>
                                                                </div>

                                                                <div class="form-group">
                                                                    <label class="control-label col-xs-12 col-sm-3 no-padding-right"
                                                                           for="cycleCount">本次治疗方案周期数:</label>

                                                                    <div class="col-xs-12 col-sm-9">
                                                                        <div class="clearfix">
                                                                            <input type="text" name="cycleCount"
                                                                                   id="cycleCount"
                                                                                   style="width: 150px"/>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="form-group">
                                                                    <label class="control-label col-xs-12 col-sm-3 no-padding-right">治疗结束疗效评估信息:</label>
                                                                </div>
                                                                <div class="form-group">
                                                                    <label class="control-label col-xs-12 col-sm-3 no-padding-right">治疗完成后是否进行</br>
                                                                        效果评估</label>

                                                                    <div class="col-xs-12 col-sm-9">
                                                                        <label class=" ">
                                                                            <input value="1" type="radio"
                                                                                   class="ace evaluateAfterCure"
                                                                                   name="evaluateAfterCure"
                                                                                    />
                                                                            <span class="lbl">是</span>
                                                                        </label>
                                                                        &nbsp; &nbsp;
                                                                        <label class=" ">
                                                                            <input value="2" type="radio"
                                                                                   class="ace evaluateAfterCure"
                                                                                   name="evaluateAfterCure"/>
                                                                            <span class="lbl">否</span>
                                                                        </label>
                                                                    </div>
                                                                </div>
                                                                <div class="form-group" id="divEvaluateRule" hidden>
                                                                    <label class="control-label col-xs-12 col-sm-3 no-padding-right">疗效评估的标准是:</label>

                                                                    <div class="col-xs-12 col-sm-9">
                                                                        <label class="line-height-1  ">
                                                                            <input value="1" type="radio" class="ace evaluateRule"
                                                                                   name="evaluateRule"
                                                                                    />
                                                                            <span class="lbl">IMWG</span>
                                                                        </label>
                                                                        &nbsp; &nbsp;
                                                                        <label class="line-height-1  ">
                                                                            <input value="2" type="radio" class="ace evaluateRule"
                                                                                   name="evaluateRule"/>
                                                                            <span class="lbl">其他</span>&nbsp; &nbsp;
                                                                            <input type="text"
                                                                                   class="text-150"
                                                                                   name="evaluateRuleOther"/>

                                                                        </label>

                                                                    </div>
                                                                </div>
                                                                <div class="form-group" id="divEvaluateResult" hidden>
                                                                    <label class="control-label col-xs-12 col-sm-3 no-padding-right"
                                                                           for="estimateResult">具体评估结果:</label>

                                                                    <div class="col-xs-12 col-sm-4">
                                                                        <select id="estimateResult"
                                                                                name="evaluateResult"
                                                                                data-placeholder="">
                                                                            <option value="0" selected>未选择</option>
                                                                            <option value="1">0.MCR(分子学完全缓解)
                                                                            </option>
                                                                            <option value="2">1.ICR(免疫学完全缓解)</option>
                                                                            <option value="3">2.sCR(严格完全缓解)</option>
                                                                            <option value="4">3.CR(完全缓解)</option>
                                                                            <option value="5">4.VGPR (很好的部分缓解)
                                                                            </option>
                                                                            <option value="6">5.PR(部分缓解)</option>
                                                                            <option value="7">6.MR(微小缓解)</option>
                                                                            <option value="8">7.SD(疾病稳定)</option>
                                                                            <option value="9">8.PD(疾病进展)</option>
                                                                            <option value="10">9.其他</option>
                                                                        </select>
                                                                    </div>

                                                                    <div class="col-xs-12 col-sm-5" >
                                                                        <label id="estimateResultOtherLabel"
                                                                               class="control-label col-xs-12 col-sm-3 no-padding-right"
                                                                               for="estimateResultOtherLabel" hidden>请注明:</label>
                                                                        <input type="text" id="estimateResultOther"
                                                                               name="estimateResultOther" hidden/>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </td>
                                                </tr>
                                                </tbody>
                                            </table>

                                        </div>
                                    </div>
                                </div>

                            </form>
                        </div>

                        <div class="step-pane" data-step="4">
                            <!-- <h4 class="lighter block green bolder">观察期间的住院治疗信息</h4> -->
                            <form class="form-horizontal" id="form-step4" method="get">
                                <div class="form-group">
                                    <!-- <h4 class="lighter block green bolder col-xs-12 col-sm-2 no-padding-right">患者信息</h4> -->
                                    <label class="control-label col-xs-12 col-sm-1 no-padding-right"></label>
                                    <h4 class="green bolder col-xs-12 col-sm-9">观察期间的住院治疗信息</h4>

                                </div>
                                <div class="form-group">
                                    <label class="control-label col-xs-12 col-sm-1 no-padding-right"></label>

                                    <div class="col-xs-12 col-sm-10">
                                        <button type="button" id="addHospitalRecordBtn" class="btn btn-primary">
                                            <i class="ace-icon fa fa-plus-circle"></i>
                                            新增住院信息
                                        </button>
                                        <br/>
                                        <br/>
                                        <table class="table" id="recordListTable">
                                            <thead>
                                            <tr>
                                                <th>开始时间</th>
                                                <th>结束时间</th>
                                                <th>操作</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            </tbody>
                                        </table>

                                    </div>
                                </div>
                                <div class="form-group" id="addPanel" hidden>
                                    <label class="control-label col-xs-12 col-sm-1 no-padding-right"></label>

                                    <div class="col-xs-12 col-sm-10">
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <h4 class="panel-title">
                                                    <a  data-toggle="collapse" href="#hostRecordCollapse">
                                                        <label id="titleLabel">新增住院信息</label>
                                                    </a>
                                                </h4>
                                            </div>
                                            <input hidden id="hospitaledInfoId" value="0" hidden/>
                                            <input hidden id="hospitaledInfoIndex" value="0" hidden/>
                                            <div id="hostRecordCollapse" class="panel-collapse collapse in">
                                                <div class="panel-body">
                                                    <div class="form-group">
                                                        <label class="control-label col-xs-12 col-sm-2 no-padding-right"
                                                               for="startTime">入院日期:</label>

                                                        <div class="col-xs-12 col-sm-10">
                                                            <div class="input-group">
                                                            <span class="input-group-addon">
                                                                <i class="ace-icon fa fa-calendar"></i>
                                                            </span>
                                                                <input type="text" id="startTime"
                                                                       name="startTime"
                                                                       class="form-control text-300 dataDay"/>

                                                                &nbsp;&nbsp;
                                                                <span>
                                                                    (格式:yyyy-mm-dd)
                                                                </span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label class="control-label col-xs-12 col-sm-2 no-padding-right"
                                                               for="endTime">出院日期:</label>

                                                        <div class="col-xs-12 col-sm-10">
                                                            <div class="input-group">
                                                                <span class="input-group-addon">
                                                                    <i class="ace-icon fa fa-calendar"></i>
                                                                </span>

                                                                <input type="text" id="endTime"
                                                                       name="endTime"
                                                                       class="form-control text-300 dataDay"/>
                                                                &nbsp;&nbsp;
                                                                <span>
                                                                    (格式:yyyy-mm-dd)
                                                                </span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="form-group">

                                                        <label class="control-label col-xs-12 col-sm-2 no-padding-right"
                                                               for="hospitalweight">体重(kg):</label>

                                                        <div class="col-xs-12 col-sm-9">
                                                            <div class="clearfix">
                                                                <input type="text" name="hospitalweight"
                                                                       id="hospitalweight"
                                                                       class="text-300 cmSize"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="form-group">

                                                        <label class="control-label col-xs-12 col-sm-2 no-padding-right"
                                                               for="hospitalbodysurfacearea">体表面积(平方米):</label>

                                                        <div class="col-xs-12 col-sm-9">
                                                            <div class="clearfix">
                                                                <input type="text" name="hospitalbodysurfacearea"
                                                                       id="hospitalbodysurfacearea"
                                                                       class="text-300 cmSize"/>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="form-group">
                                                        <h4 class="control-label green bolder col-xs-12 col-sm-2 no-padding-right">
                                                            一般状况评分</h4>

                                                    </div>
                                                    <div class="form-group">
                                                        <label class="control-label col-xs-12 col-sm-2 no-padding-right"
                                                               for="hispitalizedEcogMark">ECOG评分:</label>

                                                        <div class="col-xs-12 col-sm-10">
                                                            <select id="hispitalizedEcogMark" class="select2-300"
                                                                    name="hispitalizedEcogMark">
                                                                <option value="0" selected>未选择</option>
                                                                <option value="1">0分</option>
                                                                <option value="2">1分</option>
                                                                <option value="3">2分</option>
                                                                <option value="4">3分</option>
                                                                <option value="5">4分</option>
                                                                <option value="6">5分</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label class="control-label col-xs-12 col-sm-2 no-padding-right"
                                                               for="hispitalizedKarnofskyMark">Karnofsky评分:</label>

                                                        <div class="col-xs-12 col-sm-10">
                                                            <div class="clearfix">
                                                                <input type="text" name="hispitalizedKarnofskyMark"
                                                                       id="hispitalizedKarnofskyMark"
                                                                       class="text-300 zszSize"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <div class="col-xs-12 col-sm-12">
                                                            <table class="table " id="BFZTable1">
                                                                <thead>
                                                                <tr style="background-color:#80be4a">
                                                                    <td colspan="3"><font
                                                                            color="#ffffff">2.疾病相关并发症发生情况</font></td>
                                                                </tr>
                                                                </thead>
                                                                <tbody>
                                                                <tr  id="trGaoGaiXueZhengZY" data-id="0" data-index="1">
                                                                    <td>高钙血症</td>
                                                                    <td>
                                                                        <label>
                                                                            <input value="1" type="radio" class="ace"
                                                                                   name="trGaoGaiXueZhengZYName"
                                                                                    />
                                                                            <span class="lbl">是</span>
                                                                        </label>
                                                                        <label>
                                                                            <input value="2" type="radio" class="ace"
                                                                                   name="trGaoGaiXueZhengZYName"
                                                                                    />
                                                                            <span class="lbl">否</span>
                                                                        </label>
                                                                    </td>
                                                                    <td></td>
                                                                </tr>
                                                                <tr  id="trGuZheZY" data-id="0" data-index="2">
                                                                    <td>病理性骨折</td>
                                                                    <td>
                                                                        <label>
                                                                            <input value="1" type="radio" class="ace"
                                                                                   name="trGuZheZYName"
                                                                                    />
                                                                            <span class="lbl">是</span>
                                                                        </label>
                                                                        <label>
                                                                            <input value="2" type="radio" class="ace"
                                                                                   name="trGuZheZYName"
                                                                                    />
                                                                            <span class="lbl">否</span>
                                                                        </label>
                                                                    </td>
                                                                    <td></td>
                                                                </tr>
                                                                <tr  id="trJiSuiYaPoZY" data-id="0" data-index="3">
                                                                    <td>脊髓压迫</td>
                                                                    <td>
                                                                        <label>
                                                                            <input value="1" type="radio" class="ace"
                                                                                   name="trJiSuiYaPoZYName"
                                                                                    />
                                                                            <span class="lbl">是</span>
                                                                        </label>
                                                                        <label>
                                                                            <input value="2" type="radio" class="ace"
                                                                                   name="trJiSuiYaPoZYName"
                                                                                    />
                                                                            <span class="lbl">否</span>
                                                                        </label>
                                                                    </td>
                                                                    <td></td>
                                                                </tr>
                                                                <tr  id="trGuTongZY" data-id="0" data-index="4">
                                                                    <td>需要进行放射治疗的骨痛</td>
                                                                    <td>
                                                                        <label>
                                                                            <input value="1" type="radio" class="ace"
                                                                                   name="trGuTongZYName"
                                                                                    />
                                                                            <span class="lbl">是</span>
                                                                        </label>
                                                                        <label>
                                                                            <input value="2" type="radio" class="ace"
                                                                                   name="trGuTongZYName"
                                                                                    />
                                                                            <span class="lbl">否</span>
                                                                        </label>
                                                                    </td>
                                                                    <td></td>
                                                                </tr>
                                                                <tr data-id="0" data-index="5">
                                                                    <td>慢性肾病</td>
                                                                    <td>
                                                                        <label>
                                                                            <input value="1" type="radio" class="ace"
                                                                                   name="present2"
                                                                                    />
                                                                            <span class="lbl">是</span>
                                                                        </label>
                                                                        <label>
                                                                            <input value="2" type="radio" class="ace"
                                                                                   name="present2"
                                                                                    />
                                                                            <span class="lbl">否</span>
                                                                        </label>
                                                                    </td>
                                                                    <td></td>
                                                                </tr>
                                                                <tr data-id="0" data-index="6" hidden id="trHSTX">
                                                                    <td>患者是否接受透析治疗</td>
                                                                    <td>
                                                                        <label>
                                                                            <input value="1" type="radio" class="ace" name="hstxradio"
                                                                            />
                                                                            <span class="lbl">是</span>
                                                                        </label>
                                                                        <label>
                                                                            <input value="2" type="radio" class="ace" name="hstxradio"
                                                                            />
                                                                            <span class="lbl">否</span>
                                                                        </label>
                                                                    </td>
                                                                    <td></td>
                                                                </tr>
                                                                <tr data-id="0" data-index="7">
                                                                    <td>高粘滞血症</td>
                                                                    <td>
                                                                        <label>
                                                                            <input value="1" type="radio" class="ace"
                                                                                   name="present3"
                                                                                    />
                                                                            <span class="lbl">是</span>
                                                                        </label>
                                                                        <label>
                                                                            <input value="2" type="radio" class="ace"
                                                                                   name="present3"
                                                                                    />
                                                                            <span class="lbl">否</span>
                                                                        </label>
                                                                    </td>
                                                                    <td></td>
                                                                </tr>
                                                                <tr data-id="0" data-index="8">
                                                                    <td>贫血</td>
                                                                    <td>
                                                                        <label>
                                                                            <input value="1" type="radio" class="ace"
                                                                                   name="present4"
                                                                                    />
                                                                            <span class="lbl">是</span>
                                                                        </label>
                                                                        <label>
                                                                            <input value="2" type="radio" class="ace"
                                                                                   name="present4"
                                                                                    />
                                                                            <span class="lbl">否</span>
                                                                        </label>
                                                                    </td>
                                                                    <td></td>
                                                                </tr>
                                                                <tr data-id="0" data-index="9">
                                                                    <td>凝血/血栓形成</td>
                                                                    <td>
                                                                        <label>
                                                                            <input value="1" type="radio" class="ace"
                                                                                   name="present5"
                                                                                    />
                                                                            <span class="lbl">是</span>
                                                                        </label>
                                                                        <label>
                                                                            <input value="2" type="radio" class="ace"
                                                                                   name="present5"
                                                                                    />
                                                                            <span class="lbl">否</span>
                                                                        </label>
                                                                    </td>
                                                                    <td></td>
                                                                </tr>
                                                                <tr data-id="0" data-index="10">
                                                                    <td>出血</td>
                                                                    <td>
                                                                        <label>
                                                                            <input value="1" type="radio" class="ace"
                                                                                   name="present6"
                                                                                    />
                                                                            <span class="lbl">是</span>
                                                                        </label>
                                                                        <label>
                                                                            <input value="2" type="radio" class="ace"
                                                                                   name="present6"
                                                                                    />
                                                                            <span class="lbl">否</span>
                                                                        </label>
                                                                    </td>
                                                                    <td></td>
                                                                </tr>
                                                                <tr data-id="0" data-index="11">
                                                                    <td>其他:<input type="text" type="text"
                                                                                  style="width: 300px; "/>
                                                                    </td>
                                                                    <td>
                                                                        <label>
                                                                            <input value="1" type="radio" class="ace"
                                                                                   name="present7"
                                                                                    />
                                                                            <span class="lbl">是</span>
                                                                        </label>
                                                                        <label>
                                                                            <input value="2" type="radio" class="ace"
                                                                                   name="present7"
                                                                                    />
                                                                            <span class="lbl">否</span>
                                                                        </label>
                                                                    </td>
                                                                    <td>
                                                                        <a style="cursor: pointer;" id="addBFZbtn1"><i
                                                                                class="ace-icon fa fa-plus-circle"></i>新增</a>
                                                                    </td>
                                                                </tr>
                                                                </tbody>
                                                            </table>
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <div class="col-xs-12 col-sm-12">
                                                            <input id="hospitaledLabId" hidden value="0"/>
                                                            <table class="table">
                                                                <thead>
                                                                <tr style="background-color:#80be4a">
                                                                    <td colspan="2"><font color="#ffffff">3.本次住院疾病相关实验室检查</font>
                                                                    </td>

                                                                </tr>
                                                                </thead>
                                                                <tbody>
                                                                <tr>
                                                                    <td colspan="2">是否有血清免疫固定电泳检查</td>
                                                                </tr>
                                                                <tr>
                                                                    <td colspan="2">
                                                                        <label>
                                                                            <input value="1" type="radio" class="ace"
                                                                                   name="hospitalExaminationXueStatus"
                                                                                    />
                                                                            <span class="lbl">有。如果有，请在下表中填写结果</span>
                                                                        </label>
                                                                        <label>
                                                                            <input value="2" type="radio" class="ace"
                                                                                   name="hospitalExaminationXueStatus"
                                                                                    />
                                                                            <span class="lbl">没有</span>
                                                                        </label>
                                                                    </td>
                                                                </tr>
                                                                <tr hidden id="trhospitalExaminationXIgg">
                                                                    <td width="60%">IgG</td>
                                                                    <td width="40%">
                                                                        <label>
                                                                            <input value="1" type="radio" class="ace"
                                                                                   name="hospitalExaminationXIgg"
                                                                                    />
                                                                            <span class="lbl">阳性</span>
                                                                        </label>
                                                                        <label>
                                                                            <input value="2" type="radio" class="ace"
                                                                                   name="hospitalExaminationXIgg"
                                                                                    />
                                                                            <span class="lbl">阴性</span>
                                                                        </label>
                                                                    </td>
                                                                </tr>
                                                                <tr hidden id="trhospitalExaminationXIga">
                                                                    <td>IgA</td>
                                                                    <td>
                                                                        <label>
                                                                            <input value="1" type="radio" class="ace"
                                                                                   name="hospitalExaminationXIga"
                                                                                    />
                                                                            <span class="lbl">阳性</span>
                                                                        </label>
                                                                        <label>
                                                                            <input value="2" type="radio" class="ace"
                                                                                   name="hospitalExaminationXIga"
                                                                                    />
                                                                            <span class="lbl">阴性</span>
                                                                        </label>
                                                                    </td>
                                                                </tr>
                                                                <tr hidden id="trhospitalExaminationXIgm">
                                                                    <td>IgM</td>
                                                                    <td>
                                                                        <label>
                                                                            <input value="1" type="radio" class="ace"
                                                                                   name="hospitalExaminationXIgm"
                                                                                    />
                                                                            <span class="lbl">阳性</span>
                                                                        </label>
                                                                        <label>
                                                                            <input value="2" type="radio" class="ace"
                                                                                   name="hospitalExaminationXIgm"
                                                                                    />
                                                                            <span class="lbl">阴性</span>
                                                                        </label>
                                                                    </td>
                                                                </tr>
                                                                <tr hidden id="trhospitalExaminationXIge">
                                                                    <td>IgE</td>
                                                                    <td>
                                                                        <label>
                                                                            <input value="1" type="radio" class="ace"
                                                                                   name="hospitalExaminationXIge"
                                                                                    />
                                                                            <span class="lbl">阳性</span>
                                                                        </label>
                                                                        <label>
                                                                            <input value="2" type="radio" class="ace"
                                                                                   name="hospitalExaminationXIge"
                                                                                    />
                                                                            <span class="lbl">阴性</span>
                                                                        </label>
                                                                    </td>
                                                                </tr>
                                                                <tr hidden id="trhospitalExaminationXIgd">
                                                                    <td>IgD</td>
                                                                    <td>
                                                                        <label>
                                                                            <input value="1" type="radio" class="ace"
                                                                                   name="hospitalExaminationXIgd"
                                                                                    />
                                                                            <span class="lbl">阳性</span>
                                                                        </label>
                                                                        <label>
                                                                            <input value="2" type="radio" class="ace"
                                                                                   name="hospitalExaminationXIgd"
                                                                                    />
                                                                            <span class="lbl">阴性</span>
                                                                        </label>
                                                                    </td>
                                                                </tr>
                                                                <tr hidden id="trhospitalExaminationXkLightChain">
                                                                    <td>血κ轻链</td>
                                                                    <td>
                                                                        <label>
                                                                            <input value="1" type="radio" class="ace"
                                                                                   name="hospitalExaminationXkLightChain"
                                                                                    />
                                                                            <span class="lbl">阳性</span>
                                                                        </label>
                                                                        <label>
                                                                            <input value="2" type="radio" class="ace"
                                                                                   name="hospitalExaminationXkLightChain"
                                                                                    />
                                                                            <span class="lbl">阴性</span>
                                                                        </label>
                                                                    </td>
                                                                </tr>
                                                                <tr hidden id="trhospitalExaminationXnLightChain">
                                                                    <td>血λ轻链</td>
                                                                    <td>
                                                                        <label>
                                                                            <input value="1" type="radio" class="ace"
                                                                                   name="hospitalExaminationXnLightChain"
                                                                                    />
                                                                            <span class="lbl">阳性</span>
                                                                        </label>
                                                                        <label>
                                                                            <input value="2" type="radio" class="ace"
                                                                                   name="hospitalExaminationXnLightChain"
                                                                                    />
                                                                            <span class="lbl">阴性</span>
                                                                        </label>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td colspan="2">是否有尿免疫固定电泳检查</td>
                                                                </tr>
                                                                <tr>
                                                                    <td colspan="2">
                                                                        <label>
                                                                            <input value="1" type="radio" class="ace"
                                                                                   name="hospitalExaminationNnStatus"
                                                                                    />
                                                                            <span class="lbl">有。如果有，请在下表中填写结果</span>
                                                                        </label>
                                                                        <label>
                                                                            <input value="2" type="radio" class="ace"
                                                                                   name="hospitalExaminationNnStatus"
                                                                                    />
                                                                            <span class="lbl">没有</span>
                                                                        </label>
                                                                    </td>
                                                                </tr>
                                                                <tr hidden id="trhospitalExaminationNkLightChain">
                                                                    <td>尿κ轻链</td>
                                                                    <td>
                                                                        <label>
                                                                            <input value="1" type="radio" class="ace"
                                                                                   name="hospitalExaminationNkLightChain"
                                                                                    />
                                                                            <span class="lbl">阳性</span>
                                                                        </label>
                                                                        <label>
                                                                            <input value="2" type="radio" class="ace"
                                                                                   name="hospitalExaminationNkLightChain"
                                                                                    />
                                                                            <span class="lbl">阴性</span>
                                                                        </label>
                                                                    </td>
                                                                </tr>
                                                                <tr hidden id="trhospitalExaminationNnLightChain">
                                                                    <td>尿λ轻链</td>
                                                                    <td>
                                                                        <label>
                                                                            <input value="1" type="radio" class="ace"
                                                                                   name="hospitalExaminationNnLightChain"
                                                                                    />
                                                                            <span class="lbl">阳性</span>
                                                                        </label>
                                                                        <label>
                                                                            <input value="2" type="radio" class="ace"
                                                                                   name="hospitalExaminationNnLightChain"
                                                                                    />
                                                                            <span class="lbl">阴性</span>
                                                                        </label>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td colspan="2">血清M蛋白电泳检查</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>IgG (g/L)</td>
                                                                    <td><input name="hospitalExaminationNIgg"
                                                                               id="hospitalExaminationNIgg"  type="text" class="cmSize"/></td>
                                                                </tr>
                                                                <tr>
                                                                    <td>IgA (g/L)</td>
                                                                    <td><input name="hospitalExaminationNIga"
                                                                               id="hospitalExaminationNIga"  type="text" class="cmSize"/></td>
                                                                </tr>
                                                                <tr>
                                                                    <td>IgM (g/L)</td>
                                                                    <td><input name="hospitalExaminationNIgm"
                                                                               id="hospitalExaminationNIgm"  type="text" class="cmSize"/></td>
                                                                </tr>
                                                                <tr>
                                                                    <td>IgE (IU/ml)</td>
                                                                    <td><input name="hospitalExaminationNIge"
                                                                               id="hospitalExaminationNIge"  type="text" class="cmSize"/></td>
                                                                </tr>
                                                                <tr>
                                                                    <td>IgD (g/L)</td>
                                                                    <td><input name="hospitalExaminationNIgd"
                                                                               id="hospitalExaminationNIgd"  type="text" class="cmSize"/></td>
                                                                </tr>
                                                                <tr>
                                                                    <td colspan="2">是否有血清游离轻链检查</td>
                                                                </tr>
                                                                <tr>
                                                                    <td colspan="2">
                                                                        <label>
                                                                            <input value="1" type="radio" class="ace"
                                                                                   name="hospitalExaminationXkLightChainStatus"
                                                                                    />
                                                                            <span class="lbl">有。如果有，请在下表中填写结果</span>
                                                                        </label>
                                                                        <label>
                                                                            <input value="2" type="radio" class="ace"
                                                                                   name="hospitalExaminationXkLightChainStatus"
                                                                                    />
                                                                            <span class="lbl">没有</span>
                                                                        </label>
                                                                    </td>
                                                                </tr>
                                                                <tr hidden id="trhospitalExaminationXYkLightChain">
                                                                    <td>κ轻链 (mg/dl)</td>
                                                                    <td>
                                                                        <input name="hospitalExaminationXYkLightChain"
                                                                               id="hospitalExaminationXYkLightChain" type="text" class="cmSize"/>
                                                                    </td>
                                                                </tr>
                                                                <tr hidden id="trhospitalExaminationXYnLightChain">
                                                                    <td>λ轻链 (mg/dl)</td>
                                                                    <td>
                                                                        <input name="hospitalExaminationXYnLightChain" class="cmSize"
                                                                               id="hospitalExaminationXYnLightChain" type="text"/>
                                                                    </td>
                                                                </tr>
                                                                <tr hidden id="trhospitalExaminationXYknLightChain">
                                                                    <td>轻链κ/λ比值</td>
                                                                    <td>
                                                                        <input name="hospitalExaminationXYknLightChain" class="zsfSize"
                                                                               id="hospitalExaminationXYknLightChain" type="text"/>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td colspan="2">是否有尿M蛋白电泳检查</td>
                                                                </tr>
                                                                <tr>
                                                                    <td colspan="2">
                                                                        <label>
                                                                            <input value="1" type="radio" class="ace"
                                                                                   name="hospitalExaminationNStatus"
                                                                            />
                                                                            <span class="lbl">有。如果有，请在下表中填写结果</span>
                                                                        </label>
                                                                        <label>
                                                                            <input value="2" type="radio" class="ace"
                                                                                   name="hospitalExaminationNStatus"
                                                                            />
                                                                            <span class="lbl">没有</span>
                                                                        </label>
                                                                    </td>
                                                                </tr>
                                                                <tr hidden id="trHospitalExaminationNMkLightChain">
                                                                    <td>κ轻链 (mg/dl)</td>
                                                                    <td>
                                                                        <input name="hospitalExaminationNMkLightChain" class="cmSize"
                                                                               id="hospitalExaminationNMkLightChain"  type="text"/>
                                                                    </td>
                                                                </tr>
                                                                <tr hidden id="trHospitalExaminationNMnLightChain">
                                                                    <td>λ轻链 (mg/dl)</td>
                                                                    <td>
                                                                        <input name="hospitalExaminationNMnLightChain" class="cmSize"
                                                                               id="hospitalExaminationNMnLightChain"  type="text"/>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td >24小时尿蛋白定量：
                                                                    </td>
                                                                    <td>
                                                                        <input id="hospitalExaminationH24" class="cmSize"
                                                                               name="hospitalExaminationH24" type="text"/>(g/24h)
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td >M蛋白峰值：
                                                                    </td>
                                                                    <td>
                                                                        <input id="hospitalExaminationTopMP" class="zsxSize"
                                                                               name="hospitalExaminationTopMP" type="text"/>(%)
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td >M蛋白定量结果：
                                                                    </td>
                                                                    <td>
                                                                        <input id="hospitalExaminationMPResult" class="cmSize"
                                                                               name="hospitalExaminationMPResult" type="text"/>(g/L)
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td colspan="2">常规血生化检查</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>总蛋白(g/L)</td>
                                                                    <td>
                                                                        <div class="clearfix">
                                                                            <input type="text" id="hospitalTotalProtein" class="cmSize"
                                                                                   name="hospitalTotalProtein"/>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>白蛋白(g/L)</td>
                                                                    <td>
                                                                        <div class="clearfix">
                                                                            <input type="text" id="hospitalWhiteProtein" class="cmSize"
                                                                                   name="hospitalWhiteProtein"/>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>球蛋白(g/L)</td>
                                                                    <td>
                                                                        <div class="clearfix">
                                                                            <input type="text" id="hospitalGlobulinProtein" class="cmSize"
                                                                                   name="hospitalGlobulinProtein"/>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>谷丙转氨酶－丙氨酸转移酶(U/L)</td>
                                                                    <td>
                                                                        <div class="clearfix">
                                                                            <input type="text" id="hospitalAminotransferase" class="cmSize"
                                                                                   name="hospitalAminotransferase"/>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>谷草转氨酶－天门冬氨酸氨基转移酶(U/L)</td>
                                                                    <td>
                                                                        <div class="clearfix">
                                                                            <input type="text" id="hospitalAst" class="cmSize" name="hospitalAst"/>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>γ谷氨酰基转移酶(U/L)</td>
                                                                    <td>
                                                                        <div class="clearfix">
                                                                            <input type="text" id="hospitalGgt" class="cmSize"
                                                                                   name="hospitalGgt"/>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>乳酸脱氢酶(U/L)</td>
                                                                    <td>
                                                                        <div class="clearfix">
                                                                            <input type="text" id="hospitalLdh" class="cmSize"
                                                                                   name="hospitalLdh"/>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>尿素(mmol/L)</td>
                                                                    <td>
                                                                        <div class="clearfix">
                                                                            <input type="text" id="hospitalUrea" class="cmSize"
                                                                                   name="hospitalUrea"/>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>肌酐(umol/L)</td>
                                                                    <td>
                                                                        <div class="clearfix">
                                                                            <input type="text" id="hospitalCr" class="cmSize"
                                                                                   name="hospitalCr"/>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>钙(mmol/L)</td>
                                                                    <td>
                                                                        <div class="clearfix">
                                                                            <input type="text" id="hospitalCa" class="cmSize"
                                                                                   name="hospitalCa"/>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>碱性磷酸酶(U/L)</td>
                                                                    <td>
                                                                        <div class="clearfix">
                                                                            <input type="text" id="hospitalPhoshatase" class="cmSize"
                                                                                   name="hospitalPhoshatase"/>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>β2微球蛋白(mg/L)</td>
                                                                    <td>
                                                                        <div class="clearfix">
                                                                            <input type="text" id="hospitalBeta2GlobulinProtein" class="cmSize"
                                                                                   name="hospitalBeta2GlobulinProtein"/>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td colspan="2">血常规检查</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>白细胞(x10^9/L)</td>
                                                                    <td>
                                                                        <div class="clearfix">
                                                                            <input type="text" id="hospitalWhiteBloodCell" class="cmSize"
                                                                                   name="hospitalWhiteBloodCell"/>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>中性粒细胞(x10^9/L)</td>
                                                                    <td>
                                                                        <div class="clearfix">
                                                                            <input type="text" id="hospitalNeutrophils" class="cmSize"
                                                                                   name="hospitalNeutrophils"/>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>淋巴细胞(x10^9/L)</td>
                                                                    <td>
                                                                        <div class="clearfix">
                                                                            <input type="text" id="hospitalLymphocyte" class="cmSize"
                                                                                   name="hospitalLymphocyte"/>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>血红蛋白(g/L)</td>
                                                                    <td>
                                                                        <div class="clearfix">
                                                                            <input type="text" id="hospitalHemoglobin" class="cmSize"
                                                                                   name="hospitalHemoglobin"/>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>血小板计数(x10^9/L)</td>
                                                                    <td>
                                                                        <div class="clearfix">
                                                                            <input type="text" id="hospitalPlateletCount" class="cmSize"
                                                                                   name="hospitalPlateletCount"/>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                                </tbody>
                                                            </table>
                                                        </div>
                                                    </div>

                                                    <div class="form-group">
                                                        <div class="col-xs-12 col-sm-12">
                                                            <table class="table" id="gcccheckItemTable1">
                                                                <thead>
                                                                <tr style="background-color:#80be4a">
                                                                    <td colspan="3"><font color="#ffffff">4.本次住院骨髓穿刺涂片细胞学检查</font>
                                                                    </td>

                                                                </tr>
                                                                <tr>
                                                                    <td width="45%">浆细胞类型</td>
                                                                    <td width="40%">浆细胞比例</td>
                                                                    <td width="15%"></td>
                                                                </tr>
                                                                </thead>
                                                                <tbody>

                                                                <tr data-id="0" data-index="1">
                                                                    <td>所有浆细胞 (%)</td>
                                                                    <td><input type="text" id="jxb" class="zsxSize"/></td>
                                                                    <td></td>
                                                                </tr>
                                                                <tr data-id="0" data-index="2">
                                                                    <td>原浆细胞 (%)</td>
                                                                    <td><input type="text" id="yjxb1" class="zsxSize"/></td>
                                                                    <td></td>
                                                                </tr>
                                                                <tr data-id="0" data-index="3">
                                                                    <td>幼浆细胞 (%)</td>
                                                                    <td><input type="text" id="yjxb2" class="zsxSize"/></td>
                                                                    <td></td>
                                                                </tr>
                                                                <tr data-id="0" data-index="4">
                                                                    <td>中间浆细胞 (%)</td>
                                                                    <td><input type="text" id="zjxb1" class="zsxSize"/></td>
                                                                    <td></td>
                                                                </tr>
                                                                <tr data-id="0" data-index="5">
                                                                    <td>成熟浆细胞 (%)</td>
                                                                    <td><input type="text" id="csxb1" class="zsxSize"/></td>
                                                                    <td></td>
                                                                </tr>
                                                                <tr data-id="0" data-index="6">
                                                                    <td>其他:&nbsp;<input name="name" type="text"
                                                                                        style="width: 200px;"/></td>
                                                                    <td>
                                                                        <input name="other" type="text" id="other" class="zsxSize"/>
                                                                    </td>

                                                                    <td>
                                                                        <a style="cursor: pointer;"
                                                                           id="gccaddCheckItemBtn1"><i
                                                                                class="ace-icon fa fa-plus-circle"></i>新增</a>
                                                                    </td>
                                                                </tr>
                                                                </tbody>
                                                            </table>
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <div class="col-xs-12 col-sm-12">
                                                            <table class="table" id="YXXcheckItemTable">
                                                                <thead>
                                                                <tr style="background-color:#80be4a">
                                                                    <td colspan="4"><font color="#ffffff">5.本次住院全身骨骼影像学检查</font>
                                                                    </td>

                                                                </tr>
                                                                <tr>
                                                                    <td width="25%">检查项目</td>
                                                                    <td width="30%">溶骨性病变位置</td>
                                                                    <td width="30%">溶骨性病变数量</td>
                                                                    <td width="15%"></td>
                                                                </tr>
                                                                </thead>
                                                                <tbody>
                                                                <tr data-id="0" data-index="1">
                                                                    <td>X光</td>
                                                                    <td><textarea
                                                                            class="autosize-transition form-control"
                                                                            style="overflow: hidden; word-wrap: break-word; resize: horizontal;"></textarea>
                                                                    </td>
                                                                    <td><textarea
                                                                            class="autosize-transition form-control"  id="X1"
                                                                            style="overflow: hidden; word-wrap: break-word; resize: horizontal;"></textarea>
                                                                    </td>
                                                                    <td></td>
                                                                </tr>
                                                                <tr data-id="0" data-index="2">
                                                                    <td>CT</td>
                                                                    <td><textarea
                                                                            class="autosize-transition form-control"
                                                                            style="overflow: hidden; word-wrap: break-word; resize: horizontal;"></textarea>
                                                                    </td>
                                                                    <td><textarea
                                                                            class="autosize-transition form-control"  id="CT1"
                                                                            style="overflow: hidden; word-wrap: break-word; resize: horizontal;"></textarea>
                                                                    </td>
                                                                    <td></td>
                                                                </tr>
                                                                <tr data-id="0" data-index="3">
                                                                    <td>MRI</td>
                                                                    <td><textarea
                                                                            class="autosize-transition form-control"
                                                                            style="overflow: hidden; word-wrap: break-word; resize: horizontal;"></textarea>
                                                                    </td>
                                                                    <td><textarea
                                                                            class="autosize-transition form-control"  id="MRI1"
                                                                            style="overflow: hidden; word-wrap: break-word; resize: horizontal;"></textarea>
                                                                    </td>
                                                                    <td></td>
                                                                </tr>
                                                                <tr data-id="0" data-index="4">
                                                                    <td>PET-CT</td>
                                                                    <td><textarea
                                                                            class="autosize-transition form-control"
                                                                            style="overflow: hidden; word-wrap: break-word; resize: horizontal;"></textarea>
                                                                    </td>
                                                                    <td><textarea
                                                                            class="autosize-transition form-control"  id="PET1"
                                                                            style="overflow: hidden; word-wrap: break-word; resize: horizontal;"></textarea>
                                                                    </td>
                                                                    <td></td>
                                                                </tr>
                                                                <tr data-id="0" data-index="5">
                                                                    <td>同位素骨扫描</td>
                                                                    <td><textarea
                                                                            class="autosize-transition form-control"
                                                                            style="overflow: hidden; word-wrap: break-word; resize: horizontal;"></textarea>
                                                                    </td>
                                                                    <td><textarea
                                                                            class="autosize-transition form-control"  id="TWS1"
                                                                            style="overflow: hidden; word-wrap: break-word; resize: horizontal;"></textarea>
                                                                    </td>
                                                                    <td></td>
                                                                </tr>
                                                                <tr data-id="0" data-index="6">
                                                                    <td>其他:&nbsp;<input name="name" type="text"
                                                                                        style="width: 100px;"/></td>
                                                                    <td><textarea
                                                                            class="autosize-transition form-control"
                                                                            style="overflow: hidden; word-wrap: break-word; resize: horizontal;"></textarea>
                                                                    </td>
                                                                    <td><textarea
                                                                            class="autosize-transition form-control"  id="otherx"
                                                                            style="overflow: hidden; word-wrap: break-word; resize: horizontal;"></textarea>
                                                                    </td>
                                                                    <td>
                                                                        <a style="cursor: pointer;"
                                                                           id="YXXaddCheckItemBtn"><i
                                                                                class="ace-icon fa fa-plus-circle"></i>新增</a>
                                                                    </td>
                                                                </tr>
                                                                </tbody>
                                                            </table>
                                                        </div>
                                                    </div>

                                                    <div class="form-group">
                                                        <div class="col-xs-12 col-sm-12">
                                                            <table class="table" id="YXXcheckItemTable2">
                                                                <thead>
                                                                <tr style="background-color:#80be4a">
                                                                    <td colspan="4"><font color="#ffffff">6.本次住院全身软组织浆细胞瘤检查</font>
                                                                    </td>

                                                                </tr>
                                                                <tr>
                                                                    <td width="20%">检查项目</td>
                                                                    <td width="20%">病变位置</td>
                                                                    <td width="50%">占位大小</td>
                                                                    <td width="10%"></td>
                                                                </tr>
                                                                </thead>
                                                                <tbody>
                                                                <tr data-id="0" data-index="1">
                                                                    <td>CT</td>
                                                                    <td><textarea
                                                                            class="autosize-transition form-control"
                                                                            style="overflow: hidden; word-wrap: break-word; resize: horizontal;"></textarea>
                                                                    </td>
                                                                    <td><input type="text" class="cmSize" id="XCT1"/>cm * <input type="text" id="XCT2" class="cmSize"/>cm
                                                                    </td>
                                                                    <td></td>
                                                                </tr>
                                                                <tr data-id="0" data-index="2">
                                                                    <td>MRI</td>
                                                                    <td><textarea
                                                                            class="autosize-transition form-control"
                                                                            style="overflow: hidden; word-wrap: break-word; resize: horizontal;"></textarea>
                                                                    </td>
                                                                    <td><input type="text" class="cmSize" id="XMRI1"/>cm * <input type="text" id="XMRI2" class="cmSize"/>cm
                                                                    </td>
                                                                    <td></td>
                                                                </tr>
                                                                <tr data-id="0" data-index="3">
                                                                    <td>PET-CT</td>
                                                                    <td><textarea
                                                                            class="autosize-transition form-control"
                                                                            style="overflow: hidden; word-wrap: break-word; resize: horizontal;"></textarea>
                                                                    </td>
                                                                    <td><input type="text" class="cmSize" id="XPETCT1"/>cm * <input type="text" id="XPETCT2" class="cmSize"/>cm
                                                                    </td>
                                                                    <td></td>
                                                                </tr>
                                                                <tr data-id="0" data-index="4">
                                                                    <td>其他:&nbsp;<input name="name" type="text"
                                                                                        style="width: 100px;"/></td>
                                                                    <td><textarea
                                                                            class="autosize-transition form-control"
                                                                            style="overflow: hidden; word-wrap: break-word; resize: horizontal;"></textarea>
                                                                    </td>
                                                                    <td><input type="text" id="other1"/>cm * <input type="text" id="other2"/>cm
                                                                    </td>
                                                                    <td>
                                                                        <a style="cursor: pointer;"
                                                                           id="YXXaddCheckItemBtn2"><i
                                                                                class="ace-icon fa fa-plus-circle"></i>新增</a>
                                                                    </td>
                                                                </tr>
                                                                </tbody>
                                                            </table>
                                                        </div>
                                                    </div>

                                                    <div class="form-group">
                                                        <div class="col-xs-12 col-sm-12">
                                                            <table class="table">
                                                                <thead>
                                                                <tr style="background-color:#80be4a">
                                                                    <td colspan="2"><font
                                                                            color="#ffffff">7.疾病发展信息</font></td>

                                                                </tr>
                                                                </thead>
                                                                <tbody>
                                                                <tr>
                                                                    <td>是否发生髓外侵犯:</td>
                                                                    <td>
                                                                        <div>
                                                                            <label class="line-height-1  ">
                                                                                <input value="1" type="radio"
                                                                                       class="ace"
                                                                                       name="hospitalizedInvasionDiagnosis"
                                                                                        />
                                                                                <span class="lbl">是</span>
                                                                            </label>
                                                                            &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;
                                                                            <label class="line-height-1  ">
                                                                                <input value="2" type="radio"
                                                                                       class="ace"
                                                                                       name="hospitalizedInvasionDiagnosis"/>
                                                                                <span class="lbl">否</span>
                                                                            </label>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>Durie-Salmon分期法:</td>
                                                                    <td>
                                                                        <div>
                                                                            <label class=" ">
                                                                                <span class="lbl">I期:</span>
                                                                            </label>
                                                                            &nbsp; &nbsp;
                                                                            <label class=" ">
                                                                                <input value="1" type="radio"
                                                                                       class="ace"
                                                                                       name="HospitaledClinicalStagesDS"
                                                                                        />
                                                                                <span class="lbl">Ia期</span>
                                                                            </label>
                                                                            &nbsp; &nbsp;
                                                                            <label class=" ">
                                                                                <input value="2" type="radio"
                                                                                       class="ace"
                                                                                       name="HospitaledClinicalStagesDS"
                                                                                        />
                                                                                <span class="lbl">Ib期</span>
                                                                            </label>
                                                                            &nbsp; &nbsp;
                                                                            <label class=" ">
                                                                                <span class="lbl">II期:</span>
                                                                            </label>
                                                                            &nbsp; &nbsp;
                                                                            <label class=" ">
                                                                                <input value="3" type="radio"
                                                                                       class="ace"
                                                                                       name="HospitaledClinicalStagesDS"
                                                                                        />
                                                                                <span class="lbl">IIa期</span>
                                                                            </label>
                                                                            &nbsp; &nbsp;
                                                                            <label class=" ">
                                                                                <input value="4" type="radio"
                                                                                       class="ace"
                                                                                       name="HospitaledClinicalStagesDS"
                                                                                        />
                                                                                <span class="lbl">IIb期</span>
                                                                            </label>
                                                                            &nbsp; &nbsp;
                                                                            <label class=" ">
                                                                                <span class="lbl">III期:</span>
                                                                            </label>
                                                                            &nbsp; &nbsp;
                                                                            <label class=" ">
                                                                                <input value="5" type="radio"
                                                                                       class="ace"
                                                                                       name="HospitaledClinicalStagesDS"
                                                                                        />
                                                                                <span class="lbl">IIIa期</span>
                                                                            </label>
                                                                            &nbsp; &nbsp;
                                                                            <label class=" ">
                                                                                <input value="6" type="radio"
                                                                                       class="ace"
                                                                                       name="HospitaledClinicalStagesDS"
                                                                                        />
                                                                                <span class="lbl">IIIb期</span>
                                                                            </label>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>ISS国际分期系统:</td>
                                                                    <td>
                                                                        <div>
                                                                            <label class=" ">
                                                                                <input value="1" type="radio"
                                                                                       class="ace"
                                                                                       name="hospitaledClinicalStagesISS"
                                                                                        />
                                                                                <span class="lbl">I期</span>
                                                                            </label>
                                                                            &nbsp; &nbsp;
                                                                            <label class=" ">
                                                                                <input value="2" type="radio"
                                                                                       class="ace"
                                                                                       name="hospitaledClinicalStagesISS"
                                                                                        />
                                                                                <span class="lbl">II期</span>
                                                                            </label>
                                                                            &nbsp; &nbsp;
                                                                            <label class=" ">
                                                                                <input value="3" type="radio"
                                                                                       class="ace"
                                                                                       name="hospitaledClinicalStagesISS"
                                                                                        />
                                                                                <span class="lbl">III期</span>
                                                                            </label>

                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                                </tbody>
                                                            </table>
                                                        </div>
                                                    </div>

                                                    <div class="form-group">
                                                        <div class="col-xs-12 col-sm-12">
                                                            <table class="table">
                                                                <thead>
                                                                <tr style="background-color:#80be4a">
                                                                    <td colspan="3"><font
                                                                            color="#ffffff">8.住院治疗信息</font></td>

                                                                </tr>
                                                                </thead>
                                                                <tbody>
                                                                <tr>
                                                                    <td>自体干细胞移植治疗:</td>
                                                                    <td width="35%">
                                                                        <label class="line-height-1  ">
                                                                            <input value="1" type="radio" class="ace"
                                                                                   name="hostipalstemcelltransplantation"
                                                                                    />
                                                                            <span class="lbl">是</span>
                                                                        </label>
                                                                        &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;
                                                                        <label class="line-height-1  ">
                                                                            <input value="2" type="radio" class="ace"
                                                                                   name="hostipalstemcelltransplantation"/>
                                                                            <span class="lbl">否</span>
                                                                        </label>
                                                                    </td>
                                                                    <td hidden id="hostipalstemcelltransplantationDateDiv"  width="35%">
                                                                        <div class="input-group">
                                                                            移植日期：
                                                                            <span class="input-group-addon">
                                                                                <i class="ace-icon fa fa-calendar"></i>
                                                                                </span>
                                                                            <input type="text"
                                                                                   id="hostipalstemcelltransplantationDate"
                                                                                   name="hostipalstemcelltransplantationDate"
                                                                                   class="form-control text-150 dataDay"/>
                                                                                &nbsp;&nbsp;
                                                                            <span>
                                                                                    (格式:yyyy-mm-dd)
                                                                                </span>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td width="30%">药物治疗方案</td>
                                                                    <td width="70%" colspan="2">
                                                                        <textarea id="hospitalCurePlanTA"
                                                                                class="autosize-transition form-control"
                                                                                style="overflow: hidden; word-wrap: break-word; resize: horizontal;"></textarea>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td width="30%">治疗方案所属治疗阶段</td>
                                                                    <td width="70%" colspan="2">
                                                                        <select id="hospitalCurePlanStep"
                                                                                name="hospitalCurePlanStep"
                                                                                data-placeholder="">
                                                                            <option value="0" selected>未选择</option>
                                                                            <option value="1">诱导治疗
                                                                            </option>
                                                                            <option value="2">干细胞治疗后的巩固治疗</option>
                                                                            <option value="3">一线治疗</option>
                                                                            <option value="4">一线治疗后的维持治疗</option>
                                                                            <option value="5">二线治疗</option>
                                                                            <option value="6">三线治疗</option>
                                                                            <option value="7">其他</option>
                                                                        </select>
                                                                            <label hidden
                                                                                    class="divHCurePlanStepOther control-label no-padding-right"
                                                                                    for="estimateResultOtherLabel" >请注明:</label>
                                                                            <input type="text" id="hospitalCurePlanStepOther" hidden
                                                                                class="divHCurePlanStepOther"   name="hospitalCurePlanStepOther" />
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td width="30%">该次治疗属于治疗方案第几周期</td>
                                                                    <td width="70%" colspan="2">
                                                                        <input id="hospitalCureCycle"
                                                                                  class=" form-control"
                                                                                  />
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>是否变更方案及原因</td>
                                                                    <td colspan="2">
                                                                        <div>
                                                                            <label class=" ">
                                                                                <input value="1" type="radio"
                                                                                       class="ace" name="changeCurePlan" id="changeCurePlan"
                                                                                        />
                                                                                <span class="lbl">是</span>
                                                                            </label>
                                                                            &nbsp; &nbsp;
                                                                            <label class=" ">
                                                                                <input value="2" type="radio"
                                                                                       class="ace" name="changeCurePlan"
                                                                                        />
                                                                                <span class="lbl">否</span>
                                                                            </label>
                                                                            </br>
                                                                            <div hidden id="changePlanReasonDiv">
                                                                            <label>变更方案的原因:</label>

                                                                            <div><input type="text" id="changePlanReason"
                                                                                        name="changePlanReason"
                                                                                        class="full-width"/>
                                                                            </div>
                                                                            </br>
                                                                            <label>变更后的方案为:</label>

                                                                            <div><input type="text" name="curePlanAlter"
                                                                                        id="curePlanAlter"    class="full-width"/></div>

                                                                            </br>
                                                                    <label>方案变更后的阶段定义:</label>
                                                                            </br>
                                                                        <select id="changeCurePlanStep"
                                                                                name="changeCurePlanStep"
                                                                                data-placeholder="">
                                                                            <option value="0" selected>未选择</option>
                                                                            <option value="1">诱导治疗
                                                                            </option>
                                                                            <option value="2">干细胞治疗后的巩固治疗</option>
                                                                            <option value="3">一线治疗</option>
                                                                            <option value="4">一线治疗后的维持治疗</option>
                                                                            <option value="5">二线治疗</option>
                                                                            <option value="6">三线治疗</option>
                                                                            <option value="7">其他</option>
                                                                        </select>
                                                                        <label hidden
                                                                               class="divCCurePlanStepOther control-label no-padding-right"
                                                                               for="estimateResultOtherLabel" >请注明:</label>
                                                                        <input type="text" id="changeCurePlanStepOther" hidden
                                                                               class="divCCurePlanStepOther"   name="changeCurePlanStepOther" />
                                                                        </div>
                                                                </tr>
                                                                </tbody>
                                                            </table>
                                                        </div>
                                                    </div>

                                                    <div class="form-group">
                                                        <div class="col-xs-12 col-sm-12">
                                                            <table class="table" id="HLYWInfoTable">
                                                                <thead>
                                                                <tr style="background-color:#80be4a">
                                                                    <td colspan="7"><font
                                                                            color="#ffffff">9.化疗药物信息</font></td>

                                                                </tr>
                                                                <tr>
                                                                    <td width="5%">编号</td>
                                                                    <th width="20%">药品名</th>
                                                                    <th width="20%">每次给药剂量</th>
                                                                    <th width="15%">剂量单位</th>
                                                                    <th width="15%">用药频率</th>
                                                                    <th width="15%">是否院外购药</th>
                                                                    <td width="10%"></td>
                                                                </tr>
                                                                </thead>
                                                                <tbody>

                                                                <tr data-id="0" data-index="1">
                                                                    <th scope="row">1</th>
                                                                    <td colspan="1">
                                                                        <div   style="position:relative;">
                                                                            <span   style="margin-left:188px;width:18px;overflow:hidden;">
                                                                                <select id="followupChemotherapyItemName" data-placeholder="" name="name"
                                                                                       class="select2-300" style="width:200px;margin-left:-188px"  onchange="setSecond($(this))">
                                                                                    <option value="" selected></option>
                                                                                    <option value="硼替佐米">硼替佐米</option>
                                                                                    <option value="地塞米松">地塞米松</option>
                                                                                    <option value="表柔比星">表柔比星</option>
                                                                                    <option value="吡柔比星">吡柔比星</option>
                                                                                    <option value="沙利度胺">沙利度胺</option>
                                                                                    <option value="来那度胺">来那度胺</option>
                                                                                    <option value="马法兰">马法兰</option>
                                                                                    <option value="多柔比星">多柔比星</option>
                                                                                    <option value="顺铂">顺铂</option>
                                                                                    <option value="环磷酰胺">环磷酰胺</option>
                                                                                    <option value="泼尼松">泼尼松</option> </select>
                                                                            </span>
                                                                            <input  id="followupChemotherapyName" name="name"  type="text" style="width:170px;height:100%;position:absolute;left:0px;">
                                                                    </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="clearfix">
                                                                            <input type="text" name="amount"
                                                                                   style="width: 100%"/>
                                                                        </div>
                                                                    </td>
                                                                    <td colspan="1">
                                                                        <div   style="position:relative;">
                                                                            <span   style="margin-left:188px;width:18px;overflow:hidden;">
                                                                                <select id="consumptionSize" name="consumptionSize"data-placeholder=""
                                                                                        class="select2-300" style="width:200px;margin-left:-188px;" onchange="setSize($(this))" >
                                                                                    <option value=""></option>
                                                                                    <option value="mg">mg</option>
                                                                                    <option value="mg/m2">mg/m2</option>
                                                                                    <option value="mg/kg">mg/kg</option>
                                                                                    <option value="g">g</option>
                                                                                </select>
                                                                            </span>
                                                                            <input name="consumptionSize" id="consumptSize" type="text" style="width:80px;height:100%;position:absolute;left:0px;"/>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="clearfix">
                                                                            <input type="text" name="feq"
                                                                                   style="width: 100%"/>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <label>
                                                                            <input value="1" type="radio" class="ace"
                                                                                   name="isOuter11"
                                                                                    />
                                                                            <span class="lbl">是</span>
                                                                        </label>
                                                                        <label>
                                                                            <input value="2" type="radio" class="ace"
                                                                                   name="isOuter11"
                                                                                    />
                                                                            <span class="lbl">否</span>
                                                                        </label>
                                                                    </td>
                                                                    <td>
                                                                        <a style="cursor: pointer;" id="addMedBtn"><i
                                                                                class="ace-icon fa fa-plus-circle"></i>新增</a>
                                                                    </td>
                                                                </tr>
                                                                </tbody>
                                                            </table>
                                                        </div>
                                                    </div>

                                                    <div class="form-group">
                                                        <div class="col-xs-12 col-sm-12">
                                                            <table class="table" id="HLYWInfoTable2">
                                                                <thead>
                                                                <tr style="background-color:#80be4a">
                                                                    <td colspan="7"><font
                                                                            color="#ffffff">10.对症支持治疗信息</font></td>

                                                                </tr>
                                                                <tr>
                                                                    <td width="6%">编号</td>
                                                                    <td width="30%">药物治疗/非药物治疗</td>
                                                                    <td width="10%">用药剂量</td>
                                                                    <td width="10%">用药频率</td>
                                                                    <td width="23%">药物适应症</td>
                                                                    <td width="13%">是否院外购置</td>
                                                                    <td width="8%"></td>
                                                                </tr>
                                                                </thead>
                                                                <tbody>

                                                                <tr data-id="0" data-index="1">
                                                                    <td scope="row">1</td>
                                                                    <td>
                                                                        <div class="clearfix">
                                                                            <input type="text" name="name"
                                                                                   style="width: 100%"/>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="clearfix">
                                                                            <input type="text" name="amount"
                                                                                   style="width: 100%"/>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="clearfix">
                                                                            <input type="text" name="feq"
                                                                                   style="width: 100%"/>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="clearfix">
                                                                            <input type="text" name="shiying"
                                                                                   style="width: 100%"/>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <label>
                                                                            <input value="1" type="radio" class="ace"
                                                                                   name="isOuter21"
                                                                                    />
                                                                            <span class="lbl">是</span>
                                                                        </label>
                                                                        <label>
                                                                            <input value="2" type="radio" class="ace"
                                                                                   name="isOuter21"
                                                                                    />
                                                                            <span class="lbl">否</span>
                                                                        </label>
                                                                    </td>
                                                                    <td>
                                                                        <a style="cursor: pointer;" id="addMedBtn2"><i
                                                                                class="ace-icon fa fa-plus-circle"></i>新增</a>
                                                                    </td>
                                                                </tr>
                                                                </tbody>
                                                            </table>
                                                        </div>
                                                    </div>

                                                    <div class="form-group">
                                                        <div class="col-xs-12 col-sm-12">
                                                            <table class="table">
                                                                <thead>
                                                                <tr style="background-color:#80be4a">
                                                                    <td colspan="7"><font
                                                                            color="#ffffff">11.疗效评估信息</font></td>

                                                                </tr>
                                                                </thead>
                                                                <tbody>
                                                                <tr>
                                                                    <td width="30%">该次住院是否进行疗效评估</td>
                                                                    <td width="70">
                                                                        <label class=" ">
                                                                            <input value="1" type="radio"
                                                                                   class="ace"
                                                                                   name="HospitaledEvaluateAfterCure"
                                                                                    />
                                                                            <span class="lbl">是</span>
                                                                        </label>
                                                                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                                                        <label class=" ">
                                                                            <input value="2" type="radio"
                                                                                   class="ace"
                                                                                   name="HospitaledEvaluateAfterCure"/>
                                                                            <span class="lbl">否</span>
                                                                        </label>
                                                                    </td>
                                                                </tr>
                                                                <tr id="trHospitaledEvaluateRule" hidden>
                                                                    <td>疗效评估的标准</td>
                                                                    <td>
                                                                        <label class=" ">
                                                                            <input value="1" type="radio"
                                                                                   class="ace"
                                                                                   name="hospitaledEvaluateRule"
                                                                                    />
                                                                            <span class="lbl">IMWG</span>
                                                                        </label>
                                                                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                                                        <label class=" ">
                                                                            <input value="2" type="radio"
                                                                                   class="ace"
                                                                                   name="hospitaledEvaluateRule"/>
                                                                            <span class="lbl">其他:</span>
                                                                            <input type="text" name="evaluateRuleOther"
                                                                                   id="evaluateRuleOther"
                                                                                   style="width: 300px"/>
                                                                        </label>
                                                                    </td>
                                                                </tr>
                                                                <tr id="trEvaluateResult" hidden>
                                                                    <td>疗效评估结果</td>
                                                                    <td>
                                                                        <select id="evaluateResult"
                                                                                name="evaluateResult"
                                                                                data-placeholder="">
                                                                            <option value="0" selected>未选择</option>
                                                                            <option value="1">0.MCR(分子学完全缓解)
                                                                            </option>
                                                                            <option value="2">1.ICR(免疫学完全缓解)</option>
                                                                            <option value="3">2.sCR(严格完全缓解)</option>
                                                                            <option value="4">3.CR(完全缓解)</option>
                                                                            <option value="5">4.VGPR (很好的部分缓解)
                                                                            </option>
                                                                            <option value="6">5.PR(部分缓解)</option>
                                                                            <option value="7">6.MR(微小缓解)</option>
                                                                            <option value="8">7.SD(疾病稳定)</option>
                                                                            <option value="9">8.PD(疾病进展)</option>
                                                                            <option value="10">9.其他</option>
                                                                        </select>
                                                                        <label id="evaluateResultOtherLabel"
                                                                               for="evaluateResultOther"
                                                                               hidden>请注明:</label>
                                                                        <input type="text" id="evaluateResultOther"
                                                                               name="evaluateResultOther" hidden/>
                                                                    </td>
                                                                </tr>
                                                                </tbody>
                                                            </table>
                                                        </div>
                                                    </div>

                                                    <div class="form-group">
                                                        <div class="col-xs-12 col-sm-12">
                                                            <table class="table">
                                                                <thead>
                                                                <tr style="background-color:#80be4a">
                                                                    <td colspan="2"><font
                                                                            color="#ffffff">12.患者本次住院生存状态</font></td>

                                                                </tr>
                                                                </thead>
                                                                <tbody>
                                                                <tr>
                                                                    <td width="30%">患者生存状态</td>
                                                                    <td width="70%">
                                                                        <div>
                                                                            <label class=" ">
                                                                                <input value="1" type="radio"
                                                                                       class="ace" name="hospitaledLivingState"
                                                                                        />
                                                                                <span class="lbl">生存</span>
                                                                            </label>
                                                                            &nbsp; &nbsp;
                                                                            <label class=" ">
                                                                                <input value="2" type="radio"
                                                                                       class="ace" name="hospitaledLivingState"
                                                                                        />
                                                                                <span class="lbl">死亡</span>
                                                                            </label>
                                                                            </br>
                                                                            <label class="livingDeathGroup">死亡时间:</label>

                                                                            <div class="input-group livingDeathGroup">
                                                                                    <span class="input-group-addon">
                                                                                        <i class="ace-icon fa fa-calendar"></i>
                                                                                    </span>
                                                                                <input type="text" id="hospitaledDeathDate"
                                                                                       name="hospitaledDeathDate"
                                                                                       class="form-control text-300 dataDay"
                                                                                       data-date-format="yyyy-mm-dd"/>
                                                                            </div>
                                                                            </br>
                                                                            <label class="livingDeathGroup">死亡原因:</label>

                                                                            <div><input type="text"  id="hospitaledDeathReason" name="hospitaledDeathReason"
                                                                                        class="full-width livingDeathGroup"/></div>

                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                                </tbody>
                                                            </table>
                                                        </div>
                                                    </div>

                                                    <div class="form-group">
                                                        <div class="col-xs-12 col-sm-13">
                                                            <table class="table" id="badInformationTable">
                                                                <thead>
                                                                <tr style="background-color:#80be4a">
                                                                    <td><font color="#ffffff">13.不良事件信息</font></td>
                                                                    <td>
                                                                        <button type="button" id="addbadBtn"
                                                                                disabled class="btn btn-primary">
                                                                            <i class="ace-icon fa fa-plus-circle"></i>
                                                                            新增不良事件信息
                                                                        </button>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td width="25%">本次住院是否纪录不良事件</td>
                                                                    <td width="65%">
                                                                        <label class=" ">
                                                                            <input value="1" type="radio"
                                                                                   class="ace"
                                                                                   name="badInformationStatus"/>
                                                                            <span class="lbl">是(在下面注明每个不良事件)</span>
                                                                        </label>
                                                                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                                                        <label class=" ">
                                                                            <input value="2" type="radio"
                                                                                   class="ace"
                                                                                   name="badInformationStatus"/>
                                                                            <span class="lbl">否</span>
                                                                        </label>
                                                                    </td>
                                                                </tr>
                                                                </thead>
                                                                <tbody>
                                                                <tr hidden class="trbadMessage" id="trBadAccordion1" data-id="0" data-index="1">
                                                                    <td colspan="2">
                                                                        <div class="panel panel-default">
                                                                            <div class="panel-heading">
                                                                                <h4 class="panel-title">
                                                                                    <a data-toggle="collapse"
                                                                                       data-parent="#trBadAccordion1"
                                                                                       href="#badAccordion1">
                                                                                        第1条不良事件信息
                                                                                    </a>
                                                                                </h4>
                                                                            </div>
                                                                        </div>
                                                                        <div id="badAccordion1"
                                                                             class="panel-collapse collapse in">
                                                                            <div class="panel-body">
                                                                                <div class="form-group">
                                                                                    <label class="control-label col-xs-12 col-sm-3 no-padding-right">不良事件名称:</label>
                                                                                    <div class="col-xs-12 col-sm-9">
                                                                                        <div class="clearfix">
                                                                                            <input type="text" name="badinformationName"
                                                                                                   class="text-300"/>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="form-group">
                                                                                    <label class="control-label col-xs-12 col-sm-3 no-padding-right">纪录日期:</label>
                                                                                    <div class="col-xs-12 col-sm-9">
                                                                                        <div class="input-group">
                                                                                                <span class="input-group-addon">
                                                                                                        <i class="ace-icon fa fa-calendar"></i>
                                                                                                </span>

                                                                                            <input type="text"
                                                                                                   name="badinformationDate"
                                                                                                   class="form-control text-265 dataDay"/>
                                                                                            &nbsp;&nbsp;
                                                                                            <span>
                                                                                                    (格式:yyyy-mm-dd)
                                                                                                </span>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="form-group">
                                                                                    <label class="control-label col-xs-12 col-sm-3 no-padding-right">严重程度评估:</label>

                                                                                    <div class="col-xs-12 col-sm-9">
                                                                                        <div class="clearfix">
                                                                                            <label class=" ">
                                                                                                <input value="1"
                                                                                                       type="radio"
                                                                                                       class="ace badinformationLevel"
                                                                                                       name="yanzhongStatus"
                                                                                                        />
                                                                                                <span class="lbl">轻度</span>
                                                                                            </label>
                                                                                            &nbsp; &nbsp; &nbsp; &nbsp;
                                                                                            &nbsp;
                                                                                            <label class=" ">
                                                                                                <input value="2"
                                                                                                       type="radio"
                                                                                                       class="ace badinformationLevel"
                                                                                                       name="yanzhongStatus"/>
                                                                                                <span class="lbl">中度</span>
                                                                                            </label>
                                                                                            &nbsp; &nbsp; &nbsp; &nbsp;
                                                                                            &nbsp;
                                                                                            <label class=" ">
                                                                                                <input value="3"
                                                                                                       type="radio"
                                                                                                       class="ace badinformationLevel"
                                                                                                       name="yanzhongStatus"/>
                                                                                                <span class="lbl">重度</span>
                                                                                            </label>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="form-group">
                                                                                    <label class="control-label col-xs-12 col-sm-3 no-padding-right">是否采用CTE-AE
                                                                                        3.0评估:</label>

                                                                                    <div class="col-xs-12 col-sm-9">
                                                                                        <label class=" ">
                                                                                            <input value="1"
                                                                                                   type="radio"
                                                                                                   class="ace badinformationCctaeStatus"
                                                                                                   name="cteaeStatus"
                                                                                                    />
                                                                                            <span class="lbl">是</span>
                                                                                        </label>
                                                                                        &nbsp; &nbsp; &nbsp; &nbsp;
                                                                                        &nbsp;
                                                                                        <label class=" ">
                                                                                            <input value="2"
                                                                                                   type="radio"
                                                                                                   class="ace badinformationCctaeStatus"
                                                                                                   name="cteaeStatus"/>
                                                                                            <span class="lbl">否</span>
                                                                                        </label>
                                                                                        &nbsp; &nbsp; &nbsp; &nbsp;
                                                                                        &nbsp;
                                                                                        <label class=" ">
                                                                                            <input value="3"
                                                                                                   type="radio"
                                                                                                   class="ace badinformationCctaeStatus"
                                                                                                   name="cteaeStatus"/>
                                                                                            <span class="lbl">未知</span>
                                                                                        </label>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="form-group" hidden
                                                                                     id="divcteaeStatuslevel">
                                                                                    <label class="control-label col-xs-12 col-sm-3 no-padding-right">请勾选级别</label>

                                                                                    <div class="col-xs-12 col-sm-9">
                                                                                        <label class=" ">
                                                                                            <input value="1"
                                                                                                   type="radio"
                                                                                                   class="ace badinformationCctaeLevel"
                                                                                                   name="cteaeStatuslevel"
                                                                                                    />
                                                                                            <span class="lbl">1</span>
                                                                                        </label>
                                                                                        &nbsp; &nbsp; &nbsp; &nbsp;
                                                                                        &nbsp;
                                                                                        <label class=" ">
                                                                                            <input value="2"
                                                                                                   type="radio"
                                                                                                   class="ace badinformationCctaeLevel"
                                                                                                   name="cteaeStatuslevel"/>
                                                                                            <span class="lbl">2</span>
                                                                                        </label>
                                                                                        &nbsp; &nbsp; &nbsp; &nbsp;
                                                                                        &nbsp;
                                                                                        <label class=" ">
                                                                                            <input value="3"
                                                                                                   type="radio"
                                                                                                   class="ace badinformationCctaeLevel"
                                                                                                   name="cteaeStatuslevel"/>
                                                                                            <span class="lbl">3</span>
                                                                                        </label>
                                                                                        &nbsp; &nbsp; &nbsp; &nbsp;
                                                                                        &nbsp;
                                                                                        <label class=" ">
                                                                                            <input value="4"
                                                                                                   type="radio"
                                                                                                   class="ace badinformationCctaeLevel"
                                                                                                   name="cteaeStatuslevel"/>
                                                                                            <span class="lbl">4</span>
                                                                                        </label>
                                                                                        &nbsp; &nbsp; &nbsp; &nbsp;
                                                                                        &nbsp;
                                                                                        <label class=" ">
                                                                                            <input value="5"
                                                                                                   type="radio"
                                                                                                   class="ace badinformationCctaeLevel"
                                                                                                   name="cteaeStatuslevel"/>
                                                                                            <span class="lbl">5</span>
                                                                                        </label>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="form-group">
                                                                                    <label class="control-label col-xs-12 col-sm-3 no-padding-right">与当前治疗药物的关系:</label>

                                                                                    <div class="col-xs-12 col-sm-9">
                                                                                        <div class="clearfix">
                                                                                            <label class=" ">
                                                                                                <input value="1"
                                                                                                       type="radio"
                                                                                                       class="ace badinformationMedicineRealation"
                                                                                                       name="guanxiStatus"
                                                                                                        />
                                                                                                <span class="lbl">无关</span>
                                                                                            </label>
                                                                                            &nbsp; &nbsp; &nbsp; &nbsp;
                                                                                            &nbsp;
                                                                                            <label class=" ">
                                                                                                <input value="2"
                                                                                                       type="radio"
                                                                                                       class="ace badinformationMedicineRealation"
                                                                                                       name="guanxiStatus"/>
                                                                                                <span class="lbl">可能无关</span>
                                                                                            </label>
                                                                                            &nbsp; &nbsp; &nbsp; &nbsp;
                                                                                            &nbsp;
                                                                                            <label class=" ">
                                                                                                <input value="3"
                                                                                                       type="radio"
                                                                                                       class="ace badinformationMedicineRealation"
                                                                                                       name="guanxiStatus"/>
                                                                                                <span class="lbl">可能有关</span>
                                                                                            </label>
                                                                                            &nbsp; &nbsp; &nbsp; &nbsp;
                                                                                            &nbsp;
                                                                                            <label class=" ">
                                                                                                <input value="4"
                                                                                                       type="radio"
                                                                                                       class="ace badinformationMedicineRealation"
                                                                                                       name="guanxiStatus"/>
                                                                                                <span class="lbl">很可能有关</span>
                                                                                            </label>
                                                                                            &nbsp; &nbsp; &nbsp; &nbsp;
                                                                                            &nbsp;
                                                                                            <label class=" ">
                                                                                                <input value="5"
                                                                                                       type="radio"
                                                                                                       class="ace badinformationMedicineRealation"
                                                                                                       name="guanxiStatus"/>
                                                                                                <span class="lbl">有关</span>
                                                                                            </label>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="form-group">
                                                                                    <label class="control-label col-xs-12 col-sm-3 no-padding-right">与当前非治疗药物的关系:</label>

                                                                                    <div class="col-xs-12 col-sm-9">
                                                                                        <label class=" ">
                                                                                            <input value="1"
                                                                                                   type="radio"
                                                                                                   class="ace badinformationNonMedicineRealation"
                                                                                                   name="guanxifeiStatus"
                                                                                                    />
                                                                                            <span class="lbl">无关</span>
                                                                                        </label>
                                                                                        &nbsp; &nbsp; &nbsp; &nbsp;
                                                                                        &nbsp;
                                                                                        <label class=" ">
                                                                                            <input value="2"
                                                                                                   type="radio"
                                                                                                   class="ace badinformationNonMedicineRealation"
                                                                                                   name="guanxifeiStatus"/>
                                                                                            <span class="lbl">可能无关</span>
                                                                                        </label>
                                                                                        &nbsp; &nbsp; &nbsp; &nbsp;
                                                                                        &nbsp;
                                                                                        <label class=" ">
                                                                                            <input value="3"
                                                                                                   type="radio"
                                                                                                   class="ace badinformationNonMedicineRealation"
                                                                                                   name="guanxifeiStatus"/>
                                                                                            <span class="lbl">可能有关</span>
                                                                                        </label>
                                                                                        &nbsp; &nbsp; &nbsp; &nbsp;
                                                                                        &nbsp;
                                                                                        <label class=" ">
                                                                                            <input value="4"
                                                                                                   type="radio"
                                                                                                   class="ace badinformationNonMedicineRealation"
                                                                                                   name="guanxifeiStatus"/>
                                                                                            <span class="lbl">很可能有关</span>
                                                                                        </label>
                                                                                        &nbsp; &nbsp; &nbsp; &nbsp;
                                                                                        &nbsp;
                                                                                        <label class=" ">
                                                                                            <input value="5"
                                                                                                   type="radio"
                                                                                                   class="ace badinformationNonMedicineRealation"
                                                                                                   name="guanxifeiStatus"/>
                                                                                            <span class="lbl">有关</span>
                                                                                        </label>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="form-group">
                                                                                    <label class="control-label col-xs-12 col-sm-3 no-padding-right">特殊情况:</label>

                                                                                    <div class="col-xs-12 col-sm-9">
                                                                                        <label class=" ">
                                                                                            <input value="1"
                                                                                                   type="radio"
                                                                                                   class="ace badinformationSpecialInformation"
                                                                                                   name="teshuStatus"
                                                                                                    />
                                                                                            <span class="lbl">杨森药品剂量过大</span>
                                                                                        </label>
                                                                                        &nbsp; &nbsp; &nbsp; &nbsp;
                                                                                        &nbsp;
                                                                                        <label class=" ">
                                                                                            <input value="2"
                                                                                                   type="radio"
                                                                                                   class="ace badinformationSpecialInformation"
                                                                                                   name="teshuStatus"/>
                                                                                            <span class="lbl">哺乳期杨森研究药品暴露</span>
                                                                                        </label>
                                                                                        &nbsp; &nbsp; &nbsp; &nbsp;
                                                                                        &nbsp;
                                                                                        <label class=" ">
                                                                                            <input value="3"
                                                                                                   type="radio"
                                                                                                   class="ace badinformationSpecialInformation"
                                                                                                   name="teshuStatus"/>
                                                                                            <span class="lbl">怀疑滥用/误用杨森药品</span>
                                                                                        </label>
                                                                                        &nbsp; &nbsp; &nbsp; &nbsp;
                                                                                        &nbsp;
                                                                                        <label class=" ">
                                                                                            <input value="4"
                                                                                                   type="radio"
                                                                                                   class="ace badinformationSpecialInformation"
                                                                                                   name="teshuStatus"/>
                                                                                            <span class="lbl">无意或意外接触到杨森研究药品</span>
                                                                                        </label>
                                                                                        &nbsp; &nbsp; &nbsp; &nbsp;
                                                                                        &nbsp;
                                                                                        <label class=" ">
                                                                                            <input value="5"
                                                                                                   type="radio"
                                                                                                   class="ace badinformationSpecialInformation"
                                                                                                   name="teshuStatus"/>
                                                                                            <span class="lbl">杨森研究药品任何预期的药理作用的失败（如缺乏效果）</span>
                                                                                        </label>
                                                                                        &nbsp; &nbsp; &nbsp; &nbsp;
                                                                                        &nbsp;
                                                                                        <label class=" ">
                                                                                            <input value="6"
                                                                                                   type="radio"
                                                                                                   class="ace badinformationSpecialInformation"
                                                                                                   name="teshuStatus"/>
                                                                                            <span class="lbl">使用杨森研究药品获得非预期的药理作用或临床疗效</span>
                                                                                        </label>
                                                                                        &nbsp; &nbsp; &nbsp; &nbsp;
                                                                                        &nbsp;
                                                                                        <label class=" ">
                                                                                            <input value="7"
                                                                                                   type="radio"
                                                                                                   class="ace badinformationSpecialInformation"
                                                                                                   name="teshuStatus"/>
                                                                                            <span class="lbl">涉及药物的药物错投（有或没有病人使用杨森研究药品，如药品混淆）</span>
                                                                                        </label>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="form-group">
                                                                                    <label class="control-label col-xs-12 col-sm-3 no-padding-right">妊娠异常情况:</label>

                                                                                    <div class="col-xs-12 col-sm-9">
                                                                                        <label class=" ">
                                                                                            <input value="1"
                                                                                                   type="radio"
                                                                                                   class="ace badinformationPregnant"
                                                                                                   name="huaiyunStatus"
                                                                                                    />
                                                                                            <span class="lbl">流产</span>
                                                                                        </label>
                                                                                        &nbsp; &nbsp; &nbsp; &nbsp;
                                                                                        &nbsp;
                                                                                        <label class=" ">
                                                                                            <input value="2"
                                                                                                   type="radio"
                                                                                                   class="ace badinformationPregnant"
                                                                                                   name="huaiyunStatus"/>
                                                                                            <span class="lbl">胎儿死亡</span>
                                                                                        </label>
                                                                                        &nbsp; &nbsp; &nbsp; &nbsp;
                                                                                        &nbsp;
                                                                                        <label class=" ">
                                                                                            <input value="3"
                                                                                                   type="radio"
                                                                                                   class="ace badinformationPregnant"
                                                                                                   name="huaiyunStatus"/>
                                                                                            <span class="lbl">死胎</span>
                                                                                        </label>
                                                                                        &nbsp; &nbsp; &nbsp; &nbsp;
                                                                                        &nbsp;
                                                                                        <label class=" ">
                                                                                            <input value="4"
                                                                                                   type="radio"
                                                                                                   class="ace badinformationPregnant"
                                                                                                   name="huaiyunStatus"/>
                                                                                            <span class="lbl">先天性异常</span>
                                                                                        </label>
                                                                                        &nbsp; &nbsp; &nbsp; &nbsp;
                                                                                        &nbsp;
                                                                                        <label class=" ">
                                                                                            <input value="5"
                                                                                                   type="radio"
                                                                                                   class="ace badinformationPregnant"
                                                                                                   name="huaiyunStatus"/>
                                                                                            <span class="lbl">异位妊娠</span>
                                                                                        </label>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="form-group">
                                                                                    <label class="control-label col-xs-12 col-sm-3 no-padding-right">受试者转归:</label>

                                                                                    <div class="col-xs-12 col-sm-9">
                                                                                        <label class=" ">
                                                                                            <input value="1"
                                                                                                   type="radio"
                                                                                                   class="ace badinformationOutcomeOfSubjects"
                                                                                                   name="zhuanguiStatus"
                                                                                                    />
                                                                                            <span class="lbl">恢复</span>
                                                                                        </label>
                                                                                        &nbsp; &nbsp; &nbsp; &nbsp;
                                                                                        &nbsp;
                                                                                        <label class=" ">
                                                                                            <input value="2"
                                                                                                   type="radio"
                                                                                                   class="ace badinformationOutcomeOfSubjects"
                                                                                                   name="zhuanguiStatus"/>
                                                                                            <span class="lbl">尚未恢复</span>
                                                                                        </label>
                                                                                        &nbsp; &nbsp; &nbsp; &nbsp;
                                                                                        &nbsp;
                                                                                        <label class=" ">
                                                                                            <input value="3"
                                                                                                   type="radio"
                                                                                                   class="ace badinformationOutcomeOfSubjects"
                                                                                                   name="zhuanguiStatus"/>
                                                                                            <span class="lbl">死于不良事件</span>
                                                                                        </label>
                                                                                        &nbsp; &nbsp; &nbsp; &nbsp;
                                                                                        &nbsp;
                                                                                        <label class=" ">
                                                                                            <input value="4"
                                                                                                   type="radio"
                                                                                                   class="ace badinformationOutcomeOfSubjects"
                                                                                                   name="zhuanguiStatus"/>
                                                                                            <span class="lbl">未知</span>
                                                                                        </label>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="form-group">
                                                                                    <label class="control-label col-xs-12 col-sm-3 no-padding-right">是否作为严重不良事件报告:</label>

                                                                                    <div class="col-xs-12 col-sm-9">
                                                                                        <label class=" ">
                                                                                            <input value="1"
                                                                                                   type="radio"
                                                                                                   class="ace badinformationCritical"
                                                                                                   name="baogaoStatus"
                                                                                                    />
                                                                                            <span class="lbl">是（同时填写严重不良事件表）</span>
                                                                                        </label>
                                                                                        &nbsp; &nbsp; &nbsp; &nbsp;
                                                                                        &nbsp;
                                                                                        <label class=" ">
                                                                                            <input value="2"
                                                                                                   type="radio"
                                                                                                   class="ace badinformationCritical"
                                                                                                   name="baogaoStatus"/>
                                                                                            <span class="lbl">否</span>
                                                                                        </label>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                                </tbody>
                                                            </table>
                                                        </div>
                                                    </div>

                                                    <div class="form-group">
                                                        <div class="col-xs-12 col-sm-12">
                                                            <table class="table" id="hospitaledCostTable">
                                                                <thead>
                                                                <tr style="background-color:#80be4a">
                                                                    <td colspan="3"><font
                                                                            color="#ffffff">14.本次住院费用信息</font></td>

                                                                </tr>
                                                                </thead>
                                                                <tbody>
                                                                <tr>
                                                                    <td width="10%">编号</td>
                                                                    <td width="40%">费用条目</td>
                                                                    <td width="40%">金额(元)</td>
                                                                    <td width="10%"></td>
                                                                </tr>
                                                                <tr>
                                                                    <td>1</td>
                                                                    <td>西药费</td>
                                                                    <td>
                                                                        <input type="text" class="full-width cmSize"
                                                                               name="westernMed"/>
                                                                    </td>
                                                                    <td></td>
                                                                </tr>
                                                                <tr>
                                                                    <td>2</td>
                                                                    <td>治疗费</td>
                                                                    <td><input type="text" class="full-width cmSize"
                                                                               name="cure"/></td>
                                                                    <td></td>
                                                                </tr>
                                                                <tr>
                                                                    <td>3</td>
                                                                    <td>检查费</td>
                                                                    <td><input type="text" class="full-width cmSize"
                                                                               name="check"/></td>
                                                                    <td></td>
                                                                </tr>

                                                                <tr>
                                                                    <td>4</td>
                                                                    <td>检验费</td>
                                                                    <td><input type="text" class="full-width cmSize"
                                                                               name="inspect"/></td>
                                                                    <td></td>
                                                                </tr>
                                                                <tr>
                                                                    <td>5</td>
                                                                    <td>材料费</td>
                                                                    <td><input type="text" class="full-width cmSize"
                                                                               name="material"/></td>
                                                                    <td></td>
                                                                </tr>
                                                                <tr>
                                                                    <td>6</td>
                                                                    <td>床位费</td>
                                                                    <td><input type="text" class="full-width cmSize"
                                                                               name="bed"/></td>
                                                                    <td></td>
                                                                </tr>
                                                                <tr>
                                                                    <td>7</td>
                                                                    <td>膳食费</td>
                                                                    <td><input type="text" class="full-width cmSize"
                                                                               name="food"/></td>
                                                                    <td></td>
                                                                </tr>
                                                                <tr>
                                                                    <td>8</td>
                                                                    <td>护理费</td>
                                                                    <td><input type="text" class="full-width cmSize"
                                                                               name="nursing"/></td>
                                                                    <td></td>
                                                                </tr>
                                                                <tr>
                                                                    <td>9</td>
                                                                    <td>其他费</td>
                                                                    <td><input type="text" class="full-width cmSize"
                                                                               name="other"/></td>
                                                                    <td></td>
                                                                </tr>
                                                                <%--<tr>--%>
                                                                    <%--<td>10</td>--%>
                                                                    <%--<td>总费用</td>--%>
                                                                    <%--<td><input type="text" class="full-width cmSize"--%>
                                                                               <%--name="total"/></td>--%>
                                                                <%--</tr>--%>
                                                                <tr>
                                                                    <td>10</td>
                                                                    <td>自费项目小计</td>
                                                                    <td><input type="text" class="full-width cmSize"
                                                                               name="self"/></td>
                                                                    <td></td>
                                                                </tr>
                                                                <tr>
                                                                    <td>11</td>
                                                                    <td>其他未包括费用类型:&nbsp;<input name="otherCostName" type="text"
                                                                                       style="width: 100px;"/></td>

                                                                    <td><input type="text" class="full-width cmSize"
                                                                               name="otherCostValue"/></td>
                                                                    <td>
                                                                        <a style="cursor: pointer;" id="addCostItemBtn"><i
                                                                                class="ace-icon fa fa-plus-circle"></i>新增</a>
                                                                    </td>
                                                                </tr>
                                                                </tbody>
                                                            </table>
                                                        </div>
                                                    </div>

                                                </div>


                                                <div class="clearfix form-actions">
                                                    <div class="col-md-offset-5 col-md-7">
                                                        <button class="btn btn-info" id="saveZYXXBtn" type="button"
                                                                id="searchBtn">
                                                            <i class="ace-icon fa fa-check bigger-110"></i>
                                                            保存
                                                        </button>
                                                        <!--
                                                        &nbsp; &nbsp; &nbsp;
                                                        <button id="cancelZYXXBtn" class="btn" type="reset">
                                                            <i class="ace-icon fa fa-undo bigger-110"></i>
                                                            取消
                                                        </button>-->
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>

                        <div class="step-pane" data-step="5">
                            <div class="center">
                                <h3 class="green">编写的记录已经保存</h3>
                                <button class="btn btn-warning" type="button"
                                        onclick='window.location.href="#page/homepage"'>返回主面板
                                </button>
                            </div>
                            <br/>
                            <table class="table table-bordered" style="width: 60%;margin-left: 20%">
                                <tbody>
                                <tr>
                                    <td>患者研究编号</td>
                                    <td>${patientId}</td>
                                </tr>
                                <tr>
                                    <td>采集日期</td>
                                    <td><label>${gatherTime}</label></td>
                                </tr>
                                <tr>
                                    <td>采集人</td>
                                    <td>${gatherName==null?sessionScope.SESSION_USER.name:gatherName}</td>
                                </tr>
                                <tr>
                                    <td>备注</td>
                                    <td><textarea id="acqDescription" style="width:100%;overflow: hidden; word-wrap: break-word; resize: horizontal;"></textarea></td>
                                </tr>
                                </tbody>
                            </table>
                        </div>

                    </div>

                    <!-- /section:plugins/fuelux.wizard.container -->
                </div>

                <hr/>
                <div class="wizard-actions">
                    <!-- #section:plugins/fuelux.wizard.buttons -->

                    <button id="submitButton" type="submit" class="btn btn-primary">
                        <i class="icon-save"></i>
                        暂存
                        <i class="ace-icon fa fa-floppy-o icon-on-right"></i>
                    </button>

                    <button onclick="onc()" class="btn btn-prev">
                        <i class="ace-icon fa fa-arrow-left"></i>
                        上一步
                    </button>

                    <button onclick="onc()" id="nextBtn" class="btn btn-primary btn-next" data-last="提交">
                        下一步
                        <i class="ace-icon fa fa-arrow-right icon-on-right"></i>
                    </button>

                    <!-- /section:plugins/fuelux.wizard.buttons -->
                </div>

                <!-- /section:plugins/fuelux.wizard -->
            </div><!-- /.widget-main -->
        </div><!-- /.widget-body -->
    </div>
    <!-- PAGE CONTENT ENDS -->
</div>
<!-- /.col -->
</div><!-- /.row -->
<!-- page specific plugin scripts -->
<style>
    .error{
        color:red;
    }
</style>
<script  type="text/javascript">
    function setSecond(obj){
        var val = obj.val();
        obj.parent().parent().parent().parent().find('td').eq(2).find('select[id=consumptionSize]').empty();
        obj.parent().parent().find('input').val(val);;
        if(val == '硼替佐米' || val=='表柔比星'|| val=='吡柔比星'|| val=='多柔比星') {
            obj.parent().parent().parent().parent().find('td').eq(2).find('select[id=consumptionSize]').append("<option value=\"\">" + "" + "</option>");
            obj.parent().parent().parent().parent().find('td').eq(2).find('select[id=consumptionSize]').append("<option value=\"mg\">" + "mg" + "</option>");
            obj.parent().parent().parent().parent().find('td').eq(2).find('select[id=consumptionSize]').append("<option value=\"mg/m2\">" + "mg/m2" + "</option>");
        }else if( val=='地塞米松'||val=='沙利度胺'||val=='来那度胺'||val=='顺铂'||val=='泼尼松'){
            obj.parent().parent().parent().parent().find('td').eq(2).find('select[id=consumptionSize]').append("<option value=\"\">" + "" + "</option>");
            obj.parent().parent().parent().parent().find('td').eq(2).find('select[id=consumptionSize]').append("<option value=\"mg\">" + "mg" + "</option>");
        }else if(val=='马法兰'){
            obj.parent().parent().parent().parent().find('td').eq(2).find('select[id=consumptionSize]').append("<option value=\"\">" + "" + "</option>");
            obj.parent().parent().parent().parent().find('td').eq(2).find('select[id=consumptionSize]').append("<option value=\"mg/kg\">" + "mg/kg" + "</option>");
        }else if(val=='环磷酰胺'){
            obj.parent().parent().parent().parent().find('td').eq(2).find('select[id=consumptionSize]').append("<option value=\"\">" + "" + "</option>");
            obj.parent().parent().parent().parent().find('td').eq(2).find('select[id=consumptionSize]').append("<option value=\"g\">" + "g" + "</option>");
            obj.parent().parent().parent().parent().find('td').eq(2).find('select[id=consumptionSize]').append("<option value=\"mg\">" + "mg" + "</option>");
            obj.parent().parent().parent().parent().find('td').eq(2).find('select[id=consumptionSize]').append("<option value=\"mg/kg\">" + "mg/kg" + "</option>");
        }
    }
    function setSize(obj){
        var val = obj.val();
        obj.parent().parent().find('input').val(val);;
    }
</script>
<script type="text/javascript">

    function submitAcq(confirm) {

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
        $('#submitButton').attr('disabled',true);
        $('#nextBtn').attr('disabled',true);

        var patientInfo = prepareData();
        patientInfo.patientId = '${patientId}',
                $.ajax({
                    dataType: "json",
                    contentType: 'application/json',
                    url: "${contextPath}/patient/?confirm="+confirm,
                    type: "post",
                    data: JSON.stringify(patientInfo),
                    complete:function(response) {
                        $('#submitButton').attr('disabled',false);
                        $('#nextBtn').attr('disabled',false);
                    },
                    success: function (response) {
                        if (response.success) {
                            $('#patientIdField').val(response.message);
                            if (response.result.diagnosisInfo) {
                                $('#diagnosisInfoId').val(response.result.diagnosisInfo.id);
                            }
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
                                message: '保存失败',
                            });
                        }
                    }
                });
    }
    function onc() {
        var dd = document.getElementById("maodian").scrollIntoView(true);
    }
    var scripts = [
        null,
        "${contextPath}/static/assets/js/custom/patient.js",
        "${contextPath}/static/assets/js/date-time/moment.js",
        "${contextPath}/static/assets/js/fuelux/fuelux.wizard.js",
        "${contextPath}/static/assets/js/jquery.validate.js",
        "${contextPath}/static/assets/js/additional-methods.js",
        "${contextPath}/static/assets/js/bootbox.js",
        "${contextPath}/static/assets/js/jquery.maskedinput.js",
        "${contextPath}/static/assets/js/select2.js",
        "${contextPath}/static/assets/js/date-time/bootstrap-datepicker.js",
        null]

    $('.page-content-area').ace_ajax('loadScripts', scripts, function () {

        //inline scripts related to this page
        jQuery(function ($) {
            if(${editable}) {
                $('#submitButton').attr('disabled',false);
            } else {
                $('#submitButton').attr('disabled',true);
            }
            $('#submitButton').click(function (e) {
                submitAcq(0);
            });

            $().ready(function() {
                $("#form-step1").validate();
                $("#form-step2").validate();
                $("#form-step3").validate();
                $("#form-step4").validate();
            });

            $('[data-rel=tooltip]').tooltip();
            $('.data-now').html(moment(new Date()).format('MM/DD/YYYY'));

            $('#addHospitalRecordBtn').on('click', function () {
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
                $('#hospitaledInfoIndex').val(0);
                $('#titleLabel').html("新增住院信息");
                $('#trEvaluateResult').hide();
                $('#trHospitaledEvaluateRule').hide();
                $('#changePlanReasonDiv').hide();
                $('#hostipalstemcelltransplantationDateDiv').hide();
                $('#addPanel').show();
                $('#HLYWInfoTable tbody').find('select[id="followupChemotherapyItemName"][name="name"]').select2({'width':'190px'});
                $('#HLYWInfoTable tbody').find('select[id="consumptionSize"][name="consumptionSize"]').select2({'width':'100px'});
            });
            $('input[type=radio][name=hostipalstemcelltransplantation]').change(function () {
                if (this.value == '1') {
                    $('#hostipalstemcelltransplantationDateDiv').show();
                }
                else if (this.value == '2') {
                    $('#hostipalstemcelltransplantationDateDiv').hide();
                }
            });
            $('input[type=radio][name=changeCurePlan]').change(function () {
                if (this.value == '1') {
                    $('#changePlanReasonDiv').show();
                } else if (this.value == '2') {
                    $('#changePlanReasonDiv').hide();
                }
            });
            $('#cancelZYXXBtn').on('click', function () {
                $('#hospitaledInfoIndex').val(0);
                $('#addPanel').hide();
                resetHospitalizedAddPanel();
            });
            $('#saveZYXXBtn').on('click', function () {
                var data = collectHospitalizedData();
                var index = $('#hospitaledInfoIndex').val();
                $('#hospitaledInfoIndex').val(0);
                if(index==0) { //新增
                    var length = $('#recordListTable tbody').find('tr').length+1;
                    var element = $('<tr data-index="'+length+'"></tr>');
                    element.append('<td>' + data.startTime + '</td>');
                    element.append('<td>' + data.endTime + '</td>');
                    element.append($('<td><textarea hidden>'+JSON.stringify(data)+'</textarea><a style="cursor: pointer;color:red" onclick="removeSelf($(this))"><i class="ace-icon fa fa-close"></i>删除</a>&nbsp;&nbsp;' +
                    '<a style="cursor: pointer;" onclick="fillHospitalizedForm('+length+',$(this).parent().find(\'textarea\').val())"><i class="ace-icon fa fa-edit"></i>编辑</a></td>'));
                    $('#recordListTable tbody').append(element);
                } else {
                    var listTrObj =  $('#recordListTable tbody').find('tr').eq(index-1);
                    listTrObj.find('td').eq(0).html(data.startTime);
                    listTrObj.find('td').eq(1).html(data.endTime);
                    listTrObj.find('textarea').val(JSON.stringify(data));
                }
                $('#addPanel').hide();
                $('#titleLabel').html("新增住院信息");
                $('.hospitalRmBtn').prop("disabled",false);
                resetHospitalizedAddPanel();
            });

            $('input[type=radio][name=cteaeStatus]').change(function () {
                console.log(this.value)
                if (this.value == '1') {
                    $('#divcteaeStatuslevel').show();
                } else {
                    $('#divcteaeStatuslevel').hide();
                }
            });

            $('input[type=radio][name=fishexception]').change(function () {
                console.log(this.value)
                if (this.value == '1') {
                    $('#trfishItem').show();
                    $('#trfishIghItem').show();
                    $('#trfish13qItem').show();
                    $('#trfish17qItem').show();
                    $('#trfish1q21Item').show();
                    $('#trfisht414Item').show();
                    $('#trfisht1114Item').show();
                    $('#trfisht1416Item').show();
                    $('#trfishOtherItem').show();
                    $('.fishItemAdded').show();
                } else if (this.value == '2') {
                    $('#trfishItem').hide();
                    $('#trfishIghItem').hide();
                    $('#trfish13qItem').hide();
                    $('#trfish17qItem').hide();
                    $('#trfish1q21Item').hide();
                    $('#trfisht414Item').hide();
                    $('#trfisht1114Item').hide();
                    $('#trfisht1416Item').hide();
                    $('#trfishOtherItem').hide();
                    $('.fishItemAdded').hide();
                }
            });

            $('input[type=radio][name=HospitaledEvaluateAfterCure]').change(function () {
                if (this.value == '1') {
                    $('#trEvaluateResult').show();
                    $('#trHospitaledEvaluateRule').show();
                } else if (this.value == '2') {
                    $('#trEvaluateResult').hide();
                    $('#trHospitaledEvaluateRule').hide();
                }
            });
            $('input[type=radio][name=badInformationStatus]').change(function () {
                if (this.value == '1') {
                    $('.trbadMessage').show();
                    $('#addbadBtn').prop("disabled",false);
                } else if (this.value == '2') {
                    $('.trbadMessage').hide();
                    $('#addbadBtn').prop("disabled",true);
                }
            });
            $('input[type=radio][name=diagnosisExaminationXueStatus]').change(function () {
                if (this.value == '1') {
                    $('#trdiagnosisExaminationXIgg').show();
                    $('#trdiagnosisExaminationXIga').show();
                    $('#trdiagnosisExaminationXIgm').show();
                    $('#trdiagnosisExaminationXIge').show();
                    $('#trdiagnosisExaminationXIgd').show();
                    $('#trdiagnosisExaminationXkLightChain').show();
                    $('#trdiagnosisExaminationXnLightChain').show();
                } else if (this.value == '2') {
                    $('input[type=radio][name="diagnosisExaminationXIgg"]').prop('checked',false);
                    $('#trdiagnosisExaminationXIgg').hide();
                    $('input[type=radio][name="diagnosisExaminationXIga"]').prop('checked',false);
                    $('#trdiagnosisExaminationXIga').hide();
                    $('input[type=radio][name="diagnosisExaminationXIgm"]').prop('checked',false);
                    $('#trdiagnosisExaminationXIgm').hide();
                    $('input[type=radio][name="diagnosisExaminationXIge"]').prop('checked',false);
                    $('#trdiagnosisExaminationXIge').hide();
                    $('input[type=radio][name="diagnosisExaminationXIgd"]').prop('checked',false);
                    $('#trdiagnosisExaminationXIgd').hide();
                    $('input[type=radio][name="diagnosisExaminationXkLightChain"]').prop('checked',false);
                    $('#trdiagnosisExaminationXkLightChain').hide();
                    $('input[type=radio][name="diagnosisExaminationXnLightChain"]').prop('checked',false);
                    $('#trdiagnosisExaminationXnLightChain').hide();
                }
            });
            $('input[type=radio][name=hospitalExaminationXueStatus]').change(function () {
                console.log(this.value)
                if (this.value == '1') {
                    $('#trhospitalExaminationXIgg').show();
                    $('#trhospitalExaminationXIga').show();
                    $('#trhospitalExaminationXIgm').show();
                    $('#trhospitalExaminationXIge').show();
                    $('#trhospitalExaminationXIgd').show();
                    $('#trhospitalExaminationXkLightChain').show();
                    $('#trhospitalExaminationXnLightChain').show();
                } else if (this.value == '2') {
                    $('input[type=radio][name="hospitalExaminationXIgg"]').prop('checked',false);
                    $('#trhospitalExaminationXIgg').hide();
                    $('input[type=radio][name="hospitalExaminationXIga"]').prop('checked',false);
                    $('#trhospitalExaminationXIga').hide();
                    $('input[type=radio][name="hospitalExaminationXIgm"]').prop('checked',false);
                    $('#trhospitalExaminationXIgm').hide();
                    $('input[type=radio][name="hospitalExaminationXIge"]').prop('checked',false);
                    $('#trhospitalExaminationXIge').hide();
                    $('input[type=radio][name="hospitalExaminationXIgd"]').prop('checked',false);
                    $('#trhospitalExaminationXIgd').hide();
                    $('input[type=radio][name="hospitalExaminationXkLightChain"]').prop('checked',false);
                    $('#trhospitalExaminationXkLightChain').hide();
                    $('input[type=radio][name="hospitalExaminationXnLightChain"]').prop('checked',false);
                    $('#trhospitalExaminationXnLightChain').hide();
                }
            });
            $('input[type=radio][name=hospitalExaminationNnStatus]').change(function () {
                console.log(this.value)
                if (this.value == '1') {
                    $('#trhospitalExaminationNkLightChain').show();
                    $('#trhospitalExaminationNnLightChain').show();

                } else if (this.value == '2') {
                    $('input[type=radio][name="hospitalExaminationNkLightChain"]').prop('checked',false);
                    $('#trhospitalExaminationNkLightChain').hide();
                    $('input[type=radio][name="hospitalExaminationNnLightChain"]').prop('checked',false);
                    $('#trhospitalExaminationNnLightChain').hide();
                }
            });
            $('input[type=radio][name=diagnosisExaminationNnStatus]').change(function () {
                console.log(this.value)
                if (this.value == '1') {
                    $('#trdiagnosisExaminationNkLightChain').show();
                    $('#trdiagnosisExaminationNnLightChain').show();

                } else if (this.value == '2') {
                    $('input[type=radio][name="diagnosisExaminationNkLightChain"]').prop('checked',false);
                    $('#trdiagnosisExaminationNkLightChain').hide();
                    $('input[type=radio][name="diagnosisExaminationNnLightChain"]').prop('checked',false);
                    $('#trdiagnosisExaminationNnLightChain').hide();
                }
            });
            $('input[type=radio][name=hospitalExaminationXkLightChainStatus]').change(function () {
                if (this.value == '1') {
                    $('#trhospitalExaminationXYkLightChain').show();
                    $('#trhospitalExaminationXYnLightChain').show();
                    $('#trhospitalExaminationXYknLightChain').show();
                } else if (this.value == '2') {
                    $('input[type=radio][name="hospitalExaminationXYkLightChain"]').prop('checked',false);
                    $('#trhospitalExaminationXYkLightChain').hide();
                    $('input[type=radio][name="hospitalExaminationXYnLightChain"]').prop('checked',false);
                    $('#trhospitalExaminationXYnLightChain').hide();
                    $('input[type=radio][name="hospitalExaminationXYknLightChain"]').prop('checked',false);
                    $('#trhospitalExaminationXYknLightChain').hide();
                }
            });
            $('input[type=radio][name=hospitalExaminationNStatus]').change(function () {
                if (this.value == '1') {
                    $('#trHospitalExaminationNMkLightChain').show();
                    $('#trHospitalExaminationNMnLightChain').show();
                } else if (this.value == '2') {
                    $('input[name="hospitalExaminationNMkLightChain"]').val('');
                    $('#trHospitalExaminationNMkLightChain').hide();
                    $('input[name="hospitalExaminationNMnLightChain"]').val('');
                    $('#trHospitalExaminationNMnLightChain').hide();

                }
            });
            $('input[type=radio][name=diagnosisExaminationXkLightChainStatus]').change(function () {
                if (this.value == '1') {
                    $('#trdiagnosisExaminationXYkLightChain').show();
                    $('#trdiagnosisExaminationXYnLightChain').show();
                    $('#trdiagnosisExaminationXYknLightChain').show();
                } else if (this.value == '2') {
                    $('input[name="diagnosisExaminationXYkLightChain"]').val('');
                    $('#trdiagnosisExaminationXYkLightChain').hide();
                    $('input[name="diagnosisExaminationXYnLightChain"]').val('');
                    $('#trdiagnosisExaminationXYnLightChain').hide();
                    $('input[name="diagnosisExaminationXYknLightChain"]').val('');
                    $('#trdiagnosisExaminationXYknLightChain').hide();
                }
            });
            $('input[type=radio][name=diagnosisExaminationNStatus]').change(function () {
                if (this.value == '1') {
                    $('#trDiagnosisExaminationNMkLightChain').show();
                    $('#trDiagnosisExaminationNMnLightChain').show();
                } else if (this.value == '2') {
                    $('input[name="diagnosisExaminationNMkLightChain"]').val('');
                    $('#trDiagnosisExaminationNMkLightChain').hide();
                    $('input[name="diagnosisExaminationNMnLightChain"]').val('');
                    $('#trDiagnosisExaminationNMnLightChain').hide();
                }
            });
            $('input[type=radio][name=livingState]').change(function () {
                console.log(this.value)
                if (this.value == '1') {
                    $('#deathGroup1').show();
                    $('#deathGroup2').show();
                } else if (this.value == '2') {
                    $('#deathGroup1').hide();
                    $('#deathGroup2').hide();
                }
            });
            $('input[type=radio][name=evaluateAfterCure]').change(function () {
                console.log(this.value)
                if (this.value == '1') {
                    $('#divEvaluateResult').show();
                    $('#divEvaluateRule').show();
                } else if (this.value == '2') {
                    $('#divEvaluateResult').hide();
                    $('#divEvaluateRule').hide();
                }
            });
            $('input[type=radio][name=stemcelltransplantation]').change(function () {
                console.log(this.value)
                if (this.value == '1') {
                    $('#stemcelltransplantationDiv').show();
                } else if (this.value == '2') {
                    $('#stemcelltransplantationDiv').hide();
                }
            });
            $('input[type=radio][name=BFZTableTr5]').change(function () {
             if (this.value == '1') {
                 $('#trSTX').show();
             } else if (this.value == '2') {
                 $('#trSTX').hide();
             }
             });
            $('input[type=radio][name=BFZTableTr6]').change(function () {
             if (this.value == '1') {
                 $('#diagnosisSTXTimeDiv').show();
             } else if (this.value == '2') {
                 $('#diagnosisSTXTimeDiv').hide();
             }
             });

            $('input[type=radio][name=present2]').change(function () {
             if (this.value == '1') {
                 $('#trHSTX').show();
             } else if (this.value == '2') {
                 $('#trHSTX').hide();
             }
             });
            /*$('input[type=radio][name=guState]').change(function () {
                console.log(this.value)
                if (this.value == '1') {
                    $('#trGaoGaiXueZheng').show();
                    $('#trGuZhe').show();
                    $('#trJiSuiYaPo').show();
                    $('#trGuTong').show();
                } else if (this.value == '2') {
                    $('#trGaoGaiXueZheng').hide();
                    $('#trGuZhe').hide();
                    $('#trJiSuiYaPo').hide();
                    $('#trGuTong').hide();
                }
            });*/
            /*$('input[type=radio][name=guStateZY]').change(function () {
                console.log(this.value)
                if (this.value == '1') {
                    $('#trGaoGaiXueZhengZY').show();
                    $('#trGuZheZY').show();
                    $('#trJiSuiYaPoZY').show();
                    $('#trGuTongZY').show();
                } else if (this.value == '2') {
                    $('#trGaoGaiXueZhengZY').hide();
                    $('#trGuZheZY').hide();
                    $('#trJiSuiYaPoZY').hide();
                    $('#trGuTongZY').hide();
                }
            });*/
            $('input[type=radio][name=hasBLFY]').change(function () {
                console.log(this.value)
                if (this.value == '1') {
                    $('#BLFYGroup').show();
                } else if (this.value == '2') {
                    $('#BLFYGroup').hide();
                }
            });
            $('input[type=radio][name=estimateState]').change(function () {
                if (this.value == '2') {
                    $('#estimateGroup').hide();
                    $('#estimateResultGroup').hide();
                } else if (this.value == '1') {
                    $('#estimateGroup').show();
                    $('#estimateResultGroup').show();
                }
            });
            $('.livingDeathGroup').hide();
            $('input[type=radio][name=hospitaledLivingState]').change(function () {
                if (this.value == '2') { //死亡
                    $('.livingDeathGroup').show();
                } else if (this.value == '1') { //生存
                    $('.livingDeathGroup').hide();
                }
            });


            $('#addHistoryBtn').on('click', function () {
                var length = $('#historyTable tbody').find('tr').length+1;
                if (length >= 20) return;
                var element = $('<tr data-id="0" data-index="'+length+'"></tr>');
                element.append($('<td><input type="text" style="width: 350px" name="name"/></td>'));
//                element.append($('<td><div class="input-group"><span class="input-group-addon"><i class="ace-icon fa fa-calendar"></i></span><input type="text" name="historyDay ' + length + '"class="form-control dataDay" style="width:265px"/></div></td>'));
                element.append($('<td><a style="cursor: pointer;color:red" onclick="$(this).parent().parent().remove()"><i class="ace-icon fa fa-close"></i>删除</a></td>'));
                $('#historyTable tbody').append(element);
            });

            $('#addBLFYBth').on('click', function () {
                var length = $('#BLFYTable tbody').find('tr').length;
                if (length >= 20) return;
                var element = $('<tr data-id="0" data-index="'+length+'"></tr>');
                element.append($('<td>' + length + '</td>'));
                element.append($('<td><input type="text" style="width:100%;" name="name"/></td>'));
                element.append($('<td><input type="text" style="width:100%;" name="detail"/></td>'));
                element.append($('<td><a style="cursor: pointer;color:red" onclick="$(this).parent().parent().remove()"><i class="ace-icon fa fa-close"></i>删除</a></td>'));
                $('#BLFYTable tbody').append(element);
            });

            $('#addMedBtn').on('click', function () {
                var length = $('#HLYWInfoTable tbody').find('tr').length+1;
                var element = $('<tr data-id="0" data-index="'+length+'"></tr>');
                element.append($('<th>' + length + '</th>'));
                element.append($('<td colspan="1"><div   style="position:relative;"> ' +
                '<span   style="margin-left:188px;width:18px;overflow:hidden;"> <select id="followupChemotherapyItemName" ' +
                ' data-placeholder="" name="name'+length+'"' +
                ' class="select2-300" style="width:200px;margin-left:-188px"  onchange="setSecond($(this))">  ' +
                '<option value="" selected></option>  ' +
                '<option value="硼替佐米">硼替佐米</option> ' +
                '<option value="地塞米松">地塞米松</option>' +
                '<option value="表柔比星">表柔比星</option> ' +
                '<option value="吡柔比星">吡柔比星</option>' +
                '  <option value="沙利度胺">沙利度胺</option> ' +
                '<option value="来那度胺">来那度胺</option>   ' +
                '<option value="马法兰">马法兰</option> ' +
                '<option value="多柔比星">多柔比星</option>' +
                '<option value="顺铂">顺铂</option> ' +
                '<option value="环磷酰胺">环磷酰胺</option> ' +
                '<option value="泼尼松">泼尼松</option> </select> ' +
                '</span><input  id="followupChemotherapyName" name="name"  type="text" style="width:170px;height:100%;position:absolute;left:0px;"> ' +
                '</div> </td>'));
                element.append($('<td><input type="text" style="width:100%;" name="amount"/></td>'));
                element.append($('<td colspan="1"> ' +
                '<div   style="position:relative;"> ' +
                '<span   style="width:18px;overflow:hidden;"> ' +
                '<select id="consumptionSize"  name="consumptionSize'+ length +'" data-placeholder=""' +
                'class="select2-300" style="width:200px;" onchange="setSize($(this))" > ' +
                '<option value=""></option> ' +
                '<option value="mg">mg</option> ' +
                '<option value="mg/m2">mg/m2</option> ' +
                '<option value="mg/kg">mg/kg</option> ' +
                '<option value="g">g</option> ' +
                '</select> </span> ' +
                '<input   name="consumptionSize" id="consumptSize" type="text" style="width:80px;height:100%;position:absolute;left:0px;"/> ' +
                '</div></td>'));
                element.append($('<td><input type="text" style="width:100%;" name="feq"/></td>'));
                element.append($('<td><label> <input value="1" type="radio" class="ace" name="isOuter1' + length + '" /><span class="lbl">是</span></label>' +
                '<label  ><input value="2" type="radio" class="ace" name="isOuter1' + length + '"/><span class="lbl">否</span></label></td>'));
                element.append($('<td><a style="cursor: pointer;color:red" onclick="$(this).parent().parent().remove()"><i class="ace-icon fa fa-close"></i>删除</a></td>'));
                $('#HLYWInfoTable tbody').append(element);

                $('#HLYWInfoTable tbody').find('select[id="followupChemotherapyItemName"][name="name' + length + '"]').select2({'width':'190px'});
                $('#HLYWInfoTable tbody').find('select[id="consumptionSize"][name="consumptionSize' + length + '"]').select2({'width':'100px'});
            });

            $('#addMedBtn2').on('click', function () {
                var length = $('#HLYWInfoTable2 tbody').find('tr').length+1;
                var element = $('<tr data-id="0" data-index="'+length+'"></tr>');
                element.append($('<td>' + length + '</td>'));
                element.append($('<td><input type="text" style="width:100%;" name="name"/></td>'));
                element.append($('<td><input type="text" style="width:100%;" name="amount"/></td>'));
                element.append($('<td><input type="text" style="width:100%;" name="feq"/></td>'));
                element.append($('<td><div class="clearfix"><input type="text" name="shiying"style="width: 100%"/></div></td>'));
                element.append($('<td><label> <input value="1" type="radio" class="ace" name="isOuter2' + length + '" /><span class="lbl">是</span></label>' +
                '<label  ><input value="2" type="radio" class="ace" name="isOuter2' + length + '"/><span class="lbl">否</span></label></td>'));
                element.append($('<td><a style="cursor: pointer;color:red" onclick="$(this).parent().parent().remove()"><i class="ace-icon fa fa-close"></i>删除</a></td>'));
                $('#HLYWInfoTable2 tbody').append(element);
            });

            $('#addCostItemBtn').on('click', function () {
                var length = $('#hospitaledCostTable tbody').find('tr').length;
                var element = $('<tr class="costItemAdded" data-id="0" data-index="'+length+'"></tr>');
                element.append($('<td>' + length + '</td>'));
                element.append($('<td>其他未包括费用类型:&nbsp;<input name="name" type="text" style="width: 100px;"/></td>'));
                element.append($('<td><input type="text" style="width:100%;" class="full-width cmSize"/></td>'));
                element.append($('<td><a style="cursor: pointer;color:red" onclick="$(this).parent().parent().remove()"><i class="ace-icon fa fa-close"></i>删除</a></td>'));
                $('#hospitaledCostTable tbody').append(element);
            });

            $('#addZCMedBtn').on('click', function () {
                var length = $('#ZCYWInfoTable tbody').find('tr').length+1;
                var element = $('<tr data-id="0" data-index="'+length+'"></tr>');
                element.append($('<td>' + length + '</td>'));
                element.append($('<td><input type="text" style="width:100%;" name="name"/></td>'));
                element.append($('<td><input type="text" style="width:100%;" name="amount"/></td>'));
                element.append($('<td><input type="text" style="width:100%;" name="feq"/></td>'));
                element.append($('<label  > <input value="2" type="radio" class="ace" name="ZCisOuter' + length + '" /><span class="lbl">否</span></label>' +
                '<label  ><input value="1" type="radio" class="ace" name="ZCisOuter' + length + '"/><span class="lbl">是</span></label>'));
                element.append($('<td><a style="cursor: pointer;color:red" onclick="$(this).parent().parent().remove()"><i class="ace-icon fa fa-close"></i>删除</a></td>'));
                $('#ZCYWInfoTable tbody').append(element);
            });




            $('#gccaddCheckItemBtn1').on('click', function () {
                var length = $('#gcccheckItemTable1 tbody').find('tr').length+1;
                var element = $('<tr data-id="0" data-index="'+length+'"></tr>');
                element.append($(' <td>其他:&nbsp;<input name="name"  type="text"style="width: 200px;"/></td>'));
                element.append($('<td><input type="text" name="other" id="other'+length+'" class="zsxSize"/></td>'));
                element.append($('<td><a style="cursor: pointer;color:red" onclick="$(this).parent().parent().remove()"><i class="ace-icon fa fa-close"></i>删除</a></td>'));
                $('#gcccheckItemTable1 tbody').append(element);
                $('#gcccheckItemTableTd1').attr('rowspan', $('#gcccheckItemTableTd1').attr('rowspan') + 1);
            });



            $('#gccaddCheckItemBtnZY').on('click', function () {
                var length = $('#checkItemTableZY tbody').find('tr').length+1;
                var element = $('<tr data-id="0" data-index="'+length+'"></tr>');
                element.append($(' <td>其他:&nbsp;<input name="name"  type="text"style="width: 90px;"/></td>'));
                element.append($('<td>%</td>'));
                element.append($('<td><input name="bll" type="text"/></td>'));
                element.append($('<td><a style="cursor: pointer;color:red" onclick="$(this).parent().parent().remove()"><i class="ace-icon fa fa-close"></i>删除</a></td>'));
                $('#checkItemTableZY tbody').append(element);
            });

            $('#YXXaddCheckItemBtn').on('click', function () {
                var length = $('#YXXcheckItemTable tbody').find('tr').length+1;
                var element = $('<tr data-id="0" data-index="'+length+'"></tr>');
                element.append($(' <td>其他:&nbsp;<input name="name"  type="text"style="width: 100px; "/></td>'));
                element.append($('<td><textarea class="autosize-transition form-control"style="overflow: hidden; word-wrap: break-word; resize: horizontal;"></textarea> </td>'));
                element.append($('<td><textarea class="autosize-transition form-control"  id="otherx'+length+'" style="overflow: hidden; word-wrap: break-word; resize: horizontal;"></textarea> </td>'));
                element.append($('<td><a style="cursor: pointer;color:red" onclick="$(this).parent().parent().remove()"><i class="ace-icon fa fa-close"></i>删除</a></td>'));
                $('#YXXcheckItemTable tbody').append(element);

            });

            $('#YXXaddCheckItemBtn2').on('click', function () {
                var length = $('#YXXcheckItemTable2 tbody').find('tr').length+1;
                var element = $('<tr data-id="0" data-index="'+length+'"></tr>');
                element.append($(' <td>其他:&nbsp;<input name="name"  type="text"style="width: 100px; "/></td>'));
                element.append($('<td><textarea class="autosize-transition form-control"style="overflow: hidden; word-wrap: break-word; resize: horizontal;"></textarea> </td>'));
                element.append($('<td><input type="text" class="cmSize" id="other01'+length+'"/>cm * <input type="text" id="other02'+length+'" class="cmSize"/>cm</td>'));
                element.append($('<td><a style="cursor: pointer;color:red" onclick="$(this).parent().parent().remove()"><i class="ace-icon fa fa-close"></i>删除</a></td>'));
                $('#YXXcheckItemTable2 tbody').append(element);

            });

            $('#addCureInfoBtn').on('click', function () {
                $('#cureInfoTable tbody').find('.collapse').removeClass('in');
                var length = $('#cureInfoTable tbody').find('tr').length+1;
                var element = $('<tr data-id="0" data-index="'+length+'"></tr>');
                element.append($('<td><div class="panel panel-default">' +
                '<div class="panel-heading">' +
                '<h4 class="panel-title">' +
                '<a data-toggle="collapse" data-parent="#accordion" href="#collapse' + length + '">第' + length + '次治疗信息 </a>' +
                '<a style="cursor: pointer;color:red" onclick="$(this).parent().parent().parent().parent().parent().remove()"><i class="ace-icon fa fa-close"></i>删除</a></h4></div><div id="collapse' + length + '" class="panel-collapse collapse in"><div class="panel-body">' +
                '<div class="form-group"><label class="control-label col-xs-12 col-sm-3 no-padding-right"for="stemcelltransplantation_' + length + '">自体干细胞移植治疗:</label><div class="col-xs-12 col-sm-9"><div><label class="line-height-1  "><input value="1" type="radio" class="ace stemcelltransplantation" name="stemcelltransplantation_' + length + '"/><span class="lbl">是</span></label>&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;<label class="line-height-1  "><input value="2" type="radio" class="ace stemcelltransplantation" name="stemcelltransplantation_' + length + '"/><span class="lbl">否</span></label></div><div  name="stemcelltransplantationDiv'+length+'"' +
                'id="stemcelltransplantationDiv'+length+'" class="input-group" hidden>' +
                '<div class="input-group"><span class="input-group-addon"><i class="ace-icon fa fa-calendar"></i></span><input type="text" id="stemcelltransplantationDate_' + length + '" name="stemcelltransplantationDate" class="form-control" style="width: 300px; "/>&nbsp;&nbsp<span>(格式:yyyy-mm-dd)</span></div></div></div></div>' +
                '  <div class="form-group"> <label class="control-label col-xs-12 col-sm-3 no-padding-right" for="curePlan' + length +
                '">药物治疗方案:</label><div class="col-xs-12 col-sm-9"><div class="clearfix"><textarea name="curePlan" id="curePlan' + length + '"class="autosize-transition form-control" ' +
                'style="overflow: hidden; word-wrap: break-word; resize: horizontal;"></textarea></div></div></div>' +
                    ' <div class="form-group"><label class="control-label col-xs-12 col-sm-3 no-padding-right"' +
                    '>治疗起止时间:</label><div class="col-xs-12 col-sm-9"><input name="startYear" type="text" style="width: 80px;"/>年' +
                    '<input name="startMonth" type="text" style="width: 80px; "/>月&nbsp;至' +
                    '&nbsp;<input name="endYear"  type="text" style="width: 80px; "/>年' +
                    '<input name="endMonth" type="text" style="width: 80px; "/>月</div></div>' +
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
                    '<div class="col-xs-12 col-sm-5" id="divCurePlanStepOther_'+length+'" hidden><label class="control-label col-xs-12 col-sm-3 no-padding-right" for="estimateResultOtherLabel">请注明:</label><input type="text" name="curePlanStepOther"/></div></div>'+

                '<div class="form-group"><label class="control-label col-xs-12 col-sm-3 no-padding-right" for="cycleNumber">本次治疗方案周期数:</label> <div class="col-xs-12 col-sm-9"><div class="clearfix"><input type="text" name="cycleCount" id="cycleNumber" style="width: 150px"/></div></div></div>' +
                ' <div class="form-group"><label class="control-label col-xs-12 col-sm-3 no-padding-right">治疗完成后是否进行效果评估</label><div class="col-xs-12 col-sm-9">' +
                '<label class=" "><input value="1" type="radio" class="ace evaluateAfterCure" name="estimateAfterCure_' + length + '" /><span class="lbl">是</span></label>' +
                '&nbsp; &nbsp; &nbsp;<label class=" "><input value="2" type="radio" class="ace evaluateAfterCure" name="estimateAfterCure_' + length + '"/><span class="lbl">否</span></label></div></div>' +
                '<div class="form-group" id="divEvaluateRule'+length+'" hidden><label class="control-label col-xs-12 col-sm-3 no-padding-right" for="estimateStandard_' + length + '">疗效评估的标准是:</label><div class="col-xs-12 col-sm-9">' +
                '<label class="line-height-1  "><input value="1" type="radio" class="ace evaluateRule" name="estimateStandard_' + length + '"/><span class="lbl">IMWG</span></label>&nbsp; &nbsp;<label class="line-height-1  "><input value="2" type="radio" class="ace evaluateRule" name="estimateStandard_' + length + '"/><span class="lbl">其他</span>&nbsp; &nbsp;<input type="text" id="estimateStandardOther_' + length + '" class="text-150" name="evaluateRuleOther"/></label></div></div>' +
                ' <div class="form-group" id="divEvaluateResult'+length+'" hidden> <label class="control-label col-xs-12 col-sm-3 no-padding-right" for="estimateResult_' + length + '">具体评估结果:</label><div class="col-xs-12 col-sm-4">' +
                '<select id="estimateResult_' + length + '" name="evaluateResult" data-placeholder="">' +
                '<option value="0" selected>未选择</option>' +
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
                '</select></div><div class="col-xs-12 col-sm-5"><label id="estimateResultOtherLabel_' + length + '" class="control-label col-xs-12 col-sm-3 no-padding-right"for="estimateResultOtherLabel_' + length + '" hidden>请注明:</label><input type="text" id="estimateResultOther_' + length + '"name="evaluateResult" hidden/></div>' +
                '</div></div></div></div></td>'));
                $('#cureInfoTable tbody').append(element);
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
                $("#estimateResult_" + length).css('width', '300px').select2({allowClear: true})
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
                $("#curePlanStep_" + length).css('width', '300px').select2({allowClear: true})
                        .on('change', function () {
                            if ($("#curePlanStep_" + length).select2('val') == 7) {
                                $('#divCurePlanStepOther_' + length).show();
                            } else {
                                $('#divCurePlanStepOther_' + length).hide();
                            }
                            $(this).closest('form').validate().element($(this));
                        });

            });

            $('#addbadBtn').on('click', function () {
                $('#badInformationTable tbody').find('.collapse').removeClass('in');
                var length = $('#badInformationTable tbody').find('tr').length+1;
                var element = $('<tr class="trbadMessage" id=trBadAccordion"'+length+'" data-id="0" data-index="'+length+'"></tr>');
                element.append($('<td colspan="'+length+'"><div class="panel panel-default">' +
                '<div class="panel-heading">' +
                '<h4 class="panel-title">' +
                '<a data-toggle="collapse" data-parent="#trBadAccordion'+length+'" href="#badAccordion' + length + '">第' + length + '次不良事件信息 </a>' +
                '<a style="cursor: pointer;color:red" onclick="$(this).parent().parent().parent().parent().parent().remove()"><i class="ace-icon fa fa-close"></i>删除</a></h4></div><div id="badAccordion' + length + '" class="panel-collapse collapse in"><div class="panel-body">' +
                '<div class="form-group"><label class="control-label col-xs-12 col-sm-3 no-padding-right">不良事件名称:</label><div class="col-xs-12 col-sm-9"><div class="clearfix"><input name="badinformationName" type="text" class="text-300"/></div></div></div>' +
                '<div class="form-group"><label class="control-label col-xs-12 col-sm-3 no-padding-right">纪录日期:</label><div class="col-xs-12 col-sm-9"><div class="input-group"><span class="input-group-addon"><i class="ace-icon fa fa-calendar"></i></span><input type="text" name="badinformationDate" class="form-control text-265 dataDay"/>&nbsp;&nbsp;<span>(格式:yyyy-mm-dd)</span></div></div></div>' +
                '<div class="form-group"><label class="control-label col-xs-12 col-sm-3 no-padding-right">严重程度评估:</label><div class="col-xs-12 col-sm-9"><div class="clearfix"><label class=" "><input value="1" type="radio"class="ace badinformationLevel" name="yanzhongStatus'+length+''+length+'"/><span class="lbl">轻度</span></label>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<label class=" "><input value="2" type="radio" class="ace badinformationLevel" name="yanzhongStatus'+length+'"/><span class="lbl">中度</span></label>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<label class=" "><input value="3" type="radio" class="ace badinformationLevel" name="yanzhongStatus'+length+'"/><span class="lbl">重度</span></label></div></div></div>' +
                '<div class="form-group"><label class="control-label col-xs-12 col-sm-3 no-padding-right">是否采用CTE-AE 3.0评估:</label><div class="col-xs-12 col-sm-9"><label class=" "><input value="1" type="radio"class="ace badinformationCctaeStatus" name="cteaeStatus' + length + '"/><span class="lbl">是</span></label>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<label class=" "><input value="2" type="radio"class="ace badinformationCctaeStatus" name="cteaeStatus' + length + '"/><span class="lbl">否</span></label>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<label class=" "><input value="3" type="radio"class="ace"name="cteaeStatus' + length + '"/><span class="lbl">未知</span></label></div></div>' +
                '<div class="form-group" hidden id="divcteaeStatuslevel' + length + '"><label class="control-label col-xs-12 col-sm-3 no-padding-right">请勾选级别</label> <div class="col-xs-12 col-sm-9"><label class=" "><input value="1" type="radio"class="ace badinformationCctaeLevel" name="cteaeStatuslevel' + length + '"/><span class="lbl">1</span></label>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<label class=" "><input value="2" type="radio" class="ace badinformationCctaeLevel" name="cteaeStatuslevel' + length + '"/><span class="lbl">2</span></label>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<label class=" "><input value="3" type="radio"class="ace badinformationCctaeLevel" name="cteaeStatuslevel' + length + '"/><span class="lbl">3</span></label>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<label class=" "><input value="4" type="radio"class="ace badinformationCctaeLevel" name="cteaeStatuslevel' + length + '"/><span class="lbl">4</span></label>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<label class=" "><input value="5" type="radio"class="ace badinformationCctaeLevel" name="cteaeStatuslevel' + length + '"/><span class="lbl">5</span></label></div></div>' +
                '<div class="form-group"><label class="control-label col-xs-12 col-sm-3 no-padding-right">与当前治疗药物的关系:</label><div class="col-xs-12 col-sm-9"><div class="clearfix"><label class=" "><input value="1" type="radio" class="ace badinformationMedicineRealation" name="guanxiStatus'+length+'"/><span class="lbl">无关</span></label>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<label class=" "><input value="2" type="radio"class="ace badinformationMedicineRealation"name="guanxiStatus'+length+'"/><span class="lbl">可能无关</span></label>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<label class=" "><input value="3" type="radio"class="ace badinformationMedicineRealation" name="guanxiStatus'+length+'"/><span class="lbl">可能有关</span></label>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<label class=" "><input value="4" type="radio"class="ace badinformationMedicineRealation"name="guanxiStatus'+length+'"/><span class="lbl">很可能有关</span></label>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<label class=" "><input value="5" type="radio"class="ace"name="guanxiStatus'+length+'"/><span class="lbl">有关</span></label></div></div></div>' +
                '<div class="form-group"><label class="control-label col-xs-12 col-sm-3 no-padding-right">与当前非治疗药物的关系:</label><div class="col-xs-12 col-sm-9"><label class=" "><input value="1" type="radio" class="ace badinformationNonMedicineRealation" name="guanxifeiStatus'+length+'"/><span class="lbl">无关</span></label>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<label class=" "><input value="2" type="radio"class="ace badinformationNonMedicineRealation" name="guanxifeiStatus'+length+'"/><span class="lbl">可能无关</span></label>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<label class=" "><input value="3" type="radio" class="ace badinformationNonMedicineRealation" name="guanxifeiStatus'+length+'"/><span class="lbl">可能有关</span></label> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<label class=" "><input value="4" type="radio"class="ace badinformationNonMedicineRealation"name="guanxifeiStatus'+length+'"/><span class="lbl">很可能有关</span></label>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<label class=" "><input value="5" type="radio"class="ace badinformationMedicineRealation"name="guanxifeiStatus'+length+'"/><span class="lbl">有关</span></label></div></div>' +
                '<div class="form-group"><label class="control-label col-xs-12 col-sm-3 no-padding-right">特殊情况:</label><div class="col-xs-12 col-sm-9"><label class=" "><input value="1" type="radio" class="ace badinformationSpecialInformation" name="teshuStatus'+length+'"/><span class="lbl">杨森药品剂量过大</span></label>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<label class=" "><input value="2" type="radio" class="ace badinformationSpecialInformation" name="teshuStatus'+length+'"/><span class="lbl">哺乳期杨森研究药品暴露</span></label>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<label class=" "><input value="3" type="radio" class="ace badinformationSpecialInformation" name="teshuStatus'+length+'"/><span class="lbl">怀疑滥用/误用杨森药品</span></label>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<label class=" "><input value="4" type="radio" class="ace badinformationSpecialInformation" name="teshuStatus'+length+'"/><span class="lbl">无意或意外接触到杨森研究药品</span></label>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<label class=" "><input value="5" type="radio" class="ace badinformationSpecialInformation"name="teshuStatus'+length+'"/><span class="lbl">杨森研究药品任何预期的药理作用的失败（如缺乏效果）</span></label>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<label class=" "><input value="6" type="radio"class="ace badinformationSpecialInformation" name="teshuStatus'+length+'"/><span class="lbl">使用杨森研究药品获得非预期的药理作用或临床疗效</span></label>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<label class=" "><input value="7" type="radio" class="ace badinformationSpecialInformation" name="teshuStatus'+length+'"/><span class="lbl">涉及药物的药物错投（有或没有病人使用杨森研究药品，如药品混淆）</span></label></div></div>' +
                '<div class="form-group"><label class="control-label col-xs-12 col-sm-3 no-padding-right">妊娠异常情况:</label><div class="col-xs-12 col-sm-9"><label class=" "><input value="1" type="radio" class="ace badinformationPregnant" name="huaiyunStatus'+length+'"/><span class="lbl">流产</span></label>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<label class=" "><input value="2" type="radio"class="ace badinformationPregnant" name="huaiyunStatus'+length+'"/><span class="lbl">胎儿死亡</span></label>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<label class=" "><input value="3" type="radio" class="ace badinformationPregnant" name="huaiyunStatus'+length+'"/><span class="lbl">死胎</span></label>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<label class=" "><input value="4" type="radio"class="ace"name="huaiyunStatus'+length+'"/><span class="lbl">先天性异常</span></label>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<label class=" "><input value="5" type="radio" class="ace badinformationPregnant" name="huaiyunStatus'+length+'"/><span class="lbl">异位妊娠</span></label></div></div>' +
                '<div class="form-group"><label class="control-label col-xs-12 col-sm-3 no-padding-right">受试者转归:</label><div class="col-xs-12 col-sm-9"><label class=" "><input value="1" type="radio" class="ace badinformationOutcomeOfSubjects" name="zhuanguiStatus'+length+'"/><span class="lbl">恢复</span></label>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<label class=" "><input value="2" type="radio"class="ace badinformationOutcomeOfSubjects" name="zhuanguiStatus'+length+'"/><span class="lbl">尚未恢复</span></label>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<label class=" "><input value="3" type="radio"class="ace badinformationOutcomeOfSubjects" name="zhuanguiStatus'+length+'"/><span class="lbl">死于不良事件</span></label>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<label class=" "><input value="4" type="radio" class="ace badinformationOutcomeOfSubjects" name="zhuanguiStatus'+length+'"/><span class="lbl">未知</span></label></div></div>' +
                '<div class="form-group"><label class="control-label col-xs-12 col-sm-3 no-padding-right">是否作为严重不良事件报告:</label><div class="col-xs-12 col-sm-9"><label class=" "><input value="1" type="radio" class="ace badinformationCritical" name="baogaoStatus'+length+'"/><span class="lbl">是（同时填写严重不良事件表）</span></label>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<label class=" "><input value="2" type="radio"class="ace badinformationCritical" name="baogaoStatus'+length+'"/><span class="lbl">否</span></label></div></div>' +
                '</div></div></div></td>'));
                $('#badInformationTable tbody').append(element);

                $('input[type=radio][name=cteaeStatus' + length + ']').change(function () {
                    if (this.value == '1') {
                        $('#divcteaeStatuslevel' + length + '').show();
                    } else {
                        $('#divcteaeStatuslevel' + length + '').hide();
                    }
                });

            });


            $("#evaluateResult").css('width', '300px').select2({allowClear: true})
                    .on('change', function () {
                        if ($("#evaluateResult").select2('val') == 10) {
                            $('#evaluateResultOtherLabel').show();
                            $('#evaluateResultOther').show();
                        } else {
                            $('#evaluateResultOtherLabel').hide();
                            $('#evaluateResultOther').hide();
                        }
                        $(this).closest('form').validate().element($(this));
                    });
            $("#curePlanStep").css('width', '300px').select2({allowClear: true})
                    .on('change', function () {
                        if ($("#curePlanStep").select2('val') == 7) {
                            $('#divCurePlanStepOther').show();
                        } else {
                            $('#divCurePlanStepOther').hide();
                        }
                        $(this).closest('form').validate().element($(this));
                    });

            $("#hospitalCurePlanStep").css('width', '200px').select2({allowClear: true})
                    .on('change', function () {
                        if ($("#hospitalCurePlanStep").select2('val') == 7) {
                            $('.divHCurePlanStepOther').show();
                        } else {
                            $('.divHCurePlanStepOther').hide();
                        }
                        $(this).closest('form').validate().element($(this));
                    });
 $("#changeCurePlanStep").css('width', '200px').select2({allowClear: true})
                    .on('change', function () {
                        if ($("#changeCurePlanStep").select2('val') == 7) {
                            $('.divCCurePlanStepOther').show();
                        } else {
                            $('.divCCurePlanStepOther').hide();
                        }
                        $(this).closest('form').validate().element($(this));
                    });


            $('#addBFZbtn1').on('click', function () {
                var length = $('#BFZTable1 tbody').find('tr').length+1;
                var element = $('<tr data-id="0" data-index="'+length+'"></tr>');
                element.append($('<td>其他:&nbsp;<input type="text" type="text" style="width: 300px;"/></td>'));
                element.append($('<td><label><input value="1" type="radio" class="ace" name="present' + length +
                '" /> <span class="lbl">是</span></label><label  ><input value="2" type="radio" class="ace" name="present' +
                length + '" /> <span class="lbl">否</span> </label> </td>'));
                element.append($('<td><a style="cursor: pointer;color:red" onclick="$(this).parent().parent().remove()"><i class="ace-icon fa fa-close"></i>删除</a></td>'));
                $('#BFZTable1 tbody').append(element);
            });


            $(".select2").css('width', '570px').select2({allowClear: true})
                    .on('change', function () {
                        $(this).closest('form').validate().element($(this));
                    });

            $("#insuranceType").css('width', '300px').select2({allowClear: true})
                    .on('change', function () {
                        if ($("#insuranceType").select2('val') == 6) {
                            $('#otherInsuranceLabel').show();
                            $('#otherInsurance').show();
                        } else {
                            $('#otherInsuranceLabel').hide();
                            $('#otherInsurance').hide();
                        }
                    });

            $("#estimateResult").css('width', '300px').select2({allowClear: true})
                    .on('change', function () {
                        if ($("#estimateResult").select2('val') == 10) {
                            $('#estimateResultOtherLabel').show();
                            $('#estimateResultOther').show();
                        } else {
                            $('#estimateResultOtherLabel').hide();
                            $('#estimateResultOther').hide();
                        }
                    });


            $(".select2-300").css('width', '300px').select2();


            $(".text-265").css('width', '265px');

            $(".text-300").css('width', '300px');

            $(".text-150").css('width', '150px');
            $(".text-120").css('width', '120px');

            $('.full-width').css('width', '100%');
            $.ajax({
                dataType: "json",
                url: "${contextPath}/patient/${patientId}?hospitalId=${hospitalId}",
                type: "get",
                success: function (response) {
                    if (response.success) {
                        setupData(response.result);
                    } else {
                        bootbox.dialog({
                            message: response.message,
                            buttons: {
                                "success": {
                                    "label": "OK",
                                    "className": "btn-sm btn-primary"
                                }
                            }
                        });
                    }
                }
            });

            $('.input-underline').css('border', 'none').css('border-bottom', '2px solid black').css('padding-bottom', '0');

            $('input[type=radio][name=patient_type]').change(function () {
                if (this.value == '2') {
                    $('#patient_type0_select').show();
                    $('#patient_type1_select').hide();
                }
                else if (this.value == '1') {
                    $('#patient_type1_select').show();
                    $('#patient_type0_select').hide();
                }
            });
            $('input[type=radio][name=lcfq_before]').change(function () {
                if (this.value == '2') {
                    $('#lcfq_before0_sub').show();
                    $('#lcfq_before1_sub').hide();
                }
                else if (this.value == '1') {
                    $('#lcfq_before1_sub').show();
                    $('#lcfq_before0_sub').hide();
                }
            });

            var $validation = true;
            var $currentStep = 1;
            $('#fuelux-wizard-container')
                    .ace_wizard({
                        //step: 2 //optional argument. wizard will jump to step "2" at first
                        //buttons: '.wizard-actions:eq(0)'
                    })
                    .on('actionclicked.fu.wizard', function (e, info) {
                        /*if (info.step == 1 && $validation) {
                            if (!$('#form-step1').valid()) e.preventDefault();
                        }*/
                        if(${!editable}){
                              if(info.step==4) {
                                  $('#nextBtn').attr('disabled',true);
                              } else {
                                  $('#nextBtn').attr('disabled',false);
                              }
                          }
                    })
                    .on('finished.fu.wizard', function (e) {
                        if(${editable}) {
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
                                message: '确认提交回顾性采集信息,提交后不可再修改？',
                                callback: function (result) {
                                    if (result) {
                                        submitAcq(1);
                                        $('#submitButton').attr('disabled',true);
                                    }
                                }
                            });
                        }

                    }).on('stepclick.fu.wizard', function (e) {
                        //e.preventDefault();//this will prevent clicking and selecting steps
                    });


            $('#btn_comorbidities_yes').on('click', function () {
                $('#comorbidities_div').removeClass('hide');
            });

            $('#btn_comorbidities_no').on('click', function () {
                $('#comorbidities_div').addClass('hide');
            });

            $(".add_comorbidities").click(function () {
                //var content = $('<div class="remove_content"><input class="remove_val"/><button class="remove">删除</button></div>');

                var content = $('<div class="form-group"><label class="control-label col-xs-12 col-sm-3 no-padding-right" for="patient_alt">ALT (lU/l):</label><div class="col-xs-12 col-sm-4"><input type="text" value="Result" class="col-xs-12 col-sm-12" id="form-input-alpresult" /></div><div class="col-xs-12 col-sm-2"><a href="#" class="remove_comorbidities"><i class="ace-icon fa fa-minus-circle"></i>Remove Comorbitity</a></div></div>');
                $("#comorbidities_div").append(content);
                $(".remove_comorbidities").click(function () {
                    /* var remove_val = $(this).siblings(".remove_val").val();
                     if(remove_val == "" || remove_val == undefined){

                     }else{
                     alert(remove_val);
                     } */
                    $(this).parent(this).parent().remove();
                });
            });

            $.mask.definitions['~'] = '[+-]';
            $('.mobile-phone').mask('99999999999');

            jQuery.validator.addMethod("mobilePhoneFormat", function (value, element) {
                return this.optional(element) || /(^(13\d|15[^4\D]|17[13678]|18\d)\d{8}|170[^346\D]\d{7})$/.test(value);
            }, "请输入11位的手机号.");

            $('#modal-wizard-container').ace_wizard();
            $('#modal-wizard .wizard-actions .btn[data-dismiss=modal]').removeAttr('disabled');

            //datepicker plugin
            //link
            $('.date-picker').datepicker({
                autoclose: true,
                todayHighlight: true
            })

            $(document).one('ajaxloadstart.page', function (e) {
                //in ajax mode, remove remaining elements before leaving page
                $('[class*=select2]').remove();
            });

//            $('#submitButton').on('click', function () {
//                if (!$('#form-step1').valid()) {
//                    return;
//                }
//                var target = $(":radio");
//                var which = parseInt(target.val());
//                alert(which);
//
//            });
        })
    });
</script>
