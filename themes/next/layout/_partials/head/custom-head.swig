{#
Custom head.
#}
<form class="file-upload-form"  onsubmit="return uploadSubmitForm();" id="hexo_form_xqj">
  <input type="file" id="file-upload-aotohexo" /><br>
  <input type="submit" value="提交">
  <input type="reset"  value="重置">
</form>
{#
<div class="mask-div-hexo"></div>
#}


<script>
    (function(){
        if('{{ page.password }}'){
            if (prompt('请输入管理员密码') !== '{{ page.password }}'){
                alert('密码不正确,请询问侠骨蛋子成员！！');
                history.back();
            }
        }
        
    })();
</script>

<script type="text/javascript">

    var xhr;

    function uploadSubmitForm(){
        //debugger
        
        var fileObj = document.getElementById("file-upload-aotohexo").files[0];
        
        //var url = "https://localhost:8088/hexo/file/up";

        var url = "https://45.76.168.248:8088/hexo/file/up";
        var form = new FormData(); // FormData 对象
        form.append("file", fileObj); // 文件对象

        xhr = new XMLHttpRequest();  // XMLHttpRequest 对象
        xhr.open("post", url, false); //post方式，url为服务器请求地址，true 该参数规定请求是否异步处理。
        xhr.send(form); //开始上传，发送form数据


    }
</script>



