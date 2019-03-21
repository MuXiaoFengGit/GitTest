<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>富文本编辑器</title>
<link rel="stylesheet" type="text/css" href="/WangEditorTest/WangEditor-2.1.23/css/wangEditor.min.css">

<!--引入jquery和wangEditor.js-->   <!--注意：javascript必须放在body最后，否则可能会出现问题-->

</head>
<body>
<div style="height: 1000px;"></div>
<form>
<div id="div1" style="height: 1000px;">
    <p>请输入内容...</p>
</div>
</form>
<div style="height: 1000px;"></div>

<script type="text/javascript" src="/WangEditorTest/WangEditor-2.1.23/js/lib/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="/WangEditorTest/WangEditor-2.1.23/js/wangEditor.js"></script>
<script type="text/javascript">
	var E = window.wangEditor
    var editor = new E('div1');
	editor.config.menus = $.map(wangEditor.config.menus, function(item, key) {
	         if (item === 'img'
	        		 ||item === 'video'
	        		 || item === 'location'
	        		 ||item ==="fullscreen"
	        		 ||item==="source") {
	             return null;
	         }
	         return item;
	     });
	editor.config.menuFixed = false;
    editor.create();
</script>
</body>
</html>