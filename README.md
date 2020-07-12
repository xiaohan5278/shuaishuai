# 帅帅商店

## 1 项目准备

- GIT建仓库
- 项目同步
- 整体框架

## 2解决方案：
- GitHub仓库创建
- 仓库与idea的连接
- 主页面的登录注册选择
- 登录页面
- 注册页面
- 购物车商品的添加，删除，和计算
- 所有页面的优化处理

##3项目的实现

- 主页面的登录注册:homepage

        <hr>
        <a href="register.jsp"><button class="but" type="submit">注册</button></a>
        <a href="login.jsp"><button class="but" type="submit">登录</button></a>
    
- 注册页面：register
     
    <form action="login.jsp" method="post">
       <input type="text" required="required" placeholder="用户名" ></input>
            <input type="password" required="required" placeholder="密码" ></input>
        <input type="password" required="required" placeholder="确认密码" ></input>

         <button class="but" type="submit">提交</button>

  

- 登录页面
  <form action="shop.jsp" method="post">

       <input type="text" required="required" placeholder="用户名" ></input>
           <input type="password" required="required" placeholder="密码" ></input>

           <button class="but" type="submit">登录</button>
    </form>
- 购物车页面的商品添加减少计算
    function add_shoppingcar(btn){
    
        var tr=btn.parentNode.parentNode;
        var tds=tr.getElementsByTagName("td");
        var name=tds[0].innerHTML;
        var price=tds[1].innerHTML;
        var tbody=document.getElementById("goods");
        var row=tbody.insertRow();
        row.innerHTML="<td>"+name+"</td>"+
            "<td>"+price+"</td>"+
            "<td align='center'>"+
            "<input type='button' value='-' id='jian'  onclick='change(this,-1)'  />"+
            "<input id='text' type='text' size='1' value='1' readonly='readonly' />"+
            "<input type='button' value='+' id='add'  onclick='change(this,1)'  />"+
            "</td>"+
            "<td>"+price+"</td>"+
            "<td align='center'>"+
            "<input type='button' value='X' onclick='del(this)'/>"+
            "</td>"+
            "</tr>"
        total();
    }
    function change(btn,n){
    
        var inputs = btn.parentNode.getElementsByTagName("input");
        var amount = parseInt(inputs[1].value)；
        if(amount<=1 && n<0){
            return;
        }
       
        inputs[1].value = amount + n;
        amount = inputs[1].value;
        var tr = btn.parentNode.parentNode;
        var tds = tr.getElementsByTagName("td");
        var price = parseFloat(tds[1].innerHTML);
        var m = price * amount；   
        tds[3].innerHTML = m;
        total();
    }


    function total(){
    
        var tbody=document.getElementById("goods");
        var trs=tbody.getElementsByTagName("tr");
        var sum=0;
        for(var i=0;i<trs.length;i++){
            var tds=trs[i].getElementsByTagName("td");
            var m=tds[3].innerHTML;
            sum += parseFloat(m);
        }
        var total=document.getElementById("total");
        total.innerHTML = sum;
    }
    function del(i){
    
        var tr=i.parentNode.parentNode;
        tr.parentNode.removeChild(tr);
        //tr.remove(tr);
        total();
    }

  



      
