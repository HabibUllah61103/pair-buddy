.class public Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;
.super Lexpo/modules/kotlin/modules/Module;
.source "FileSystemLegacyModule.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$DownloadResumableTaskParams;,
        Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$DownloadTaskHandler;,
        Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$ProgressListener;,
        Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$ProgressResponseBody;,
        Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$TaskHandler;,
        Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFileSystemLegacyModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FileSystemLegacyModule.kt\nexpo/modules/filesystem/legacy/FileSystemLegacyModule\n+ 2 Module.kt\nexpo/modules/kotlin/modules/ModuleKt\n+ 3 ExpoTrace.kt\nexpo/modules/kotlin/tracing/ExpoTraceKt\n+ 4 Trace.kt\nandroidx/tracing/TraceKt\n+ 5 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder\n+ 6 ConstantComponentBuilder.kt\nexpo/modules/kotlin/objects/ConstantComponentBuilder\n+ 7 ModuleDefinitionBuilder.kt\nexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder\n+ 8 AnyType.kt\nexpo/modules/kotlin/types/AnyTypeKt\n+ 9 UntypedAsyncFunctionComponent.kt\nexpo/modules/kotlin/functions/UntypedAsyncFunctionComponentKt\n+ 10 EnforceType.kt\nexpo/modules/kotlin/types/EnforceTypeKt\n+ 11 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 12 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 13 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 14 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1146:1\n69#2:1147\n14#3:1148\n25#3:1149\n27#4,3:1150\n31#4:2341\n571#5,2:1153\n573#5,2:1158\n571#5,2:1160\n573#5,2:1165\n571#5,2:1167\n573#5,2:1172\n261#5:1176\n264#5,3:1234\n261#5:1237\n264#5,3:1296\n286#5:1299\n289#5,3:1371\n261#5:1374\n264#5,3:1433\n245#5,8:1436\n253#5,2:1489\n245#5,8:1491\n253#5,2:1544\n261#5:1546\n264#5,3:1605\n245#5,8:1608\n253#5,2:1661\n235#5:1663\n236#5,2:1690\n235#5:1692\n236#5,2:1719\n245#5,8:1721\n253#5,2:1774\n245#5,8:1776\n253#5,2:1829\n261#5:1831\n264#5,3:1890\n286#5:1893\n289#5,3:1965\n274#5:1968\n277#5,3:1988\n324#5:1991\n327#5,3:2037\n349#5:2040\n352#5,3:2099\n324#5:2102\n327#5,3:2148\n245#5,8:2151\n253#5,2:2204\n374#5:2206\n377#5,3:2278\n245#5,8:2281\n253#5,2:2334\n11#6,3:1155\n11#6,3:1162\n11#6,3:1169\n110#7,2:1174\n166#7,3:2336\n124#7,2:2339\n182#8,8:1177\n169#8:1185\n145#8,2:1186\n159#8,8:1188\n190#8:1196\n169#8:1197\n145#8,2:1198\n159#8,8:1200\n182#8,8:1238\n169#8:1246\n145#8,2:1247\n159#8,8:1249\n190#8:1257\n169#8:1258\n145#8,2:1259\n159#8,8:1261\n188#8:1269\n194#8,9:1300\n169#8:1309\n145#8,2:1310\n159#8,8:1312\n203#8:1320\n169#8:1321\n145#8,2:1322\n159#8,8:1324\n204#8:1332\n169#8:1333\n145#8,2:1334\n159#8,8:1336\n201#8:1344\n182#8,8:1375\n169#8:1383\n145#8,2:1384\n159#8,8:1386\n190#8:1394\n169#8:1395\n145#8,2:1396\n159#8,8:1398\n188#8:1406\n172#8,7:1444\n169#8:1451\n145#8,2:1452\n159#8,8:1454\n177#8:1462\n172#8,7:1499\n169#8:1506\n145#8,2:1507\n159#8,8:1509\n177#8:1517\n182#8,8:1547\n169#8:1555\n145#8,2:1556\n159#8,8:1558\n190#8:1566\n169#8:1567\n145#8,2:1568\n159#8,8:1570\n188#8:1578\n172#8,7:1616\n169#8:1623\n145#8,2:1624\n159#8,8:1626\n177#8:1634\n172#8,7:1729\n169#8:1736\n145#8,2:1737\n159#8,8:1739\n177#8:1747\n172#8,7:1784\n169#8:1791\n145#8,2:1792\n159#8,8:1794\n177#8:1802\n182#8,8:1832\n169#8:1840\n145#8,2:1841\n159#8,8:1843\n190#8:1851\n169#8:1852\n145#8,2:1853\n159#8,8:1855\n188#8:1863\n194#8,9:1894\n169#8:1903\n145#8,2:1904\n159#8,8:1906\n203#8:1914\n169#8:1915\n145#8,2:1916\n159#8,8:1918\n204#8:1926\n169#8:1927\n145#8,2:1928\n159#8,8:1930\n201#8:1938\n172#8,7:1969\n169#8:1976\n145#8,2:1977\n159#8,8:1979\n177#8:1987\n194#8,9:1992\n169#8:2001\n145#8,2:2002\n159#8,8:2004\n203#8:2012\n169#8:2013\n145#8,2:2014\n159#8,8:2016\n204#8:2024\n169#8:2025\n145#8,2:2026\n159#8,8:2028\n201#8:2036\n208#8,10:2041\n169#8:2051\n145#8,2:2052\n159#8,8:2054\n218#8:2062\n169#8:2063\n145#8,2:2064\n159#8,8:2066\n219#8:2074\n169#8:2075\n145#8,2:2076\n159#8,8:2078\n220#8:2086\n169#8:2087\n145#8,2:2088\n159#8,8:2090\n216#8:2098\n194#8,9:2103\n169#8:2112\n145#8,2:2113\n159#8,8:2115\n203#8:2123\n169#8:2124\n145#8,2:2125\n159#8,8:2127\n204#8:2135\n169#8:2136\n145#8,2:2137\n159#8,8:2139\n201#8:2147\n172#8,7:2159\n169#8:2166\n145#8,2:2167\n159#8,8:2169\n177#8:2177\n224#8,11:2207\n169#8:2218\n145#8,2:2219\n159#8,8:2221\n235#8:2229\n169#8:2230\n145#8,2:2231\n159#8,8:2233\n236#8:2241\n169#8:2242\n145#8,2:2243\n159#8,8:2245\n237#8:2253\n169#8:2254\n145#8,2:2255\n159#8,8:2257\n238#8:2265\n169#8:2266\n145#8,2:2267\n159#8,8:2269\n233#8:2277\n172#8,7:2289\n169#8:2296\n145#8,2:2297\n159#8,8:2299\n177#8:2307\n13#9,6:1208\n19#9,19:1215\n13#9,6:1270\n19#9,19:1277\n13#9,6:1345\n19#9,19:1352\n13#9,6:1407\n19#9,19:1414\n13#9,6:1463\n19#9,19:1470\n13#9,6:1518\n19#9,19:1525\n13#9,6:1579\n19#9,19:1586\n13#9,6:1635\n19#9,19:1642\n13#9,6:1664\n19#9,19:1671\n13#9,6:1693\n19#9,19:1700\n13#9,6:1748\n19#9,19:1755\n13#9,6:1803\n19#9,19:1810\n13#9,6:1864\n19#9,19:1871\n13#9,6:1939\n19#9,19:1946\n13#9,6:2178\n19#9,19:2185\n13#9,6:2308\n19#9,19:2315\n11#10:1214\n11#10:1276\n11#10:1351\n11#10:1413\n11#10:1469\n11#10:1524\n11#10:1585\n11#10:1641\n11#10:1670\n11#10:1699\n11#10:1754\n11#10:1809\n11#10:1870\n11#10:1945\n11#10:2184\n11#10:2314\n1#11:2342\n216#12,2:2343\n216#12,2:2345\n11228#13:2347\n11563#13,3:2348\n2851#14,7:2351\n*S KotlinDebug\n*F\n+ 1 FileSystemLegacyModule.kt\nexpo/modules/filesystem/legacy/FileSystemLegacyModule\n*L\n93#1:1147\n93#1:1148\n93#1:1149\n93#1:1150,3\n93#1:2341\n96#1:1153,2\n96#1:1158,2\n100#1:1160,2\n100#1:1165,2\n104#1:1167,2\n104#1:1172,2\n122#1:1176\n122#1:1234,3\n182#1:1237\n182#1:1296,3\n213#1:1299\n213#1:1371,3\n228#1:1374\n228#1:1433,3\n267#1:1436,8\n267#1:1489,2\n298#1:1491,8\n298#1:1544,2\n359#1:1546\n359#1:1605,3\n377#1:1608,8\n377#1:1661,2\n394#1:1663\n394#1:1690,2\n403#1:1692\n403#1:1719,2\n412#1:1721,8\n412#1:1774,2\n426#1:1776,8\n426#1:1829,2\n442#1:1831\n442#1:1890,3\n461#1:1893\n461#1:1965,3\n478#1:1968\n478#1:1988,3\n493#1:1991\n493#1:2037,3\n522#1:2040\n522#1:2099,3\n574#1:2102\n574#1:2148,3\n636#1:2151,8\n636#1:2204,2\n641#1:2206\n641#1:2278,3\n706#1:2281,8\n706#1:2334,2\n96#1:1155,3\n100#1:1162,3\n104#1:1169,3\n113#1:1174,2\n723#1:2336,3\n745#1:2339,2\n122#1:1177,8\n122#1:1185\n122#1:1186,2\n122#1:1188,8\n122#1:1196\n122#1:1197\n122#1:1198,2\n122#1:1200,8\n182#1:1238,8\n182#1:1246\n182#1:1247,2\n182#1:1249,8\n182#1:1257\n182#1:1258\n182#1:1259,2\n182#1:1261,8\n182#1:1269\n213#1:1300,9\n213#1:1309\n213#1:1310,2\n213#1:1312,8\n213#1:1320\n213#1:1321\n213#1:1322,2\n213#1:1324,8\n213#1:1332\n213#1:1333\n213#1:1334,2\n213#1:1336,8\n213#1:1344\n228#1:1375,8\n228#1:1383\n228#1:1384,2\n228#1:1386,8\n228#1:1394\n228#1:1395\n228#1:1396,2\n228#1:1398,8\n228#1:1406\n267#1:1444,7\n267#1:1451\n267#1:1452,2\n267#1:1454,8\n267#1:1462\n298#1:1499,7\n298#1:1506\n298#1:1507,2\n298#1:1509,8\n298#1:1517\n359#1:1547,8\n359#1:1555\n359#1:1556,2\n359#1:1558,8\n359#1:1566\n359#1:1567\n359#1:1568,2\n359#1:1570,8\n359#1:1578\n377#1:1616,7\n377#1:1623\n377#1:1624,2\n377#1:1626,8\n377#1:1634\n412#1:1729,7\n412#1:1736\n412#1:1737,2\n412#1:1739,8\n412#1:1747\n426#1:1784,7\n426#1:1791\n426#1:1792,2\n426#1:1794,8\n426#1:1802\n442#1:1832,8\n442#1:1840\n442#1:1841,2\n442#1:1843,8\n442#1:1851\n442#1:1852\n442#1:1853,2\n442#1:1855,8\n442#1:1863\n461#1:1894,9\n461#1:1903\n461#1:1904,2\n461#1:1906,8\n461#1:1914\n461#1:1915\n461#1:1916,2\n461#1:1918,8\n461#1:1926\n461#1:1927\n461#1:1928,2\n461#1:1930,8\n461#1:1938\n478#1:1969,7\n478#1:1976\n478#1:1977,2\n478#1:1979,8\n478#1:1987\n493#1:1992,9\n493#1:2001\n493#1:2002,2\n493#1:2004,8\n493#1:2012\n493#1:2013\n493#1:2014,2\n493#1:2016,8\n493#1:2024\n493#1:2025\n493#1:2026,2\n493#1:2028,8\n493#1:2036\n522#1:2041,10\n522#1:2051\n522#1:2052,2\n522#1:2054,8\n522#1:2062\n522#1:2063\n522#1:2064,2\n522#1:2066,8\n522#1:2074\n522#1:2075\n522#1:2076,2\n522#1:2078,8\n522#1:2086\n522#1:2087\n522#1:2088,2\n522#1:2090,8\n522#1:2098\n574#1:2103,9\n574#1:2112\n574#1:2113,2\n574#1:2115,8\n574#1:2123\n574#1:2124\n574#1:2125,2\n574#1:2127,8\n574#1:2135\n574#1:2136\n574#1:2137,2\n574#1:2139,8\n574#1:2147\n636#1:2159,7\n636#1:2166\n636#1:2167,2\n636#1:2169,8\n636#1:2177\n641#1:2207,11\n641#1:2218\n641#1:2219,2\n641#1:2221,8\n641#1:2229\n641#1:2230\n641#1:2231,2\n641#1:2233,8\n641#1:2241\n641#1:2242\n641#1:2243,2\n641#1:2245,8\n641#1:2253\n641#1:2254\n641#1:2255,2\n641#1:2257,8\n641#1:2265\n641#1:2266\n641#1:2267,2\n641#1:2269,8\n641#1:2277\n706#1:2289,7\n706#1:2296\n706#1:2297,2\n706#1:2299,8\n706#1:2307\n122#1:1208,6\n122#1:1215,19\n182#1:1270,6\n182#1:1277,19\n213#1:1345,6\n213#1:1352,19\n228#1:1407,6\n228#1:1414,19\n267#1:1463,6\n267#1:1470,19\n298#1:1518,6\n298#1:1525,19\n359#1:1579,6\n359#1:1586,19\n377#1:1635,6\n377#1:1642,19\n394#1:1664,6\n394#1:1671,19\n403#1:1693,6\n403#1:1700,19\n412#1:1748,6\n412#1:1755,19\n426#1:1803,6\n426#1:1810,19\n442#1:1864,6\n442#1:1871,19\n461#1:1939,6\n461#1:1946,19\n636#1:2178,6\n636#1:2185,19\n706#1:2308,6\n706#1:2315,19\n122#1:1214\n182#1:1276\n213#1:1351\n228#1:1413\n267#1:1469\n298#1:1524\n359#1:1585\n377#1:1641\n394#1:1670\n403#1:1699\n412#1:1754\n426#1:1809\n442#1:1870\n461#1:1945\n636#1:2184\n706#1:2314\n904#1:2343,2\n921#1:2345,2\n1067#1:2347\n1067#1:2348,3\n1067#1:2351,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00c0\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0012\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0016\u0018\u00002\u00020\u0001:\u0005]^_`aB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u0018\u001a\u00020\u0019H\u0017J\u000c\u0010\u001a\u001a\u00020\u001b*\u00020\u001cH\u0002J\u000c\u0010\u001d\u001a\u00020\u001b*\u00020\u001cH\u0002J\u0010\u0010\u001e\u001a\u00020\u001b2\u0006\u0010\u001f\u001a\u00020\tH\u0002J\u001a\u0010 \u001a\n\u0012\u0004\u0012\u00020\"\u0018\u00010!2\u0008\u0010#\u001a\u0004\u0018\u00010\u0014H\u0002J\u0018\u0010$\u001a\n\u0012\u0004\u0012\u00020\"\u0018\u00010!2\u0006\u0010%\u001a\u00020\u001cH\u0002J\u0016\u0010&\u001a\u0008\u0012\u0004\u0012\u00020\"0!2\u0006\u0010%\u001a\u00020\u001cH\u0002J \u0010\'\u001a\u00020\u001b2\u0006\u0010%\u001a\u00020\u001c2\u0006\u0010(\u001a\u00020\"2\u0006\u0010)\u001a\u00020\u0014H\u0002J\u0018\u0010\'\u001a\u00020\u001b2\u0006\u0010%\u001a\u00020\u001c2\u0006\u0010(\u001a\u00020\"H\u0002J\u0010\u0010*\u001a\u00020+2\u0006\u0010%\u001a\u00020\u001cH\u0002J\u0012\u0010,\u001a\u00020+2\u0008\u0010-\u001a\u0004\u0018\u00010\u0014H\u0003J \u0010.\u001a\u00020\u001b2\u0006\u0010/\u001a\u0002002\u0006\u00101\u001a\u00020\t2\u0006\u00102\u001a\u000203H\u0002J\u0010\u00104\u001a\u00020\u001c2\u0006\u00105\u001a\u00020\tH\u0002J(\u00106\u001a\u0002072\u0006\u00108\u001a\u00020\u00142\u0006\u00109\u001a\u00020\u00142\u0006\u0010:\u001a\u00020;2\u0006\u0010<\u001a\u00020=H\u0002J \u0010>\u001a\u00020?2\u0006\u0010:\u001a\u00020;2\u0006\u0010<\u001a\u00020=2\u0006\u00105\u001a\u00020\tH\u0002J\u0018\u0010@\u001a\u0004\u0018\u00010A2\u0006\u0010B\u001a\u00020CH\u0082@\u00a2\u0006\u0002\u0010DJ\u0010\u0010H\u001a\u00020\u00142\u0006\u00105\u001a\u00020\tH\u0002J\u0010\u0010I\u001a\u00020\u001b2\u0006\u00105\u001a\u00020\tH\u0002J\u0010\u0010J\u001a\u00020K2\u0006\u00105\u001a\u00020\tH\u0002J\u0010\u0010L\u001a\u00020+2\u0006\u0010%\u001a\u00020\u001cH\u0002J\u001a\u0010M\u001a\u00020N2\u0006\u0010%\u001a\u00020\u001c2\u0008\u0008\u0002\u0010O\u001a\u000203H\u0002J\u0012\u0010P\u001a\u0004\u0018\u0001002\u0006\u0010%\u001a\u00020\u001cH\u0002J\u000c\u0010Q\u001a\u00020\t*\u00020\u001cH\u0002J\u0010\u0010T\u001a\u00020\u00142\u0006\u0010U\u001a\u00020\u0014H\u0002J\u0010\u0010V\u001a\u00020W2\u0006\u0010X\u001a\u00020+H\u0002J\u0010\u0010Y\u001a\u00020Z2\u0006\u0010[\u001a\u00020\\H\u0002R\u0014\u0010\u0004\u001a\u00020\u00058BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007R\u0014\u0010\u0008\u001a\u00020\t8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000bR\u0014\u0010\u000c\u001a\u00020\t8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000bR\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00150\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010E\u001a\u0004\u0018\u00010\u000f8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008F\u0010GR\u0018\u0010R\u001a\u000203*\u00020\u001c8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008R\u0010S\u00a8\u0006b"
    }
    d2 = {
        "Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;",
        "Lexpo/modules/kotlin/modules/Module;",
        "<init>",
        "()V",
        "context",
        "Landroid/content/Context;",
        "getContext",
        "()Landroid/content/Context;",
        "filesDirectory",
        "Ljava/io/File;",
        "getFilesDirectory",
        "()Ljava/io/File;",
        "cacheDirectory",
        "getCacheDirectory",
        "client",
        "Lokhttp3/OkHttpClient;",
        "dirPermissionsRequest",
        "Lexpo/modules/kotlin/Promise;",
        "taskHandlers",
        "",
        "",
        "Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$TaskHandler;",
        "moduleCoroutineScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "definition",
        "Lexpo/modules/kotlin/modules/ModuleDefinitionData;",
        "checkIfFileExists",
        "",
        "Landroid/net/Uri;",
        "checkIfFileDirExists",
        "ensureDirExists",
        "dir",
        "permissionsForPath",
        "Ljava/util/EnumSet;",
        "Lexpo/modules/kotlin/services/FilePermissionService$Permission;",
        "path",
        "permissionsForUri",
        "uri",
        "permissionsForSAFUri",
        "ensurePermission",
        "permission",
        "errorMsg",
        "openAssetInputStream",
        "Ljava/io/InputStream;",
        "openResourceInputStream",
        "resourceName",
        "transformFilesFromSAF",
        "documentFile",
        "Landroidx/documentfile/provider/DocumentFile;",
        "outputDir",
        "copy",
        "",
        "contentUriFromFile",
        "file",
        "createUploadRequest",
        "Lokhttp3/Request;",
        "url",
        "fileUriString",
        "options",
        "Lexpo/modules/filesystem/legacy/FileSystemUploadOptions;",
        "decorator",
        "Lexpo/modules/filesystem/legacy/RequestBodyDecorator;",
        "createRequestBody",
        "Lokhttp3/RequestBody;",
        "downloadResumableTask",
        "",
        "params",
        "Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$DownloadResumableTaskParams;",
        "(Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$DownloadResumableTaskParams;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "okHttpClient",
        "getOkHttpClient",
        "()Lokhttp3/OkHttpClient;",
        "md5",
        "forceDelete",
        "getFileSize",
        "",
        "getInputStream",
        "getOutputStream",
        "Ljava/io/OutputStream;",
        "append",
        "getNearestSAFFile",
        "toFile",
        "isSAFUri",
        "(Landroid/net/Uri;)Z",
        "parseFileUri",
        "uriStr",
        "getInputStreamBytes",
        "",
        "inputStream",
        "translateHeaders",
        "Landroid/os/Bundle;",
        "headers",
        "Lokhttp3/Headers;",
        "DownloadResumableTaskParams",
        "TaskHandler",
        "DownloadTaskHandler",
        "ProgressResponseBody",
        "ProgressListener",
        "expo-file-system_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private client:Lokhttp3/OkHttpClient;

.field private dirPermissionsRequest:Lexpo/modules/kotlin/Promise;

.field private final moduleCoroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field private final taskHandlers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$TaskHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 80
    invoke-direct {p0}, Lexpo/modules/kotlin/modules/Module;-><init>()V

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;->taskHandlers:Ljava/util/Map;

    .line 90
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    iput-object v0, p0, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;->moduleCoroutineScope:Lkotlinx/coroutines/CoroutineScope;

    return-void
.end method

.method public static final synthetic access$checkIfFileDirExists(Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;Landroid/net/Uri;)V
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;->checkIfFileDirExists(Landroid/net/Uri;)V

    return-void
.end method

.method public static final synthetic access$contentUriFromFile(Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;Ljava/io/File;)Landroid/net/Uri;
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;->contentUriFromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$createUploadRequest(Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;Ljava/lang/String;Ljava/lang/String;Lexpo/modules/filesystem/legacy/FileSystemUploadOptions;Lexpo/modules/filesystem/legacy/RequestBodyDecorator;)Lokhttp3/Request;
    .locals 0

    .line 80
    invoke-direct {p0, p1, p2, p3, p4}, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;->createUploadRequest(Ljava/lang/String;Ljava/lang/String;Lexpo/modules/filesystem/legacy/FileSystemUploadOptions;Lexpo/modules/filesystem/legacy/RequestBodyDecorator;)Lokhttp3/Request;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$downloadResumableTask(Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$DownloadResumableTaskParams;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 80
    invoke-direct {p0, p1, p2}, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;->downloadResumableTask(Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$DownloadResumableTaskParams;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$ensureDirExists(Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;Ljava/io/File;)V
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;->ensureDirExists(Ljava/io/File;)V

    return-void
.end method

.method public static final synthetic access$ensurePermission(Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;Landroid/net/Uri;Lexpo/modules/kotlin/services/FilePermissionService$Permission;)V
    .locals 0

    .line 80
    invoke-direct {p0, p1, p2}, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;->ensurePermission(Landroid/net/Uri;Lexpo/modules/kotlin/services/FilePermissionService$Permission;)V

    return-void
.end method

.method public static final synthetic access$ensurePermission(Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;Landroid/net/Uri;Lexpo/modules/kotlin/services/FilePermissionService$Permission;Ljava/lang/String;)V
    .locals 0

    .line 80
    invoke-direct {p0, p1, p2, p3}, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;->ensurePermission(Landroid/net/Uri;Lexpo/modules/kotlin/services/FilePermissionService$Permission;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$forceDelete(Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;Ljava/io/File;)V
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;->forceDelete(Ljava/io/File;)V

    return-void
.end method

.method public static final synthetic access$getCacheDirectory(Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;)Ljava/io/File;
    .locals 0

    .line 80
    invoke-direct {p0}, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;->getCacheDirectory()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getContext(Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;)Landroid/content/Context;
    .locals 0

    .line 80
    invoke-direct {p0}, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getDirPermissionsRequest$p(Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;)Lexpo/modules/kotlin/Promise;
    .locals 0

    .line 80
    iget-object p0, p0, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;->dirPermissionsRequest:Lexpo/modules/kotlin/Promise;

    return-object p0
.end method

.method public static final synthetic access$getFileSize(Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;Ljava/io/File;)J
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;->getFileSize(Ljava/io/File;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic access$getFilesDirectory(Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;)Ljava/io/File;
    .locals 0

    .line 80
    invoke-direct {p0}, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;->getFilesDirectory()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getInputStream(Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;->getInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getInputStreamBytes(Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;Ljava/io/InputStream;)[B
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;->getInputStreamBytes(Ljava/io/InputStream;)[B

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getModuleCoroutineScope$p(Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;)Lkotlinx/coroutines/CoroutineScope;
    .locals 0

    .line 80
    iget-object p0, p0, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;->moduleCoroutineScope:Lkotlinx/coroutines/CoroutineScope;

    return-object p0
.end method

.method public static final synthetic access$getNearestSAFFile(Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;Landroid/net/Uri;)Landroidx/documentfile/provider/DocumentFile;
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;->getNearestSAFFile(Landroid/net/Uri;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getOkHttpClient(Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;)Lokhttp3/OkHttpClient;
    .locals 0

    .line 80
    invoke-direct {p0}, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getOutputStream(Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;Landroid/net/Uri;Z)Ljava/io/OutputStream;
    .locals 0

    .line 80
    invoke-direct {p0, p1, p2}, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;->getOutputStream(Landroid/net/Uri;Z)Ljava/io/OutputStream;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getTaskHandlers$p(Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;)Ljava/util/Map;
    .locals 0

    .line 80
    iget-object p0, p0, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;->taskHandlers:Ljava/util/Map;

    return-object p0
.end method

.method public static final synthetic access$isSAFUri(Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;Landroid/net/Uri;)Z
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;->isSAFUri(Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$md5(Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;Ljava/io/File;)Ljava/lang/String;
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;->md5(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$openAssetInputStream(Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;->openAssetInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$openResourceInputStream(Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;->openResourceInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$parseFileUri(Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;->parseFileUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setDirPermissionsRequest$p(Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;Lexpo/modules/kotlin/Promise;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;->dirPermissionsRequest:Lexpo/modules/kotlin/Promise;

    return-void
.end method

.method public static final synthetic access$toFile(Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;Landroid/net/Uri;)Ljava/io/File;
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;->toFile(Landroid/net/Uri;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$transformFilesFromSAF(Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;Landroidx/documentfile/provider/DocumentFile;Ljava/io/File;Z)V
    .locals 0

    .line 80
    invoke-direct {p0, p1, p2, p3}, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;->transformFilesFromSAF(Landroidx/documentfile/provider/DocumentFile;Ljava/io/File;Z)V

    return-void
.end method

.method public static final synthetic access$translateHeaders(Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;Lokhttp3/Headers;)Landroid/os/Bundle;
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;->translateHeaders(Lokhttp3/Headers;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method private final checkIfFileDirExists(Landroid/net/Uri;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 764
    invoke-direct {p0, p1}, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;->toFile(Landroid/net/Uri;)Ljava/io/File;

    move-result-object p1

    .line 765
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 766
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 767
    :cond_0
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Directory for \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' doesn\'t exist. Please make sure directory \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\' exists before calling downloadAsync."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final checkIfFileExists(Landroid/net/Uri;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 756
    invoke-direct {p0, p1}, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;->toFile(Landroid/net/Uri;)Ljava/io/File;

    move-result-object p1

    .line 757
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 758
    :cond_0
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Directory for \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\' doesn\'t exist."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final contentUriFromFile(Ljava/io/File;)Landroid/net/Uri;
    .locals 3

    .line 890
    invoke-virtual {p0}, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/kotlin/AppContext;->getThrowingActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 891
    invoke-virtual {p0}, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v1

    invoke-virtual {v1}, Lexpo/modules/kotlin/AppContext;->getThrowingActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".FileSystemFileProvider"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 889
    invoke-static {v0, v1, p1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    const-string v0, "getUriForFile(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final createRequestBody(Lexpo/modules/filesystem/legacy/FileSystemUploadOptions;Lexpo/modules/filesystem/legacy/RequestBodyDecorator;Ljava/io/File;)Lokhttp3/RequestBody;
    .locals 5

    .line 912
    invoke-virtual {p1}, Lexpo/modules/filesystem/legacy/FileSystemUploadOptions;->getUploadType()Lexpo/modules/filesystem/legacy/FileSystemUploadType;

    move-result-object v0

    sget-object v1, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lexpo/modules/filesystem/legacy/FileSystemUploadType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    .line 918
    new-instance v0, Lokhttp3/MultipartBody$Builder;

    invoke-direct {v0, v1, v2, v1}, Lokhttp3/MultipartBody$Builder;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v1, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    invoke-virtual {v0, v1}, Lokhttp3/MultipartBody$Builder;->setType(Lokhttp3/MediaType;)Lokhttp3/MultipartBody$Builder;

    move-result-object v0

    .line 919
    invoke-virtual {p1}, Lexpo/modules/filesystem/legacy/FileSystemUploadOptions;->getParameters()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2345
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 921
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    goto :goto_0

    .line 923
    :cond_0
    invoke-virtual {p1}, Lexpo/modules/filesystem/legacy/FileSystemUploadOptions;->getMimeType()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/URLConnection;->guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "guessContentTypeFromName(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 925
    :cond_1
    invoke-virtual {p1}, Lexpo/modules/filesystem/legacy/FileSystemUploadOptions;->getFieldName()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    .line 926
    :cond_2
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    sget-object v4, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    invoke-virtual {v4, v1}, Lokhttp3/MediaType$Companion;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v1

    invoke-virtual {v3, p3, v1}, Lokhttp3/RequestBody$Companion;->create(Ljava/io/File;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object p3

    invoke-interface {p2, p3}, Lexpo/modules/filesystem/legacy/RequestBodyDecorator;->decorate(Lokhttp3/RequestBody;)Lokhttp3/RequestBody;

    move-result-object p2

    invoke-virtual {v0, p1, v2, p2}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    .line 927
    invoke-virtual {v0}, Lokhttp3/MultipartBody$Builder;->build()Lokhttp3/MultipartBody;

    move-result-object p1

    check-cast p1, Lokhttp3/RequestBody;

    return-object p1

    .line 912
    :cond_3
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 914
    :cond_4
    sget-object p1, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    invoke-virtual {p1, p3, v1}, Lokhttp3/RequestBody$Companion;->create(Ljava/io/File;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object p1

    invoke-interface {p2, p1}, Lexpo/modules/filesystem/legacy/RequestBodyDecorator;->decorate(Lokhttp3/RequestBody;)Lokhttp3/RequestBody;

    move-result-object p1

    return-object p1
.end method

.method private final createUploadRequest(Ljava/lang/String;Ljava/lang/String;Lexpo/modules/filesystem/legacy/FileSystemUploadOptions;Lexpo/modules/filesystem/legacy/RequestBodyDecorator;)Lokhttp3/Request;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 898
    invoke-static {p2}, Lexpo/modules/filesystem/legacy/FileSystemLegacyModuleKt;->slashifyFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 899
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v0, Lexpo/modules/kotlin/services/FilePermissionService$Permission;->READ:Lexpo/modules/kotlin/services/FilePermissionService$Permission;

    invoke-direct {p0, p2, v0}, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;->ensurePermission(Landroid/net/Uri;Lexpo/modules/kotlin/services/FilePermissionService$Permission;)V

    .line 900
    invoke-direct {p0, p2}, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;->checkIfFileExists(Landroid/net/Uri;)V

    .line 902
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 903
    invoke-virtual {p3}, Lexpo/modules/filesystem/legacy/FileSystemUploadOptions;->getHeaders()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2343
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 904
    invoke-virtual {p1, v2, v1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_0

    .line 907
    :cond_0
    invoke-direct {p0, p2}, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;->toFile(Landroid/net/Uri;)Ljava/io/File;

    move-result-object p2

    invoke-direct {p0, p3, p4, p2}, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;->createRequestBody(Lexpo/modules/filesystem/legacy/FileSystemUploadOptions;Lexpo/modules/filesystem/legacy/RequestBodyDecorator;Ljava/io/File;)Lokhttp3/RequestBody;

    move-result-object p2

    .line 908
    invoke-virtual {p3}, Lexpo/modules/filesystem/legacy/FileSystemUploadOptions;->getHttpMethod()Lexpo/modules/filesystem/legacy/HttpMethod;

    move-result-object p3

    invoke-virtual {p3}, Lexpo/modules/filesystem/legacy/HttpMethod;->getValue()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3, p2}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    return-object p1
.end method

.method private final downloadResumableTask(Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$DownloadResumableTaskParams;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 940
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$downloadResumableTask$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v2}, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$downloadResumableTask$2;-><init>(Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$DownloadResumableTaskParams;Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private final ensureDirExists(Ljava/io/File;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 773
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 774
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Couldn\'t create directory \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\'"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private final ensurePermission(Landroid/net/Uri;Lexpo/modules/kotlin/services/FilePermissionService$Permission;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 819
    sget-object v0, Lexpo/modules/kotlin/services/FilePermissionService$Permission;->READ:Lexpo/modules/kotlin/services/FilePermissionService$Permission;

    const-string v1, "Location \'"

    if-ne p2, v0, :cond_0

    .line 820
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' isn\'t readable."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;->ensurePermission(Landroid/net/Uri;Lexpo/modules/kotlin/services/FilePermissionService$Permission;Ljava/lang/String;)V

    .line 822
    :cond_0
    sget-object v0, Lexpo/modules/kotlin/services/FilePermissionService$Permission;->WRITE:Lexpo/modules/kotlin/services/FilePermissionService$Permission;

    if-ne p2, v0, :cond_1

    .line 823
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' isn\'t writable."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;->ensurePermission(Landroid/net/Uri;Lexpo/modules/kotlin/services/FilePermissionService$Permission;Ljava/lang/String;)V

    .line 825
    :cond_1
    invoke-virtual {p2}, Lexpo/modules/kotlin/services/FilePermissionService$Permission;->name()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' doesn\'t have permission \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;->ensurePermission(Landroid/net/Uri;Lexpo/modules/kotlin/services/FilePermissionService$Permission;Ljava/lang/String;)V

    return-void
.end method

.method private final ensurePermission(Landroid/net/Uri;Lexpo/modules/kotlin/services/FilePermissionService$Permission;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 812
    invoke-direct {p0, p1}, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;->permissionsForUri(Landroid/net/Uri;)Ljava/util/EnumSet;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    return-void

    .line 813
    :cond_0
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final forceDelete(Ljava/io/File;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1041
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1042
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1044
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 1046
    :try_start_0
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, v4}, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;->forceDelete(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    if-nez v2, :cond_2

    .line 1054
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    .line 1055
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to delete directory "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1052
    :cond_2
    throw v2

    .line 1042
    :cond_3
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to list contents of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1057
    :cond_4
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_5

    :goto_2
    return-void

    .line 1058
    :cond_5
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to delete file: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final getCacheDirectory()Ljava/io/File;
    .locals 1

    .line 86
    invoke-virtual {p0}, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/kotlin/AppContext;->getCacheDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private final getContext()Landroid/content/Context;
    .locals 1

    .line 82
    invoke-virtual {p0}, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/kotlin/AppContext;->getReactContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lexpo/modules/kotlin/exception/Exceptions$AppContextLost;

    invoke-direct {v0}, Lexpo/modules/kotlin/exception/Exceptions$AppContextLost;-><init>()V

    throw v0
.end method

.method private final getFileSize(Ljava/io/File;)J
    .locals 7

    .line 1063
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1064
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0

    .line 1066
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    const-wide/16 v0, 0x0

    if-nez p1, :cond_1

    return-wide v0

    .line 2347
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, p1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .line 2348
    array-length v3, p1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, p1, v4

    .line 1067
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, v5}, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;->getFileSize(Ljava/io/File;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 2349
    invoke-interface {v2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2350
    :cond_2
    check-cast v2, Ljava/util/List;

    .line 1067
    check-cast v2, Ljava/lang/Iterable;

    .line 2351
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 2352
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    const/4 p1, 0x0

    goto :goto_2

    .line 2353
    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 2354
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2355
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    add-long/2addr v5, v3

    .line 1067
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_1

    :cond_4
    move-object p1, v2

    :goto_2
    check-cast p1, Ljava/lang/Long;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :cond_5
    return-wide v0
.end method

.method private final getFilesDirectory()Ljava/io/File;
    .locals 1

    .line 84
    invoke-virtual {p0}, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/kotlin/AppContext;->getPersistentFilesDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private final getInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1073
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {p0, p1}, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;->toFile(Landroid/net/Uri;)Ljava/io/File;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    check-cast v0, Ljava/io/InputStream;

    return-object v0

    .line 1074
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "asset"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;->openAssetInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1

    .line 1075
    :cond_1
    invoke-direct {p0, p1}, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;->isSAFUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p1

    .line 1076
    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported scheme for location \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\'."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final getInputStreamBytes(Ljava/io/InputStream;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1110
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x400

    .line 1112
    new-array v1, v1, [B

    .line 1115
    :goto_0
    :try_start_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x0

    .line 1116
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 1118
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    const-string v1, "toByteArray(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1121
    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-object p1

    :catchall_0
    move-exception p1

    :try_start_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1122
    :catch_1
    throw p1
.end method

.method private final getNearestSAFFile(Landroid/net/Uri;)Landroidx/documentfile/provider/DocumentFile;
    .locals 2

    .line 1087
    invoke-direct {p0}, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/documentfile/provider/DocumentFile;->fromSingleUri(Landroid/content/Context;Landroid/net/Uri;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1088
    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 1091
    :cond_0
    invoke-direct {p0}, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/documentfile/provider/DocumentFile;->fromTreeUri(Landroid/content/Context;Landroid/net/Uri;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object p1

    return-object p1
.end method

.method private final declared-synchronized getOkHttpClient()Lokhttp3/OkHttpClient;
    .locals 4

    monitor-enter p0

    .line 1014
    :try_start_0
    iget-object v0, p0, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;->client:Lokhttp3/OkHttpClient;

    if-nez v0, :cond_0

    .line 1015
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 1016
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3c

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 1017
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 1018
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 1020
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;->client:Lokhttp3/OkHttpClient;

    .line 1022
    :cond_0
    iget-object v0, p0, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;->client:Lokhttp3/OkHttpClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private final getOutputStream(Landroid/net/Uri;Z)Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1081
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p1}, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;->toFile(Landroid/net/Uri;)Ljava/io/File;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    check-cast v0, Ljava/io/OutputStream;

    return-object v0

    .line 1082
    :cond_0
    invoke-direct {p0, p1}, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;->isSAFUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz p2, :cond_1

    const-string p2, "wa"

    goto :goto_0

    :cond_1
    const-string p2, "w"

    :goto_0
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p1

    .line 1083
    :cond_2
    new-instance p2, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported scheme for location \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\'."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method static synthetic getOutputStream$default(Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;Landroid/net/Uri;ZILjava/lang/Object;)Ljava/io/OutputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 1079
    :cond_0
    invoke-direct {p0, p1, p2}, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;->getOutputStream(Landroid/net/Uri;Z)Ljava/io/OutputStream;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: getOutputStream"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final isSAFUri(Landroid/net/Uri;)Z
    .locals 4

    .line 1103
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    const/4 v2, 0x0

    const-string v3, "com.android.externalstorage"

    invoke-static {p1, v3, v1, v0, v2}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method private final md5(Ljava/io/File;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1027
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    check-cast v0, Ljava/io/InputStream;

    .line 1028
    check-cast v0, Ljava/io/Closeable;

    :try_start_0
    move-object p1, v0

    check-cast p1, Ljava/io/InputStream;

    .line 1029
    invoke-static {p1}, Lorg/apache/commons/codec/digest/DigestUtils;->md5(Ljava/io/InputStream;)[B

    move-result-object p1

    .line 1030
    invoke-static {p1}, Lorg/apache/commons/codec/binary/Hex;->encodeHex([B)[C

    move-result-object p1

    const-string v1, "encodeHex(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([C)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 1028
    invoke-static {v0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v1

    :catchall_0
    move-exception p1

    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {v0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private final openAssetInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 831
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "substring(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 832
    invoke-direct {p0}, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    const-string v0, "open(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 831
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Required value was null."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final openResourceInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 838
    invoke-direct {p0}, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0}, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "raw"

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 841
    invoke-direct {p0}, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0}, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "drawable"

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 843
    :cond_0
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No resource found with the name \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\'"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 846
    :cond_1
    :goto_0
    invoke-direct {p0}, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1

    const-string v0, "openRawResource(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final parseFileUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1105
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/16 v1, 0x3a

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "substring(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final permissionsForPath(Ljava/lang/String;)Ljava/util/EnumSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/EnumSet<",
            "Lexpo/modules/kotlin/services/FilePermissionService$Permission;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 782
    :cond_0
    invoke-virtual {p0}, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/kotlin/AppContext;->getFilePermission()Lexpo/modules/kotlin/services/FilePermissionService;

    move-result-object v0

    invoke-direct {p0}, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lexpo/modules/kotlin/services/FilePermissionService;->getPathPermissions(Landroid/content/Context;Ljava/lang/String;)Ljava/util/EnumSet;

    move-result-object p1

    return-object p1
.end method

.method private final permissionsForSAFUri(Landroid/net/Uri;)Ljava/util/EnumSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/EnumSet<",
            "Lexpo/modules/kotlin/services/FilePermissionService$Permission;",
            ">;"
        }
    .end annotation

    .line 795
    invoke-direct {p0, p1}, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;->getNearestSAFFile(Landroid/net/Uri;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object p1

    .line 796
    const-class v0, Lexpo/modules/kotlin/services/FilePermissionService$Permission;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 798
    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->canRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 799
    sget-object v1, Lexpo/modules/kotlin/services/FilePermissionService$Permission;->READ:Lexpo/modules/kotlin/services/FilePermissionService$Permission;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 801
    :cond_0
    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->canWrite()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 802
    sget-object p1, Lexpo/modules/kotlin/services/FilePermissionService$Permission;->WRITE:Lexpo/modules/kotlin/services/FilePermissionService$Permission;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 796
    :cond_1
    const-string p1, "apply(...)"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final permissionsForUri(Landroid/net/Uri;)Ljava/util/EnumSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/EnumSet<",
            "Lexpo/modules/kotlin/services/FilePermissionService$Permission;",
            ">;"
        }
    .end annotation

    .line 786
    invoke-direct {p0, p1}, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;->isSAFUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;->permissionsForSAFUri(Landroid/net/Uri;)Ljava/util/EnumSet;

    move-result-object p1

    return-object p1

    .line 787
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Lexpo/modules/kotlin/services/FilePermissionService$Permission;->READ:Lexpo/modules/kotlin/services/FilePermissionService$Permission;

    check-cast p1, Ljava/lang/Enum;

    invoke-static {p1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object p1

    return-object p1

    .line 788
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "asset"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p1, Lexpo/modules/kotlin/services/FilePermissionService$Permission;->READ:Lexpo/modules/kotlin/services/FilePermissionService$Permission;

    check-cast p1, Ljava/lang/Enum;

    invoke-static {p1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object p1

    return-object p1

    .line 789
    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;->permissionsForPath(Ljava/lang/String;)Ljava/util/EnumSet;

    move-result-object p1

    return-object p1

    .line 790
    :cond_3
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_4

    sget-object p1, Lexpo/modules/kotlin/services/FilePermissionService$Permission;->READ:Lexpo/modules/kotlin/services/FilePermissionService$Permission;

    check-cast p1, Ljava/lang/Enum;

    invoke-static {p1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object p1

    return-object p1

    .line 791
    :cond_4
    const-class p1, Lexpo/modules/kotlin/services/FilePermissionService$Permission;

    invoke-static {p1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p1

    return-object p1
.end method

.method private final toFile(Landroid/net/Uri;)Ljava/io/File;
    .locals 3

    .line 1096
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1097
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 1099
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid Uri: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final transformFilesFromSAF(Landroidx/documentfile/provider/DocumentFile;Ljava/io/File;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 851
    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 854
    :cond_0
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const-string v1, "Couldn\'t create folder in output dir."

    if-nez v0, :cond_2

    .line 855
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 856
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 857
    :cond_1
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 860
    :cond_2
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 861
    :cond_3
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 864
    :cond_4
    :goto_0
    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 865
    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->listFiles()[Landroidx/documentfile/provider/DocumentFile;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_5

    aget-object v3, v0, v2

    .line 866
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, v3, p2, p3}, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;->transformFilesFromSAF(Landroidx/documentfile/provider/DocumentFile;Ljava/io/File;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    if-nez p3, :cond_8

    .line 869
    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->delete()Z

    return-void

    .line 874
    :cond_6
    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 875
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 876
    new-instance v1, Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 878
    :cond_7
    new-instance v1, Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 880
    :goto_2
    invoke-direct {p0}, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p2

    check-cast p2, Ljava/io/Closeable;

    .line 881
    :try_start_0
    move-object v0, p2

    check-cast v0, Ljava/io/InputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    check-cast v2, Ljava/io/Closeable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    move-object v1, v2

    check-cast v1, Ljava/io/FileOutputStream;

    check-cast v1, Ljava/io/OutputStream;

    invoke-static {v0, v1}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    :try_start_2
    invoke-static {v2, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-static {p2, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    if-nez p3, :cond_8

    .line 883
    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->delete()Z

    return-void

    :catchall_0
    move-exception p1

    .line 881
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p3

    :try_start_4
    invoke-static {v2, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p1

    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception p3

    invoke-static {p2, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p3

    :cond_8
    :goto_3
    return-void
.end method

.method private final translateHeaders(Lokhttp3/Headers;)Landroid/os/Bundle;
    .locals 7

    .line 1130
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1131
    invoke-virtual {p1}, Lokhttp3/Headers;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 1132
    invoke-virtual {p1, v2}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v3

    .line 1134
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1137
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v2}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1135
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1140
    :cond_0
    invoke-virtual {p1, v2}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
    .locals 15

    .line 93
    move-object v0, p0

    check-cast v0, Lexpo/modules/kotlin/modules/Module;

    .line 1147
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".ModuleDefinition"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1149
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[ExpoModulesCore] "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1150
    invoke-static {v1}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 1147
    :try_start_0
    new-instance v1, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;

    invoke-direct {v1, v0}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;-><init>(Lexpo/modules/kotlin/modules/Module;)V

    .line 94
    const-string v0, "ExponentFileSystem"

    invoke-virtual {v1, v0}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->Name(Ljava/lang/String;)V

    .line 96
    move-object v0, v1

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v2, "documentDirectory"

    .line 1153
    new-instance v3, Lexpo/modules/kotlin/objects/ConstantComponentBuilder;

    invoke-direct {v3, v2}, Lexpo/modules/kotlin/objects/ConstantComponentBuilder;-><init>(Ljava/lang/String;)V

    .line 1156
    new-instance v4, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$Constant$1;

    invoke-direct {v4, p0}, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$Constant$1;-><init>(Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;)V

    check-cast v4, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v3, v4}, Lexpo/modules/kotlin/objects/ConstantComponentBuilder;->setGetter(Lkotlin/jvm/functions/Function0;)V

    .line 1158
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getConstants()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    move-object v0, v1

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v2, "cacheDirectory"

    .line 1160
    new-instance v3, Lexpo/modules/kotlin/objects/ConstantComponentBuilder;

    invoke-direct {v3, v2}, Lexpo/modules/kotlin/objects/ConstantComponentBuilder;-><init>(Ljava/lang/String;)V

    .line 1163
    new-instance v4, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$Constant$2;

    invoke-direct {v4, p0}, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$Constant$2;-><init>(Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;)V

    check-cast v4, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v3, v4}, Lexpo/modules/kotlin/objects/ConstantComponentBuilder;->setGetter(Lkotlin/jvm/functions/Function0;)V

    .line 1165
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getConstants()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    move-object v0, v1

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v2, "bundleDirectory"

    .line 1167
    new-instance v3, Lexpo/modules/kotlin/objects/ConstantComponentBuilder;

    invoke-direct {v3, v2}, Lexpo/modules/kotlin/objects/ConstantComponentBuilder;-><init>(Ljava/lang/String;)V

    .line 1170
    new-instance v4, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$Constant$3;

    invoke-direct {v4}, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$Constant$3;-><init>()V

    check-cast v4, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v3, v4}, Lexpo/modules/kotlin/objects/ConstantComponentBuilder;->setGetter(Lkotlin/jvm/functions/Function0;)V

    .line 1172
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getConstants()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x2

    .line 109
    new-array v2, v0, [Ljava/lang/String;

    const-string v3, "expo-file-system.downloadProgress"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 110
    const-string v3, "expo-file-system.uploadProgress"

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 108
    invoke-virtual {v1, v2}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->Events([Ljava/lang/String;)V

    .line 113
    move-object v2, v1

    check-cast v2, Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder;

    .line 1174
    invoke-virtual {v2}, Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder;->getEventListeners()Ljava/util/Map;

    move-result-object v2

    sget-object v3, Lexpo/modules/kotlin/events/EventName;->MODULE_CREATE:Lexpo/modules/kotlin/events/EventName;

    new-instance v6, Lexpo/modules/kotlin/events/BasicEventListener;

    sget-object v7, Lexpo/modules/kotlin/events/EventName;->MODULE_CREATE:Lexpo/modules/kotlin/events/EventName;

    new-instance v8, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$OnCreate$1;

    invoke-direct {v8, p0}, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$OnCreate$1;-><init>(Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;)V

    check-cast v8, Lkotlin/jvm/functions/Function0;

    invoke-direct {v6, v7, v8}, Lexpo/modules/kotlin/events/BasicEventListener;-><init>(Lexpo/modules/kotlin/events/EventName;Lkotlin/jvm/functions/Function0;)V

    invoke-interface {v2, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    move-object v2, v1

    check-cast v2, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v3, "getInfoAsync"

    .line 1176
    invoke-virtual {v2}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getConverters()Lexpo/modules/kotlin/types/TypeConverterProvider;

    move-result-object v6

    .line 1179
    const-class v7, Ljava/lang/String;

    .line 1180
    const-class v7, Lexpo/modules/filesystem/legacy/InfoOptionsLegacy;

    .line 1184
    new-array v7, v0, [Lexpo/modules/kotlin/types/AnyType;

    .line 1185
    sget-object v8, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 1186
    new-instance v9, Lkotlin/Pair;

    const-class v10, Ljava/lang/String;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1187
    invoke-virtual {v8}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lexpo/modules/kotlin/types/AnyType;

    if-nez v8, :cond_0

    .line 1185
    sget-object v8, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunction$1;->INSTANCE:Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunction$1;

    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 1188
    new-instance v9, Lexpo/modules/kotlin/types/AnyType;

    .line 1189
    new-instance v10, Lexpo/modules/kotlin/types/LazyKType;

    const-class v11, Ljava/lang/String;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    invoke-direct {v10, v11, v4, v8}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v10, Lkotlin/reflect/KType;

    .line 1188
    invoke-direct {v9, v10, v6}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    move-object v8, v9

    .line 1185
    :cond_0
    aput-object v8, v7, v4

    .line 1197
    sget-object v8, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 1198
    new-instance v9, Lkotlin/Pair;

    const-class v10, Lexpo/modules/filesystem/legacy/InfoOptionsLegacy;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1199
    invoke-virtual {v8}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lexpo/modules/kotlin/types/AnyType;

    if-nez v8, :cond_1

    .line 1197
    sget-object v8, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunction$2;->INSTANCE:Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunction$2;

    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 1200
    new-instance v9, Lexpo/modules/kotlin/types/AnyType;

    .line 1201
    new-instance v10, Lexpo/modules/kotlin/types/LazyKType;

    const-class v11, Lexpo/modules/filesystem/legacy/InfoOptionsLegacy;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    invoke-direct {v10, v11, v4, v8}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v10, Lkotlin/reflect/KType;

    .line 1200
    invoke-direct {v9, v10, v6}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    move-object v8, v9

    .line 1197
    :cond_1
    aput-object v8, v7, v5

    .line 1176
    new-instance v6, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunction$3;

    invoke-direct {v6, p0}, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunction$3;-><init>(Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;)V

    check-cast v6, Lkotlin/jvm/functions/Function1;

    .line 1211
    const-class v8, Landroid/os/Bundle;

    .line 1212
    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1215
    new-instance v8, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;

    invoke-direct {v8, v3, v7, v6}, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v8, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_0

    .line 1217
    :cond_2
    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1219
    new-instance v8, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;

    invoke-direct {v8, v3, v7, v6}, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v8, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_0

    .line 1221
    :cond_3
    sget-object v9, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1223
    new-instance v8, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;

    invoke-direct {v8, v3, v7, v6}, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v8, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_0

    .line 1225
    :cond_4
    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1227
    new-instance v8, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;

    invoke-direct {v8, v3, v7, v6}, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v8, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_0

    .line 1229
    :cond_5
    const-class v9, Ljava/lang/String;

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1231
    new-instance v8, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;

    invoke-direct {v8, v3, v7, v6}, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v8, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_0

    .line 1233
    :cond_6
    new-instance v8, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;

    invoke-direct {v8, v3, v7, v6}, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v8, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 1235
    :goto_0
    invoke-virtual {v2}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    move-object v2, v1

    check-cast v2, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v3, "readAsStringAsync"

    .line 1237
    invoke-virtual {v2}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getConverters()Lexpo/modules/kotlin/types/TypeConverterProvider;

    move-result-object v6

    .line 1240
    const-class v7, Ljava/lang/String;

    .line 1241
    const-class v7, Lexpo/modules/filesystem/legacy/ReadingOptions;

    .line 1245
    new-array v7, v0, [Lexpo/modules/kotlin/types/AnyType;

    .line 1246
    sget-object v8, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 1247
    new-instance v9, Lkotlin/Pair;

    const-class v10, Ljava/lang/String;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1248
    invoke-virtual {v8}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lexpo/modules/kotlin/types/AnyType;

    if-nez v8, :cond_7

    .line 1246
    sget-object v8, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunction$4;->INSTANCE:Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunction$4;

    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 1249
    new-instance v9, Lexpo/modules/kotlin/types/AnyType;

    .line 1250
    new-instance v10, Lexpo/modules/kotlin/types/LazyKType;

    const-class v11, Ljava/lang/String;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    invoke-direct {v10, v11, v4, v8}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v10, Lkotlin/reflect/KType;

    .line 1249
    invoke-direct {v9, v10, v6}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    move-object v8, v9

    .line 1246
    :cond_7
    aput-object v8, v7, v4

    .line 1258
    sget-object v8, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 1259
    new-instance v9, Lkotlin/Pair;

    const-class v10, Lexpo/modules/filesystem/legacy/ReadingOptions;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1260
    invoke-virtual {v8}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lexpo/modules/kotlin/types/AnyType;

    if-nez v8, :cond_8

    .line 1258
    sget-object v8, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunction$5;->INSTANCE:Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunction$5;

    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 1261
    new-instance v9, Lexpo/modules/kotlin/types/AnyType;

    .line 1262
    new-instance v10, Lexpo/modules/kotlin/types/LazyKType;

    const-class v11, Lexpo/modules/filesystem/legacy/ReadingOptions;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    invoke-direct {v10, v11, v4, v8}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v10, Lkotlin/reflect/KType;

    .line 1261
    invoke-direct {v9, v10, v6}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    move-object v8, v9

    .line 1258
    :cond_8
    aput-object v8, v7, v5

    .line 1237
    new-instance v6, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunction$6;

    invoke-direct {v6, p0}, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunction$6;-><init>(Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;)V

    check-cast v6, Lkotlin/jvm/functions/Function1;

    .line 1271
    new-instance v8, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;

    invoke-direct {v8, v3, v7, v6}, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v8, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 1297
    invoke-virtual {v2}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    move-object v2, v1

    check-cast v2, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v3, "writeAsStringAsync"

    .line 1299
    invoke-virtual {v2}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getConverters()Lexpo/modules/kotlin/types/TypeConverterProvider;

    move-result-object v6

    .line 1302
    const-class v7, Ljava/lang/String;

    .line 1303
    const-class v7, Ljava/lang/String;

    .line 1304
    const-class v7, Lexpo/modules/filesystem/legacy/WritingOptions;

    const/4 v7, 0x3

    .line 1308
    new-array v8, v7, [Lexpo/modules/kotlin/types/AnyType;

    .line 1309
    sget-object v9, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 1310
    new-instance v10, Lkotlin/Pair;

    const-class v11, Ljava/lang/String;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1311
    invoke-virtual {v9}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lexpo/modules/kotlin/types/AnyType;

    if-nez v9, :cond_9

    .line 1309
    sget-object v9, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunction$7;->INSTANCE:Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunction$7;

    check-cast v9, Lkotlin/jvm/functions/Function0;

    .line 1312
    new-instance v10, Lexpo/modules/kotlin/types/AnyType;

    .line 1313
    new-instance v11, Lexpo/modules/kotlin/types/LazyKType;

    const-class v12, Ljava/lang/String;

    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v12

    invoke-direct {v11, v12, v4, v9}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v11, Lkotlin/reflect/KType;

    .line 1312
    invoke-direct {v10, v11, v6}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    move-object v9, v10

    .line 1309
    :cond_9
    aput-object v9, v8, v4

    .line 1321
    sget-object v9, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 1322
    new-instance v10, Lkotlin/Pair;

    const-class v11, Ljava/lang/String;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1323
    invoke-virtual {v9}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lexpo/modules/kotlin/types/AnyType;

    if-nez v9, :cond_a

    .line 1321
    sget-object v9, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunction$8;->INSTANCE:Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunction$8;

    check-cast v9, Lkotlin/jvm/functions/Function0;

    .line 1324
    new-instance v10, Lexpo/modules/kotlin/types/AnyType;

    .line 1325
    new-instance v11, Lexpo/modules/kotlin/types/LazyKType;

    const-class v12, Ljava/lang/String;

    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v12

    invoke-direct {v11, v12, v4, v9}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v11, Lkotlin/reflect/KType;

    .line 1324
    invoke-direct {v10, v11, v6}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    move-object v9, v10

    .line 1321
    :cond_a
    aput-object v9, v8, v5

    .line 1333
    sget-object v9, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 1334
    new-instance v10, Lkotlin/Pair;

    const-class v11, Lexpo/modules/filesystem/legacy/WritingOptions;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1335
    invoke-virtual {v9}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lexpo/modules/kotlin/types/AnyType;

    if-nez v9, :cond_b

    .line 1333
    sget-object v9, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunction$9;->INSTANCE:Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunction$9;

    check-cast v9, Lkotlin/jvm/functions/Function0;

    .line 1336
    new-instance v10, Lexpo/modules/kotlin/types/AnyType;

    .line 1337
    new-instance v11, Lexpo/modules/kotlin/types/LazyKType;

    const-class v12, Lexpo/modules/filesystem/legacy/WritingOptions;

    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v12

    invoke-direct {v11, v12, v4, v9}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v11, Lkotlin/reflect/KType;

    .line 1336
    invoke-direct {v10, v11, v6}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    move-object v9, v10

    .line 1333
    :cond_b
    aput-object v9, v8, v0

    .line 1299
    new-instance v6, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunction$10;

    invoke-direct {v6, p0}, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunction$10;-><init>(Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;)V

    check-cast v6, Lkotlin/jvm/functions/Function1;

    .line 1348
    const-class v9, Lkotlin/Unit;

    .line 1349
    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 1352
    new-instance v9, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;

    invoke-direct {v9, v3, v8, v6}, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_1

    .line 1354
    :cond_c
    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 1356
    new-instance v9, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;

    invoke-direct {v9, v3, v8, v6}, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_1

    .line 1358
    :cond_d
    sget-object v10, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 1360
    new-instance v9, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;

    invoke-direct {v9, v3, v8, v6}, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_1

    .line 1362
    :cond_e
    sget-object v10, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 1364
    new-instance v9, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;

    invoke-direct {v9, v3, v8, v6}, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_1

    .line 1366
    :cond_f
    const-class v10, Ljava/lang/String;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 1368
    new-instance v9, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;

    invoke-direct {v9, v3, v8, v6}, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_1

    .line 1370
    :cond_10
    new-instance v9, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;

    invoke-direct {v9, v3, v8, v6}, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 1372
    :goto_1
    invoke-virtual {v2}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    move-object v2, v1

    check-cast v2, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v3, "deleteAsync"

    .line 1374
    invoke-virtual {v2}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getConverters()Lexpo/modules/kotlin/types/TypeConverterProvider;

    move-result-object v6

    .line 1377
    const-class v8, Ljava/lang/String;

    .line 1378
    const-class v8, Lexpo/modules/filesystem/legacy/DeletingOptions;

    .line 1382
    new-array v8, v0, [Lexpo/modules/kotlin/types/AnyType;

    .line 1383
    sget-object v9, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 1384
    new-instance v10, Lkotlin/Pair;

    const-class v11, Ljava/lang/String;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1385
    invoke-virtual {v9}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lexpo/modules/kotlin/types/AnyType;

    if-nez v9, :cond_11

    .line 1383
    sget-object v9, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunction$11;->INSTANCE:Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunction$11;

    check-cast v9, Lkotlin/jvm/functions/Function0;

    .line 1386
    new-instance v10, Lexpo/modules/kotlin/types/AnyType;

    .line 1387
    new-instance v11, Lexpo/modules/kotlin/types/LazyKType;

    const-class v12, Ljava/lang/String;

    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v12

    invoke-direct {v11, v12, v4, v9}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v11, Lkotlin/reflect/KType;

    .line 1386
    invoke-direct {v10, v11, v6}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    move-object v9, v10

    .line 1383
    :cond_11
    aput-object v9, v8, v4

    .line 1395
    sget-object v9, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 1396
    new-instance v10, Lkotlin/Pair;

    const-class v11, Lexpo/modules/filesystem/legacy/DeletingOptions;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1397
    invoke-virtual {v9}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lexpo/modules/kotlin/types/AnyType;

    if-nez v9, :cond_12

    .line 1395
    sget-object v9, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunction$12;->INSTANCE:Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunction$12;

    check-cast v9, Lkotlin/jvm/functions/Function0;

    .line 1398
    new-instance v10, Lexpo/modules/kotlin/types/AnyType;

    .line 1399
    new-instance v11, Lexpo/modules/kotlin/types/LazyKType;

    const-class v12, Lexpo/modules/filesystem/legacy/DeletingOptions;

    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v12

    invoke-direct {v11, v12, v4, v9}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v11, Lkotlin/reflect/KType;

    .line 1398
    invoke-direct {v10, v11, v6}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    move-object v9, v10

    .line 1395
    :cond_12
    aput-object v9, v8, v5

    .line 1374
    new-instance v6, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunction$13;

    invoke-direct {v6, p0}, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunction$13;-><init>(Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;)V

    check-cast v6, Lkotlin/jvm/functions/Function1;

    .line 1410
    const-class v9, Lkotlin/Unit;

    .line 1411
    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_13

    .line 1414
    new-instance v9, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;

    invoke-direct {v9, v3, v8, v6}, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_2

    .line 1416
    :cond_13
    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_14

    .line 1418
    new-instance v9, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;

    invoke-direct {v9, v3, v8, v6}, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_2

    .line 1420
    :cond_14
    sget-object v10, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_15

    .line 1422
    new-instance v9, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;

    invoke-direct {v9, v3, v8, v6}, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_2

    .line 1424
    :cond_15
    sget-object v10, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_16

    .line 1426
    new-instance v9, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;

    invoke-direct {v9, v3, v8, v6}, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_2

    .line 1428
    :cond_16
    const-class v10, Ljava/lang/String;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_17

    .line 1430
    new-instance v9, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;

    invoke-direct {v9, v3, v8, v6}, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_2

    .line 1432
    :cond_17
    new-instance v9, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;

    invoke-direct {v9, v3, v8, v6}, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 1434
    :goto_2
    invoke-virtual {v2}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    move-object v2, v1

    check-cast v2, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v3, "moveAsync"

    .line 1436
    const-class v6, Lexpo/modules/filesystem/legacy/RelocatingOptions;

    const-class v8, Lexpo/modules/kotlin/Promise;

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 1437
    new-instance v6, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;

    new-array v8, v4, [Lexpo/modules/kotlin/types/AnyType;

    .line 1443
    new-instance v9, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunction$14;

    invoke-direct {v9, p0}, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunction$14;-><init>(Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;)V

    check-cast v9, Lkotlin/jvm/functions/Function2;

    .line 1437
    invoke-direct {v6, v3, v8, v9}, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto/16 :goto_4

    .line 1439
    :cond_18
    invoke-virtual {v2}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getConverters()Lexpo/modules/kotlin/types/TypeConverterProvider;

    move-result-object v6

    .line 1446
    const-class v8, Lexpo/modules/filesystem/legacy/RelocatingOptions;

    .line 1450
    new-array v8, v5, [Lexpo/modules/kotlin/types/AnyType;

    .line 1451
    sget-object v9, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 1452
    new-instance v10, Lkotlin/Pair;

    const-class v11, Lexpo/modules/filesystem/legacy/RelocatingOptions;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1453
    invoke-virtual {v9}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lexpo/modules/kotlin/types/AnyType;

    if-nez v9, :cond_19

    .line 1451
    sget-object v9, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunction$15;->INSTANCE:Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunction$15;

    check-cast v9, Lkotlin/jvm/functions/Function0;

    .line 1454
    new-instance v10, Lexpo/modules/kotlin/types/AnyType;

    .line 1455
    new-instance v11, Lexpo/modules/kotlin/types/LazyKType;

    const-class v12, Lexpo/modules/filesystem/legacy/RelocatingOptions;

    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v12

    invoke-direct {v11, v12, v4, v9}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v11, Lkotlin/reflect/KType;

    .line 1454
    invoke-direct {v10, v11, v6}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    move-object v9, v10

    .line 1451
    :cond_19
    aput-object v9, v8, v4

    .line 1439
    new-instance v6, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunction$16;

    invoke-direct {v6, p0}, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunction$16;-><init>(Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;)V

    check-cast v6, Lkotlin/jvm/functions/Function1;

    .line 1466
    const-class v9, Lkotlin/Unit;

    .line 1467
    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1a

    .line 1470
    new-instance v9, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;

    invoke-direct {v9, v3, v8, v6}, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    :goto_3
    move-object v6, v9

    goto :goto_4

    .line 1472
    :cond_1a
    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1b

    .line 1474
    new-instance v9, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;

    invoke-direct {v9, v3, v8, v6}, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_3

    .line 1476
    :cond_1b
    sget-object v10, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1c

    .line 1478
    new-instance v9, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;

    invoke-direct {v9, v3, v8, v6}, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_3

    .line 1480
    :cond_1c
    sget-object v10, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1d

    .line 1482
    new-instance v9, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;

    invoke-direct {v9, v3, v8, v6}, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_3

    .line 1484
    :cond_1d
    const-class v10, Ljava/lang/String;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1e

    .line 1486
    new-instance v9, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;

    invoke-direct {v9, v3, v8, v6}, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_3

    .line 1488
    :cond_1e
    new-instance v9, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;

    invoke-direct {v9, v3, v8, v6}, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_3

    .line 1489
    :goto_4
    invoke-virtual {v2}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    move-object v2, v1

    check-cast v2, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v3, "copyAsync"

    .line 1491
    const-class v6, Lexpo/modules/filesystem/legacy/RelocatingOptions;

    const-class v8, Lexpo/modules/kotlin/Promise;

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 1492
    new-instance v6, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;

    new-array v8, v4, [Lexpo/modules/kotlin/types/AnyType;

    .line 1498
    new-instance v9, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunction$17;

    invoke-direct {v9, p0}, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunction$17;-><init>(Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;)V

    check-cast v9, Lkotlin/jvm/functions/Function2;

    .line 1492
    invoke-direct {v6, v3, v8, v9}, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto/16 :goto_6

    .line 1494
    :cond_1f
    invoke-virtual {v2}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getConverters()Lexpo/modules/kotlin/types/TypeConverterProvider;

    move-result-object v6

    .line 1501
    const-class v8, Lexpo/modules/filesystem/legacy/RelocatingOptions;

    .line 1505
    new-array v8, v5, [Lexpo/modules/kotlin/types/AnyType;

    .line 1506
    sget-object v9, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 1507
    new-instance v10, Lkotlin/Pair;

    const-class v11, Lexpo/modules/filesystem/legacy/RelocatingOptions;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1508
    invoke-virtual {v9}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lexpo/modules/kotlin/types/AnyType;

    if-nez v9, :cond_20

    .line 1506
    sget-object v9, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunction$18;->INSTANCE:Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunction$18;

    check-cast v9, Lkotlin/jvm/functions/Function0;

    .line 1509
    new-instance v10, Lexpo/modules/kotlin/types/AnyType;

    .line 1510
    new-instance v11, Lexpo/modules/kotlin/types/LazyKType;

    const-class v12, Lexpo/modules/filesystem/legacy/RelocatingOptions;

    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v12

    invoke-direct {v11, v12, v4, v9}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v11, Lkotlin/reflect/KType;

    .line 1509
    invoke-direct {v10, v11, v6}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    move-object v9, v10

    .line 1506
    :cond_20
    aput-object v9, v8, v4

    .line 1494
    new-instance v6, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunction$19;

    invoke-direct {v6, p0}, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunction$19;-><init>(Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;)V

    check-cast v6, Lkotlin/jvm/functions/Function1;

    .line 1521
    const-class v9, Ljava/lang/Object;

    .line 1522
    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_21

    .line 1525
    new-instance v9, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;

    invoke-direct {v9, v3, v8, v6}, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    :goto_5
    move-object v6, v9

    goto :goto_6

    .line 1527
    :cond_21
    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_22

    .line 1529
    new-instance v9, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;

    invoke-direct {v9, v3, v8, v6}, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_5

    .line 1531
    :cond_22
    sget-object v10, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_23

    .line 1533
    new-instance v9, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;

    invoke-direct {v9, v3, v8, v6}, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_5

    .line 1535
    :cond_23
    sget-object v10, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_24

    .line 1537
    new-instance v9, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;

    invoke-direct {v9, v3, v8, v6}, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_5

    .line 1539
    :cond_24
    const-class v10, Ljava/lang/String;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_25

    .line 1541
    new-instance v9, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;

    invoke-direct {v9, v3, v8, v6}, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_5

    .line 1543
    :cond_25
    new-instance v9, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;

    invoke-direct {v9, v3, v8, v6}, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_5

    .line 1544
    :goto_6
    invoke-virtual {v2}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    move-object v2, v1

    check-cast v2, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v3, "makeDirectoryAsync"

    .line 1546
    invoke-virtual {v2}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getConverters()Lexpo/modules/kotlin/types/TypeConverterProvider;

    move-result-object v6

    .line 1549
    const-class v8, Ljava/lang/String;

    .line 1550
    const-class v8, Lexpo/modules/filesystem/legacy/MakeDirectoryOptions;

    .line 1554
    new-array v8, v0, [Lexpo/modules/kotlin/types/AnyType;

    .line 1555
    sget-object v9, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 1556
    new-instance v10, Lkotlin/Pair;

    const-class v11, Ljava/lang/String;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1557
    invoke-virtual {v9}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lexpo/modules/kotlin/types/AnyType;

    if-nez v9, :cond_26

    .line 1555
    sget-object v9, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunction$20;->INSTANCE:Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunction$20;

    check-cast v9, Lkotlin/jvm/functions/Function0;

    .line 1558
    new-instance v10, Lexpo/modules/kotlin/types/AnyType;

    .line 1559
    new-instance v11, Lexpo/modules/kotlin/types/LazyKType;

    const-class v12, Ljava/lang/String;

    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v12

    invoke-direct {v11, v12, v4, v9}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v11, Lkotlin/reflect/KType;

    .line 1558
    invoke-direct {v10, v11, v6}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    move-object v9, v10

    .line 1555
    :cond_26
    aput-object v9, v8, v4

    .line 1567
    sget-object v9, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 1568
    new-instance v10, Lkotlin/Pair;

    const-class v11, Lexpo/modules/filesystem/legacy/MakeDirectoryOptions;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1569
    invoke-virtual {v9}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lexpo/modules/kotlin/types/AnyType;

    if-nez v9, :cond_27

    .line 1567
    sget-object v9, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunction$21;->INSTANCE:Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunction$21;

    check-cast v9, Lkotlin/jvm/functions/Function0;

    .line 1570
    new-instance v10, Lexpo/modules/kotlin/types/AnyType;

    .line 1571
    new-instance v11, Lexpo/modules/kotlin/types/LazyKType;

    const-class v12, Lexpo/modules/filesystem/legacy/MakeDirectoryOptions;

    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v12

    invoke-direct {v11, v12, v4, v9}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v11, Lkotlin/reflect/KType;

    .line 1570
    invoke-direct {v10, v11, v6}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    move-object v9, v10

    .line 1567
    :cond_27
    aput-object v9, v8, v5

    .line 1546
    new-instance v6, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunction$22;

    invoke-direct {v6, p0}, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunction$22;-><init>(Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;)V

    check-cast v6, Lkotlin/jvm/functions/Function1;

    .line 1582
    const-class v9, Lkotlin/Unit;

    .line 1583
    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_28

    .line 1586
    new-instance v9, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;

    invoke-direct {v9, v3, v8, v6}, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_7

    .line 1588
    :cond_28
    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_29

    .line 1590
    new-instance v9, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;

    invoke-direct {v9, v3, v8, v6}, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_7

    .line 1592
    :cond_29
    sget-object v10, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2a

    .line 1594
    new-instance v9, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;

    invoke-direct {v9, v3, v8, v6}, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_7

    .line 1596
    :cond_2a
    sget-object v10, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2b

    .line 1598
    new-instance v9, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;

    invoke-direct {v9, v3, v8, v6}, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_7

    .line 1600
    :cond_2b
    const-class v10, Ljava/lang/String;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2c

    .line 1602
    new-instance v9, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;

    invoke-direct {v9, v3, v8, v6}, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_7

    .line 1604
    :cond_2c
    new-instance v9, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;

    invoke-direct {v9, v3, v8, v6}, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 1606
    :goto_7
    invoke-virtual {v2}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    move-object v2, v1

    check-cast v2, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v3, "readDirectoryAsync"

    .line 1608
    const-class v6, Ljava/lang/String;

    const-class v8, Lexpo/modules/kotlin/Promise;

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2d

    .line 1609
    new-instance v6, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;

    new-array v8, v4, [Lexpo/modules/kotlin/types/AnyType;

    .line 1615
    new-instance v9, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunction$23;

    invoke-direct {v9, p0}, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunction$23;-><init>(Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;)V

    check-cast v9, Lkotlin/jvm/functions/Function2;

    .line 1609
    invoke-direct {v6, v3, v8, v9}, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto/16 :goto_9

    .line 1611
    :cond_2d
    invoke-virtual {v2}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getConverters()Lexpo/modules/kotlin/types/TypeConverterProvider;

    move-result-object v6

    .line 1618
    const-class v8, Ljava/lang/String;

    .line 1622
    new-array v8, v5, [Lexpo/modules/kotlin/types/AnyType;

    .line 1623
    sget-object v9, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 1624
    new-instance v10, Lkotlin/Pair;

    const-class v11, Ljava/lang/String;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1625
    invoke-virtual {v9}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lexpo/modules/kotlin/types/AnyType;

    if-nez v9, :cond_2e

    .line 1623
    sget-object v9, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunction$24;->INSTANCE:Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunction$24;

    check-cast v9, Lkotlin/jvm/functions/Function0;

    .line 1626
    new-instance v10, Lexpo/modules/kotlin/types/AnyType;

    .line 1627
    new-instance v11, Lexpo/modules/kotlin/types/LazyKType;

    const-class v12, Ljava/lang/String;

    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v12

    invoke-direct {v11, v12, v5, v9}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v11, Lkotlin/reflect/KType;

    .line 1626
    invoke-direct {v10, v11, v6}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    move-object v9, v10

    .line 1623
    :cond_2e
    aput-object v9, v8, v4

    .line 1611
    new-instance v6, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunction$25;

    invoke-direct {v6, p0}, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunction$25;-><init>(Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;)V

    check-cast v6, Lkotlin/jvm/functions/Function1;

    .line 1638
    const-class v9, Ljava/util/List;

    .line 1639
    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2f

    .line 1642
    new-instance v9, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;

    invoke-direct {v9, v3, v8, v6}, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    :goto_8
    move-object v6, v9

    goto :goto_9

    .line 1644
    :cond_2f
    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_30

    .line 1646
    new-instance v9, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;

    invoke-direct {v9, v3, v8, v6}, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_8

    .line 1648
    :cond_30
    sget-object v10, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_31

    .line 1650
    new-instance v9, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;

    invoke-direct {v9, v3, v8, v6}, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_8

    .line 1652
    :cond_31
    sget-object v10, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_32

    .line 1654
    new-instance v9, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;

    invoke-direct {v9, v3, v8, v6}, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_8

    .line 1656
    :cond_32
    const-class v10, Ljava/lang/String;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_33

    .line 1658
    new-instance v9, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;

    invoke-direct {v9, v3, v8, v6}, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_8

    .line 1660
    :cond_33
    new-instance v9, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;

    invoke-direct {v9, v3, v8, v6}, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_8

    .line 1661
    :goto_9
    invoke-virtual {v2}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    move-object v2, v1

    check-cast v2, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v3, "getTotalDiskCapacityAsync"

    .line 1663
    new-array v6, v4, [Lexpo/modules/kotlin/types/AnyType;

    new-instance v8, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunction$26;

    invoke-direct {v8}, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunction$26;-><init>()V

    check-cast v8, Lkotlin/jvm/functions/Function1;

    .line 1667
    const-class v9, Ljava/lang/Double;

    .line 1668
    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_34

    .line 1671
    new-instance v9, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;

    invoke-direct {v9, v3, v6, v8}, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_a

    .line 1673
    :cond_34
    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_35

    .line 1675
    new-instance v9, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;

    invoke-direct {v9, v3, v6, v8}, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_a

    .line 1677
    :cond_35
    sget-object v10, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_36

    .line 1679
    new-instance v9, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;

    invoke-direct {v9, v3, v6, v8}, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_a

    .line 1681
    :cond_36
    sget-object v10, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_37

    .line 1683
    new-instance v9, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;

    invoke-direct {v9, v3, v6, v8}, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_a

    .line 1685
    :cond_37
    const-class v10, Ljava/lang/String;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_38

    .line 1687
    new-instance v9, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;

    invoke-direct {v9, v3, v6, v8}, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_a

    .line 1689
    :cond_38
    new-instance v9, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;

    invoke-direct {v9, v3, v6, v8}, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 1690
    :goto_a
    invoke-virtual {v2}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    move-object v2, v1

    check-cast v2, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v3, "getFreeDiskStorageAsync"

    .line 1692
    new-array v6, v4, [Lexpo/modules/kotlin/types/AnyType;

    new-instance v8, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunction$27;

    invoke-direct {v8}, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunction$27;-><init>()V

    check-cast v8, Lkotlin/jvm/functions/Function1;

    .line 1696
    const-class v9, Ljava/lang/Double;

    .line 1697
    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_39

    .line 1700
    new-instance v9, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;

    invoke-direct {v9, v3, v6, v8}, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_b

    .line 1702
    :cond_39
    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3a

    .line 1704
    new-instance v9, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;

    invoke-direct {v9, v3, v6, v8}, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_b

    .line 1706
    :cond_3a
    sget-object v10, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3b

    .line 1708
    new-instance v9, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;

    invoke-direct {v9, v3, v6, v8}, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_b

    .line 1710
    :cond_3b
    sget-object v10, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3c

    .line 1712
    new-instance v9, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;

    invoke-direct {v9, v3, v6, v8}, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_b

    .line 1714
    :cond_3c
    const-class v10, Ljava/lang/String;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3d

    .line 1716
    new-instance v9, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;

    invoke-direct {v9, v3, v6, v8}, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_b

    .line 1718
    :cond_3d
    new-instance v9, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;

    invoke-direct {v9, v3, v6, v8}, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 1719
    :goto_b
    invoke-virtual {v2}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    move-object v2, v1

    check-cast v2, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v3, "getContentUriAsync"

    .line 1721
    const-class v6, Ljava/lang/String;

    const-class v8, Lexpo/modules/kotlin/Promise;

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3e

    .line 1722
    new-instance v6, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;

    new-array v8, v4, [Lexpo/modules/kotlin/types/AnyType;

    .line 1728
    new-instance v9, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunction$28;

    invoke-direct {v9, p0}, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunction$28;-><init>(Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;)V

    check-cast v9, Lkotlin/jvm/functions/Function2;

    .line 1722
    invoke-direct {v6, v3, v8, v9}, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto/16 :goto_d

    .line 1724
    :cond_3e
    invoke-virtual {v2}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getConverters()Lexpo/modules/kotlin/types/TypeConverterProvider;

    move-result-object v6

    .line 1731
    const-class v8, Ljava/lang/String;

    .line 1735
    new-array v8, v5, [Lexpo/modules/kotlin/types/AnyType;

    .line 1736
    sget-object v9, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 1737
    new-instance v10, Lkotlin/Pair;

    const-class v11, Ljava/lang/String;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1738
    invoke-virtual {v9}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lexpo/modules/kotlin/types/AnyType;

    if-nez v9, :cond_3f

    .line 1736
    sget-object v9, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunction$29;->INSTANCE:Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunction$29;

    check-cast v9, Lkotlin/jvm/functions/Function0;

    .line 1739
    new-instance v10, Lexpo/modules/kotlin/types/AnyType;

    .line 1740
    new-instance v11, Lexpo/modules/kotlin/types/LazyKType;

    const-class v12, Ljava/lang/String;

    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v12

    invoke-direct {v11, v12, v4, v9}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v11, Lkotlin/reflect/KType;

    .line 1739
    invoke-direct {v10, v11, v6}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    move-object v9, v10

    .line 1736
    :cond_3f
    aput-object v9, v8, v4

    .line 1724
    new-instance v6, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunction$30;

    invoke-direct {v6, p0}, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunction$30;-><init>(Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;)V

    check-cast v6, Lkotlin/jvm/functions/Function1;

    .line 1751
    const-class v9, Ljava/lang/String;

    .line 1752
    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_40

    .line 1755
    new-instance v9, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;

    invoke-direct {v9, v3, v8, v6}, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    :goto_c
    move-object v6, v9

    goto :goto_d

    .line 1757
    :cond_40
    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_41

    .line 1759
    new-instance v9, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;

    invoke-direct {v9, v3, v8, v6}, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_c

    .line 1761
    :cond_41
    sget-object v10, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_42

    .line 1763
    new-instance v9, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;

    invoke-direct {v9, v3, v8, v6}, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_c

    .line 1765
    :cond_42
    sget-object v10, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_43

    .line 1767
    new-instance v9, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;

    invoke-direct {v9, v3, v8, v6}, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_c

    .line 1769
    :cond_43
    const-class v10, Ljava/lang/String;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_44

    .line 1771
    new-instance v9, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;

    invoke-direct {v9, v3, v8, v6}, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_c

    .line 1773
    :cond_44
    new-instance v9, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;

    invoke-direct {v9, v3, v8, v6}, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_c

    .line 1774
    :goto_d
    invoke-virtual {v2}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    move-object v2, v1

    check-cast v2, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v3, "readSAFDirectoryAsync"

    .line 1776
    const-class v6, Ljava/lang/String;

    const-class v8, Lexpo/modules/kotlin/Promise;

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_45

    .line 1777
    new-instance v6, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;

    new-array v8, v4, [Lexpo/modules/kotlin/types/AnyType;

    .line 1783
    new-instance v9, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunction$31;

    invoke-direct {v9, p0}, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunction$31;-><init>(Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;)V

    check-cast v9, Lkotlin/jvm/functions/Function2;

    .line 1777
    invoke-direct {v6, v3, v8, v9}, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto/16 :goto_f

    .line 1779
    :cond_45
    invoke-virtual {v2}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getConverters()Lexpo/modules/kotlin/types/TypeConverterProvider;

    move-result-object v6

    .line 1786
    const-class v8, Ljava/lang/String;

    .line 1790
    new-array v8, v5, [Lexpo/modules/kotlin/types/AnyType;

    .line 1791
    sget-object v9, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 1792
    new-instance v10, Lkotlin/Pair;

    const-class v11, Ljava/lang/String;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1793
    invoke-virtual {v9}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lexpo/modules/kotlin/types/AnyType;

    if-nez v9, :cond_46

    .line 1791
    sget-object v9, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunction$32;->INSTANCE:Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunction$32;

    check-cast v9, Lkotlin/jvm/functions/Function0;

    .line 1794
    new-instance v10, Lexpo/modules/kotlin/types/AnyType;

    .line 1795
    new-instance v11, Lexpo/modules/kotlin/types/LazyKType;

    const-class v12, Ljava/lang/String;

    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v12

    invoke-direct {v11, v12, v4, v9}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v11, Lkotlin/reflect/KType;

    .line 1794
    invoke-direct {v10, v11, v6}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    move-object v9, v10

    .line 1791
    :cond_46
    aput-object v9, v8, v4

    .line 1779
    new-instance v6, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunction$33;

    invoke-direct {v6, p0}, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunction$33;-><init>(Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;)V

    check-cast v6, Lkotlin/jvm/functions/Function1;

    .line 1806
    const-class v9, Ljava/util/List;

    .line 1807
    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_47

    .line 1810
    new-instance v9, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;

    invoke-direct {v9, v3, v8, v6}, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    :goto_e
    move-object v6, v9

    goto :goto_f

    .line 1812
    :cond_47
    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_48

    .line 1814
    new-instance v9, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;

    invoke-direct {v9, v3, v8, v6}, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_e

    .line 1816
    :cond_48
    sget-object v10, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_49

    .line 1818
    new-instance v9, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;

    invoke-direct {v9, v3, v8, v6}, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_e

    .line 1820
    :cond_49
    sget-object v10, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4a

    .line 1822
    new-instance v9, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;

    invoke-direct {v9, v3, v8, v6}, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_e

    .line 1824
    :cond_4a
    const-class v10, Ljava/lang/String;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4b

    .line 1826
    new-instance v9, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;

    invoke-direct {v9, v3, v8, v6}, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_e

    .line 1828
    :cond_4b
    new-instance v9, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;

    invoke-direct {v9, v3, v8, v6}, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_e

    .line 1829
    :goto_f
    invoke-virtual {v2}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    move-object v2, v1

    check-cast v2, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v3, "makeSAFDirectoryAsync"

    .line 1831
    invoke-virtual {v2}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getConverters()Lexpo/modules/kotlin/types/TypeConverterProvider;

    move-result-object v6

    .line 1834
    const-class v8, Ljava/lang/String;

    .line 1835
    const-class v8, Ljava/lang/String;

    .line 1839
    new-array v8, v0, [Lexpo/modules/kotlin/types/AnyType;

    .line 1840
    sget-object v9, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 1841
    new-instance v10, Lkotlin/Pair;

    const-class v11, Ljava/lang/String;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1842
    invoke-virtual {v9}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lexpo/modules/kotlin/types/AnyType;

    if-nez v9, :cond_4c

    .line 1840
    sget-object v9, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunction$34;->INSTANCE:Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunction$34;

    check-cast v9, Lkotlin/jvm/functions/Function0;

    .line 1843
    new-instance v10, Lexpo/modules/kotlin/types/AnyType;

    .line 1844
    new-instance v11, Lexpo/modules/kotlin/types/LazyKType;

    const-class v12, Ljava/lang/String;

    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v12

    invoke-direct {v11, v12, v4, v9}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v11, Lkotlin/reflect/KType;

    .line 1843
    invoke-direct {v10, v11, v6}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    move-object v9, v10

    .line 1840
    :cond_4c
    aput-object v9, v8, v4

    .line 1852
    sget-object v9, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 1853
    new-instance v10, Lkotlin/Pair;

    const-class v11, Ljava/lang/String;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1854
    invoke-virtual {v9}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lexpo/modules/kotlin/types/AnyType;

    if-nez v9, :cond_4d

    .line 1852
    sget-object v9, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunction$35;->INSTANCE:Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunction$35;

    check-cast v9, Lkotlin/jvm/functions/Function0;

    .line 1855
    new-instance v10, Lexpo/modules/kotlin/types/AnyType;

    .line 1856
    new-instance v11, Lexpo/modules/kotlin/types/LazyKType;

    const-class v12, Ljava/lang/String;

    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v12

    invoke-direct {v11, v12, v4, v9}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v11, Lkotlin/reflect/KType;

    .line 1855
    invoke-direct {v10, v11, v6}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    move-object v9, v10

    .line 1852
    :cond_4d
    aput-object v9, v8, v5

    .line 1831
    new-instance v6, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunction$36;

    invoke-direct {v6, p0}, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunction$36;-><init>(Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;)V

    check-cast v6, Lkotlin/jvm/functions/Function1;

    .line 1867
    const-class v9, Ljava/lang/String;

    .line 1868
    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4e

    .line 1871
    new-instance v9, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;

    invoke-direct {v9, v3, v8, v6}, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_10

    .line 1873
    :cond_4e
    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4f

    .line 1875
    new-instance v9, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;

    invoke-direct {v9, v3, v8, v6}, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_10

    .line 1877
    :cond_4f
    sget-object v10, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_50

    .line 1879
    new-instance v9, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;

    invoke-direct {v9, v3, v8, v6}, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_10

    .line 1881
    :cond_50
    sget-object v10, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_51

    .line 1883
    new-instance v9, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;

    invoke-direct {v9, v3, v8, v6}, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_10

    .line 1885
    :cond_51
    const-class v10, Ljava/lang/String;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_52

    .line 1887
    new-instance v9, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;

    invoke-direct {v9, v3, v8, v6}, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_10

    .line 1889
    :cond_52
    new-instance v9, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;

    invoke-direct {v9, v3, v8, v6}, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 1891
    :goto_10
    invoke-virtual {v2}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    move-object v2, v1

    check-cast v2, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v3, "createSAFFileAsync"

    .line 1893
    invoke-virtual {v2}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getConverters()Lexpo/modules/kotlin/types/TypeConverterProvider;

    move-result-object v6

    .line 1896
    const-class v8, Ljava/lang/String;

    .line 1897
    const-class v8, Ljava/lang/String;

    .line 1898
    const-class v8, Ljava/lang/String;

    .line 1902
    new-array v8, v7, [Lexpo/modules/kotlin/types/AnyType;

    .line 1903
    sget-object v9, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 1904
    new-instance v10, Lkotlin/Pair;

    const-class v11, Ljava/lang/String;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1905
    invoke-virtual {v9}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lexpo/modules/kotlin/types/AnyType;

    if-nez v9, :cond_53

    .line 1903
    sget-object v9, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunction$37;->INSTANCE:Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunction$37;

    check-cast v9, Lkotlin/jvm/functions/Function0;

    .line 1906
    new-instance v10, Lexpo/modules/kotlin/types/AnyType;

    .line 1907
    new-instance v11, Lexpo/modules/kotlin/types/LazyKType;

    const-class v12, Ljava/lang/String;

    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v12

    invoke-direct {v11, v12, v4, v9}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v11, Lkotlin/reflect/KType;

    .line 1906
    invoke-direct {v10, v11, v6}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    move-object v9, v10

    .line 1903
    :cond_53
    aput-object v9, v8, v4

    .line 1915
    sget-object v9, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 1916
    new-instance v10, Lkotlin/Pair;

    const-class v11, Ljava/lang/String;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1917
    invoke-virtual {v9}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lexpo/modules/kotlin/types/AnyType;

    if-nez v9, :cond_54

    .line 1915
    sget-object v9, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunction$38;->INSTANCE:Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunction$38;

    check-cast v9, Lkotlin/jvm/functions/Function0;

    .line 1918
    new-instance v10, Lexpo/modules/kotlin/types/AnyType;

    .line 1919
    new-instance v11, Lexpo/modules/kotlin/types/LazyKType;

    const-class v12, Ljava/lang/String;

    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v12

    invoke-direct {v11, v12, v4, v9}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v11, Lkotlin/reflect/KType;

    .line 1918
    invoke-direct {v10, v11, v6}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    move-object v9, v10

    .line 1915
    :cond_54
    aput-object v9, v8, v5

    .line 1927
    sget-object v9, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 1928
    new-instance v10, Lkotlin/Pair;

    const-class v11, Ljava/lang/String;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1929
    invoke-virtual {v9}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lexpo/modules/kotlin/types/AnyType;

    if-nez v9, :cond_55

    .line 1927
    sget-object v9, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunction$39;->INSTANCE:Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunction$39;

    check-cast v9, Lkotlin/jvm/functions/Function0;

    .line 1930
    new-instance v10, Lexpo/modules/kotlin/types/AnyType;

    .line 1931
    new-instance v11, Lexpo/modules/kotlin/types/LazyKType;

    const-class v12, Ljava/lang/String;

    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v12

    invoke-direct {v11, v12, v4, v9}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v11, Lkotlin/reflect/KType;

    .line 1930
    invoke-direct {v10, v11, v6}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    move-object v9, v10

    .line 1927
    :cond_55
    aput-object v9, v8, v0

    .line 1893
    new-instance v6, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunction$40;

    invoke-direct {v6, p0}, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunction$40;-><init>(Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;)V

    check-cast v6, Lkotlin/jvm/functions/Function1;

    .line 1942
    const-class v9, Ljava/lang/String;

    .line 1943
    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_56

    .line 1946
    new-instance v9, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;

    invoke-direct {v9, v3, v8, v6}, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_11

    .line 1948
    :cond_56
    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_57

    .line 1950
    new-instance v9, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;

    invoke-direct {v9, v3, v8, v6}, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_11

    .line 1952
    :cond_57
    sget-object v10, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_58

    .line 1954
    new-instance v9, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;

    invoke-direct {v9, v3, v8, v6}, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_11

    .line 1956
    :cond_58
    sget-object v10, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_59

    .line 1958
    new-instance v9, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;

    invoke-direct {v9, v3, v8, v6}, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_11

    .line 1960
    :cond_59
    const-class v10, Ljava/lang/String;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5a

    .line 1962
    new-instance v9, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;

    invoke-direct {v9, v3, v8, v6}, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_11

    .line 1964
    :cond_5a
    new-instance v9, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;

    invoke-direct {v9, v3, v8, v6}, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 1966
    :goto_11
    invoke-virtual {v2}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    move-object v2, v1

    check-cast v2, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v3, "requestDirectoryPermissionsAsync"

    .line 1968
    new-instance v6, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;

    invoke-virtual {v2}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getConverters()Lexpo/modules/kotlin/types/TypeConverterProvider;

    move-result-object v8

    .line 1971
    const-class v9, Ljava/lang/String;

    .line 1975
    new-array v9, v5, [Lexpo/modules/kotlin/types/AnyType;

    .line 1976
    sget-object v10, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 1977
    new-instance v11, Lkotlin/Pair;

    const-class v12, Ljava/lang/String;

    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v12

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1978
    invoke-virtual {v10}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lexpo/modules/kotlin/types/AnyType;

    if-nez v10, :cond_5b

    .line 1976
    sget-object v10, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunctionWithPromise$1;->INSTANCE:Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunctionWithPromise$1;

    check-cast v10, Lkotlin/jvm/functions/Function0;

    .line 1979
    new-instance v11, Lexpo/modules/kotlin/types/AnyType;

    .line 1980
    new-instance v12, Lexpo/modules/kotlin/types/LazyKType;

    const-class v13, Ljava/lang/String;

    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v13

    invoke-direct {v12, v13, v5, v10}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v12, Lkotlin/reflect/KType;

    .line 1979
    invoke-direct {v11, v12, v8}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    move-object v10, v11

    .line 1976
    :cond_5b
    aput-object v10, v9, v4

    .line 1988
    new-instance v8, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunctionWithPromise$2;

    invoke-direct {v8, p0}, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunctionWithPromise$2;-><init>(Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;)V

    check-cast v8, Lkotlin/jvm/functions/Function2;

    .line 1968
    invoke-direct {v6, v3, v9, v8}, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    .line 1989
    invoke-virtual {v2}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1988
    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 493
    move-object v2, v1

    check-cast v2, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v3, "uploadAsync"

    .line 1991
    new-instance v6, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;

    invoke-virtual {v2}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getConverters()Lexpo/modules/kotlin/types/TypeConverterProvider;

    move-result-object v8

    .line 1994
    const-class v9, Ljava/lang/String;

    .line 1995
    const-class v9, Ljava/lang/String;

    .line 1996
    const-class v9, Lexpo/modules/filesystem/legacy/FileSystemUploadOptions;

    .line 2000
    new-array v9, v7, [Lexpo/modules/kotlin/types/AnyType;

    .line 2001
    sget-object v10, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 2002
    new-instance v11, Lkotlin/Pair;

    const-class v12, Ljava/lang/String;

    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v12

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2003
    invoke-virtual {v10}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lexpo/modules/kotlin/types/AnyType;

    if-nez v10, :cond_5c

    .line 2001
    sget-object v10, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunctionWithPromise$3;->INSTANCE:Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunctionWithPromise$3;

    check-cast v10, Lkotlin/jvm/functions/Function0;

    .line 2004
    new-instance v11, Lexpo/modules/kotlin/types/AnyType;

    .line 2005
    new-instance v12, Lexpo/modules/kotlin/types/LazyKType;

    const-class v13, Ljava/lang/String;

    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v13

    invoke-direct {v12, v13, v4, v10}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v12, Lkotlin/reflect/KType;

    .line 2004
    invoke-direct {v11, v12, v8}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    move-object v10, v11

    .line 2001
    :cond_5c
    aput-object v10, v9, v4

    .line 2013
    sget-object v10, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 2014
    new-instance v11, Lkotlin/Pair;

    const-class v12, Ljava/lang/String;

    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v12

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2015
    invoke-virtual {v10}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lexpo/modules/kotlin/types/AnyType;

    if-nez v10, :cond_5d

    .line 2013
    sget-object v10, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunctionWithPromise$4;->INSTANCE:Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunctionWithPromise$4;

    check-cast v10, Lkotlin/jvm/functions/Function0;

    .line 2016
    new-instance v11, Lexpo/modules/kotlin/types/AnyType;

    .line 2017
    new-instance v12, Lexpo/modules/kotlin/types/LazyKType;

    const-class v13, Ljava/lang/String;

    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v13

    invoke-direct {v12, v13, v4, v10}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v12, Lkotlin/reflect/KType;

    .line 2016
    invoke-direct {v11, v12, v8}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    move-object v10, v11

    .line 2013
    :cond_5d
    aput-object v10, v9, v5

    .line 2025
    sget-object v10, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 2026
    new-instance v11, Lkotlin/Pair;

    const-class v12, Lexpo/modules/filesystem/legacy/FileSystemUploadOptions;

    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v12

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2027
    invoke-virtual {v10}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lexpo/modules/kotlin/types/AnyType;

    if-nez v10, :cond_5e

    .line 2025
    sget-object v10, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunctionWithPromise$5;->INSTANCE:Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunctionWithPromise$5;

    check-cast v10, Lkotlin/jvm/functions/Function0;

    .line 2028
    new-instance v11, Lexpo/modules/kotlin/types/AnyType;

    .line 2029
    new-instance v12, Lexpo/modules/kotlin/types/LazyKType;

    const-class v13, Lexpo/modules/filesystem/legacy/FileSystemUploadOptions;

    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v13

    invoke-direct {v12, v13, v4, v10}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v12, Lkotlin/reflect/KType;

    .line 2028
    invoke-direct {v11, v12, v8}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    move-object v10, v11

    .line 2025
    :cond_5e
    aput-object v10, v9, v0

    .line 2037
    new-instance v8, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunctionWithPromise$6;

    invoke-direct {v8, p0, v1}, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunctionWithPromise$6;-><init>(Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;)V

    check-cast v8, Lkotlin/jvm/functions/Function2;

    .line 1991
    invoke-direct {v6, v3, v9, v8}, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    .line 2038
    invoke-virtual {v2}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2037
    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 522
    move-object v2, v1

    check-cast v2, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v3, "uploadTaskStartAsync"

    .line 2040
    new-instance v6, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;

    invoke-virtual {v2}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getConverters()Lexpo/modules/kotlin/types/TypeConverterProvider;

    move-result-object v8

    .line 2043
    const-class v9, Ljava/lang/String;

    .line 2044
    const-class v9, Ljava/lang/String;

    .line 2045
    const-class v9, Ljava/lang/String;

    .line 2046
    const-class v9, Lexpo/modules/filesystem/legacy/FileSystemUploadOptions;

    const/4 v9, 0x4

    .line 2050
    new-array v10, v9, [Lexpo/modules/kotlin/types/AnyType;

    .line 2051
    sget-object v11, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 2052
    new-instance v12, Lkotlin/Pair;

    const-class v13, Ljava/lang/String;

    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v13

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2053
    invoke-virtual {v11}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v11

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lexpo/modules/kotlin/types/AnyType;

    if-nez v11, :cond_5f

    .line 2051
    sget-object v11, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunctionWithPromise$7;->INSTANCE:Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunctionWithPromise$7;

    check-cast v11, Lkotlin/jvm/functions/Function0;

    .line 2054
    new-instance v12, Lexpo/modules/kotlin/types/AnyType;

    .line 2055
    new-instance v13, Lexpo/modules/kotlin/types/LazyKType;

    const-class v14, Ljava/lang/String;

    invoke-static {v14}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v14

    invoke-direct {v13, v14, v4, v11}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v13, Lkotlin/reflect/KType;

    .line 2054
    invoke-direct {v12, v13, v8}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    move-object v11, v12

    .line 2051
    :cond_5f
    aput-object v11, v10, v4

    .line 2063
    sget-object v11, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 2064
    new-instance v12, Lkotlin/Pair;

    const-class v13, Ljava/lang/String;

    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v13

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2065
    invoke-virtual {v11}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v11

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lexpo/modules/kotlin/types/AnyType;

    if-nez v11, :cond_60

    .line 2063
    sget-object v11, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunctionWithPromise$8;->INSTANCE:Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunctionWithPromise$8;

    check-cast v11, Lkotlin/jvm/functions/Function0;

    .line 2066
    new-instance v12, Lexpo/modules/kotlin/types/AnyType;

    .line 2067
    new-instance v13, Lexpo/modules/kotlin/types/LazyKType;

    const-class v14, Ljava/lang/String;

    invoke-static {v14}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v14

    invoke-direct {v13, v14, v4, v11}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v13, Lkotlin/reflect/KType;

    .line 2066
    invoke-direct {v12, v13, v8}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    move-object v11, v12

    .line 2063
    :cond_60
    aput-object v11, v10, v5

    .line 2075
    sget-object v11, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 2076
    new-instance v12, Lkotlin/Pair;

    const-class v13, Ljava/lang/String;

    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v13

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2077
    invoke-virtual {v11}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v11

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lexpo/modules/kotlin/types/AnyType;

    if-nez v11, :cond_61

    .line 2075
    sget-object v11, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunctionWithPromise$9;->INSTANCE:Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunctionWithPromise$9;

    check-cast v11, Lkotlin/jvm/functions/Function0;

    .line 2078
    new-instance v12, Lexpo/modules/kotlin/types/AnyType;

    .line 2079
    new-instance v13, Lexpo/modules/kotlin/types/LazyKType;

    const-class v14, Ljava/lang/String;

    invoke-static {v14}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v14

    invoke-direct {v13, v14, v4, v11}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v13, Lkotlin/reflect/KType;

    .line 2078
    invoke-direct {v12, v13, v8}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    move-object v11, v12

    .line 2075
    :cond_61
    aput-object v11, v10, v0

    .line 2087
    sget-object v11, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 2088
    new-instance v12, Lkotlin/Pair;

    const-class v13, Lexpo/modules/filesystem/legacy/FileSystemUploadOptions;

    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v13

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2089
    invoke-virtual {v11}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v11

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lexpo/modules/kotlin/types/AnyType;

    if-nez v11, :cond_62

    .line 2087
    sget-object v11, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunctionWithPromise$10;->INSTANCE:Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunctionWithPromise$10;

    check-cast v11, Lkotlin/jvm/functions/Function0;

    .line 2090
    new-instance v12, Lexpo/modules/kotlin/types/AnyType;

    .line 2091
    new-instance v13, Lexpo/modules/kotlin/types/LazyKType;

    const-class v14, Lexpo/modules/filesystem/legacy/FileSystemUploadOptions;

    invoke-static {v14}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v14

    invoke-direct {v13, v14, v4, v11}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v13, Lkotlin/reflect/KType;

    .line 2090
    invoke-direct {v12, v13, v8}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    move-object v11, v12

    .line 2087
    :cond_62
    aput-object v11, v10, v7

    .line 2099
    new-instance v8, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunctionWithPromise$11;

    invoke-direct {v8, p0}, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunctionWithPromise$11;-><init>(Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;)V

    check-cast v8, Lkotlin/jvm/functions/Function2;

    .line 2040
    invoke-direct {v6, v3, v10, v8}, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    .line 2100
    invoke-virtual {v2}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2099
    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 574
    move-object v2, v1

    check-cast v2, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v3, "downloadAsync"

    .line 2102
    new-instance v6, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;

    invoke-virtual {v2}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getConverters()Lexpo/modules/kotlin/types/TypeConverterProvider;

    move-result-object v8

    .line 2105
    const-class v10, Ljava/lang/String;

    .line 2106
    const-class v10, Ljava/lang/String;

    .line 2107
    const-class v10, Lexpo/modules/filesystem/legacy/DownloadOptionsLegacy;

    .line 2111
    new-array v10, v7, [Lexpo/modules/kotlin/types/AnyType;

    .line 2112
    sget-object v11, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 2113
    new-instance v12, Lkotlin/Pair;

    const-class v13, Ljava/lang/String;

    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v13

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2114
    invoke-virtual {v11}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v11

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lexpo/modules/kotlin/types/AnyType;

    if-nez v11, :cond_63

    .line 2112
    sget-object v11, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunctionWithPromise$12;->INSTANCE:Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunctionWithPromise$12;

    check-cast v11, Lkotlin/jvm/functions/Function0;

    .line 2115
    new-instance v12, Lexpo/modules/kotlin/types/AnyType;

    .line 2116
    new-instance v13, Lexpo/modules/kotlin/types/LazyKType;

    const-class v14, Ljava/lang/String;

    invoke-static {v14}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v14

    invoke-direct {v13, v14, v4, v11}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v13, Lkotlin/reflect/KType;

    .line 2115
    invoke-direct {v12, v13, v8}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    move-object v11, v12

    .line 2112
    :cond_63
    aput-object v11, v10, v4

    .line 2124
    sget-object v11, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 2125
    new-instance v12, Lkotlin/Pair;

    const-class v13, Ljava/lang/String;

    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v13

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2126
    invoke-virtual {v11}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v11

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lexpo/modules/kotlin/types/AnyType;

    if-nez v11, :cond_64

    .line 2124
    sget-object v11, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunctionWithPromise$13;->INSTANCE:Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunctionWithPromise$13;

    check-cast v11, Lkotlin/jvm/functions/Function0;

    .line 2127
    new-instance v12, Lexpo/modules/kotlin/types/AnyType;

    .line 2128
    new-instance v13, Lexpo/modules/kotlin/types/LazyKType;

    const-class v14, Ljava/lang/String;

    invoke-static {v14}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v14

    invoke-direct {v13, v14, v5, v11}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v13, Lkotlin/reflect/KType;

    .line 2127
    invoke-direct {v12, v13, v8}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    move-object v11, v12

    .line 2124
    :cond_64
    aput-object v11, v10, v5

    .line 2136
    sget-object v11, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 2137
    new-instance v12, Lkotlin/Pair;

    const-class v13, Lexpo/modules/filesystem/legacy/DownloadOptionsLegacy;

    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v13

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2138
    invoke-virtual {v11}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v11

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lexpo/modules/kotlin/types/AnyType;

    if-nez v11, :cond_65

    .line 2136
    sget-object v11, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunctionWithPromise$14;->INSTANCE:Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunctionWithPromise$14;

    check-cast v11, Lkotlin/jvm/functions/Function0;

    .line 2139
    new-instance v12, Lexpo/modules/kotlin/types/AnyType;

    .line 2140
    new-instance v13, Lexpo/modules/kotlin/types/LazyKType;

    const-class v14, Lexpo/modules/filesystem/legacy/DownloadOptionsLegacy;

    invoke-static {v14}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v14

    invoke-direct {v13, v14, v4, v11}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v13, Lkotlin/reflect/KType;

    .line 2139
    invoke-direct {v12, v13, v8}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    move-object v11, v12

    .line 2136
    :cond_65
    aput-object v11, v10, v0

    .line 2148
    new-instance v8, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunctionWithPromise$15;

    invoke-direct {v8, p0}, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunctionWithPromise$15;-><init>(Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;)V

    check-cast v8, Lkotlin/jvm/functions/Function2;

    .line 2102
    invoke-direct {v6, v3, v10, v8}, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    .line 2149
    invoke-virtual {v2}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2148
    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 636
    move-object v2, v1

    check-cast v2, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v3, "networkTaskCancelAsync"

    .line 2151
    const-class v6, Ljava/lang/String;

    const-class v8, Lexpo/modules/kotlin/Promise;

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_66

    .line 2152
    new-instance v6, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;

    new-array v8, v4, [Lexpo/modules/kotlin/types/AnyType;

    .line 2158
    new-instance v10, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunction$41;

    invoke-direct {v10, p0}, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunction$41;-><init>(Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;)V

    check-cast v10, Lkotlin/jvm/functions/Function2;

    .line 2152
    invoke-direct {v6, v3, v8, v10}, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_12

    .line 2154
    :cond_66
    invoke-virtual {v2}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getConverters()Lexpo/modules/kotlin/types/TypeConverterProvider;

    move-result-object v6

    .line 2161
    const-class v8, Ljava/lang/String;

    .line 2165
    new-array v8, v5, [Lexpo/modules/kotlin/types/AnyType;

    .line 2166
    sget-object v10, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 2167
    new-instance v11, Lkotlin/Pair;

    const-class v12, Ljava/lang/String;

    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v12

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2168
    invoke-virtual {v10}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lexpo/modules/kotlin/types/AnyType;

    if-nez v10, :cond_67

    .line 2166
    sget-object v10, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunction$42;->INSTANCE:Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunction$42;

    check-cast v10, Lkotlin/jvm/functions/Function0;

    .line 2169
    new-instance v11, Lexpo/modules/kotlin/types/AnyType;

    .line 2170
    new-instance v12, Lexpo/modules/kotlin/types/LazyKType;

    const-class v13, Ljava/lang/String;

    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v13

    invoke-direct {v12, v13, v4, v10}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v12, Lkotlin/reflect/KType;

    .line 2169
    invoke-direct {v11, v12, v6}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    move-object v10, v11

    .line 2166
    :cond_67
    aput-object v10, v8, v4

    .line 2154
    new-instance v6, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunction$43;

    invoke-direct {v6, p0}, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunction$43;-><init>(Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;)V

    check-cast v6, Lkotlin/jvm/functions/Function1;

    .line 2179
    new-instance v10, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;

    invoke-direct {v10, v3, v8, v6}, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    move-object v6, v10

    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 2204
    :goto_12
    invoke-virtual {v2}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 641
    move-object v2, v1

    check-cast v2, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v3, "downloadResumableStartAsync"

    .line 2206
    new-instance v6, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;

    invoke-virtual {v2}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getConverters()Lexpo/modules/kotlin/types/TypeConverterProvider;

    move-result-object v8

    .line 2209
    const-class v10, Ljava/lang/String;

    .line 2210
    const-class v10, Ljava/lang/String;

    .line 2211
    const-class v10, Ljava/lang/String;

    .line 2212
    const-class v10, Lexpo/modules/filesystem/legacy/DownloadOptionsLegacy;

    .line 2213
    const-class v10, Ljava/lang/String;

    const/4 v10, 0x5

    .line 2217
    new-array v10, v10, [Lexpo/modules/kotlin/types/AnyType;

    .line 2218
    sget-object v11, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 2219
    new-instance v12, Lkotlin/Pair;

    const-class v13, Ljava/lang/String;

    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v13

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2220
    invoke-virtual {v11}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v11

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lexpo/modules/kotlin/types/AnyType;

    if-nez v11, :cond_68

    .line 2218
    sget-object v11, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunctionWithPromise$16;->INSTANCE:Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunctionWithPromise$16;

    check-cast v11, Lkotlin/jvm/functions/Function0;

    .line 2221
    new-instance v12, Lexpo/modules/kotlin/types/AnyType;

    .line 2222
    new-instance v13, Lexpo/modules/kotlin/types/LazyKType;

    const-class v14, Ljava/lang/String;

    invoke-static {v14}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v14

    invoke-direct {v13, v14, v4, v11}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v13, Lkotlin/reflect/KType;

    .line 2221
    invoke-direct {v12, v13, v8}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    move-object v11, v12

    .line 2218
    :cond_68
    aput-object v11, v10, v4

    .line 2230
    sget-object v11, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 2231
    new-instance v12, Lkotlin/Pair;

    const-class v13, Ljava/lang/String;

    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v13

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2232
    invoke-virtual {v11}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v11

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lexpo/modules/kotlin/types/AnyType;

    if-nez v11, :cond_69

    .line 2230
    sget-object v11, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunctionWithPromise$17;->INSTANCE:Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunctionWithPromise$17;

    check-cast v11, Lkotlin/jvm/functions/Function0;

    .line 2233
    new-instance v12, Lexpo/modules/kotlin/types/AnyType;

    .line 2234
    new-instance v13, Lexpo/modules/kotlin/types/LazyKType;

    const-class v14, Ljava/lang/String;

    invoke-static {v14}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v14

    invoke-direct {v13, v14, v4, v11}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v13, Lkotlin/reflect/KType;

    .line 2233
    invoke-direct {v12, v13, v8}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    move-object v11, v12

    .line 2230
    :cond_69
    aput-object v11, v10, v5

    .line 2242
    sget-object v11, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 2243
    new-instance v12, Lkotlin/Pair;

    const-class v13, Ljava/lang/String;

    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v13

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2244
    invoke-virtual {v11}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v11

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lexpo/modules/kotlin/types/AnyType;

    if-nez v11, :cond_6a

    .line 2242
    sget-object v11, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunctionWithPromise$18;->INSTANCE:Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunctionWithPromise$18;

    check-cast v11, Lkotlin/jvm/functions/Function0;

    .line 2245
    new-instance v12, Lexpo/modules/kotlin/types/AnyType;

    .line 2246
    new-instance v13, Lexpo/modules/kotlin/types/LazyKType;

    const-class v14, Ljava/lang/String;

    invoke-static {v14}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v14

    invoke-direct {v13, v14, v4, v11}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v13, Lkotlin/reflect/KType;

    .line 2245
    invoke-direct {v12, v13, v8}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    move-object v11, v12

    .line 2242
    :cond_6a
    aput-object v11, v10, v0

    .line 2254
    sget-object v0, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 2255
    new-instance v11, Lkotlin/Pair;

    const-class v12, Lexpo/modules/filesystem/legacy/DownloadOptionsLegacy;

    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v12

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2256
    invoke-virtual {v0}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/kotlin/types/AnyType;

    if-nez v0, :cond_6b

    .line 2254
    sget-object v0, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunctionWithPromise$19;->INSTANCE:Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunctionWithPromise$19;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 2257
    new-instance v11, Lexpo/modules/kotlin/types/AnyType;

    .line 2258
    new-instance v12, Lexpo/modules/kotlin/types/LazyKType;

    const-class v13, Lexpo/modules/filesystem/legacy/DownloadOptionsLegacy;

    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v13

    invoke-direct {v12, v13, v4, v0}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v12, Lkotlin/reflect/KType;

    .line 2257
    invoke-direct {v11, v12, v8}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    move-object v0, v11

    .line 2254
    :cond_6b
    aput-object v0, v10, v7

    .line 2266
    sget-object v0, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 2267
    new-instance v7, Lkotlin/Pair;

    const-class v11, Ljava/lang/String;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-direct {v7, v11, v12}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2268
    invoke-virtual {v0}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/kotlin/types/AnyType;

    if-nez v0, :cond_6c

    .line 2266
    sget-object v0, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunctionWithPromise$20;->INSTANCE:Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunctionWithPromise$20;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 2269
    new-instance v7, Lexpo/modules/kotlin/types/AnyType;

    .line 2270
    new-instance v11, Lexpo/modules/kotlin/types/LazyKType;

    const-class v12, Ljava/lang/String;

    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v12

    invoke-direct {v11, v12, v5, v0}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v11, Lkotlin/reflect/KType;

    .line 2269
    invoke-direct {v7, v11, v8}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    move-object v0, v7

    .line 2266
    :cond_6c
    aput-object v0, v10, v9

    .line 2278
    new-instance v0, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunctionWithPromise$21;

    invoke-direct {v0, p0}, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunctionWithPromise$21;-><init>(Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    .line 2206
    invoke-direct {v6, v3, v10, v0}, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    .line 2279
    invoke-virtual {v2}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2278
    check-cast v6, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 706
    move-object v0, v1

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v2, "downloadResumablePauseAsync"

    .line 2281
    const-class v3, Ljava/lang/String;

    const-class v6, Lexpo/modules/kotlin/Promise;

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6d

    .line 2282
    new-instance v3, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;

    new-array v4, v4, [Lexpo/modules/kotlin/types/AnyType;

    .line 2288
    new-instance v5, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunction$44;

    invoke-direct {v5, p0}, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunction$44;-><init>(Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;)V

    check-cast v5, Lkotlin/jvm/functions/Function2;

    .line 2282
    invoke-direct {v3, v2, v4, v5}, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    check-cast v3, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto/16 :goto_14

    .line 2284
    :cond_6d
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getConverters()Lexpo/modules/kotlin/types/TypeConverterProvider;

    move-result-object v3

    .line 2291
    const-class v6, Ljava/lang/String;

    .line 2295
    new-array v5, v5, [Lexpo/modules/kotlin/types/AnyType;

    .line 2296
    sget-object v6, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 2297
    new-instance v7, Lkotlin/Pair;

    const-class v8, Ljava/lang/String;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2298
    invoke-virtual {v6}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lexpo/modules/kotlin/types/AnyType;

    if-nez v6, :cond_6e

    .line 2296
    sget-object v6, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunction$45;->INSTANCE:Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunction$45;

    check-cast v6, Lkotlin/jvm/functions/Function0;

    .line 2299
    new-instance v7, Lexpo/modules/kotlin/types/AnyType;

    .line 2300
    new-instance v8, Lexpo/modules/kotlin/types/LazyKType;

    const-class v9, Ljava/lang/String;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    invoke-direct {v8, v9, v4, v6}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v8, Lkotlin/reflect/KType;

    .line 2299
    invoke-direct {v7, v8, v3}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    move-object v6, v7

    .line 2296
    :cond_6e
    aput-object v6, v5, v4

    .line 2284
    new-instance v3, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunction$46;

    invoke-direct {v3, p0}, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$AsyncFunction$46;-><init>(Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 2311
    const-class v4, Landroid/os/Bundle;

    .line 2312
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6f

    .line 2315
    new-instance v4, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;

    invoke-direct {v4, v2, v5, v3}, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v4, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    :goto_13
    move-object v3, v4

    goto :goto_14

    .line 2317
    :cond_6f
    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_70

    .line 2319
    new-instance v4, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;

    invoke-direct {v4, v2, v5, v3}, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v4, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_13

    .line 2321
    :cond_70
    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_71

    .line 2323
    new-instance v4, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;

    invoke-direct {v4, v2, v5, v3}, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v4, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_13

    .line 2325
    :cond_71
    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_72

    .line 2327
    new-instance v4, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;

    invoke-direct {v4, v2, v5, v3}, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v4, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_13

    .line 2329
    :cond_72
    const-class v6, Ljava/lang/String;

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_73

    .line 2331
    new-instance v4, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;

    invoke-direct {v4, v2, v5, v3}, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v4, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_13

    .line 2333
    :cond_73
    new-instance v4, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;

    invoke-direct {v4, v2, v5, v3}, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v4, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_13

    .line 2334
    :goto_14
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 723
    move-object v0, v1

    check-cast v0, Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder;

    .line 2336
    invoke-virtual {v0}, Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder;->getEventListeners()Ljava/util/Map;

    move-result-object v0

    sget-object v2, Lexpo/modules/kotlin/events/EventName;->ON_ACTIVITY_RESULT:Lexpo/modules/kotlin/events/EventName;

    .line 2337
    new-instance v3, Lexpo/modules/kotlin/events/EventListenerWithSenderAndPayload;

    sget-object v4, Lexpo/modules/kotlin/events/EventName;->ON_ACTIVITY_RESULT:Lexpo/modules/kotlin/events/EventName;

    .line 2336
    new-instance v5, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$OnActivityResult$1;

    invoke-direct {v5, p0}, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$OnActivityResult$1;-><init>(Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;)V

    check-cast v5, Lkotlin/jvm/functions/Function2;

    .line 2337
    invoke-direct {v3, v4, v5}, Lexpo/modules/kotlin/events/EventListenerWithSenderAndPayload;-><init>(Lexpo/modules/kotlin/events/EventName;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 745
    move-object v0, v1

    check-cast v0, Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder;

    .line 2339
    invoke-virtual {v0}, Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder;->getEventListeners()Ljava/util/Map;

    move-result-object v0

    sget-object v2, Lexpo/modules/kotlin/events/EventName;->MODULE_DESTROY:Lexpo/modules/kotlin/events/EventName;

    new-instance v3, Lexpo/modules/kotlin/events/BasicEventListener;

    sget-object v4, Lexpo/modules/kotlin/events/EventName;->MODULE_DESTROY:Lexpo/modules/kotlin/events/EventName;

    new-instance v5, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$OnDestroy$1;

    invoke-direct {v5, p0}, Lexpo/modules/filesystem/legacy/FileSystemLegacyModule$definition$lambda$51$$inlined$OnDestroy$1;-><init>(Lexpo/modules/filesystem/legacy/FileSystemLegacyModule;)V

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-direct {v3, v4, v5}, Lexpo/modules/kotlin/events/BasicEventListener;-><init>(Lexpo/modules/kotlin/events/EventName;Lkotlin/jvm/functions/Function0;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1147
    invoke-virtual {v1}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->buildModule()Lexpo/modules/kotlin/modules/ModuleDefinitionData;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2341
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    throw v0
.end method
