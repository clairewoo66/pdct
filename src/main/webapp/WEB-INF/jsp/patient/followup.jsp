<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"></c:set>

<link rel="stylesheet"
      href="${contextPath}/static/assets/css/select2.css"/>

<div class="row">
    <div class="col-xs-12">
        <div class="widget-body">
            <div class="widget-main">
                <!-- #section:plugins/fuelux.wizard -->
                <div class="row">
                    <div
                            class="col-xs-12 label label-lg label-success arrowed-in arrowed-right">
                        <b id='maodian'>患者研究编号:${patientId}</b>
                    </div>
                </div>
                <hr/>
                <div id="fuelux-wizard-container">
                    <div>
                        <!-- #section:plugins/fuelux.wizard.steps -->
                        <ul class="steps">
                            <li data-step="1" class="active"><span class="step">1</span>
                                <span class="title">患者信息</span></li>

                            <li data-step="2"><span class="step">2</span> <span
                                    class="title">疾病诊断信息</span></li>

                            <li data-step="3"><span class="step">3</span> <span
                                    class="title">治疗信息</span></li>

                            <li data-step="4"><span class="step">4</span> <span
                                    class="title">随访数据</span></li>
                            <li data-step="5"><span class="step">5</span> <span
                                    class="title">完成</span></li>
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
                                    <h4
                                            class="control-label green bolder col-xs-12 col-sm-2 no-padding-right">
                                        人口统计学变量
                                    </h4>
                                </div>
                                <div class="form-group">
                                    <input id="patientIdField" hidden value="0"/>
                                    <input id="fkhospitalid" hidden value="0"/>
                                    <label
                                            class="control-label col-xs-12 col-sm-2 no-padding-right"
                                            for="birthday">出生日期:</label>
                                    <div class="col-xs-12 col-sm-9">
                                        <div class="input-group">
											<span class="input-group-addon"> <i
                                                    class="ace-icon fa fa-calendar"></i>
											</span>
                                            <input type="text" id="birthday" name="birthday" type="birthday"
                                                   class="form-control text-265 changeCheck dataDay"/> &nbsp;&nbsp; <span>
												(格式:yyyy-mm-dd) </span>
                                            <span class="label label-danger checkVal" hidden>
												未完成输入项
											</span>
                                        </div>

                                    </div>
                                </div>

                                <div class="space-2"></div>

                                <div class="form-group">
                                    <label
                                            class="control-label col-xs-12 col-sm-2 no-padding-right">性别:</label>
                                    <div class="col-xs-12 col-sm-9">
                                        <label class="line-height-1">
                                            <input value="1" type="radio" class="ace radioCheck radiocheckxb" name="gender"/>
                                            <span class="lbl">男</span>
                                        </label>&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;<label>

                                            <input value="2" type="radio" class="ace radioCheck radiocheckxb" name="gender"/>
                                            <span class="lbl">女</span>
                                        </label>

                                        <span class="label label-danger checkValXB" hidden>
												未完成输入项
											</span>
                                    </div>
                                </div>

                                <div class="space-2"></div>
                                <div class="form-group">
                                    <label
                                            class="control-label col-xs-12 col-sm-2 no-padding-right">民族:</label>
                                    <div class="col-xs-12 col-sm-9">
                                        <label class="line-height-1  "> <input value="1" type="radio" class=" ace radioCheck radiocheckmz" name="nation"/>
                                            <span class="lbl">汉族</span>
                                        </label>&nbsp; &nbsp;<label>
                                        <input value="2" type="radio" class="ace radioCheck radiocheckmz" name="nation"/>
                                        <span class="lbl">其他</span>&nbsp; &nbsp;
                                        <input type="text" id="nationOther" class="text-150" name="nationOther"/>

                                    </label>
                                        <span class="label label-danger checkValMZ" hidden>
												未完成输入项
                                        </span>
                                    </div>
                                </div>
                                <div class="space-2"></div>
                                <div class="form-group">
                                    <label
                                            class="control-label col-xs-12 col-sm-2 no-padding-right"
                                            for="place">居住地:</label>
                                    <div class="col-xs-12 col-sm-9">
                                        <select id="place" name="place"
                                                class="select2-300 selectCheck" data-placeholder="">
                                            <option value="0" selected>未选择</option>
                                            <option value="1">市区</option>
                                            <option value="2">郊区</option>
                                            <option value="3">农村</option>
                                        </select>
                                        <span class="label label-danger checkVal" hidden>
												未完成输入项
									        </span>
                                    </div>
                                </div>
                                <div class="space-2"></div>
                                <div class="form-group">
                                    <label
                                            class="control-label col-xs-12 col-sm-2 no-padding-right"
                                            for="height">身高(cm):</label>

                                    <div class="col-xs-12 col-sm-9">
                                        <div class="clearfix">
                                            <input type="text" name="height" id="height" class="text-300 cmSize changeCheck"/>
                                            <span class="label label-danger checkVal" hidden>
												未完成输入项
									        </span>
                                        </div>
                                    </div>
                                </div>
                                <div class="space-2"></div>
                                <div class="form-group">

                                    <label
                                            class="control-label col-xs-12 col-sm-2 no-padding-right"
                                            for="weight">体重(kg):</label>

                                    <div class="col-xs-12 col-sm-9">
                                        <div class="clearfix">
                                            <input type="text" name="weight" id="weight" class="text-300 cmSize changeCheck"/>
                                            <span class="label label-danger checkVal" hidden>
												未完成输入项
									        </span>
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
                                                   class="text-300 cmSize changeCheck" />
                                            <span class="label label-danger checkVal" hidden>
												未完成输入项
									        </span>
                                        </div>
                                    </div>
                                </div>
                                <div class="space-2"></div>
                                <div class="form-group">
                                    <label class="control-label col-xs-12 col-sm-2 no-padding-right">是否吸烟:</label>
                                    <div class="col-xs-12 col-sm-9">
                                        <label class=" ">
                                            <input value="1" type="radio" class="ace radioCheck radiocheckxy" name="smokingStatus"/>
                                            <span class="lbl">从未吸烟</span>
                                        </label>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<label>
                                        <input value="2" type="radio" class="ace radioCheck radiocheckxy" name="smokingStatus"/>
                                            <span class="lbl">已经戒烟</span>
                                        </label>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<label>
                                        <input value="3" type="radio" class="ace radioCheck radiocheckxy" name="smokingStatus"/>
                                            <span class="lbl">仍在吸烟</span>
                                    </label>
                                        <span class="label label-danger checkValXY" hidden>
												未完成输入项
											</span>
                                    </div>
                                </div>
                                <div class="space-2"></div>
                                <div class="form-group">

                                    <label class="control-label col-xs-12 col-sm-2 no-padding-right">是否饮酒:</label>
                                    <div class="col-xs-12 col-sm-9">
                                        <label>
                                        <input value="1" type="radio" class="ace radioCheck radioCheckxj" name="drinkStatus"/>
                                        <span class="lbl">酗酒</span>
                                            </label> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<label>
                                        <input value="2" type="radio" class="ace radioCheck radioCheckxj" name="drinkStatus"/>
                                        <span class="lbl">偶尔</span>
                                                </label> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<label>
                                        <input value="3" type="radio" class="ace radioCheck radioCheckxj" name="drinkStatus"/>
                                        <span class="lbl">从未</span>
                                    </label>
                                        <span class="label label-danger checkValYJ" hidden>
												未完成输入项
                                        </span>
                                    </div>
                                </div>
                                <div class="space-2"></div>
                                <div class="form-group">
                                    <label
                                            class="control-label col-xs-12 col-sm-2 no-padding-right"
                                            for="ecogMark">ECOG评分:</label>

                                    <div class="col-xs-12 col-sm-9">
                                        <select id="ecogMark" class="select2-300 selectCheck" name="ecogMark">
                                            <option value="0" selected>未选择 </option>
                                            <option value="1">0分</option>
                                            <option value="2">1分</option>
                                            <option value="3">2分</option>
                                            <option value="4">3分</option>
                                            <option value="5">4分</option>
                                            <option value="6">5分</option>
                                        </select><span class="label label-danger checkVal" hidden>
												未完成输入项
									        </span>
                                    </div>
                                </div>
                                <div class="space-2"></div>
                                <div class="form-group">
                                    <label
                                            class="control-label col-xs-12 col-sm-2 no-padding-right"
                                            for="karnofskyMark">Karnofsky评分:</label>

                                    <div class="col-xs-12 col-sm-9">
                                        <div class="clearfix">
                                            <input type="text" name="karnofskyMark" id="karnofskyMark"
                                                   class="text-300 changeCheck zszSize"/>
                                            <span class="label label-danger checkVal" hidden>
												未完成输入项
									        </span>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <!-- <h4 class="lighter block green bolder col-xs-12 col-sm-2 no-padding-right">患者信息</h4> -->
                                    <h4
                                            class="control-label green bolder col-xs-12 col-sm-2 no-padding-right">
                                        社会经济学变量</h4>
                                </div>
                                <div class="space-2"></div>
                                <div class="form-group">
                                    <label
                                            class="control-label col-xs-12 col-sm-2 no-padding-right"
                                            for="familyIncome">家庭人均月收入:</label>

                                    <div class="col-xs-12 col-sm-9">
                                        <select id="familyIncome" class="select2-300 selectCheck"
                                                name="familyIncome">
                                            <option value="0" selected>未选择</option>
                                            <option value="1">低于5000元</option>
                                            <option value="2">5000-10000元</option>
                                            <option value="3">10001-15000元</option>
                                            <option value="4">高于15000元</option>
                                        </select>
                                        <span class="label label-danger checkVal" hidden>
												未完成输入项
									        </span>
                                    </div>
                                </div>

                                <!-- <h4 class="lighter block green bolder">2.社会经济学变量</h4> -->
                                <div class="form-group">
                                    <label
                                            class="control-label col-xs-12 col-sm-2 no-padding-right"
                                            for="maritalStatus">婚姻状态:</label>

                                    <div class="col-xs-12 col-sm-9">
                                        <select id="maritalStatus" class="select2-300 selectCheck"
                                                name="maritalStatus">
                                            <option value="0" selected>未选择</option>
                                            <option value="1">未婚</option>
                                            <option value="2">已婚</option>
                                            <option value="3">离异</option>
                                            <option value="4">丧偶</option>
                                        </select>
                                        <span class="label label-danger checkVal" hidden>
												未完成输入项
									        </span>
                                    </div>
                                </div>
                                <div class="space-2"></div>
                                <div class="form-group">
                                    <label
                                            class="control-label col-xs-12 col-sm-2 no-padding-right"
                                            for="eduLevel">教育程度:</label>

                                    <div class="col-xs-12 col-sm-9">
                                        <select id="eduLevel" class="select2-300 selectCheck" name="eduLevel">
                                            <option value="0" selected>未选择</option>
                                            <option value="1">高中以下</option>
                                            <option value="2">高中及中专</option>
                                            <option value="3">本科及大专</option>
                                            <option value="4">本科以上</option>
                                        </select>
                                        <span class="label label-danger checkVal" hidden>
												未完成输入项
									        </span>
                                    </div>
                                </div>
                                <div class="space-2"></div>
                                <div class="form-group">
                                    <label
                                            class="control-label col-xs-12 col-sm-2 no-padding-right"
                                            for="jobStatus">工作状况:</label>

                                    <div class="col-xs-12 col-sm-9">
                                        <select id="jobStatus" class="select2-300 selectCheck" name="jobStatus">
                                            <option value="0" selected>未选择</option>
                                            <option value="1">在校学生</option>
                                            <option value="2">全职</option>
                                            <option value="3">待业</option>
                                            <option value="4">务农</option>
                                            <option value="5">退休</option>
                                        </select>
                                        <span class="label label-danger checkVal" hidden>
												未完成输入项
									        </span>
                                    </div>
                                </div>
                                <div class="space-2"></div>
                                <div class="form-group">
                                    <label class="control-label col-xs-12 col-sm-2 no-padding-right"
                                           for="insuranceType">医保类型:</label>

                                    <div class="col-xs-12 col-sm-4">
                                        <select id="insuranceType" name="insuranceType" class="selectCheck">
                                            <option value="0" selected>未选择</option>
                                            <option value="1">城镇职工医保</option>
                                            <option value="2">城镇居民医保</option>
                                            <option value="3">新农合</option>
                                            <option value="4">商业医保</option>
                                            <option value="5">完全自费</option>
                                            <option value="6">其他</option>
                                        </select>
                                        <span class="label label-danger checkVal" hidden>
												未完成输入项
									        </span>
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
                                                <td colspan="2"><font color="#ffffff">3.疾病诊断信息</font>
                                                    <span class="label label-danger diagnosisCheck3" hidden>
												        未完成输入项
											        </span>
                                                </td>
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
                                                                   name="invasionDiagnosis" />
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
                                                <td colspan="3"><font color="#ffffff">4.诊断时疾病相关并发症发生情况</font>
                                                    <span class="label label-danger diagnosisCheck4" hidden>
												        未完成输入项
											        </span>
                                                </td>

                                            </tr>
                                            </thead>
                                            <tbody>

                                            <tr  id="trGaoGaiXueZheng" data-id="0" data-index="1">
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
                                                <td colspan="3"><font color="#ffffff">5.疾病诊断时共患病发生情况</font>
                                                    <span class="label label-danger diagnosisCheck5" hidden>
												        未完成输入项
											        </span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td width="85%">疾病名称</td>
                                                <%--<td width="40%">诊断日期(格式:yyyy-mm-dd)</td>--%>
                                                <td width="15%"></td>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <tr data-id="0" data-index="1">
                                                <td><input type="text" class="text-265" name="name"/></td>
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
                                                <td colspan="2"><font color="#ffffff">6.疾病诊断时疾病相关实验室检查</font>
                                                    <span class="label label-danger diagnosisCheck6" hidden>
												        未完成输入项
											        </span>
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
                                                <td><input name="diagnosisExaminationNIgg" type="text" id="IgG" class="cmSize"/></td>
                                            </tr>
                                            <tr>
                                                <td>IgA (g/L)</td>
                                                <td><input name="diagnosisExaminationNIga" type="text" id="IgA" class="cmSize"/></td>
                                            </tr>
                                            <tr>
                                                <td>IgM (g/L)</td>
                                                <td><input name="diagnosisExaminationNIgm" type="text" id="IgM" class="cmSize"/></td>
                                            </tr>
                                            <tr>
                                                <td>IgE (IU/ml)</td>
                                                <td><input name="diagnosisExaminationNIge" type="text" id="IgE" class="cmSize"/></td>
                                            </tr>
                                            <tr>
                                                <td>IgD (g/L)</td>
                                                <td><input name="diagnosisExaminationNIgd" type="text" id="IgD" class="cmSize"/></td>
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
                                                    <input name="diagnosisExaminationXYkLightChain" type="text" class="cmSize" id="diagnosisExaminationXYkLightChain"/>
                                                </td>
                                            </tr>
                                            <tr hidden id="trdiagnosisExaminationXYnLightChain">
                                                <td>λ轻链 (mg/dl)</td>
                                                <td>
                                                    <input name="diagnosisExaminationXYnLightChain" type="text" class="cmSize" id="diagnosisExaminationXYnLightChain"/>
                                                </td>
                                            </tr>
                                            <tr hidden id="trdiagnosisExaminationXYknLightChain">
                                                <td>轻链κ/λ比值</td>
                                                <td>
                                                    <input name="diagnosisExaminationXYknLightChain" type="text" class="zsfSize" id="diagnosisExaminationXYknLightChain"/>
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
                                                <td colspan="3"><font color="#ffffff">7.疾病诊断时骨髓穿刺涂片细胞学检查</font>
                                                    <span class="label label-danger diagnosisCheck7" hidden>
												        未完成输入项
											        </span>
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
                                                <td><input type="text" id="syjxb1" class="zsxSize"/></td>
                                                <td></td>
                                            </tr>
                                            <tr data-id="0" data-index="2">
                                                <td>原浆细胞 (%)</td>
                                                <td><input type="text" id="yjxb1" class="zsxSize"/></td>
                                                <td></td>
                                            </tr>
                                            <tr data-id="0" data-index="3">
                                                <td>幼浆细胞 (%)</td>
                                                <td><input type="text" id="youjxb1" class="zsxSize"/></td>
                                                <td></td>
                                            </tr>
                                            <tr data-id="0" data-index="4">
                                                <td>中间浆细胞 (%)</td>
                                                <td><input type="text" id="zjjxb1" class="zsxSize"/></td>
                                                <td></td>
                                            </tr>
                                            <tr data-id="0" data-index="5">
                                                <td>成熟浆细胞 (%)</td>
                                                <td><input type="text" id="csxb1" class="zsxSize"/></td>
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
                                                <td colspan="4"><font color="#ffffff">8.疾病诊断时全身骨骼影像学检查</font>
                                                    <span class="label label-danger diagnosisCheck8" hidden>
												        未完成输入项
											        </span>
                                                </td>

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
                                                <td><textarea class="autosize-transition form-control"  id="X1"
                                                              style="overflow: hidden; word-wrap: break-word; resize: horizontal;"></textarea>
                                                </td>
                                                <td></td>
                                            </tr>

                                            <tr data-id="0" data-index="2">
                                                <td>CT</td>
                                                <td><textarea class="autosize-transition form-control"
                                                              style="overflow: hidden; word-wrap: break-word; resize: horizontal;"></textarea>
                                                </td>
                                                <td><textarea class="autosize-transition form-control"  id="CT1"
                                                              style="overflow: hidden; word-wrap: break-word; resize: horizontal;"></textarea>
                                                </td>
                                                <td></td>
                                            </tr>
                                            <tr data-id="0" data-index="3">
                                                <td>MRI</td>
                                                <td><textarea class="autosize-transition form-control"
                                                              style="overflow: hidden; word-wrap: break-word; resize: horizontal;"></textarea>
                                                </td>
                                                <td><textarea class="autosize-transition form-control"  id="MRI1"
                                                              style="overflow: hidden; word-wrap: break-word; resize: horizontal;"></textarea>
                                                </td>
                                                <td></td>
                                            </tr>
                                            <tr data-id="0" data-index="4">
                                                <td>PET-CT</td>
                                                <td><textarea class="autosize-transition form-control"
                                                              style="overflow: hidden; word-wrap: break-word; resize: horizontal;"></textarea>
                                                </td>
                                                <td><textarea class="autosize-transition form-control"  id="PET1"
                                                              style="overflow: hidden; word-wrap: break-word; resize: horizontal;"></textarea>
                                                </td>
                                                <td></td>
                                            </tr>
                                            <tr data-id="0" data-index="5">
                                                <td>同位素骨扫描</td>
                                                <td><textarea class="autosize-transition form-control"
                                                              style="overflow: hidden; word-wrap: break-word; resize: horizontal;"></textarea>
                                                </td>
                                                <td><textarea class="autosize-transition form-control"  id="TWS1"
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
                                                <td colspan="4"><font color="#ffffff">9.疾病诊断时全身软组织浆细胞瘤检查</font>
                                                    <span class="label label-danger diagnosisCheck9" hidden>
												        未完成输入项
											        </span>
                                                </td>

                                            </tr>
                                            <tr>
                                                <td width="20%">检查项目</td>
                                                <td width="25%">病变位置(系统可多选)</td>
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
                                                <td colspan="4"><font color="#ffffff">10.FISH检查</font>
                                                    <span class="label label-danger diagnosisCheck10 checkFlagrs" hidden>
												        未完成输入项
											        </span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="3">患者是否存在染色体异常:</td>
                                            </tr>
                                            <tr>
                                                <td colspan="3">
                                                    <div>
                                                        <label class="line-height-1  ">
                                                            <input value="1" type="radio" class="ace checkFlag" name="fishexception"/>
                                                            <span class="lbl">是。如果是，请在下表填写结果</span>
                                                        </label>
                                                        &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;
                                                        <label class="line-height-1  ">
                                                            <input value="2" type="radio" class="ace checkFlag"
                                                                   name="fishexception"/>
                                                            <span class="lbl">否</span>
                                                        </label>
                                                        &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;
                                                        <label class="line-height-1  ">
                                                            <input value="3" type="radio" class="ace checkFlag"
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
                                                <td><input name="igh" type="text" id=IgH"" class="zsxSize"/></td>
                                                <td></td>
                                            </tr>
                                            <tr hidden id="trfish13qItem" data-id="0" data-index="2">
                                                <td> 13q缺失 (%)</td>
                                                <td><input name="13q" type="text" id=13q"" class="zsxSize"/></td>
                                                <td></td>
                                            </tr>
                                            <tr hidden id="trfish17qItem" data-id="0" data-index="3">
                                                <td> 17p缺失 (%)</td>
                                                <td><input name="17q" type="text" id="17p" class="zsxSize"/></td>
                                                <td></td>
                                            </tr>
                                            <tr hidden id="trfish1q21Item" data-id="0" data-index="4">
                                                <td>1q21扩增(%)</td>
                                                <td><input name="1q21" type="text" id="1q21" class="zsxSize"/></td>
                                                <td></td>
                                            </tr>
                                            <tr hidden id="trfisht414Item" data-id="0" data-index="5">
                                                <td>t(4;14) (%)</td>
                                                <td><input name="t414" type="text" id="t1" class="zsxSize"/></td>
                                                <td></td>
                                            </tr>
                                            <tr hidden id="trfisht1114Item" data-id="0" data-index="6">
                                                <td>t(11;14) (%)</td>
                                                <td><input name="t1114" type="text" id="t2" class="zsxSize"/></td>
                                                <td></td>
                                            </tr>
                                            <tr hidden id="trfisht1416Item" data-id="0" data-index="7">
                                                <td>t(14;16) (%)</td>
                                                <td><input name="t1416" type="text" id="t3" class="zsxSize"/></td>
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
                                <input id="historyInfoShow" value="0" hidden/>
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-1"></div>
                                    <div class="col-xs-12 col-sm-10">
                                        <table class="table" id="historyInfoShowMM">
                                            <thead>
                                            <tr style="background-color:#80be4a">
                                                <td colspan="3"><font color="#ffffff">既往mm相关的治疗信息:</font></td>
                                            </tr>
                                            <tr>
                                                <th>治疗时间段</th>
                                                <th>治疗方案</th>
                                                <th>疗效评估的具体结果</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <tr>
                                            </tr>

                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-1"></div>
                                    <div class="col-xs-12 col-sm-10">
                                        <table class="table" id="historyInfoShowHospital">
                                            <thead>
                                            <tr style="background-color:#80be4a">
                                                <td colspan="3"><font color="#ffffff">观察期间的住院治疗信息:</font></td>
                                            </tr>
                                            <tr>
                                                <th>治疗时间段</th>
                                                <th>治疗方案</th>
                                                <th>疗效评估的具体结果</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <tr>
                                            </tr>

                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </form>
                        </div>

                        <div class="step-pane" data-step="4">
                            <form class="form-horizontal" id="form-step4" method="get">
                                <input id="followupId"  type="text" hidden/>
                                <div class="form-group">
                                    <label class="control-label col-xs-12 col-sm-2 no-padding-right">随访场所:</label>
                                    <div class="col-xs-12 col-sm-10">
                                        <label class="line-height-1  ">
                                            <input value="1" type="radio" class="ace" name="followupsites"
                                                    />
                                            <span class="lbl">门诊</span>
                                        </label>
                                        &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;
                                        <label class="line-height-1  ">
                                            <input value="2" type="radio" class="ace" name="followupsites"/>
                                            <span class="lbl">住院</span>
                                        </label>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-1"></div>
                                    <div class="col-xs-12 col-sm-10">
                                        <table class="table" id="followupComplicationStatusTable">
                                            <thead>
                                            <tr style="background-color: #80be4a">
                                                <td colspan="3"><font color="#ffffff">1.疾病相关并发症发生情况:</font></td>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <tr  id="followupGaoGaiXueZhengST" data-id="0" data-index="1">
                                                <td>高钙血症</td>
                                                <td><label> <input value="1" type="radio"
                                                                   class="ace" name="followupGaoGaiXueZhengST"/> <span
                                                        class="lbl">是</span>
                                                </label> &nbsp; <label> <input value="2" type="radio"
                                                                               class="ace"
                                                                               name="followupGaoGaiXueZhengST"/> <span
                                                        class="lbl">否</span>
                                                </label></td>
                                                <td></td>
                                            </tr>
                                            <tr  id="followupGuZheST" data-id="0" data-index="2">
                                                <td>病理性骨折</td>
                                                <td><label> <input value="1" type="radio"
                                                                   class="ace" name="followupGuZheST"/> <span
                                                        class="lbl">是</span>
                                                </label> &nbsp; <label> <input value="2" type="radio"
                                                                               class="ace" name="followupGuZheST"/>
                                                    <span class="lbl">否</span>
                                                </label></td>
                                                <td></td>
                                            </tr>
                                            <tr  id="followupJiSuiYaPoST" data-id="0" data-index="3">
                                                <td>脊髓压迫</td>
                                                <td><label> <input value="1" type="radio"
                                                                   class="ace" name="followupJiSuiYaPoST"/> <span
                                                        class="lbl">是</span>
                                                </label> &nbsp; <label> <input value="2" type="radio"
                                                                               class="ace" name="followupJiSuiYaPoST"/>
                                                    <span
                                                            class="lbl">否</span>
                                                </label></td>
                                                <td></td>
                                            </tr>
                                            <tr  id="followupZhiLiaoST" data-id="0" data-index="4">
                                                <td>需要进行放射治疗的骨痛</td>
                                                <td><label> <input value="1" type="radio"
                                                                   class="ace" name="followupZhiLiaoST"/> <span
                                                        class="lbl">是</span>
                                                </label> &nbsp; <label> <input value="2" type="radio"
                                                                               class="ace" name="followupZhiLiaoST"/>
                                                    <span
                                                            class="lbl">否</span>
                                                </label></td>
                                                <td></td>
                                            </tr>
                                            <tr data-id="0" data-index="5">
                                                <td>慢性肾病</td>
                                                <td><label> <input value="1" type="radio"
                                                                   class="ace" name="present2"/> <span
                                                        class="lbl">是</span>
                                                </label> &nbsp; <label> <input value="2" type="radio"
                                                                               class="ace" name="present2"/> <span
                                                        class="lbl">否</span>
                                                </label></td>
                                                <td></td>
                                            </tr>
                                            <tr data-id="0" data-index="6" hidden id="trFSTX">
                                                <td>患者是否需要接受透析治疗</td>
                                                <td>
                                                    <label>
                                                        <input value="1" type="radio" class="ace" name="fstxradio"
                                                        />
                                                        <span class="lbl">是</span>
                                                    </label> &nbsp;
                                                    <label>
                                                        <input value="2" type="radio" class="ace" name="fstxradio"
                                                        />
                                                        <span class="lbl">否</span>
                                                    </label>
                                                </td>
                                                <td></td>
                                            </tr>
                                            <tr data-id="0" data-index="7">
                                                <td>高粘滞血症</td>
                                                <td><label> <input value="1" type="radio"
                                                                   class="ace" name="present3"/> <span
                                                        class="lbl">是</span>
                                                </label> &nbsp; <label> <input value="2" type="radio"
                                                                               class="ace" name="present3"/> <span
                                                        class="lbl">否</span>
                                                </label></td>
                                                <td></td>
                                            </tr>
                                            <tr data-id="0" data-index="8">
                                                <td>贫血</td>
                                                <td><label> <input value="1" type="radio"
                                                                   class="ace" name="present4"/> <span
                                                        class="lbl">是</span>
                                                </label> &nbsp; <label> <input value="2" type="radio"
                                                                               class="ace" name="present4"/> <span
                                                        class="lbl">否</span>
                                                </label></td>
                                                <td></td>
                                            </tr>
                                            <tr data-id="0" data-index="9">
                                                <td>凝血/血栓形成</td>
                                                <td><label> <input value="1" type="radio"
                                                                   class="ace" name="present5"/> <span
                                                        class="lbl">是</span>
                                                </label> &nbsp; <label> <input value="2" type="radio"
                                                                               class="ace" name="present5"/> <span
                                                        class="lbl">否</span>
                                                </label></td>
                                                <td></td>
                                            </tr>
                                            <tr data-id="0" data-index="10">
                                                <td>出血</td>
                                                <td><label> <input value="1" type="radio"
                                                                   class="ace" name="present6"/> <span
                                                        class="lbl">是</span>
                                                </label> &nbsp; <label> <input value="2" type="radio"
                                                                               class="ace" name="present6"/> <span
                                                        class="lbl">否</span>
                                                </label></td>
                                                <td></td>
                                            </tr>
                                            <tr data-id="0" data-index="11">
                                                <td>其他:&nbsp;<input type="text" type="text"
                                                                    style="width: 300px;" />
                                                </td>
                                                <td><label> <input value="1" type="radio"
                                                                   class="ace" name="present7"/> <span
                                                        class="lbl">是</span>
                                                </label></td>
                                                <td><a style="cursor: pointer;"
                                                       id="followupComplicationStatusBtn"><i
                                                        class="ace-icon fa fa-plus-circle"></i>新增</a></td>
                                            </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <input id="followupLaboratoryExaminationId" hidden value="0"/>
                                    <div class="col-xs-12 col-sm-1"></div>
                                    <div class="col-xs-12 col-sm-10">

                                        <table class="table" id="followupLaboratoryExamination">
                                            <thead>
                                            <tr style="background-color: #80be4a">
                                                <td colspan="2"><font color="#ffffff">2.本次随访时疾病相关实验室检查:</font></td>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <tr>
                                                <td>是否有血清免疫固定电泳检查</td>
                                                <td><label> <input value="1" type="radio"
                                                                   class="ace" name="followupExaminationXueStatus"/>
                                                    <span
                                                            class="lbl">是</span>
                                                </label> &nbsp; <label> <input value="2" type="radio"
                                                                               class="ace"
                                                                               name="followupExaminationXueStatus"/>
                                                    <span
                                                            class="lbl">否</span>
                                                </label></td>
                                            </tr>

                                            <tr hidden id="followupExaminationXIgg">
                                                <td>IgG</td>
                                                <td><label> <input value="1" type="radio"
                                                                   class="ace" name="followupExaminationXIgg"/> <span
                                                        class="lbl">阳性</span>
                                                </label> &nbsp; <label> <input value="2" type="radio"
                                                                               class="ace"
                                                                               name="followupExaminationXIgg"/> <span
                                                        class="lbl">阴性</span>
                                                </label></td>
                                            </tr>
                                            <tr hidden id="followupExaminationXIga">
                                                <td>IgA</td>
                                                <td><label> <input value="1" type="radio"
                                                                   class="ace" name="followupExaminationXIga"/> <span
                                                        class="lbl">阳性</span>
                                                </label> &nbsp; <label><input value="2" type="radio"
                                                                              class="ace"
                                                                              name="followupExaminationXIga"/> <span
                                                        class="lbl">阴性</span> </label></td>
                                            </tr>
                                            <tr hidden id="followupExaminationXIgm">
                                                <td>IgM</td>
                                                <td><label> <input value="1" type="radio"
                                                                   class="ace" name="followupExaminationXIgm"/> <span
                                                        class="lbl">阳性</span>
                                                </label> &nbsp; <label> <input value="2" type="radio"
                                                                               class="ace"
                                                                               name="followupExaminationXIgm"/> <span
                                                        class="lbl">阴性</span>
                                                </label></td>
                                            </tr>

                                            <tr hidden id="followupExaminationXIge">
                                                <td>IgE</td>
                                                <td><label> <input value="1" type="radio"
                                                                   class="ace" name="followupExaminationXIge"/> <span
                                                        class="lbl">阳性</span>
                                                </label> &nbsp; <label> <input value="2" type="radio"
                                                                               class="ace"
                                                                               name="followupExaminationXIge"/> <span
                                                        class="lbl">阴性</span>
                                                </label></td>
                                            </tr>

                                            <tr hidden id="followupExaminationXIgd">
                                                <td>IgD</td>
                                                <td><label> <input value="1" type="radio"
                                                                   class="ace" name="followupExaminationXIgd"/> <span
                                                        class="lbl">阳性</span>
                                                </label> &nbsp; <label> <input value="2" type="radio"
                                                                               class="ace"
                                                                               name="followupExaminationXIgd"/> <span
                                                        class="lbl">阴性</span>
                                                </label></td>
                                            </tr>

                                            <tr hidden id="followupExaminationXkLightChain">
                                                <td>血K轻链</td>
                                                <td><label> <input value="1" type="radio"
                                                                   class="ace" name="followupExaminationXkLightChain"/>
                                                    <span
                                                            class="lbl">阳性</span>
                                                </label> &nbsp; <label><input value="2" type="radio"
                                                                              class="ace"
                                                                              name="followupExaminationXkLightChain"/>
                                                    <span
                                                            class="lbl">阴性</span> </label></td>
                                            </tr>
                                            <tr hidden id="followupExaminationXnLightChain">
                                                <td>血λ轻链</td>
                                                <td><label> <input value="1" type="radio"
                                                                   class="ace" name="followupExaminationXnLightChain"/>
                                                    <span
                                                            class="lbl">阳性</span>
                                                </label> &nbsp; <label> <input value="2" type="radio"
                                                                               class="ace"
                                                                               name="followupExaminationXnLightChain"/>
                                                    <span
                                                            class="lbl">阴性</span>
                                                </label></td>
                                            </tr>

                                            <tr>
                                                <td>是否有尿免疫固定电泳检查</td>
                                                <td><label> <input value="1" type="radio"
                                                                   class="ace" name="followupExaminationNnStatus"/>
                                                    <span
                                                            class="lbl">是</span>
                                                </label> &nbsp; <label> <input value="2" type="radio"
                                                                               class="ace"
                                                                               name="followupExaminationNnStatus"/>
                                                    <span
                                                            class="lbl">否</span>
                                                </label></td>
                                            </tr>

                                            <tr hidden id="followupExaminationNkLightChain">
                                                <td>尿K轻链</td>
                                                <td><label> <input value="1" type="radio"
                                                                   class="ace" name="followupExaminationNkLightChain"/>
                                                    <span
                                                            class="lbl">阳性</span>
                                                </label> &nbsp; <label> <input value="2" type="radio"
                                                                               class="ace"
                                                                               name="followupExaminationNkLightChain"/>
                                                    <span
                                                            class="lbl">阴性</span>
                                                </label></td>
                                            </tr>
                                            <tr hidden id="followupExaminationNnLightChain">
                                                <td>尿λ轻链</td>
                                                <td><label> <input value="1" type="radio"
                                                                   class="ace" name="followupExaminationNnLightChain"/>
                                                    <span
                                                            class="lbl">阳性</span>
                                                </label> &nbsp; <label> <input value="2" type="radio"
                                                                               class="ace"
                                                                               name="followupExaminationNnLightChain"/>
                                                    <span
                                                            class="lbl">阴性</span>
                                                </label></td>
                                            </tr>

                                            <tr hidden id="followupExaminationNIggLable">
                                                <td colspan="2">血清M蛋白电泳检查</td>
                                            </tr>
                                            <tr hidden id="followupExaminationNIgg">
                                                <td>IgG(g/l)</td>
                                                <td><input type="text" name="followupExaminationNIgg" id="followupExaminationNIgg1"
                                                           class="form-control text-300 cmSize"/></td>
                                            </tr>
                                            <tr hidden id="followupExaminationNIga">
                                                <td>IgA(g/l)</td>
                                                <td><input type="text" name="followupExaminationNIga"
                                                           class="form-control text-300 cmSize"/></td>
                                            </tr>
                                            <tr hidden id="followupExaminationNIgm">
                                                <td>IgM(g/l)</td>
                                                <td><input type="text" name="followupExaminationNIgm"
                                                           class="form-control text-300 cmSize"/></td>
                                            </tr>
                                            <tr hidden id="followupExaminationNIge">
                                                <td>IgE(IU/ml)</td>
                                                <td><input type="text" name="followupExaminationNIge"
                                                           class="form-control text-300 cmSize"/></td>
                                            </tr>

                                            <tr hidden id="followupExaminationNIgd">
                                                <td>IgD(g/l)</td>
                                                <td><input type="text" name="followupExaminationNIgd"
                                                           class="form-control text-300 cmSize"/></td>
                                            </tr>

                                            <tr>
                                                <td>是否有血清游离轻链检查</td>
                                                <td><label> <input value="1" type="radio"
                                                                   class="ace"
                                                                   name="followupExaminationXkLightChainStatus"/>
                                                    <span class="lbl">是</span>
                                                </label> &nbsp; <label> <input value="2" type="radio"
                                                                               class="ace"
                                                                               name="followupExaminationXkLightChainStatus"/>
                                                    <span class="lbl">否</span>
                                                </label></td>
                                            </tr>

                                            <tr hidden id="followupExaminationXYkLightChain">
                                                <td>K轻链(mg/dl)</td>
                                                <td><input type="text"
                                                           name="followupExaminationXYkLightChain"
                                                           class="form-control text-300 cmSize"/></td>
                                            </tr>
                                            <tr hidden id="followupExaminationXYnLightChain">
                                                <td>λ轻链(mg/dl)</td>
                                                <td><input type="text"
                                                           name="followupExaminationXYnLightChain"
                                                           class="form-control text-300 cmSize"/></td>
                                            </tr>
                                            <tr hidden id="followupExaminationXYknLightChain">
                                                <td>轻链K/λ比值</td>
                                                <td><input type="text"
                                                           name="followupExaminationXYknLightChain"
                                                           class="form-control text-300 zsfSize"/></td>
                                            </tr>

                                            <tr>
                                                <td >尿M蛋白电泳检查</td>
                                                <td >
                                                    <label>
                                                        <input value="1" type="radio" class="ace"
                                                               name="followupExaminationNMStatus"
                                                        />
                                                        <span class="lbl">是</span>
                                                    </label> &nbsp;
                                                    <label>
                                                        <input value="2" type="radio" class="ace"
                                                               name="followupExaminationNMStatus"
                                                        />
                                                        <span class="lbl">否</span>
                                                    </label>
                                                </td>
                                            </tr>


                                            <tr id="followupExaminationNMkLightChain" hidden>
                                                <td>K轻链（mg/dl）</td>
                                                <td><input type="text"
                                                           name="followupExaminationNMkLightChain"
                                                           class="form-control text-300 cmSize"/></td>
                                            </tr>
                                            <tr id="followupExaminationNMnLightChain" hidden>
                                                <td>λ轻链（mg/dl）</td>
                                                <td><input type="text"
                                                           name="followupExaminationNMnLightChain"
                                                           class="form-control text-300 cmSize"/></td>
                                            </tr>
                                            <tr id="followupExaminationH24">
                                                <td>24小时尿蛋白定量（g/24h）</td>
                                                <td><input type="text" name="followupExaminationH24"
                                                           class="form-control text-300 cmSize"/></td>
                                            </tr>
                                            <tr>
                                                <td colspan="2">常规血生化检查</td>
                                            </tr>

                                            <tr>
                                                <td>总蛋白（g/L）</td>
                                                <td>
                                                    <div class="clearfix">
                                                        <input type="text" name="followupTotalProtein"
                                                               class="text-300 cmSize"/>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>白蛋白（g/L）</td>
                                                <td>
                                                    <div class="clearfix">
                                                        <input type="text" name="followupWhiteProtein"
                                                               class="text-300 cmSize"/>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>球蛋白（g/L）</td>
                                                <td>
                                                    <div class="clearfix">
                                                        <input type="text" name="followupGlobulinProtein"
                                                               class="text-300 cmSize"/>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>谷丙转氨酶-丙氨酸氨基转移酶（U/L）</td>
                                                <td>
                                                    <div class="clearfix">
                                                        <input type="text" name="followupAminotransferase"
                                                               class="text-300 cmSize"/>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>谷草转氨酶-天门冬氨酸氨基转移酶（U/L）</td>
                                                <td>
                                                    <div class="clearfix">
                                                        <input type="text" name="followupAst" class="text-300 cmSize"/>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>γ谷氨酰基转移酶（U/L）</td>
                                                <td>
                                                    <div class="clearfix">
                                                        <input type="text" name="followupGgt" class="text-300 cmSize"/>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>乳酸脱氢酶（U/L）</td>
                                                <td>
                                                    <div class="clearfix">
                                                        <input type="text" name="followupLdh" class="text-300 cmSize"/>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>尿素（mmol/L）</td>
                                                <td>
                                                    <div class="clearfix">
                                                        <input type="text" name="followupUrea" class="text-300 cmSize"/>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>肌酐（umol/L）</td>
                                                <td>
                                                    <div class="clearfix">
                                                        <input type="text" name="followupCr" class="text-300 cmSize"/>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>钙（mmol/L）</td>
                                                <td>
                                                    <div class="clearfix">
                                                        <input type="text" name="followupCa" class="text-300 cmSize"/>
                                                    </div>
                                                </td>
                                            </tr>

                                            <tr>
                                                <td>碱性磷酸酶（U/L）</td>
                                                <td>
                                                    <div class="clearfix">
                                                        <input type="text" name="followupPhoshatase"
                                                               class="text-300 cmSize"/>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>β2微球蛋白（mg/L）</td>
                                                <td>
                                                    <div class="clearfix">
                                                        <input type="text" name="followupBeta2GlobulinProtein"
                                                               class="text-300 cmSize"/>
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
                                                        <input type="text" name="followupWhiteBloodCell"
                                                               class="text-300 cmSize"/>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>中性粒细胞(x10^9/L)</td>
                                                <td>
                                                    <div class="clearfix">
                                                        <input type="text" name="followupNeutrophils"
                                                               class="text-300 cmSize"/>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>淋巴细胞(x10^9/L)</td>
                                                <td>
                                                    <div class="clearfix">
                                                        <input type="text" name="followupLymphocyte"
                                                               class="text-300 cmSize"/>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>血红蛋白(g/L)</td>
                                                <td>
                                                    <div class="clearfix">
                                                        <input type="text" name="followupHemoglobin"
                                                               class="text-300 cmSize"/>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>血小板计数(x10^9/L)</td>
                                                <td>
                                                    <div class="clearfix">
                                                        <input type="text" name="followupPlateletCount"
                                                               class="text-300 cmSize"/>
                                                    </div>
                                                </td>
                                            </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>

                                <div class="form-group">

                                    <div class="col-xs-12 col-sm-1"></div>
                                    <div class="col-xs-12 col-sm-10">
                                        <table class="table" id='followupPlasmactyeItem'>
                                            <thead>
                                            <tr style="background-color: #80be4a">
                                                <td colspan="3"><font color="#ffffff">3.本次随访时骨髓穿刺图片细胞学检查:</font></td>
                                            </tr>

                                            <tr>
                                                <th colspan="1" width="45%">浆细胞类型</th>
                                                <th colspan="1" width="45%">浆细胞比例</th>
                                                <th colspan="1" width="10%"></th>
                                            </tr>
                                            </thead>
                                            <tbody>

                                            <tr data-id="0" data-index="1">
                                                <td>所有浆细胞 (%)</td>
                                                <td><input type="text" id="syjxb2" class="zsxSize"/></td>
                                                <td></td>
                                            </tr>
                                            <tr data-id="0" data-index="2">
                                                <td>原浆细胞 (%)</td>
                                                <td><input type="text" id="jyxb2" class="zsxSize"/></td>
                                                <td></td>
                                            </tr>
                                            <tr data-id="0" data-index="3">
                                                <td>幼浆细胞 (%)</td>
                                                <td><input type="text" id="youjyxb2" class="zsxSize"/></td>
                                                <td></td>
                                            </tr>
                                            <tr data-id="0" data-index="4">
                                                <td>中间浆细胞 (%)</td>
                                                <td><input type="text" id="zjjxb2" class="zsxSize"/></td>
                                                <td></td>
                                            </tr>
                                            <tr data-id="0" data-index="5">
                                                <td>成熟浆细胞 (%)</td>
                                                <td><input type="text" id="csjxb2" class="zsxSize"/></td>
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
                                                       id="followupPlasmactyeItemBtn"><i
                                                            class="ace-icon fa fa-plus-circle"></i>新增</a>
                                                </td>
                                            </tr>

                                            </tbody>
                                        </table>
                                    </div>
                                </div>

                                <div class="form-group">

                                    <div class="col-xs-12 col-sm-1"></div>
                                    <div class="col-xs-12 col-sm-10">
                                        <table class="table" id='followupIconographyItemTable'>
                                            <thead>
                                            <tr style="background-color: #80be4a">
                                                <td colspan="5"><font color="#ffffff">4.本次随访时全身骨骼影像学检查:</font></td>
                                            </tr>
                                            <tr>
                                                <td width="20%">检查项目</td>
                                                <td width="47%">溶骨性病变位置</td>
                                                <td width="25%">溶骨性病变数量</td>
                                                <td width="8%"></td>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <tr data-id="0" data-index="1">
                                                <td>X光</td>
                                                <td><textarea
                                                        class="autosize-transition form-control"
                                                        style="overflow: hidden; word-wrap: break-word; resize: horizontal;"></textarea>
                                                </td>
                                                <td><textarea name="X"
                                                              class="autosize-transition form-control"
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
                                                <td><textarea name="CT"
                                                              class="autosize-transition form-control"
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
                                                <td><textarea name="MRI"
                                                              class="autosize-transition form-control"
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
                                                <td><textarea name="PET-CT"
                                                              class="autosize-transition form-control"
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
                                                <td><textarea name="TWS"
                                                              class="autosize-transition form-control"
                                                              style="overflow: hidden; word-wrap: break-word; resize: horizontal;"></textarea>
                                                </td>
                                                <td></td>
                                            </tr>
                                            <tr data-id="0" data-index="6">
                                                <td>其他:&nbsp;<input name="name" type="text"
                                                                    style="width: 90px;"/></td>
                                                <td><textarea
                                                        class="autosize-transition form-control"
                                                        style="overflow: hidden; word-wrap: break-word; resize: horizontal;"></textarea>
                                                </td>
                                                <td><textarea name="QT"
                                                              class="autosize-transition form-control"
                                                              style="overflow: hidden; word-wrap: break-word; resize: horizontal;"></textarea>
                                                </td>
                                                <td>
                                                    <a style="cursor: pointer;"
                                                       id="followupIconographyItemBtn"><i
                                                            class="ace-icon fa fa-plus-circle"></i>新增</a>
                                                </td>
                                            </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>

                                <div class="form-group">

                                    <div class="col-xs-12 col-sm-1"></div>
                                    <div class="col-xs-12 col-sm-10">
                                        <table class="table" id='followUpParenchymaItemTable'>
                                            <thead>
                                            <tr style="background-color: #80be4a">
                                                <td colspan="5"><font color="#ffffff">5.本次随访时全身软组织浆细胞瘤检查:</font></td>
                                            </tr>
                                            <tr>
                                                <td width="20%">检查项目</td>
                                                <td width="25%">病变位置(系统可多选)</td>
                                                <td width="47%">占位大小</td>
                                                <td width="8%"></td>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <tr  data-id="0" data-index="1">
                                                <td>CT</td>
                                                <td><textarea class="autosize-transition form-control"
                                                              style="overflow: hidden; word-wrap: break-word; resize: horizontal;"></textarea>
                                                </td>
                                                <td><input name="ctn1" type="text" class="cmSize"/>cm * <input
                                                        name="ctn2" type="text" class="cmSize"/>cm
                                                </td>
                                                <td></td>
                                            </tr>

                                            <tr  data-id="0" data-index="2">
                                                <td>MRI</td>
                                                <td><textarea class="autosize-transition form-control"
                                                              style="overflow: hidden; word-wrap: break-word; resize: horizontal;"></textarea>
                                                </td>
                                                <td><input name="mri1" type="text" class="cmSize"/>cm * <input
                                                        name="mri2" type="text" class="cmSize"/>cm
                                                </td>
                                                <td></td>
                                            </tr>
                                            <tr  data-id="0" data-index="3">
                                                <td>PET-CT</td>
                                                <td><textarea class="autosize-transition form-control"
                                                              style="overflow: hidden; word-wrap: break-word; resize: horizontal;"></textarea>
                                                </td>
                                                <td><input name="pet1" type="text" class="cmSize"/>cm * <input
                                                        name="pet2" type="text" class="cmSize"/>cm
                                                </td>
                                                <td></td>
                                            </tr>

                                            <tr  data-id="0" data-index="4">
                                                <td>其他:&nbsp;<input name="name" type="text"
                                                                    style="width: 90px;"/></td>
                                                <td><textarea class="autosize-transition form-control"
                                                              style="overflow: hidden; word-wrap: break-word; resize: horizontal;"></textarea>
                                                </td>
                                                <td><input type="text" class="cmSize" name="other1"/>cm * <input type="text" class="cmSize"  name="other2"/>cm</td>
                                                <td><a style="cursor: pointer;"
                                                       id="followUpParenchymaItemBtn"><i
                                                        class="ace-icon fa fa-plus-circle"></i>新增</a></td>
                                            </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>

                                <div class="form-group">

                                    <div class="col-xs-12 col-sm-1"></div>
                                    <div class="col-xs-12 col-sm-10">
                                        <table class="table" id='followUpParenchymaItem'>
                                            <thead>
                                            <tr style="background-color: #80be4a">
                                                <td colspan="2"><font color="#ffffff">6.本次随访时疾病发展信息:</font></td>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <tr>
                                                <td>是否发生髓外侵犯</td>
                                                <td><label> <input value="1" type="radio" class="ace"
                                                                   name="followupInvasionDiagnosis"/> <span
                                                        class="lbl">是</span>
                                                </label> &nbsp;<label> <input value="2" type="radio"
                                                                   class="ace" name="followupInvasionDiagnosis"/> <span
                                                        class="lbl">否</span>
                                                </label> </td>
                                            </tr>
                                            <tr>
                                                <td>疾病进展状态</td>
                                                <td><label> <input value="1" type="radio"
                                                                   class="ace" name="followupProgress"/> <span
                                                        class="lbl">疾病进展</span>
                                                </label> <label> <input value="2" type="radio" class="ace"
                                                                        name="followupProgress"/> <span
                                                        class="lbl">疾病无进展</span>
                                                </label></td>
                                            </tr>
                                            <tr>
                                                <td colspan="2">疾病分期</td>
                                            </tr>
                                            <tr>
                                                <td>Durie-Salmon分期法:</td>
                                                <td><label class=" "> <span class="lbl">I期:</span>
                                                </label> &nbsp; &nbsp; <label class=""> <input value="1"
                                                                                               type="radio" class="ace"
                                                                                               name="clinicalStagesDS"/>
                                                    <span
                                                            class="lbl">Ia期</span>
                                                </label> &nbsp; &nbsp; <label class=""> <input value="2"
                                                                                               type="radio" class="ace"
                                                                                               name="clinicalStagesDS"/>
                                                    <span
                                                            class="lbl">Ib期</span>
                                                </label> &nbsp; &nbsp; <label class=" "> <span class="lbl">II期:</span>
                                                </label> &nbsp; &nbsp; <label class=""> <input value="3"
                                                                                               type="radio" class="ace"
                                                                                               name="clinicalStagesDS"/>
                                                    <span
                                                            class="lbl">IIa期</span>
                                                </label> &nbsp; &nbsp; <label class=""> <input value="4"
                                                                                               type="radio" class="ace"
                                                                                               name="clinicalStagesDS"/>
                                                    <span
                                                            class="lbl">IIb期</span>
                                                </label> &nbsp; &nbsp; <label class=" "> <span class="lbl">III期:</span>
                                                </label> &nbsp; &nbsp;<label class=""> <input value="5"
                                                                                              type="radio" class="ace"
                                                                                              name="clinicalStagesDS"/>
                                                    <span
                                                            class="lbl">IIIa期</span>
                                                </label> &nbsp; &nbsp; <label class=""> <input value="6"
                                                                                               type="radio" class="ace"
                                                                                               name="clinicalStagesDS"/>
                                                    <span
                                                            class="lbl">IIIb期</span>
                                                </label></td>
                                            </tr>
                                            <tr>
                                                <td>ISS国际分期系统:</td>
                                                <td><label class=""> <input value="1"
                                                                            type="radio" class="ace"
                                                                            name="clinicalStagesISS"/> <span
                                                        class="lbl">I期</span>
                                                </label> &nbsp; &nbsp; <label class=""> <input value="2"
                                                                                               type="radio" class="ace"
                                                                                               name="clinicalStagesISS"/>
                                                    <span
                                                            class="lbl">II期</span>
                                                </label> &nbsp; &nbsp; <label class="ISS"> <input value="3"
                                                                                                  type="radio"
                                                                                                  class="ace"
                                                                                                  name="clinicalStagesISS"/>
                                                    <span
                                                            class="lbl">III期</span></label></td>
                                            </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>

                                <div class="form-group">

                                    <div class="col-xs-12 col-sm-1"></div>
                                    <div class="col-xs-12 col-sm-10">
                                        <table class="table" id='followupChemotherapyItemTable'>
                                            <thead>
                                            <tr style="background-color: #80be4a">
                                                <td colspan="7"><font color="#ffffff">7.患者当前针对MM用药信息(系统可添加):</font></td>
                                            </tr>
                                            <tr>
                                                <td width="5%">编号</td>
                                                <th width="20%">药品名</th>
                                                <th width="20%">每次给药剂量</th>
                                                <th width="15%">剂量单位</th>
                                                <th width="15%">用药频率</th>
                                                <th width="15%">是否院外用药</th>
                                                <th width="10%"></th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <tr data-id="0" data-index="1">
                                                <th scope="row">1</th>
                                                <td colspan="1">
                                                    <%--<div class="clearfix">
                                                        <input type="text" name="name" style="width: 100%"/>
                                                    </div>--%>
                                                        <div   style="position:relative;">
                                                            <span   style="margin-left:188px;width:18px;overflow:hidden;">
                                                        <select id="followupChemotherapyItemName"  data-placeholder=""
                                                                name="name" class="select2-300" style="width:200px;margin-left:-188px" onchange="setSecond($(this))">
                                                            <option value="" selected></option>
                                                            <option value="硼替佐米">硼替佐米</option>
                                                            <option value="地塞米松">地塞米松</option>
                                                            <option value="表柔比星">表柔比星</option>
                                                            <option value="吡柔比星">吡柔比星</option>
                                                            <option value="沙利度胺">沙利度胺</option>
                                                            <option value="来那度胺">来那度胺</option>
                                                            <option   value="马法兰">马法兰</option>
                                                            <option value="多柔比星">多柔比星</option>
                                                            <option value="顺铂">顺铂</option>
                                                            <option value="环磷酰胺">环磷酰胺</option>
                                                            <option value="泼尼松">泼尼松</option>
                                                        </select>
                                                                </span><input   name="name" id="followupChemotherapyName" type="text" style="width:170px;height:100%;position:absolute;left:0px;">
                                                        </div>
                                                </td>
                                                <td colspan="1">
                                                    <div class="clearfix">
                                                        <input type="text" name="consumption" style="width: 100%"/>
                                                    </div>
                                                </td>
                                                <td colspan="1">
                                                    <div   style="position:relative;">
                                                      <span   style="margin-left:188px;width:18px;overflow:hidden;">
                                                        <select id="consumptionSize" name="consumptionSize"data-placeholder=""
                                                                 class="select2-300" style="width:200px;margin-left:-188px;" onchange="setSize($(this))" >
                                                        <option value="" selected></option>
                                                        <option value="mg">mg</option>
                                                        <option value="mg/m2">mg/m2</option>
                                                        <option value="mg/kg">mg/kg</option>
                                                        <option value="g">g</option>
                                                    </select>
                                                      </span>
                                                        <input   name="consumptionSize" id="consumptSize" type="text" style="width:80px;height:100%;position:absolute;left:0px;"/>
                                                    </div>
                                                </td>
                                                <td colspan="1">
                                                    <div class="clearfix">
                                                        <input type="text" name="frequency" style="width: 100%"/>
                                                    </div>
                                                </td>
                                                <td colspan="1">
                                                    <label> <input value="1" type="radio"
                                                                   class="ace" name="buyOuter"/> <span
                                                        class="lbl">是</span></label> &nbsp;
                                                    <label> <input value="2" type="radio"
                                                                              class="ace" name="buyOuter"/> <span
                                                        class="lbl">否</span>
                                                    </label>
                                                </td>
                                                <td colspan="1"><a style="cursor: pointer;"
                                                       id="followupChemotherapyItemBtn"><i
                                                        class="ace-icon fa fa-plus-circle"></i>新增</a></td>
                                            </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-1"></div>
                                    <div class="col-xs-12 col-sm-10">
                                        <table class="table" >
                                            <thead>
                                            <tr style="background-color:#80be4a">
                                                <td colspan="3"><font color="#ffffff">8.治疗方案所属治疗阶段</font>

                                                </td>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <tr>
                                                <td width="30%">治疗方案所属治疗阶段</td>
                                                <td width="70%" colspan="2">
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
                                                    <label hidden
                                                           class="divCurePlanStepOther control-label no-padding-right"
                                                           for="curePlanStepOther" >请注明:</label>
                                                    <input type="text" id="curePlanStepOther" hidden
                                                           class="divCurePlanStepOther"   name="curePlanStepOther" />
                                                </td>
                                            </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                <div class="form-group">

                                    <div class="col-xs-12 col-sm-1"></div>
                                    <div class="col-xs-12 col-sm-10">
                                        <table class="table" id="followUpSupportTable">
                                            <thead>
                                            <tr style="background-color: #80be4a">
                                                <td colspan="2"><font color="#ffffff">9.患者参加援助计划信息:</font></td>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <tr>
                                                <td width='30%'>患者是否参加援助计划</td>
                                                <td width='70%'><label> <input value="1"
                                                                               type="radio" class="ace"
                                                                               name="inHelpProject"/> <span
                                                        class="lbl">是</span>
                                                </label> &nbsp; <label> <input value="2" type="radio"
                                                                               class="ace" name="inHelpProject"/>
                                                    <span class="lbl">否</span>
                                                </label></td>
                                            </tr>
                                            <tr hidden id="SupportName">
                                                <td>援助计划名称</td>
                                                <td><label> <input type="text" class="ace" id="helpProjectName"
                                                                   name="helpProjectName"/></label></td>
                                            </tr>
                                            <tr hidden id="SupportStartTime">
                                                <td>开始时间</td>
                                                <td>
                                                    <div class="input-group">
															<span class="input-group-addon"> <i
                                                                    class="ace-icon fa fa-calendar"></i>
															</span> <input type="text" id="helpProjectStartDate"
                                                                           name="helpProjectStartDate"
                                                                           class="form-control text-265 dataDay"/> &nbsp;&nbsp;
                                                        <span>
																(格式:yyyy-mm-dd) </span>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr hidden id="SupportEndTime">
                                                <td>结束时间</td>
                                                <td>
                                                    <div class="input-group">
															<span class="input-group-addon"> <i
                                                                    class="ace-icon fa fa-calendar"></i>
															</span> <input type="text" id="helpProjectEndDate"
                                                                           name="helpProjectEndDate"
                                                                           class="form-control text-265 dataDay"/> &nbsp;&nbsp;
                                                        <span>
																(格式:yyyy-mm-dd) </span>
                                                    </div>
                                                </td>
                                            </tr>

                                            </tbody>
                                        </table>
                                    </div>
                                </div>

                                <div class="form-group">

                                    <div class="col-xs-12 col-sm-1"></div>
                                    <div class="col-xs-12 col-sm-10">
                                        <table class="table" id="followUpflag">
                                            <thead>
                                            <tr style="background-color: #80be4a">
                                                <td colspan="2"><font color="#ffffff">10.本次随访时疗效评估信息:</font></td>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <tr>
                                                <td width='30%'>本次随访是否进行疗效评估</td>
                                                <td width='70%'><label> <input value="1"
                                                                               type="radio" class="ace"
                                                                               name="evaluateStatus"/> <span
                                                        class="lbl">是</span>
                                                </label> &nbsp; <label> <input value="2" type="radio"
                                                                               class="ace" name="evaluateStatus"/> <span
                                                        class="lbl">否</span>
                                                </label></td>
                                            </tr>
                                            <tr hidden id="followUpflagTFCheck">
                                                <td>疗效评估标准</td>
                                                <td><label> <input value="1" type="radio"
                                                                   class="ace" name="followupEvaluateRule"/> <span
                                                        class="lbl">IMWG</span>
                                                </label> <label> <input value="2" type="radio" class="ace"
                                                                        name="followupEvaluateRule" /> <span class="lbl">其他</span>
                                                    <span><input type="text" id="followupEvaluateRuleOther" name="followupEvaluateRuleOther"/></span>
                                                </label></td>
                                                <td></td>
                                            </tr>

                                            <tr hidden id="followUpflagTFCheckCheck">
                                                <td>IMWG疗效评估标准</td>
                                                <td>
                                                    <div>
                                                        <select id="followupEstimateResult"
                                                                name="followUpflagTFCheckCheckEstimateResult"
                                                                class="select2-300" data-placeholder="">
                                                            <option value="" selected></option>
                                                            <option value="1">MCR(分子学完全缓解)</option>
                                                            <option value="2">ICR(免疫学完全缓解)</option>
                                                            <option value="3">sCR(严格完全缓解)</option>
                                                            <option value="4">CR(完全缓解)</option>
                                                            <option value="5">VGPR (很好的部分缓解)</option>
                                                            <option value="6">PR(部分缓解)</option>
                                                            <option value="7">MR(微小缓解)</option>
                                                            <option value="8">SD(疾病稳定)</option>
                                                            <option value="9">PD(疾病进展)</option>
                                                            <option value="10">其他</option>
                                                        </select> <input type="text"
                                                                         id="followUpflagTFCheckCheckEstimateResultOther"
                                                                         name="followUpflagTFCheckCheckEstimateResultOther"
                                                                         hidden/>
                                                    </div>
                                                </td>

                                            </tr>

                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                <div class="form-group">

                                    <div class="col-xs-12 col-sm-1"></div>
                                    <div class="col-xs-12 col-sm-10">
                                        <table class="table" id="followupBadInformationTable">
                                            <thead>
                                            <tr style="background-color:#80be4a">
                                                <td><font color="#ffffff">11.不良事件信息</font></td>
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
                                    <div class="col-xs-12 col-sm-1"></div>
                                    <div class="col-xs-12 col-sm-10">
                                        <table class="table" id="CostItemTable">
                                            <thead>
                                            <tr style="background-color: #80be4a">
                                                <td colspan="4"><font color="#ffffff">12.疾病院外卫生资源使用和医疗费用</font></td>

                                            </tr>
                                            </thead>
                                            <tbody>

                                            <tr>
                                                <td width='20%' colspan="1">过去一年中总的门诊随访次数</td>
                                                <td width='80%' colspan="3"><input type="text"
                                                                                   class="text-300 zsSize" id="times"/></td>
                                            </tr>
                                            <tr>
                                                <td width='20%' colspan="1">过去一年中总的急诊次数</td>
                                                <td width='80%' colspan="3"><input type="text"
                                                                                   class="text-300 zsSize" id="timesEmergency"/></td>
                                            </tr>
                                            <tr>
                                                <td width='20%' colspan="1">最近一次门诊费用</td>
                                                <td width='80%' colspan="3">
                                                <%--<label> <span>药品费用</span>--%>
                                                <%--</label>&nbsp; <label><input type="text" class="text-150 cmSize" id="lastCostMed"/>--%>
                                                <%--</label>&nbsp; <label> <span>非药品费用</span>--%>
                                                <%--</label>&nbsp; <label><input type="text" class="text-150 cmSize" id="lastCostNonMed"/>--%>
                                                <%--</label>&nbsp;--%><label> <span>总费用</span>
                                                </label>&nbsp; <label><input type="text" class="text-150 cmSize" id="lastCostTotal"/>
                                                </label>
                                                </td>
                                            </tr>

                                            <tr>
                                                <td width='20%' colspan="1">最近一次急诊费用</td>
                                                <td width='80%' colspan="3">
                                                    <%--<label> <span>药品费用</span>--%>
                                                <%--</label>&nbsp; <label><input type="text" class="text-150 cmSize" id="lastEmergencyCostMed"/>--%>
                                                <%--</label>&nbsp; <label> <span>非药品费用</span>--%>
                                                <%--</label>&nbsp; <label><input type="text" class="text-150 cmSize" id="lastEmergencyCostNonMed"/>--%>
                                                <%--</label>&nbsp; --%>
                                                    <label> <span>总费用</span>
                                                </label>&nbsp; <label><input type="text" class="text-150 cmSize" id="lastEmergencyCostToal"/>
                                                </label></td>
                                            </tr>
                                            <tr>
                                                <td colspan="4">本次门诊随访的医疗费用支出</td>
                                            </tr>
                                            <tr>
                                                <td width='20%'>费用类别</td>
                                                <td width='20%'>费用小计</td>
                                                <td width='30%'>公费报销比例(%)</td>
                                                <td width="30%"></td>
                                            </tr>
                                            <tr>
                                                <td width='20%'>挂号费</td>
                                                <td width='20%'><input type="text" class="text-300 cmSize" id="registrationCost"/></td>
                                                <td width='30%'><input type="text" class="text-300 zsxSize" id="registrationRate"/></td>
                                                <td></td>
                                            </tr>
                                            <tr>
                                                <td width='20%'>实验室检查费</td>
                                                <td width='20%'><input type="text" class="text-300 cmSize" id="laboratoryCost"/></td>
                                                <td width='30%'><input type="text" class="text-300 zsxSize" id="laboratoryRate"/></td>
                                                <td></td>
                                            </tr>
                                            <tr>
                                                <td width='20%'>影像检查费</td>
                                                <td width='20%'><input type="text" class="text-300 cmSize" id="iconographyCost"/></td>
                                                <td width='30%'><input type="text" class="text-300 zsxSize" id="iconographyRate"/></td>
                                                <td></td>
                                            </tr>
                                            <tr>
                                                <td width='20%'>药品费用</td>
                                                <td width='20%'><input type="text" class="text-300 cmSize" id="drugCost"/></td>
                                                <td width='30%'><input type="text" class="text-300 zsxSize" id="drugRate"/></td>
                                                <td></td>
                                            </tr>
                                            <tr>
                                                <td>其他:&nbsp;<input id="otherCostName" type="text"
                                                                    style="width: 200px;"/></td>
                                                <td width='20%'><input type="text" class="text-300 cmSize" id="otherCost"/></td>
                                                <td width='30%'><input type="text" class="text-300 zsxSize" id="otherRate"/></td>
                                                <td>
                                                    <a style="cursor: pointer;" id="addCostItemBtn"><i
                                                            class="ace-icon fa fa-plus-circle"></i>新增</a>
                                                </td>
                                            </tr>
                                            <%--<tr>--%>
                                                <%--<td width='20%'>费用合计</td>--%>
                                                <%--<td width='20%'><input type="text" class="text-300 cmSize" id="totalCost"/></td>--%>
                                                <%--<td width='60%'><input type="text" class="text-300 zsxSize" id="totalRate"/></td>--%>
                                            <%--</tr>--%>
                                            </tbody>
                                        </table>
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
                            <table class="table table-bordered"
                                   style="width: 60%; margin-left: 20%">
                                <tbody>
                                <tr>
                                    <td>患者研究编号</td>
                                    <td>${patientId}</td>
                                </tr>
                                <tr>
                                    <td>随访采集日期</td>
                                    <td><label>${gatherTime}</label></td>
                                </tr>
                                <tr>
                                    <td>随访医生姓名</td>
                                    <td>${sessionScope.SESSION_USER.name}</td>
                                </tr>
                                <tr hidden>
                                    <td>备注</td>
                                    <td><textarea id="acqDescription" style="width:100%;overflow: hidden; word-wrap: break-word; resize: horizontal;"></textarea></td>
                                </tr>
                                <tr>
                                    <td>备注</td>
                                    <td><textarea id="fupDescription" style="width:100%;overflow: hidden; word-wrap: break-word; resize: horizontal;"></textarea></td>
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
                        <i class="icon-save"></i> 暂存 <i
                            class="ace-icon fa fa-floppy-o icon-on-right"></i>
                    </button>

                    <button onclick="onc()" class="btn btn-prev">
                        <i class="ace-icon fa fa-arrow-left"></i> 上一步
                    </button>

                    <button onclick="onc()" id="nextBtn" class="btn btn-primary btn-next" data-last="完成">
                        下一步 <i class="ace-icon fa fa-arrow-right icon-on-right"></i>
                    </button>

                    <!-- /section:plugins/fuelux.wizard.buttons -->
                </div>

                <!-- /section:plugins/fuelux.wizard -->
            </div>
            <!-- /.widget-main -->
        </div>
        <!-- /.widget-body -->
    </div>
    <!-- PAGE CONTENT ENDS -->
</div>
<!-- /.col -->

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
    function onc() {
        var dd = document.getElementById("maodian").scrollIntoView(true);
    }

    function submitFollowup(confirm) {
        var patientInfo = prepareDataFollowup();
        $('#submitButton').attr('disabled',true);
        $('#nextBtn').attr('disabled',true);
        patientInfo.patientId = '${patientId}',
                $.ajax({
                    dataType: "json",
                    contentType: 'application/json',
                    url: "${contextPath}/patient/followup?confirm="+confirm,
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
                                message: response.message,
                            });
                        }
                    }
                });
    }

    var scripts = [
        null,
        "${contextPath}/static/assets/js/date-time/moment.js",
        "${contextPath}/static/assets/js/fuelux/fuelux.wizard.js",
        "${contextPath}/static/assets/js/custom/patient.js",
        "${contextPath}/static/assets/js/custom/check.js",
        "${contextPath}/static/assets/js/jquery.validate.js",
        "${contextPath}/static/assets/js/additional-methods.js",
        "${contextPath}/static/assets/js/bootbox.js",
        "${contextPath}/static/assets/js/jquery.maskedinput.js",
        "${contextPath}/static/assets/js/select2.js",
        "${contextPath}/static/assets/js/date-time/bootstrap-datepicker.js",
        null]
    $('.page-content-area')
            .ace_ajax(
            'loadScripts',
            scripts,
            function () {
                //inline scripts related to this page
                jQuery(function ($) {
                    if(${editable}) {
                        $('#submitButton').attr('disabled',false);
                    } else {
                        $('#submitButton').attr('disabled',true);
                    }
                    $('.data-now').html(
                            moment(new Date()).format('MM/DD/YYYY'));
                    $().ready(function() {
                        $("#form-step1").validate();
                        $("#form-step2").validate();
                        $("#form-step4").validate();
                    });

                    /*$.validator.setDefaults({
                     submitHandler: function() {
                     alert("提交事件!");
                     }
                     });*/
                    $('[data-rel=tooltip]').tooltip();
                    $("#insuranceType").css('width', '300px').select2({allowClear: true}).on('change', function () {
                        if ($("#insuranceType").select2('val') == 6) {
                            $('#otherInsuranceLabel').show();
                            $('#otherInsurance').show();
                        } else {
                            $('#otherInsuranceLabel').hide();
                            $('#otherInsurance').hide();
                        }
                    });
                    $('input[type=radio][name=badinformationCctaeStatus]').change(function () {
                        console.log(this.value)
                        if (this.value == '1') {
                            $('#divcteaeStatuslevel').show();
                        } else {
                            $('#divcteaeStatuslevel').hide();
                        }
                    });
                    $('#fishaddCheckItemBtn').on( 'click', function () {
                        var length = $('#fishcheckItemTable tr').length;
                        var element = $('<tr></tr>');
                        element.append($(' <td>其他:&nbsp;<input name="name"  type="text"style="width: 200px;"/></td>'));
                        element.append($('<td><input type="text" name="other"/></td>'));
                        element.append($('<td><a style="cursor: pointer;color:red" onclick="$(this).parent().parent().remove()"><i class="ace-icon fa fa-close"></i>删除</a></td>'));
                        $('#fishcheckItemTable tbody').append(element);
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
                    $('input[type=radio][name=inHelpProject]').change( function () { console.log(this.value)
                        if (this.value == '1') {
                            $('#SupportName').show();
                            $('#SupportStartTime').show();
                            $('#SupportEndTime').show();
                        } else if (this.value == '2') {
                            $('#SupportName').hide();
                            $('#SupportStartTime').hide();
                            $('#SupportEndTime').hide();
                        }
                    });
                    $("#curePlanStep").css('width', '200px').select2({allowClear: true})
                            .on('change', function () {
                                if ($("#curePlanStep").select2('val') == 7) {
                                    $('.divCurePlanStepOther').show();
                                } else {
                                    $('.divCurePlanStepOther').hide();
                                }
                                $(this).closest('form').validate().element($(this));
                            });
                    $('input[type=radio][name=followupBadInformationTable]').change(function () {
                        if (this.value == '1') {
                            $('.trbadMessage').show();
                            $('#addbadBtn').prop("disabled",false);
                        } else if (this.value == '2') {
                            $('.trbadMessage').hide();
                            $('#addbadBtn').prop("disabled",true);
                        }
                    });
                    $('#addCostItemBtn').on('click', function () {
                        var length = $('#CostItemTable tbody').find('tr').length;
                        var element = $('<tr class="costItemAdded" data-id="0" data-index="'+length+'"></tr>');
                        element.append($('<td>其他:&nbsp;<input name="name" type="text" style="width: 200px;"/></td>'));
                        element.append($('<td><input type="text" style="width:300px;" class=" cmSize"/></td>'));
                        element.append($('<td><input type="text" style="width:300px;" class=" zsxSize" id="otherx'+length+'"/></td>'));
                        element.append($('<td><a style="cursor: pointer;color:red" onclick="$(this).parent().parent().remove()"><i class="ace-icon fa fa-close"></i>删除</a></td>'));
                        $('#CostItemTable tbody').append(element);
                    });
                    $('#addHistoryBtn').on('click', function () {
                        var length = $('#historyTable tr').length;
                        if (length >= 20)
                            return;
                        var element = $('<tr></tr>');
                        element.append($('<td><input type="text" style="width:265px;" name="name"/></td>'));
//                        element.append($('<td><div class="input-group"><span class="input-group-addon"><i class="ace-icon fa fa-calendar"></i></span><input type="text" name="historyDay ' + length + '" class="form-control dataDay"  style="width:265px"/></div></td>'));
                        element.append($('<td><a style="cursor: pointer;color:red" onclick="$(this).parent().parent().remove()"><i class="ace-icon fa fa-close"></i>删除</a></td>'));
                        $('#historyTable tbody').append(element);
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
                            $('#trFSTX').show();
                        } else if (this.value == '2') {
                            $('#trFSTX').hide();
                        }
                    });
                    $('#addbadBtn').on('click', function () {
                        $('#followupBadInformationTable tbody').find('.collapse').removeClass('in');
                        var length = $('#followupBadInformationTable tbody').find('tr').length+1;
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
                        $('#followupBadInformationTable tbody').append(element);

                        $('input[type=radio][name=cteaeStatus' + length + ']').change(function () {
                            if (this.value == '1') {
                                $('#divcteaeStatuslevel' + length + '').show();
                            } else {
                                $('#divcteaeStatuslevel' + length + '').hide();
                            }
                        });

                    });
                    $('input[type=radio][name=cteaeStatus]').change(function () {
                        if (this.value == '1') {
                            $('#divcteaeStatuslevel').show();
                        } else {
                            $('#divcteaeStatuslevel').hide();
                        }
                    });
                    $('#rzzAddCheckItemBtn').on('click', function () {
                        var length = $('#rzzCheckItemTable tr').length;
                        var element = $('<tr></tr>');
                        element.append($(' <td>其他:&nbsp;<input name="name"  type="text"style="width: 90px;"/></td>'));
                        element.append($('<td><textarea class="autosize-transition form-control"style="overflow: hidden; word-wrap: break-word; resize: horizontal;"></textarea> </td>'));
                        element.append($('<td><input type="text" />cm * <input type="text" />cm </td>'));
                        element.append($('<td><a style="cursor: pointer;color:red" onclick="$(this).parent().parent().remove()"><i class="ace-icon fa fa-close"></i>删除</a></td>'));
                        $('#rzzCheckItemTable tbody').append(element);
                        $('#datepick_' + length).datepicker({dateFormat: "yyyy-mm-dd"});
                    });
                    $('input[type=radio][name=diagnosisExaminationXkLightChainStatus]').change(
                            function () {
                                console.log(this.value)
                                if (this.value == '1') {
                                    $('#trdiagnosisExaminationXYkLightChain').show();
                                    $('#trdiagnosisExaminationXYnLightChain').show();
                                    $('#trdiagnosisExaminationXYknLightChain').show();
                                } else if (this.value == '2') {
                                    $('#trdiagnosisExaminationXYkLightChain').hide();
                                    $('#trdiagnosisExaminationXYnLightChain').hide();
                                    $('#trdiagnosisExaminationXYknLightChain').hide();
                                }
                            });
                    $('input[type=radio][name=fishexception]').change(
                            function () {
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
                    $('input[type=radio][name=badInformationStatus]').change(function () {
                        if (this.value == '1') {
                            $('.trbadMessage').show();
                            $('#addbadBtn').prop("disabled",false);
                        } else if (this.value == '2') {
                            $('.trbadMessage').hide();
                            $('#addbadBtn').prop("disabled",true);
                        }
                    });
                    $( 'input[type=radio][name=diagnosisExaminationXueStatus]').change(function () {
                        console.log(this.value)
                        if (this.value == '1') {
                            $('#trdiagnosisExaminationXIgg').show();
                            $('#trdiagnosisExaminationXIga').show();
                            $('#trdiagnosisExaminationXIgm').show();
                            $('#trdiagnosisExaminationXIge').show();
                            $('#trdiagnosisExaminationXIgd').show();
                            $('#trdiagnosisExaminationXkLightChain').show();
                            $('#trdiagnosisExaminationXnLightChain').show();
                        } else if (this.value == '2') {
                            $('#trdiagnosisExaminationXIgg').hide();
                            $('#trdiagnosisExaminationXIga').hide();
                            $('#trdiagnosisExaminationXIgm').hide();
                            $('#trdiagnosisExaminationXIge').hide();
                            $('#trdiagnosisExaminationXIgd').hide();
                            $('#trdiagnosisExaminationXkLightChain').hide();
                            $('#trdiagnosisExaminationXnLightChain').hide();
                        }
                    });
                    $('#gccaddCheckItemBtn').on('click', function () {
                        var length = $('#gcccheckItemTable tr').length;
                        var element = $('<tr></tr>');
                        element.append($(' <td>其他:&nbsp;<input name="name"  type="text"style="width: 100px;"/></td>'));
                        element.append($('<td><input type="text" name="other"/></td>'));
                        element.append($('<td><a style="cursor: pointer;color:red" onclick="$(this).parent().parent().remove()"><i class="ace-icon fa fa-close"></i>删除</a></td>'));
                        $('#gcccheckItemTable tbody').append(element);
                        $('#gcccheckItemTableTd').attr('rowspan', $('#gcccheckItemTableTd').attr('rowspan') + 1);
                    });
                    $('#addCheckItemBtn').on('click', function () {
                        var length = $('#checkItemTable tr').length;
                        var element = $('<tr></tr>');
                        element.append($(' <td>其他:&nbsp;<input name="name"  type="text"style="width: 150px;"/></td>'));
                        element.append($('<td><textarea class="autosize-transition form-control"style="overflow: hidden; word-wrap: break-word; resize: horizontal;"></textarea> </td>'));
                        element.append($('<td><textarea class="autosize-transition form-control"style="overflow: hidden; word-wrap: break-word; resize: horizontal;"></textarea> </td>'));
                        element.append($('<td><a style="cursor: pointer;color:red" onclick="$(this).parent().parent().remove()"><i class="ace-icon fa fa-close"></i>删除</a></td>'));
                        $('#checkItemTable tbody').append(element);
                        $('#datepick_' + length).datepicker({dateFormat: "yyyy-mm-dd"});
                    });

                    $('input[type=radio][name=diagnosisExaminationNnStatus]').change(function () {
                        console.log(this.value)
                        if (this.value == '1') {
                            $('#trdiagnosisExaminationNkLightChain').show();
                            $('#trdiagnosisExaminationNnLightChain').show();
                        } else if (this.value == '2') {
                            $('#trdiagnosisExaminationNkLightChain').hide();
                            $('#trdiagnosisExaminationNnLightChain').hide();
                        }
                    });

                    $('input[type=radio][name=followupExaminationXueStatus]').change(function () {
                        console.log(this.value)
                        if (this.value == '1') {
                            $('#followupExaminationXIgg').show();
                            $('#followupExaminationXIga').show();
                            $('#followupExaminationXIgm').show();
                            $('#followupExaminationXIge').show();
                            $('#followupExaminationXIgd').show();
                            $('#followupExaminationXkLightChain').show();
                            $('#followupExaminationXnLightChain').show();
                        } else if (this.value == '2') {
                            $('#followupExaminationXIgg').hide();
                            $('#followupExaminationXIga').hide();
                            $('#followupExaminationXIgm').hide();
                            $('#followupExaminationXIge').hide();
                            $('#followupExaminationXIgd').hide();
                            $('#followupExaminationXkLightChain').hide();
                            $('#followupExaminationXnLightChain').hide();
                        }
                    });


                    $('input[type=radio][name=followupExaminationNnStatus]').change(function () {
                        console.log(this.value)
                        if (this.value == '1') {
                            $('#followupExaminationNkLightChain').show();
                            $('#followupExaminationNnLightChain').show();
                            $('#followupExaminationNIggLable').show();
                            $('#followupExaminationNIgg').show();
                            $('#followupExaminationNIga').show();
                            $('#followupExaminationNIgm').show();
                            $('#followupExaminationNIge').show();
                            $('#followupExaminationNIgd').show();
                        } else if (this.value == '2') {
                            $('#followupExaminationNkLightChain').hide();
                            $('#followupExaminationNnLightChain').hide();
                            $('#followupExaminationNIggLable').hide();
                            $('#followupExaminationNIgg').hide();
                            $('#followupExaminationNIga').hide();
                            $('#followupExaminationNIgm').hide();
                            $('#followupExaminationNIge').hide();
                            $('#followupExaminationNIgd').hide();
                        }
                    });
                    $('input[type=radio][name=followupExaminationXkLightChainStatus]').change(function () {
                        console.log(this.value)
                        if (this.value == '1') {
                            $('#followupExaminationXYkLightChain').show();
                            $('#followupExaminationXYnLightChain').show();
                            $('#followupExaminationXYknLightChain').show();
                        } else if (this.value == '2') {
                            $('#followupExaminationXYkLightChain').hide();
                            $('#followupExaminationXYnLightChain').hide();
                            $('#followupExaminationXYknLightChain').hide();
                        }
                    });
                    $('input[type=radio][name=followupExaminationNMStatus]').change(function () {
                        console.log(this.value)
                        if (this.value == '1') {
                            $('#followupExaminationNMkLightChain').show();
                            $('#followupExaminationNMnLightChain').show();
                        } else if (this.value == '2') {
                            $('input[type=text][name=followupExaminationNMkLightChain]').val('');
                            $('input[type=text][name=followupExaminationNMnLightChain]').val('');

                            $('#followupExaminationNMkLightChain').hide();
                            $('#followupExaminationNMnLightChain').hide();
                        }
                    });
                    $('#addBFZbtn').on('click', function () {
                        var length = $('#BFZTable tr').length;
                        var element = $('<tr></tr>');
                        element.append($('<td>其他:&nbsp;<input type="text" type="text"style="width: 300px;"/></td>'));
                        element.append($('<td><label  ><input value="1" type="radio" class="ace" name="present' + length + '" /> <span class="lbl">是</span> </label> &nbsp; <label class=" "><input value="2" type="radio" class="ace" name="present' + length + '" /> <span class="lbl">否</span></label> </td>'));
                        element.append($('<td><a style="cursor: pointer;color:red" onclick="$(this).parent().parent().remove()"><i class="ace-icon fa fa-close"></i>删除</a></td>'));
                        $('#BFZTable tbody').append(element);
                    });

                    $('#followupPlasmactyeItemBtn').on('click', function () {
                        var length = $('#followupPlasmactyeItem tr').length+1;
                        var element = $('<tr data-id="0" data-index="'+length+'"></tr>');
                        element.append($(' <td>其他:&nbsp;<input name="name"  type="text"style="width: 200px;"/></td>'));
                        element.append($('<td><input type="text" name="other" class="text-300 zsxSize"  id="other'+length+'"/></td>'));
                        element.append($('<td><a style="cursor: pointer;color:red" onclick="$(this).parent().parent().remove()"><i class="ace-icon fa fa-close"></i>删除</a></td>'));
                        $('#followupPlasmactyeItem tbody').append(element);
                    });
                    $('#followUpParenchymaItemBtn').on('click', function () {
                        var length = $('#followUpParenchymaItemTable tr').length+1;
                        var element = $('<tr data-id="0" data-index="'+length+'"></tr>');
                        element.append($(' <td>其他:&nbsp;<input name="name"  type="text"style="width: 90px;"/></td>'));
                        element.append($('<td><textarea class="autosize-transition form-control"style="overflow: hidden; word-wrap: break-word; resize: horizontal;"></textarea> </td>'));
                        element.append($('<td><input type="text" class="cmSize" id="other01'+length+'"/>cm * <input type="text" class="cmSize" id="other02'+length+'"/>cm </td>'));
                        element.append($('<td><a style="cursor: pointer;color:red" onclick="$(this).parent().parent().remove()"><i class="ace-icon fa fa-close"></i>删除</a></td>'));
                        $('#followUpParenchymaItemTable tbody').append(element);
                        $('#datepick_' + length).datepicker({dateFormat: "yyyy-mm-dd"});
                    });
                    $('#followupIconographyItemBtn').on('click', function () {
                        var length = $('#followupIconographyItemTable tbody').find('tr').length+1;
                        var element = $('<tr data-id="0" data-index="'+length+'"></tr>');
                        element.append($(' <td>其他:&nbsp;<input name="name"  type="text"style="width: 90px;"/></td>'));
                        element.append($('<td><textarea class="autosize-transition form-control"style="overflow: hidden; word-wrap: break-word; resize: horizontal;"></textarea> </td>'));
                        element.append($('<td><textarea name="other'+length+'" class="autosize-transition form-control zsSize"style="overflow: hidden; word-wrap: break-word; resize: horizontal;"></textarea> </td>'));
                        element.append($('<td><a style="cursor: pointer;color:red" onclick="$(this).parent().parent().remove()"><i class="ace-icon fa fa-close"></i>删除</a></td>'));
                        $('#followupIconographyItemTable tbody').append(element);
                        $('#datepick_' + length) .datepicker({dateFormat: "yyyy-mm-dd"});
                    });
                    $('#followupChemotherapyItemBtn').on('click', function () {
                        var length = $('#followupChemotherapyItemTable tr').length;
                        var element = $('<tr data-id="0" data-index="'+length+'"></tr>');
                        element.append($('<th>' + (length - 1) + '</th>'));
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
                        element.append($('<td colspan="1"><input type="text" style="width:100%;" name="consumption"/></td>'));
                        element.append($('<td colspan="1"> ' +
                        '<div   style="position:relative;"> ' +
                        '<span   style="width:18px;overflow:hidden;"> ' +
                        '<select id="consumptionSize"  name="consumptionSize'+ length +'" data-placeholder=""' +
                        'class="select2-300" style="width:200px;" onchange="setSize($(this))" > ' +
                        '<option value="" selected></option> ' +
                        '<option value="mg">mg</option> ' +
                        '<option value="mg/m2">mg/m2</option> ' +
                        '<option value="mg/kg">mg/kg</option> ' +
                        '<option value="g">g</option> ' +
                        '</select> </span> ' +
                        '<input   name="consumptionSize" id="consumptSize" type="text" style="width:80px;height:100%;position:absolute;left:0px;"/> ' +
                        '</div></td>'));
                        element.append($('<td colspan="1"><input type="text" style="width:100%;" name="frequency"/></td>'));
                        element.append($('<td colspan="1"><label><input value="1" type="radio" class="ace" name="buyOuter' + length + '"/><span class="lbl">是</span></label>' + '&nbsp; <label> <input value="2" type="radio" class="ace" name="buyOuter' + length + '"  /><span class="lbl">否</span></label></td>'));
                        element.append($('<td colspan="1"><a style="cursor: pointer;color:red" onclick="$(this).parent().parent().remove()"><i class="ace-icon fa fa-close"></i>删除</a></td>'));
                        $('#followupChemotherapyItemTable tbody').append(element);
                        $('#followupChemotherapyItemTable tbody').find('select[id="followupChemotherapyItemName"][name="name' + length + '"]').select2({'width':'190px'});
                        $('#followupChemotherapyItemTable tbody').find('select[id="consumptionSize"][name="consumptionSize' + length + '"]').select2({'width':'100px'});
                    });
                    $('input[type=radio][name=evaluateStatus]').change(function () {
                        if (this.value == '1') {
                            $('#followUpflagTFCheck').show();
                        } else if (this.value == '2') {
                            $('#followUpflagTFCheck').hide();
                            $('#followUpflagTFCheckCheck').hide();
                        }
                    });
                    $('input[type=radio][name=followupEvaluateRule]').change(function () {
                        if (this.value == '1') {
                            $('#followUpflagTFCheckCheck').show();
                        } else if (this.value == '2') {
                            $('#followUpflagTFCheckCheck').hide();
                        }
                    });
                    $('input[type=radio][name=followUpflagTFCheck]').change(function () {
                        if (this.value == '1') {
                            $('#followUpflagTFCheckCheck').show();
                        } else if (this.value == '2') {
                            $('#followUpflagTFCheckCheck').hide();
                        }
                    });
                    $("#followupEstimateResult").css('width', '350px').select2({allowClear: true}).on('change', function () {
                        if ($("#followupEstimateResult").select2('val') == 10) {
                            $('#followUpflagTFCheckCheckEstimateResultOther').show();
                        } else {
                            $('#followUpflagTFCheckCheckEstimateResultOther').hide();
                        }
                    });
                    /* ---------------------------------------------------------------------------------------------------------------- */

                    $(".select2").css('width', '570px').select2({
                        allowClear: true
                    }).on('change', function () {$(this).closest('form').validate().element($(this));});
                    $('#followupComplicationStatusBtn').on('click', function () {
                        var length = $('#followupComplicationStatusTable tr').length+1;
                        var element = $('<tr data-id="0" data-index="'+length+'"></tr>');
                        element.append($('<td>其他:&nbsp;<input type="text" type="text"style="width: 300px;"/></td>'));
                        element.append($('<td><label><input value="1" type="radio" class="ace" name="present' + length + '" /> <span class="lbl">是</span> </label></td>'));
                        element.append($('<td><a style="cursor: pointer;color:red" onclick="$(this).parent().parent().remove()"><i class="ace-icon fa fa-close"></i>删除</a></td>'));
                        $('#followupComplicationStatusTable tbody') .append(element);
                    });

                    $(".select2-300").css('width', '350px').select2();

                    $('.full-width').css('width', '100%');
                    $('.input-underline').css('border', 'none').css(
                            'border-bottom', '2px solid black').css(
                            'padding-bottom', '0');
                    var $validation = true;
                    var $currentStep = 1;
                    $('#fuelux-wizard-container').ace_wizard({}).on('actionclicked.fu.wizard', function (e, info) {
                        if(${!editable}){
                            /*if (info.step == 1 && $validation) {
                                if (!$('#form-step1').valid())
                                    e.preventDefault();
                            }*/
                            if(info.step==4) {
                                $('#nextBtn').attr('disabled',true);
                            } else {
                                $('#nextBtn').attr('disabled',false);
                            }
                        }
                    }).on('finished.fu.wizard', function (e) {
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
                                message: '确认提交随访数据采集,提交后不可再修改？',
                                callback: function (result) {
                                    if (result) {
                                        submitFollowup(1);
                                        $('#submitButton').attr('disabled',true);
                                    }
                                }
                            });
                        }
                    }).on('stepclick.fu.wizard', function (e) { });

                    //documentation : http://docs.jquery.com/Plugins/Validation/validate

                    $('.tooltips-info').siblings('.requiredField').on('change paste keyup', function () {
                        if ($(this).val().length == 0) {
                            $(this).siblings('.tooltips-info').show();
                        } else {
                            $(this).siblings('.tooltips-info').hide();
                        }
                    })

                    $.mask.definitions['~'] = '[+-]';
                    $('.mobile-phone').mask('99999999999');

                    jQuery.validator.addMethod("mobilePhoneFormat", function (value, element) {
                        return this.optional(element) || /(^(13\d|15[^4\D]|17[13678]|18\d)\d{8}|170[^346\D]\d{7})$/.test(value);
                    }, "请输入11位的手机号.");
                    $(".select2-300").css('width', '300px').select2();

                    $(".text-265").css('width', '265px');

                    $(".text-300").css('width', '300px');

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

                    $('#submitButton').click(function (e) {
                        submitFollowup(0);
                    });

                    $(".changeCheck").change(function(){
                        if ($(this).val() =='') {
                            $(this).parent().children('.checkVal').show();
                        }else {
                            $(this).parent().children('.checkVal').hide();
                        }
                    });

                    $(".selectCheck").change(function(){
                        if ($(this).select2('val') ==0) {
                            $(this).parent().children('.checkVal').show();
                        }else {
                            $(this).parent().children('.checkVal').hide();
                        }
                    });
                    $(".radioCheckxj").click(function () {
                        $(this).parent().parent().children('.checkValYJ').hide();
                    });
                    $(".radiocheckxb").click(function () {
                        $(this).parent().parent().children('.checkValXB').hide();
                    });
                    $(".radiocheckmz").click(function () {
                        $(this).parent().parent().children('.checkValMZ').hide();
                    });
                    $(".radiocheckxy").click(function () {
                        $(this).parent().parent().children('.checkValXY').hide();
                    });
                    $(".checkFlag").click(function () {
                        var diagnosisFishStatusrs= $('input[name="fishexception"]:checked').val();
                        if (diagnosisFishStatusrs==2){
                            $('.checkFlagrs').hide();
                        }
                    });

                    $('#followupChemotherapyItemTable tbody').find('select[id="followupChemotherapyItemName"]').select2({'width':'190px'});
                    $('#followupChemotherapyItemTable tbody').find('select[id="consumptionSize"]').select2({'width':'100px'});
                    $(".select2-200").select2({'width':'200px'});
                    $(".select2-100").select2({'width':'100px'});
                    $.ajax({
                        dataType: "json",
                        url: "${contextPath}/patient/${patientId}?hospitalId=${hospitalId}",
                        type: "get",
                        success: function (response) {
                            if (response.success) {
                                setupDataFollowup(response.result);
                            } else {
                                bootbox.alert({
                                    buttons: {
                                        ok: {
                                            label: '确认',
                                            className: 'btn-primary'
                                        }
                                    },
                                    message: response.message,
                                });
                            }

                    $('#form-step1').children().each(function(){
                                if ($(this).find('.changeCheck').val() =='') {
                                    $(this).find('.changeCheck').parent().children('.checkVal').show();
                                }else {
                                    $(this).find('.changeCheck').parent().children('.checkVal').hide();
                                }

                                if ($(this).find('.selectCheck').select2('val') ==0) {
                                    $(this).find('.selectCheck').parent().children('.checkVal').show();
                                }else {
                                    $(this).find('.selectCheck').parent().children('.checkVal').hide();
                                }
                            });
                        }
                    });
                })
            });
</script>
