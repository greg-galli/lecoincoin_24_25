<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'saleAd.label', default: 'SaleAd')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
    <!-- Main content -->
    <section class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header">
                            <h3 class="card-title">Sale Ad List</h3>
                        </div>
                        <!-- /.card-header -->
                        <div class="card-body">
                            <table id="example2" class="table table-bordered table-hover">
                                <thead>
                                <tr>
                                    <th>Title</th>
                                    <th>Category</th>
                                    <th>Author</th>
                                    <th>Price</th>
                                    <th>Created</th>
                                </tr>
                                </thead>
                                <tbody>
                                <g:each in="${saleAdList}" var="saleAd">
                                    <tr>
                                        <td>${saleAd.title}</td>
                                        <td><g:link controller="category" action="show" id="${saleAd.category.id}">${saleAd.category.name}</g:link></td>
                                        <td><g:link controller="user" action="show" id="${saleAd.author.id}">${saleAd.author.username}</g:link></td>
                                        <td>${saleAd.price}</td>
                                        <td>${saleAd.dateCreated}</td>
                                    </tr>
                                </g:each>
                                </tbody>
                                <tfoot>
                                <tr>
                                    <th>Title</th>
                                    <th>Category</th>
                                    <th>Author</th>
                                    <th>Price</th>
                                    <th>Created</th>
                                </tr>
                                </tfoot>
                            </table>
                        </div>
                        <!-- /.card-body -->
                    </div>
                    <!-- /.card -->

                </div>
                <!-- /.col -->
            </div>
            <!-- /.row -->
        </div>
        <!-- /.container-fluid -->
    </section>
    <!-- /.content -->
    </body>
</html>