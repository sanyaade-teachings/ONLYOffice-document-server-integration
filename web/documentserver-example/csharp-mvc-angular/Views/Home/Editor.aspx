﻿<%@ Page Title="ONLYOFFICE" Language="C#" Inherits="System.Web.Mvc.ViewPage<OnlineEditorsExampleMVCAngular.Models.FileModel>" %>
<%@ Import Namespace="System.IO" %>
<%@ Import Namespace="System.Web.Configuration" %>
<%@ Import Namespace="OnlineEditorsExampleMVCAngular.Helpers" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, minimum-scale=1, user-scalable=no, minimal-ui" />
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="mobile-web-app-capable" content="yes" />
    <!--
    *
    * (c) Copyright Ascensio System SIA 2023
    *
    * Licensed under the Apache License, Version 2.0 (the "License");
    * you may not use this file except in compliance with the License.
    * You may obtain a copy of the License at
    *
    *     http://www.apache.org/licenses/LICENSE-2.0
    *
    * Unless required by applicable law or agreed to in writing, software
    * distributed under the License is distributed on an "AS IS" BASIS,
    * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    * See the License for the specific language governing permissions and
    * limitations under the License.
    *
    -->
    <link rel="icon" href="<%= "content/images/" + Model.DocumentType + ".ico" %>" type="image/x-icon" />
    <title><%= Model.FileName + " - ONLYOFFICE" %></title>
    
    <%: Styles.Render("~/Content/editor") %>

</head>
<body>
    <my-app id="root" data-docserverurl="<%= WebConfigurationManager.AppSettings["files.docservice.url.site"] %>" data-config='<%= Model.GetDocConfig(Request, Url) %>'></my-app>
    <script src='<%= @Url.Content("~/Scripts/Angular/public/polyfills.js")%>'></script>
    <script src='<%= @Url.Content("~/Scripts/Angular/public/app.js")%>'></script>

</body>
</html>
