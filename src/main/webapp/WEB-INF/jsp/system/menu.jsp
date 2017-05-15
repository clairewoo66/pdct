<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"></c:set>

<link rel="stylesheet" href="${contextPath}/static/assets/css/jquery-ui.css"/>
<link rel="stylesheet" href="${contextPath}/static/assets/css/datepicker.css"/>
<link rel="stylesheet" href="${contextPath}/static/assets/css/ui.jqgrid.css"/>

<div class="row">
    <div class="col-xs-12">
        <table id="grid-table"></table>

        <div id="grid-pager"></div>

        <script type="text/javascript">
            var $path_base = "${contextPath}/static";//in Ace demo this will be used for editurl parameter
        </script>

        <!-- PAGE CONTENT ENDS -->
    </div><!-- /.col -->
</div>
<!-- /.row -->

<div id="button-modal-table" class="modal fade" tabindex="-1" data-backdrop="static">
    <div class="modal-dialog">
        <form id="authorityForm">
            <div class="modal-content">
                <div class="modal-header no-padding">
                    <div class="table-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                            <span class="white">&times;</span>
                        </button>
                        按钮授权
                    </div>
                </div>
                <div class="modal-body">
                    <div id="modal-tip" class="red clearfix"></div>
                    <input id="modalValue" type="hidden"/>
                    <input id="menuCodeId" type="hidden"/>
                    <div class="widget-box widget-color-blue2">
                        <div class="widget-body">
                            <div class="widget-main padding-8">
                                <div class="row">
                                    <div class="col-xs-12 col-sm-12">
                                        <div class="control-group">
                                            <div id="checkboxList" class="checkbox">

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer no-margin-top">
                    <div class="text-center">
                        <button id="submitButton" type="button" class="btn btn-app btn-success btn-xs">
                            <i class="ace-icon fa fa-floppy-o bigger-160"></i>
                            保存
                        </button>
                        <button class="btn btn-app btn-pink btn-xs" data-dismiss="modal">
                            <i class="ace-icon fa fa-share bigger-160"></i>
                            取消
                        </button>
                    </div>
                </div>
            </div><!-- /.modal-content -->
        </form>
    </div><!-- /.modal-dialog -->
</div>
<!-- page specific plugin scripts -->
<script type="text/javascript">
    var scripts = [null, "${contextPath}/static/assets/js/date-time/bootstrap-datepicker.js", "${contextPath}/static/assets/js/date-time/locales/bootstrap-datepicker.zh-CN.js", "${contextPath}/static/assets/js/jqGrid/jquery.jqGrid.js", "${contextPath}/static/assets/js/jqGrid/i18n/grid.locale-cn.js", null]
    $('.page-content-area').ace_ajax('loadScripts', scripts, function () {
        // inline scripts related to this page
        jQuery(function ($) {
            var grid_selector = "#grid-table";
            var pager_selector = "#grid-pager";

            // resize to fit page size
            $(window).on('resize.jqGrid', function () {
                $(grid_selector).jqGrid('setGridWidth', $(".page-content").width());
            })
            // resize on sidebar collapse/expand
            var parent_column = $(grid_selector).closest('[class*="col-"]');
            $(document).on('settings.ace.jqGrid', function (ev, event_name, collapsed) {
                if (event_name === 'sidebar_collapsed' || event_name === 'main_container_fixed') {
                    // setTimeout is for webkit only to give time for DOM changes and then redraw!!!
                    setTimeout(function () {
                        $(grid_selector).jqGrid('setGridWidth', parent_column.width());
                    }, 0);
                }
            });
            function buttonAuthorityFormatter(cellvalue, options, cell) {
                var template = "<button data-toggle='modal' onclick='javascript:$(\"#button-modal-table\").modal(\"toggle\");$(\"#menuCodeId\").val(\"" + cell.id + "\")' class='btn btn-xs btn-warning'><i class='ace-icon fa fa-flag bigger-120'></i></button>";
                if (cell.parentMenuCode == "0" || cell.parentMenuCode == "bootstrapinstance" || cell.parentMenuCode == "chartsreports" || cell.menuCode == "mail" || cell.menuCode == "systemmonitor" || cell.menuCode == "druid") {
                    return "";
                } else {
                    return template;
                }
            }

            $("#button-modal-table").on('shown.bs.modal', function () {
                $("#modal-tip").html("");
                $.ajax({
                    url: "${contextPath}/menu/authorityList",
                    type: 'GET',
                    data: {
                        id: $("#menuCodeId").val(),
                        timestamp: Date.now()
                    },
                    dataType: 'json',
                    success: function (response) {
                        var result = response.result;
                        var html = '';
                        for (var i = 0; i < result.length; i++) {
                            html += result[i].roleName;
                            var roleId = result[i].roleId;
                            for (var j = 0; j < result[i].list.length; j++) {
                                var item = result[i].list[j];
                                if (item.checked) {
                                    html += '<label><input id="auth_' + roleId + '_' + item.id + '" name="' + roleId + '_' + item.id + '" type="checkbox" class="ace auth-item" checked/><span class="lbl">' + item.name + '</span></label>';
                                } else {
                                    html += '<label><input id="auth_' + roleId + '+' + item.id + '" name="' + roleId + '_' + item.id + '" type="checkbox" class="ace auth-item" /><span class="lbl">' + item.name + '</span></label>';
                                }
                            }
                            html += '<br/>';
                        }
                        $('#checkboxList').html(html);
                    }
                });
            });

            $('#submitButton').on('click', function () {
                var checkedArray = [];
                $(".auth-item").each(function () {
                    if ($(this).attr("type") == "checkbox"&&$(this).is(':checked')) {
                        checkedArray.push($(this).attr('name'));
                    }
                });

                $.ajax({
                    url: "${contextPath}/menu/authorityList",
                    data: {
                        id:$("#menuCodeId").val(),
                       authority:checkedArray.join(',')
                    },
                    type: 'PUT',
                    dataType: 'json',
                    success: function (response) {
                        $("#button-modal-table").modal("toggle");
                    }
                });
            });

            jQuery(grid_selector).jqGrid({
                subGrid: false,
                url: "${contextPath}/menu/list",
                mtype: 'post',
                datatype: "json",
                height: 450,
                colNames: ['ID', '菜单名称', '菜单编码', '菜单class', '菜单url', '备注', '设置权限'],
                colModel: [{
                    name: 'id',
                    index: 'id',
                    label: 'ID',
                    sorttype: "long",
                    key: true,
                    search: false,
                    editable: true,
                    hidden: true
                }, {
                    name: 'menuName',
                    index: 'menuName',
                    width: 100,
                    editable: true,
                    editoptions: {size: "20", maxlength: "50"},
                    searchoptions: {sopt: ['cn']},
                    editrules: {required: true}
                }, {
                    name: 'menuCode',
                    index: 'menuCode',
                    width: 80,
                    editable: true,
                    editoptions: {size: "20", maxlength: "50"},
                    searchoptions: {sopt: ['cn']},
                    editrules: {required: true}
                }, {
                    name: 'menuClass',
                    index: 'menuClass',
                    width: 160,
                    editable: true,
                    editoptions: {size: "20", maxlength: "30"},
                    searchoptions: {sopt: ['cn']},
                    editrules: {required: true}
                }, {
                    name: 'dataUrl',
                    index: 'dataUrl',
                    width: 160,
                    editable: true,
                    editoptions: {size: "20", maxlength: "30"},
                    searchoptions: {sopt: ['cn']},
                    editrules: {required: true}
                }, {
                    name: 'description',
                    index: 'description',
                    width: 160,
                    editable: true,
                    editoptions: {size: "20", maxlength: "30"},
                    searchoptions: {sopt: ['cn']},
                    editrules: {required: true}
                }, {
                    name: '',
                    index: '',
                    hidden:<shiro:lacksPermission name="menu:auth">true</shiro:lacksPermission><shiro:hasPermission name="menu:auth">false</shiro:hasPermission>,
                    width: 70,
                    editable: false,
                    search: false,
                    sortable: false,
                    formatter: buttonAuthorityFormatter
                }],
                //scroll : 1, // set the scroll property to 1 to enable paging with scrollbar - virtual loading of records
                sortname: "id",
                sortorder: "asc",
                viewrecords: true,
                rowNum: 10,
                rowList: [10, 20, 30],
                pager: pager_selector,
                altRows: true,
                multiselect: true,
                multiboxonly: true,
                ajaxGridOptions: {contentType: 'application/json;charset=utf-8', dataType: "json"},
                serializeGridData: function (postData) {
                    return JSON.stringify(postData);
                },
                ajaxRowOptions: {contentType: "application/json", dataType: "json"},
                serializeRowData: function (postData) {
                    var result = {};
                    console.log(postData);
                    result.oper = postData.oper;
                    delete postData.oper;
                    result.entry = postData;
                    var params = JSON.stringify(result);
                    return params;
                },
                loadComplete: function () {
                    var table = this;
                    setTimeout(function () {
                        styleCheckbox(table);
                        updateActionIcons(table);
                        updatePagerIcons(table);
                        enableTooltips(table);
                    }, 0);
                },
                editurl: "${contextPath}/user/operate"
            });

            $(window).triggerHandler('resize.jqGrid');// trigger window resize to make the grid get the correct size

            // navButtons
            jQuery(grid_selector).jqGrid('navGrid', pager_selector, { // navbar options
                edit: false,
                editicon: 'ace-icon fa fa-pencil blue',
                add: false,
                addicon: 'ace-icon fa fa-plus-circle purple',
                del: false,
                delicon: 'ace-icon fa fa-trash-o red',
                search: true,
                searchicon: 'ace-icon fa fa-search orange',
                refresh: true,
                refreshicon: 'ace-icon fa fa-refresh blue',
                view: true,
                viewicon: 'ace-icon fa fa-search-plus grey'
            }, {
                // edit record form
                closeAfterEdit: true,
                // width: 700,
                recreateForm: true,
                beforeShowForm: function (e) {
                    var form = $(e[0]);
                    form.closest('.ui-jqdialog').find('.ui-jqdialog-titlebar').wrapInner('<div class="widget-header" />')
                    style_edit_form(form);
                },
                ajaxEditOptions: {contentType: 'application/json;charset=utf-8', dataType: "json"},
                serializeEditData: function (postData) {
                    var result = {};
                    result.oper = postData.oper;
                    delete postData.oper;
                    result.entry = postData;
                    var params = JSON.stringify(result);
                    return params;
                },
                errorTextFormat: function (response) {
                    var result = eval('(' + response.responseText + ')');
                    return result.message;
                }
            }, {
                // new record form
                // width: 700,
                closeAfterEdit: true,
                recreateForm: true,
                viewPagerButtons: false,
                beforeShowForm: function (e) {
                    var form = $(e[0]);
                    form.closest('.ui-jqdialog').find('.ui-jqdialog-titlebar').wrapInner('<div class="widget-header" />')
                    style_edit_form(form);
                },
                ajaxEditOptions: {contentType: 'application/json;charset=utf-8', dataType: "json"},
                serializeEditData: function (postData) {
                    var result = {};
                    result.oper = postData.oper;
                    delete postData.oper;
                    result.entry = postData;
                    var params = JSON.stringify(result);
                    return params;
                },
                errorTextFormat: function (response) {
                    var result = eval('(' + response.responseText + ')');
                    return result.message;
                }
            }, {
                // delete record form
                recreateForm: true,
                beforeShowForm: function (e) {
                    var form = $(e[0]);
                    if (form.data('styled'))
                        return false;
                    form.closest('.ui-jqdialog').find('.ui-jqdialog-titlebar').wrapInner('<div class="widget-header" />')
                    style_delete_form(form);
                    form.data('styled', true);
                },
                ajaxDelOptions: {contentType: 'application/json;charset=utf-8'},
                serializeDelData: function (postData) {
                    var str = postData.id;
                    var arr = str.split(',');
                    postData.primaryKeys = arr;
                    delete postData.id;
                    return JSON.stringify(postData);
                },
                onClick: function (e) {
                    // alert(1);
                }
            }, {
                // search form
                recreateForm: true,
                afterShowSearch: function (e) {
                    var form = $(e[0]);
                    form.closest('.ui-jqdialog').find('.ui-jqdialog-title').wrap('<div class="widget-header" />')
                    style_search_form(form);
                },
                afterRedraw: function () {
                    style_search_filters($(this));
                },
                multipleSearch: true
                /**                function beforeEditCallback(e) {
        			var form = $(e[0]);
        			form.closest('.ui-jqdialog').find('.ui-jqdialog-titlebar').wrapInner('<div class="widget-header" />')
        			style_edit_form(form);
        		}
                 * multipleGroup:true, showQuery: true
                 */
            }, {
                // view record form
                recreateForm: true,
                beforeShowForm: function (e) {
                    var form = $(e[0]);
                    form.closest('.ui-jqdialog').find('.ui-jqdialog-title').wrap('<div class="widget-header" />')
                }
            })

            function style_edit_form(form) {
                // enable datepicker on "birthday" field and switches for "stock" field
                form.find('input[name=birthday]').datepicker({
                    format: 'yyyy-mm-dd',
                    autoclose: true,
                    language: 'zh-CN'
                })

                form.find('input[name=statusCn]').addClass('ace ace-switch ace-switch-5').after('<span class="lbl"></span>');
                // don't wrap inside a label element, the checkbox value won't be submitted (POST'ed)
                // .addClass('ace ace-switch ace-switch-5').wrap('<label class="inline" />').after('<span class="lbl"></span>');

                // update buttons classes
                var buttons = form.next().find('.EditButton .fm-button');
                buttons.addClass('btn btn-sm').find('[class*="-icon"]').hide();// ui-icon, s-icon
                buttons.eq(0).addClass('btn-primary').prepend('<i class="ace-icon fa fa-check"></i>');
                buttons.eq(1).prepend('<i class="ace-icon fa fa-times"></i>')

                buttons = form.next().find('.navButton a');
                buttons.find('.ui-icon').hide();
                buttons.eq(0).append('<i class="ace-icon fa fa-chevron-left"></i>');
                buttons.eq(1).append('<i class="ace-icon fa fa-chevron-right"></i>');
            }

            function style_delete_form(form) {
                var buttons = form.next().find('.EditButton .fm-button');
                buttons.addClass('btn btn-sm btn-white btn-round').find('[class*="-icon"]').hide();// ui-icon, s-icon
                buttons.eq(0).addClass('btn-danger').prepend('<i class="ace-icon fa fa-trash-o"></i>');
                buttons.eq(1).addClass('btn-default').prepend('<i class="ace-icon fa fa-times"></i>')
            }

            function style_search_filters(form) {
                form.find('.delete-rule').val('X');
                form.find('.add-rule').addClass('btn btn-xs btn-primary');
                form.find('.add-group').addClass('btn btn-xs btn-success');
                form.find('.delete-group').addClass('btn btn-xs btn-danger');
            }

            function style_search_form(form) {
                var dialog = form.closest('.ui-jqdialog');
                var buttons = dialog.find('.EditTable')
                buttons.find('.EditButton a[id*="_reset"]').addClass('btn btn-sm btn-info').find('.ui-icon').attr('class', 'ace-icon fa fa-retweet');
                buttons.find('.EditButton a[id*="_query"]').addClass('btn btn-sm btn-inverse').find('.ui-icon').attr('class', 'ace-icon fa fa-comment-o');
                buttons.find('.EditButton a[id*="_search"]').addClass('btn btn-sm btn-purple').find('.ui-icon').attr('class', 'ace-icon fa fa-search');
            }

            function beforeDeleteCallback(e) {
                var form = $(e[0]);
                if (form.data('styled'))
                    return false;
                form.closest('.ui-jqdialog').find('.ui-jqdialog-titlebar').wrapInner('<div class="widget-header" />')
                style_delete_form(form);
                form.data('styled', true);
            }

            // it causes some flicker when reloading or navigating grid
            // it may be possible to have some custom formatter to do this as the grid is being created to prevent this
            // or go back to default browser checkbox styles for the grid
            function styleCheckbox(table) {
                /**
                 * $(table).find('input:checkbox').addClass('ace') .wrap('<label />') .after('<span class="lbl align-top" />') $('.ui-jqgrid-labels th[id*="_cb"]:first-child')
                 * .find('input.cbox[type=checkbox]').addClass('ace') .wrap('<label />').after('<span class="lbl align-top" />');
                 */
            }

            // unlike navButtons icons, action icons in rows seem to be hard-coded
            // you can change them like this in here if you want
            function updateActionIcons(table) {
                /**
                 * var replacement = { 'ui-ace-icon fa fa-pencil' : 'ace-icon fa fa-pencil blue', 'ui-ace-icon fa fa-trash-o' : 'ace-icon fa fa-trash-o red', 'ui-icon-disk' : 'ace-icon fa fa-check green', 'ui-icon-cancel' :
        			 * 'ace-icon fa fa-times red' }; $(table).find('.ui-pg-div span.ui-icon').each(function(){ var icon = $(this); var $class = $.trim(icon.attr('class').replace('ui-icon', '')); if($class in replacement)
        			 * icon.attr('class', 'ui-icon '+replacement[$class]); })
                 */
            }

            // replace icons with FontAwesome icons like above
            function updatePagerIcons(table) {
                var replacement = {
                    'ui-icon-seek-first': 'ace-icon fa fa-angle-double-left bigger-140',
                    'ui-icon-seek-prev': 'ace-icon fa fa-angle-left bigger-140',
                    'ui-icon-seek-next': 'ace-icon fa fa-angle-right bigger-140',
                    'ui-icon-seek-end': 'ace-icon fa fa-angle-double-right bigger-140'
                };
                $('.ui-pg-table:not(.navtable) > tbody > tr > .ui-pg-button > .ui-icon').each(function () {
                    var icon = $(this);
                    var $class = $.trim(icon.attr('class').replace('ui-icon', ''));

                    if ($class in replacement)
                        icon.attr('class', 'ui-icon ' + replacement[$class]);
                })
            }

            function enableTooltips(table) {
                $('.navtable .ui-pg-button').tooltip({
                    container: 'body'
                });
                $(table).find('.ui-pg-div').tooltip({
                    container: 'body'
                });
            }

            // var selr = jQuery(grid_selector).jqGrid('getGridParam','selrow');

            $(document).one('ajaxloadstart.page', function (e) {
                $(grid_selector).jqGrid('GridUnload');
                $('.ui-jqdialog').remove();
            });

        });
    });
</script>
