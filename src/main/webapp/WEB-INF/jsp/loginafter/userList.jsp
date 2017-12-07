<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/12/7
  Time: 22:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div  >
    <section  >
        <header >
            考勤信息
        </header>
        <table  >
            <thead>
            <tr>
                <th  >员工编号</th>
                <th  >姓名</th>
                <th  >密码</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${userlists}" var="tls" varStatus="st">
                <tr class="odd gradeX">
                    <td class="hidden-phone"> ${tls.userid}</td>
                    <td class="hidden-phone"> ${tls.username}</td>
                    <td class="hidden-phone">${tls.password}</td>
                </tr>
            </c:forEach>

            </tbody>

            <div  >
                <a class="btn btn-info  btn-sm" href="${pageContext.request.contextPath }/getUsersPage?start=0">首  页</a>
                <c:if test="${page.start>0}">
                    <a class="btn btn-info  btn-sm" href="${pageContext.request.contextPath }/getUsersPage?start=${page.start-page.count}">上一页</a>
                </c:if>
                <c:if test="${(page.start+page.count)<total}">
                    <a class="btn btn-info  btn-sm" href="${pageContext.request.contextPath }/getUsersPage/?start=${page.start+page.count}">下一页</a>
                </c:if>

                <a class="btn btn-info  btn-sm" href="${pageContext.request.contextPath }/getUsersPage/?start=${page.last}">末  页</a>
            </div>
        </table>
    </section>
</div>
</body>
</html>
