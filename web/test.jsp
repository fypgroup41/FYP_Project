<%-- 
    Document   : test
    Created on : 2016年1月21日, 下午11:31:31
    Author     : kwok1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="product-list-filter-bar clearfix" style="display: block;">
            <form name="filterform">
                <!-- filter clar btn 0730 -->

                <div class="btn-clear-filter"><a onclick="clearFilter()" class=""></a></div>

                <!-- end filter clar btn 0730 -->                      	
                <!-- listing-result -->
                <div class="list-product">
                    <ul class="list-unstyled list-inline">
                        <li>
                            <div class="unit-filter">
                                <div class="filter-label">品牌</div>
                                <div class="btn-group">
                                    <select name="brand" class="selecter-sorting" onchange="setFilter()">
                                        <option value="">全部</option>
                                        <option value="2the Max" selected="">2the Max</option>
                                        <option value="3Dconnexion">3Dconnexion</option>
                                        <option value="3M">3M</option>
                                        <option value="AAA">AAA</option>
                                        <option value="AGS">AGS</option>
                                        <option value="aMagic">aMagic</option>
                                        <option value="Anker">Anker</option>
                                        <option value="Aorus">Aorus</option>
                                        <option value="Apacer">Apacer</option>
                                        <option value="ApaxQ">ApaxQ</option>
                                        <option value="Apple">Apple</option>
                                        <option value="ARENA Scientific">ARENA Scientific</option>
                                        <option value="Astrum">Astrum</option>
                                        <option value="ASUS">ASUS</option>
                                        <option value="AULA">AULA</option>
                                        <option value="Azio Levetron">Azio Levetron</option>
                                        <option value="B&amp;l">B&amp;l</option>
                                        <option value="Baodi 保迪">Baodi 保迪</option>
                                        <option value="BASIC本手">BASIC本手</option>
                                        <option value="Belkin">Belkin</option>
                                        <option value="BenQ">BenQ</option>
                                        <option value="Bloody">Bloody</option>
                                        <option value="Bornd">Bornd</option>
                                        <option value="Box2s">Box2s</option>
                                        <option value="BUFFALO">BUFFALO</option>
                                        <option value="CAPDASE">CAPDASE</option>
                                        <option value="Celluon">Celluon</option>
                                        <option value="CHERRY">CHERRY</option>
                                        <option value="CHUWI 馳為">CHUWI 馳為</option>
                                        <option value="Cideko">Cideko</option>
                                        <option value="CIINTYART">CIINTYART</option>
                                        <option value="CIINTYART 盤樂">CIINTYART 盤樂</option>
                                        <option value="CLICK CAR MOUSE">CLICK CAR MOUSE</option>
                                        <option value="Cliptec">Cliptec</option>
                                        <option value="CM Storm">CM Storm</option>
                                        <option value="Coolermaster">Coolermaster</option>
                                        <option value="Corsair">Corsair</option>
                                        <option value="Cougar">Cougar</option>
                                        <option value="Cyborg">Cyborg</option>
                                        <option value="CZF">CZF</option>
                                        <option value="DECK">DECK</option>
                                        <option value="DEKEY">DEKEY</option>
                                        <option value="DRAGON WAR">DRAGON WAR</option>
                                        <option value="DSI">DSI</option>
                                        <option value="DTOI">DTOI</option>
                                        <option value="DUCKY">DUCKY</option>
                                        <option value="E-blue">E-blue</option>
                                        <option value="E-MU">E-MU</option>
                                        <option value="E-SENSE">E-SENSE</option>
                                        <option value="Eagletec">Eagletec</option>
                                        <option value="EK-Accessories">EK-Accessories</option>
                                        <option value="Elecom">Elecom</option>
                                        <option value="Elephant">Elephant</option>
                                        <option value="EVGA">EVGA</option>
                                        <option value="Evoluent">Evoluent</option>
                                        <option value="FelTouch">FelTouch</option>
                                        <option value="Filand">Filand</option>
                                        <option value="FILCO">FILCO</option>
                                        <option value="Fujitsu">Fujitsu</option>
                                        <option value="Func">Func</option>
                                        <option value="FunGear">FunGear</option>
                                        <option value="G.skill">G.skill</option>
                                        <option value="Gamdias">Gamdias</option>
                                        <option value="Genius">Genius</option>
                                        <option value="Genus">Genus</option>
                                        <option value="GIGABYTE">GIGABYTE</option>
                                        <option value="GOSNEL 哥士尼">GOSNEL 哥士尼</option>
                                        <option value="GTR">GTR</option>
                                        <option value="Hallmark">Hallmark</option>
                                        <option value="Happy Hacking Keyboard">Happy Hacking Keyboard</option>
                                        <option value="HAVIT">HAVIT</option>
                                        <option value="HAWK">HAWK</option>
                                        <option value="HP">HP</option>
                                        <option value="HTC">HTC</option>
                                        <option value="HYUNDAI">HYUNDAI</option>
                                        <option value="i-rocks">i-rocks</option>
                                        <option value="i-star">i-star</option>
                                        <option value="IB">IB</option>
                                        <option value="IBM">IBM</option>
                                        <option value="IRIS">IRIS</option>
                                        <option value="iSMART">iSMART</option>
                                        <option value="JAKI">JAKI</option>
                                        <option value="Kaiser baas">Kaiser baas</option>
                                        <option value="Kanvus">Kanvus</option>
                                        <option value="KAZEE">KAZEE</option>
                                        <option value="KBC">KBC</option>
                                        <option value="KbtalKing">KbtalKing</option>
                                        <option value="Kensington">Kensington</option>
                                        <option value="Keycool">Keycool</option>
                                        <option value="KUL">KUL</option>
                                        <option value="Lenovo">Lenovo</option>
                                        <option value="LEOPOLD">LEOPOLD</option>
                                        <option value="LG">LG</option>
                                        <option value="Logitech">Logitech</option>
                                        <option value="LUXA2">LUXA2</option>
                                        <option value="Mad Catz">Mad Catz</option>
                                        <option value="Magic-Pro">Magic-Pro</option>
                                        <option value="MagicForce">MagicForce</option>
                                        <option value="Marvel">Marvel</option>
                                        <option value="MAX">MAX</option>
                                        <option value="Measy">Measy</option>
                                        <option value="Metadot">Metadot</option>
                                        <option value="Microsoft">Microsoft</option>
                                        <option value="Minegea">Minegea</option>
                                        <option value="MIONIX">MIONIX</option>
                                        <option value="MIX">MIX</option>
                                        <option value="Mofii">Mofii</option>
                                        <option value="MSI">MSI</option>
                                        <option value="MW">MW</option>
                                        <option value="NUU">NUU</option>
                                        <option value="Olevia">Olevia</option>
                                        <option value="Orico">Orico</option>
                                        <option value="OZONE">OZONE</option>
                                        <option value="Patriot">Patriot</option>
                                        <option value="Philips">Philips</option>
                                        <option value="PLU 機械風暴">PLU 機械風暴</option>
                                        <option value="POLAR">POLAR</option>
                                        <option value="Rapoo 雷柏">Rapoo 雷柏</option>
                                        <option value="Razer">Razer</option>
                                        <option value="RC">RC</option>
                                        <option value="Realforce">Realforce</option>
                                        <option value="Rii">Rii</option>
                                        <option value="Roccat">Roccat</option>
                                        <option value="ROSEWILL">ROSEWILL</option>
                                        <option value="Royal Kludge">Royal Kludge</option>
                                        <option value="SAMSUNG">SAMSUNG</option>
                                        <option value="Serafim">Serafim</option>
                                        <option value="Sharkoon">Sharkoon</option>
                                        <option value="SkyDigital">SkyDigital</option>
                                        <option value="skyworth">skyworth</option>
                                        <option value="SmartD x iPazzport">SmartD x iPazzport</option>
                                        <option value="Somic">Somic</option>
                                        <option value="Sony">Sony</option>
                                        <option value="Speed">Speed</option>
                                        <option value="Steelseries">Steelseries</option>
                                        <option value="Swiftpoint">Swiftpoint</option>
                                        <option value="T.C.STAR">T.C.STAR</option>
                                        <option value="Targus">Targus</option>
                                        <option value="TechGear ">TechGear </option>
                                        <option value="Tesoro">Tesoro</option>
                                        <option value="TG3 Electronics">TG3 Electronics</option>
                                        <option value="Thermaltake">Thermaltake</option>
                                        <option value="Truly Ergonomic">Truly Ergonomic</option>
                                        <option value="Tt eSPORTS">Tt eSPORTS</option>
                                        <option value="Turtle Beach">Turtle Beach</option>
                                        <option value="VIBE">VIBE</option>
                                        <option value="ViewSonic">ViewSonic</option>
                                        <option value="Wacom">Wacom</option>
                                        <option value="Work Smart">Work Smart</option>
                                        <option value="Xoopar">Xoopar</option>
                                        <option value="ZAGG">ZAGG</option>
                                        <option value="Zippy">Zippy</option>
                                        <option value="Zowie">Zowie</option>
                                        <option value="狼蛛">狼蛛</option>
                                    </select>
                                </div>
                            </div>
                        </li>

                        <li>
                            <div class="unit-filter">
                                <div class="filter-label">價格</div>
                                <div class="btn-group">
                                    <select name="filter" class="selecter-sorting" onchange="setFilter()">
                                        <option value="">全部</option>
                                        <option value="100687">$500或以下</option>
                                        <option value="100688">$500 - $1000</option>
                                        <option value="100689">$1000或以上</option>
                                    </select>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="unit-filter">
                                <div class="filter-label">組合/鍵盤/滑鼠</div>
                                <div class="btn-group">
                                    <select name="filter" class="selecter-sorting" onchange="setFilter()">
                                        <option value="">全部</option>
                                        <option value="100684">組合</option>
                                        <option value="100685">鍵盤</option>
                                        <option value="100686">滑鼠</option>
                                    </select>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="unit-filter">
                                <div class="filter-label">鍵盤 (無線/有線)</div>
                                <div class="btn-group">
                                    <select name="filter" class="selecter-sorting" onchange="setFilter()">
                                        <option value="">全部</option>
                                        <option value="100690">無線</option>
                                        <option value="100691">有線</option>
                                    </select>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="unit-filter">
                                <div class="filter-label">滑鼠 (無線/有線)</div>
                                <div class="btn-group">
                                    <select name="filter" class="selecter-sorting" onchange="setFilter()">
                                        <option value="">全部</option>
                                        <option value="100692">無線</option>
                                        <option value="100693">有線</option>
                                    </select>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="unit-filter">
                                <div class="filter-label">滑鼠類型</div>
                                <div class="btn-group">
                                    <select name="filter" class="selecter-sorting" onchange="setFilter()">
                                        <option value="">全部</option>
                                        <option value="100694">雷射</option>
                                        <option value="100695">光學</option>
                                        <option value="100696">其他</option>
                                    </select>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="unit-filter">
                                <div class="filter-label">連接埠</div>
                                <div class="btn-group">
                                    <select name="filter" class="selecter-sorting" onchange="setFilter()">
                                        <option value="">全部</option>
                                        <option value="100697">USB</option>
                                        <option value="100698">PS/2</option>
                                    </select>
                                </div>
                            </div>
                        </li>

                        <!--<li>
                                <div class="unit-filter"
                                        <br><input type="button" value="清除" onclick="clearFilter()" class="btn btn-small">
                                </div>
                        </li>-->


                        <!-- end filter datepicker 0730 --> 	 

                    </ul>
                </div>
            </form>
        </div>
    </body>
</html>
