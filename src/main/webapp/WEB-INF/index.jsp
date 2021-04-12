<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:genericpage>

    <jsp:attribute name="header">
         Forside
    </jsp:attribute>

    <jsp:attribute name="footer">
        <c:set var="addHomeLink" value="${false}" scope="request"/>
    </jsp:attribute>

    <jsp:body>

        <div class="row">
            <div class="col-sm-4"></div>
            <div class="col-sm-4">
            <h2>Bmi beregner</h2>

           <form method="post" action="fc/bmiresult" >
               <div class="form-group">

               <label for="height">Højde i cm: </label>
               <input id=height name="height" type="text" class="form-control"/> <br>
            </div>
               <div class="form-group">
               <label for="weight"> Vægt i kg:  </label>
               <input id=weight name="weight" type="text" class="form-control"/> <br>
               </div>
               <button type="submit" class="btn-primary"> Beregn BMI </button>
           </form>
                <c:if test="${requestScope.error !=null}">
                    <p style="color: red"
                    ${requestScope.error}
                    </p>

                </c:if>
        </div>
            <div class="col-sm-4"></div>
        </div>


        <div>

           </p>

            <c:if test="${sessionScope.role == 'employee' }">
                <p style="font-size: larger">This is what you can do,
                    since your are logged in as an employee</p>
                 <p><a href="fc/employeepage">Employee Page</a>
             </c:if>

             <c:if test="${sessionScope.role == 'customer' }">
                <p style="font-size: larger">This is what you can do, since your
                    are logged in as a customer</p>
                <p><a href="fc/customerpage">Customer Page</a>
            </c:if>

        </div>

    </jsp:body>
</t:genericpage>