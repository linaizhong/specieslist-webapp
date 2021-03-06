%{--
  - Copyright (C) 2012 Atlas of Living Australia
  - All Rights Reserved.
  -
  - The contents of this file are subject to the Mozilla Public
  - License Version 1.1 (the "License"); you may not use this file
  - except in compliance with the License. You may obtain a copy of
  - the License at http://www.mozilla.org/MPL/
  -
  - Software distributed under the License is distributed on an "AS
  - IS" basis, WITHOUT WARRANTY OF ANY KIND, either express or
  - implied. See the License for the specific language governing
  - rights and limitations under the License.
  --}%
<!doctype html>
<html>
<head>
    <r:require modules="fancybox"/>
    <meta name="layout" content="main"/>
    <title>My Species lists | Atlas of Living Australia</title>
    <style type="text/css">
        #speciesList {display: none;}
    </style>
</head>

<body class="yui-skin-sam nav-species">
<script type="text/javascript">
    window.onload=init
    function init(){
        if(document.getElementById("speciesList") != null)
            document.getElementById("speciesList").style.display = "block";
    }
</script>
<div id="content">
    <header id="page-header2">
        <div class="innerZ row-fluid">
            <div id="breadcrumb" class="span12">
                <ol class="breadcrumb">
                    <li><a href="http://www.ala.org.au">Home</a> <span class=" icon icon-arrow-right"></span></li>
                    <li><a href="${request.contextPath}/public/speciesLists">Species lists</a> <span class=" icon icon-arrow-right"></span></li>
                    <li class="active">${request.getUserPrincipal()?.attributes?.firstname} ${request.getUserPrincipal()?.attributes?.lastname}&apos;s Species Lists</li>
                </ol>
            </div>
        </div>
        <div class="row-fluid">
            <hgroup class="span8">
                <h1>My species lists</h1>
            </hgroup>
            <div class="span4 header-btns">
                <a class="btn btn-ala" title="Add Species List" href="${request.contextPath}/speciesList/upload">Upload a list</a>
            </div>
        </div><!--inner-->
    </header>

    <div class="inner">
            <g:if test="${lists && total > 0}">
                <p>Below is a listing of species lists that you have provided. You can use these lists to work with parts of the Atlas.
                    Click on the "delete" button next to a list to remove it from the Atlas.</p>
                <g:render template="/speciesList"/>
            </g:if>
            <g:else>
                <p>You do not have any available species lists.</p>
            </g:else>
    </div>
</div> <!--content-->
</body>
</html>