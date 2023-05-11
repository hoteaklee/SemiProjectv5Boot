<%@ page pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<div id="main">
    <div class="mt-5">
        <i class="fa-solid fa-pen-to-square fa-2xl"> 게시판 </i>
        <hr>
    </div>

    <div class="row mt-5">
        <div class="row offset-2 col-4">
            <button type="button" class="btn btn-light col-4" id="prevbtn">
                <i class="fa fa-chevron-left"> 이전게시글</i>
            </button>
            &nbsp;
            <button type="button" class="btn btn-light col-4" id="nextbtn">
                <i class="fa fa-chevron-right"> 다음게시글</i>
            </button>
        </div>
        <div class="col-4 text-end">
            <button type="button" class="btn btn-success" id="newbtn">
                <i class="fa fa-plus-circle"> 새글쓰기</i>
            </button>
        </div>
    </div><%--새글쓰기--%>

    <div class="row mt-2  offset-2 col-8">
        <table>
            <tr><th class="vtit" colspan="2">${bd.title}</th></tr>

            <tr class="vinfo">
                <td class="text-start">${bd.userid}</td>
                <td class="text-end">${bd.regdate} / ${bd.thumbs} / ${bd.views}</td>
            </tr>

            <tr><td class="vcont" colspan="2">${bd.content}</td></tr>
        </table>
    </div><%--본문 내용--%>

    <div class="row mt-2">
        <div class="row offset-2 col-4">
            <c:if test="${not empty sessionScope.UID and sessionScope.UID eq bd.userid}">
                <button type="button" class="btn btn-warning col-4" id="updbtn">
                    <i class="fa fa-pencil"> 수정하기</i>
                </button>
                &nbsp;
                <button type="button" class="btn btn-danger col-4" id="rmvbtn">
                    <i class="fa fa-trash-o"> 삭제하기</i>
                </button>
            </c:if>
        </div>
        <div class="col-4 text-end">
            <button type="button" class="btn btn-light" id="listbtn">
                <i class="fa fa-list"> 목록으로</i>
            </button>
        </div>
    </div><%--목록으로--%>




</div>

<script src="/assets/js/board.js"></script>


















