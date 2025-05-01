<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="utf-8" />
                <meta http-equiv="X-UA-Compatible" content="IE=edge" />
                <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
                <meta name="description" content="Hỏi Dân IT - Dự án laptopshop" />
                <meta name="author" content="Hỏi Dân IT" />
                <title>Create User - Hỏi Dân IT</title>

                <link href="/css/styles.css" rel="stylesheet" />
                <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
            </head>

            <body class="sb-nav-fixed">
                <jsp:include page="../layout/header.jsp" />
                <div id="layoutSidenav">
                    <jsp:include page="../layout/sidebar.jsp" />
                    <div id="layoutSidenav_content">
                        <main>
                            <div class="container-fluid px-4">
                                <h1 class="mt-4">Manage Users</h1>
                                <ol class="breadcrumb mb-4">
                                    <li class="breadcrumb-item "><a href="/admin">Dashboard</a></li>
                                    <li class="breadcrumb-item active">Users</li>
                                </ol>
                                <div class=" row g-3">
                                    <div class="row">
                                        <div class="col-md-6 col-12 mx-auto">
                                            <form:form method="post" action="/admin/user/create"
                                                modelAttribute="newUser">
                                                <div class="mb-3">
                                                    <label class="form-label">Email:</label>
                                                    <form:input type="email" name="email" class="form-control "
                                                        path="email" />
                                                </div>
                                                <div class="mb-3">
                                                    <label class="form-label">Password:</label>
                                                    <form:input type="password" name="password" class="form-control"
                                                        path="password" />
                                                </div>
                                                <div class="mb-3">
                                                    <label class="form-label">Phone number:</label>
                                                    <form:input type="text" name="phone" class="form-control"
                                                        path="phone" />
                                                </div>
                                                <div class="mb-3">
                                                    <label class="form-label">Full Name:</label>
                                                    <form:input type="text" name="fullName" class="form-control"
                                                        path="fullName" />
                                                </div>
                                                <div class="mb-3">
                                                    <label class="form-label">Address:</label>
                                                    <form:input type="text" name="address" class="form-control"
                                                        path="address" />
                                                </div>
                                                <div class="mb-3">
                                                    <label class="form-label">Role:</label>
                                                    <select class="form-select" aria-label="Default select example">
                                                        <option selected>Open this select menu</option>
                                                        <option value="ADMIN">ADMIN</option>
                                                        <option value="USER">USER</option>>
                                                    </select>
                                                </div>
                                                <div class="mb-3 col-12 col-md-6">
                                                    <label for="avatarFile" class="form-label">Avatar: </label>
                                                    <input class="form-control" type="file" id="avatarFile"
                                                        accept=".png,.jpg,.jpeg">
                                                </div>
                                                <div class="col-12 mb-3">
                                                    <img style="max-height: 250px;display: none; " src=""
                                                        alt="avatar preview" id="avatarPreview">
                                                </div>
                                                <div class="col-12 mb-5">
                                                    <button type="submit" class="btn btn-primary">Submit</button>
                                                </div>

                                            </form:form>


                                        </div>

                                    </div>

                                </div>
                        </main>
                        <jsp:include page="../layout/footer.jsp" />
                    </div>
                </div>
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
                    crossorigin="anonymous"></script>
                <script src="js/scripts.js"></script>
            </body>

            </html>