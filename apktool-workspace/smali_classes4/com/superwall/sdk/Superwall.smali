.class public final Lcom/superwall/sdk/Superwall;
.super Ljava/lang/Object;
.source "Superwall.kt"

# interfaces
.implements Lcom/superwall/sdk/paywall/view/delegate/PaywallViewEventCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/Superwall$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSuperwall.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Superwall.kt\ncom/superwall/sdk/Superwall\n+ 2 ErrorTracking.kt\ncom/superwall/sdk/utilities/ErrorTrackingKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 5 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 6 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n+ 7 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 8 Either.kt\ncom/superwall/sdk/misc/EitherKt\n+ 9 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1555:1\n135#2,10:1556\n135#2,10:1575\n135#2,10:1585\n135#2,10:1595\n135#2,10:1605\n135#2,10:1615\n135#2,10:1625\n135#2,10:1635\n135#2,2:1645\n137#2,8:1651\n135#2,2:1663\n137#2,8:1676\n135#2,10:1688\n135#2,10:1702\n135#2,10:1716\n135#2,10:1730\n135#2,10:1744\n147#2,8:1758\n135#2,10:1766\n11165#3:1566\n11500#3,3:1567\n49#4:1570\n51#4:1574\n17#4:1780\n19#4:1784\n46#5:1571\n51#5:1573\n46#5:1781\n51#5:1783\n105#6:1572\n105#6:1782\n126#7:1647\n153#7,3:1648\n126#7:1665\n153#7,3:1666\n143#8,4:1659\n129#8,5:1670\n143#8,4:1684\n143#8,4:1698\n143#8,4:1712\n143#8,4:1726\n143#8,4:1740\n143#8,4:1754\n143#8,4:1776\n1863#9:1669\n1864#9:1675\n*S KotlinDebug\n*F\n+ 1 Superwall.kt\ncom/superwall/sdk/Superwall\n*L\n254#1:1556,10\n650#1:1575,10\n814#1:1585,10\n828#1:1595,10\n841#1:1605,10\n875#1:1615,10\n885#1:1625,10\n929#1:1635,10\n1004#1:1645,2\n1004#1:1651,8\n1021#1:1663,2\n1021#1:1676,8\n1093#1:1688,10\n1116#1:1702,10\n1139#1:1716,10\n1157#1:1730,10\n1212#1:1744,10\n1218#1:1758,8\n1344#1:1766,10\n336#1:1566\n336#1:1567,3\n473#1:1570\n473#1:1574\n493#1:1780\n493#1:1784\n473#1:1571\n473#1:1573\n493#1:1781\n493#1:1783\n473#1:1572\n493#1:1782\n1007#1:1647\n1007#1:1648,3\n1030#1:1665\n1030#1:1666,3\n1008#1:1659,4\n1044#1:1670,5\n1060#1:1684,4\n1100#1:1698,4\n1123#1:1712,4\n1148#1:1726,4\n1159#1:1740,4\n1218#1:1754,4\n1346#1:1776,4\n1034#1:1669\n1034#1:1675\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0080\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010$\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0005\n\u0002\u0010\u0000\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\"\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000 \u00f0\u00012\u00020\u0001:\u0002\u00f0\u0001BQ\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\u001a\u0010\u000c\u001a\u0016\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000f0\u000e\u0012\u0004\u0012\u00020\u000f\u0018\u00010\r\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0006\u0010Y\u001a\u00020TJ\u0017\u0010[\u001a\u00020\u000f2\u0008\u00108\u001a\u0004\u0018\u00010\\H\u0007\u00a2\u0006\u0002\u0008FJ\u0015\u0010]\u001a\u00020\u000f2\u0006\u0010^\u001a\u00020\'H\u0000\u00a2\u0006\u0002\u0008_J\u000f\u0010`\u001a\u0004\u0018\u00010\\H\u0007\u00a2\u0006\u0002\u0008DJ\u000e\u0010a\u001a\u00020\u000f2\u0006\u0010b\u001a\u00020cJ\u001f\u0010a\u001a\u00020\u000f2\u0012\u0010d\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00050e\"\u00020\u0005\u00a2\u0006\u0002\u0010fJ\u0015\u0010g\u001a\u00020\u000f2\u0006\u0010h\u001a\u00020cH\u0000\u00a2\u0006\u0002\u0008iJ\u001c\u0010m\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010k0HH\u0086@\u00a2\u0006\u0002\u0010nJ\u001a\u0010q\u001a\u00020\u000f2\u0012\u0010r\u001a\u000e\u0012\u0004\u0012\u00020s\u0012\u0004\u0012\u00020\u00050HJ\u001d\u0010\u0098\u0001\u001a\u0010\u0012\u0004\u0012\u00020\u000f\u0012\u0005\u0012\u00030\u009a\u00010\u0099\u0001H\u0000\u00a2\u0006\u0003\u0008\u009b\u0001J\t\u0010\u009c\u0001\u001a\u00020\u000fH\u0002J\t\u0010\u009f\u0001\u001a\u00020\u000fH\u0002J\u0010\u0010\u00a0\u0001\u001a\u00020\u000f2\u0007\u0010\u00a1\u0001\u001a\u00020@J\u0019\u0010\u00a2\u0001\u001a\u00020\u000f2\u0007\u0010\u00a3\u0001\u001a\u00020\u00052\u0007\u0010\u00a4\u0001\u001a\u00020\u0005J\u0013\u0010\u00a5\u0001\u001a\u00020\u000f2\n\u0010\u00a6\u0001\u001a\u0005\u0018\u00010\u00a7\u0001J\u0007\u0010\u00a8\u0001\u001a\u00020\u000fJa\u0010\u00a9\u0001\u001a\u00020\u000f2\u000b\u0008\u0002\u0010\u00aa\u0001\u001a\u0004\u0018\u00010\u00052\u000b\u0008\u0002\u0010\u00ab\u0001\u001a\u0004\u0018\u00010\u00052\u000b\u0008\u0002\u0010\u00ac\u0001\u001a\u0004\u0018\u00010\u00052\t\u0008\u0002\u0010\u00ad\u0001\u001a\u00020\u00052\u0012\u0008\u0002\u0010\u00ae\u0001\u001a\u000b\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u00af\u00012\u0012\u0008\u0002\u0010\u00b0\u0001\u001a\u000b\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u00af\u0001J\u0007\u0010\u00b1\u0001\u001a\u00020\u000fJ\u001a\u0010\u00b1\u0001\u001a\u00020\u000f2\t\u0008\u0002\u0010\u00b2\u0001\u001a\u00020@H\u0000\u00a2\u0006\u0003\u0008\u00b3\u0001J\u000f\u0010\u00b4\u0001\u001a\u00020\u000fH\u0000\u00a2\u0006\u0003\u0008\u00b5\u0001J \u0010\u00b6\u0001\u001a\u0008\u0012\u0004\u0012\u00020@0\u000e2\u0008\u0010\u00b7\u0001\u001a\u00030\u00b8\u0001\u00a2\u0006\u0006\u0008\u00b9\u0001\u0010\u00ba\u0001J\u0007\u0010\u00bb\u0001\u001a\u00020\u000fJ\u0017\u0010\u00bc\u0001\u001a\u00020\u000f2\u000e\u0010\u00bd\u0001\u001a\t\u0012\u0004\u0012\u00020\u00050\u00be\u0001J\u001e\u0010\u00bf\u0001\u001a\u0010\u0012\u000c\u0012\n\u0012\u0005\u0012\u00030\u00c1\u00010\u00c0\u00010\u000e\u00a2\u0006\u0006\u0008\u00c2\u0001\u0010\u00c3\u0001J \u0010\u00c4\u0001\u001a\u0010\u0012\u000c\u0012\n\u0012\u0005\u0012\u00030\u00c1\u00010\u00c0\u00010\u000eH\u0086@\u00a2\u0006\u0005\u0008\u00c5\u0001\u0010nJ.\u0010\u00c4\u0001\u001a\u00020\u000f*\u00020\u00002!\u0010\u00c6\u0001\u001a\u001c\u0012\u0012\u0012\u0010\u0012\u000c\u0012\n\u0012\u0005\u0012\u00030\u00c1\u00010\u00c0\u00010\u000e\u0012\u0004\u0012\u00020\u000f0\rJ$\u0010\u00c7\u0001\u001a\t\u0012\u0005\u0012\u00030\u00c8\u00010\u000e2\u0008\u0010\u00c9\u0001\u001a\u00030\u00ca\u0001H\u0086@\u00a2\u0006\u0006\u0008\u00cb\u0001\u0010\u00cc\u0001J$\u0010\u00c7\u0001\u001a\t\u0012\u0005\u0012\u00030\u00c8\u00010\u000e2\u0008\u0010\u00c9\u0001\u001a\u00030\u00cd\u0001H\u0086@\u00a2\u0006\u0006\u0008\u00cb\u0001\u0010\u00ce\u0001J#\u0010\u00c7\u0001\u001a\t\u0012\u0005\u0012\u00030\u00c8\u00010\u000e2\u0007\u0010\u00cf\u0001\u001a\u00020\u0005H\u0086@\u00a2\u0006\u0006\u0008\u00cb\u0001\u0010\u00d0\u0001J;\u0010\u00d1\u0001\u001a\u0015\u0012\u0011\u0012\u000f\u0012\u0004\u0012\u00020\u0005\u0012\u0005\u0012\u00030\u00cd\u00010H0\u000e2\u0013\u0010\u00d2\u0001\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00050e\"\u00020\u0005H\u0086@\u00a2\u0006\u0006\u0008\u00d3\u0001\u0010\u00d4\u0001J-\u0010\u00c7\u0001\u001a\u00020\u000f2\u0008\u0010\u00c9\u0001\u001a\u00030\u00cd\u00012\u001a\u0010\u00d5\u0001\u001a\u0015\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030\u00c8\u00010\u000e\u0012\u0004\u0012\u00020\u000f0\rJ-\u0010\u00c7\u0001\u001a\u00020\u000f2\u0008\u0010\u00c9\u0001\u001a\u00030\u00ca\u00012\u001a\u0010\u00d5\u0001\u001a\u0015\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030\u00c8\u00010\u000e\u0012\u0004\u0012\u00020\u000f0\rJ,\u0010\u00c7\u0001\u001a\u00020\u000f2\u0007\u0010\u00cf\u0001\u001a\u00020\u00052\u001a\u0010\u00d5\u0001\u001a\u0015\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030\u00c8\u00010\u000e\u0012\u0004\u0012\u00020\u000f0\rJ\"\u0010\u00d6\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u000e2\u0007\u0010\u00d7\u0001\u001a\u00020\u0005H\u0086@\u00a2\u0006\u0006\u0008\u00d8\u0001\u0010\u00d0\u0001J+\u0010\u00d6\u0001\u001a\u00020\u000f2\u0007\u0010\u00d7\u0001\u001a\u00020\u00052\u0019\u0010\u00d9\u0001\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u000e\u0012\u0004\u0012\u00020\u000f0\rJ\u0011\u0010\u00da\u0001\u001a\u00020\u000f2\u0008\u0010\u00db\u0001\u001a\u00030\u00dc\u0001J\u0011\u0010\u00dd\u0001\u001a\u00020\u000f2\u0008\u0010\u00c9\u0001\u001a\u00030\u00ca\u0001J\u001b\u0010\u00de\u0001\u001a\u00020\u000f2\u0008\u0010\u00c9\u0001\u001a\u00030\u00ca\u00012\u0008\u0010\u00df\u0001\u001a\u00030\u009a\u0001J\"\u0010\u00e0\u0001\u001a\u00020\u000f2\u0008\u0010\u00e1\u0001\u001a\u00030\u00e2\u00012\u000f\u0010\u00e3\u0001\u001a\n\u0012\u0005\u0012\u00030\u00e4\u00010\u00c0\u0001J\u0019\u0010\u00e5\u0001\u001a\t\u0012\u0005\u0012\u00030\u00e6\u00010\u000eH\u0086@\u00a2\u0006\u0005\u0008\u00e7\u0001\u0010nJ#\u0010\u00e5\u0001\u001a\u00020 2\u001a\u0010\u00d5\u0001\u001a\u0015\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030\u00e6\u00010\u000e\u0012\u0004\u0012\u00020\u000f0\rJ\"\u0010\u00e8\u0001\u001a\u00020\u000f2\u0008\u0010\u00e9\u0001\u001a\u00030\u00ea\u00012\u0006\u00102\u001a\u000203H\u0096@\u00a2\u0006\u0003\u0010\u00eb\u0001J\u0018\u0010\u00ec\u0001\u001a\u00020\u000f2\u0007\u0010\u00ed\u0001\u001a\u00020\u0005H\u0000\u00a2\u0006\u0003\u0008\u00ee\u0001J\u0007\u0010\u00ef\u0001\u001a\u00020\u000fR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\"\u0010\u000c\u001a\u0016\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000f0\u000e\u0012\u0004\u0012\u00020\u000f\u0018\u00010\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0013\u001a\u00020\u00148@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0016R\u0014\u0010\u0017\u001a\u00020\u00188@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u001aR\u001a\u0010\u0002\u001a\u00020\u0003X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR\u0010\u0010\u001f\u001a\u0004\u0018\u00010 X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010!\u001a\u00020\"X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010$R\u0014\u0010%\u001a\u0008\u0012\u0004\u0012\u00020\'0&X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010(\u001a\u0008\u0012\u0004\u0012\u00020\'0)\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008*\u0010+R(\u0010-\u001a\u0004\u0018\u00010\u00052\u0008\u0010,\u001a\u0004\u0018\u00010\u00058F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008.\u0010/\"\u0004\u00080\u00101R\u0013\u00102\u001a\u0004\u0018\u0001038F\u00a2\u0006\u0006\u001a\u0004\u00084\u00105R\u0011\u0010\u0008\u001a\u00020\t8F\u00a2\u0006\u0006\u001a\u0004\u00086\u00107R$\u0010:\u001a\u0002092\u0006\u00108\u001a\u0002098F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008;\u0010<\"\u0004\u0008=\u0010>R\u0011\u0010?\u001a\u00020@8F\u00a2\u0006\u0006\u001a\u0004\u0008?\u0010AR(\u0010C\u001a\u0004\u0018\u00010B2\u0008\u00108\u001a\u0004\u0018\u00010B8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008D\u0010E\"\u0004\u0008F\u0010GR<\u0010I\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050H2\u0012\u0010,\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050H8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008J\u0010K\"\u0004\u0008L\u0010MR&\u0010N\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020O0HX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008P\u0010K\"\u0004\u0008Q\u0010MR\u001a\u0010R\u001a\u0008\u0012\u0004\u0012\u00020T0SX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008U\u0010VR\u0017\u0010W\u001a\u0008\u0012\u0004\u0012\u00020T0X8F\u00a2\u0006\u0006\u001a\u0004\u0008Y\u0010ZR\u001d\u0010j\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020k0H8F\u00a2\u0006\u0006\u001a\u0004\u0008l\u0010KR\u001d\u0010o\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050H8F\u00a2\u0006\u0006\u001a\u0004\u0008p\u0010KR\u0011\u0010t\u001a\u00020\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008u\u0010/R\u0011\u0010v\u001a\u00020\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008w\u0010/R\u0011\u0010x\u001a\u00020@8F\u00a2\u0006\u0006\u001a\u0004\u0008x\u0010AR\u0013\u0010y\u001a\u0004\u0018\u00010z8F\u00a2\u0006\u0006\u001a\u0004\u0008{\u0010|R\u001d\u0010d\u001a\u00020}8FX\u0086\u0084\u0002\u00a2\u0006\u000e\n\u0006\u0008\u0080\u0001\u0010\u0081\u0001\u001a\u0004\u0008~\u0010\u007fR$\u0010b\u001a\u0008\u0012\u0004\u0012\u00020c0X8FX\u0086\u0084\u0002\u00a2\u0006\u000f\n\u0006\u0008\u0083\u0001\u0010\u0081\u0001\u001a\u0005\u0008\u0082\u0001\u0010ZR\u0017\u0010\u0084\u0001\u001a\u00030\u0085\u00018@X\u0080\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u0086\u0001\u0010/R\u0015\u0010\u0087\u0001\u001a\u00030\u0088\u00018F\u00a2\u0006\u0008\u001a\u0006\u0008\u0089\u0001\u0010\u008a\u0001R\u001c\u0010\u008b\u0001\u001a\n\u0012\u0005\u0012\u00030\u0088\u00010\u008c\u00018F\u00a2\u0006\u0008\u001a\u0006\u0008\u008d\u0001\u0010\u008e\u0001R\u0010\u0010\u008f\u0001\u001a\u00030\u0090\u0001X\u0082.\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0091\u0001\u001a\u00030\u0090\u00018@X\u0080\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u0092\u0001\u0010\u0093\u0001R\u0018\u0010\u0094\u0001\u001a\u00030\u0095\u0001X\u0080\u0004\u00a2\u0006\n\n\u0000\u001a\u0006\u0008\u0096\u0001\u0010\u0097\u0001R\u0012\u0010\u009d\u0001\u001a\u0005\u0018\u00010\u009e\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u00f1\u0001"
    }
    d2 = {
        "Lcom/superwall/sdk/Superwall;",
        "Lcom/superwall/sdk/paywall/view/delegate/PaywallViewEventCallback;",
        "context",
        "Landroid/content/Context;",
        "apiKey",
        "",
        "purchaseController",
        "Lcom/superwall/sdk/delegate/subscription_controller/PurchaseController;",
        "options",
        "Lcom/superwall/sdk/config/options/SuperwallOptions;",
        "activityProvider",
        "Lcom/superwall/sdk/misc/ActivityProvider;",
        "completion",
        "Lkotlin/Function1;",
        "Lkotlin/Result;",
        "",
        "<init>",
        "(Landroid/content/Context;Ljava/lang/String;Lcom/superwall/sdk/delegate/subscription_controller/PurchaseController;Lcom/superwall/sdk/config/options/SuperwallOptions;Lcom/superwall/sdk/misc/ActivityProvider;Lkotlin/jvm/functions/Function1;)V",
        "_options",
        "ioScope",
        "Lcom/superwall/sdk/misc/IOScope;",
        "getIoScope$superwall_release",
        "()Lcom/superwall/sdk/misc/IOScope;",
        "mainScope",
        "Lcom/superwall/sdk/misc/MainScope;",
        "getMainScope$superwall_release",
        "()Lcom/superwall/sdk/misc/MainScope;",
        "getContext$superwall_release",
        "()Landroid/content/Context;",
        "setContext$superwall_release",
        "(Landroid/content/Context;)V",
        "purchaseTask",
        "Lkotlinx/coroutines/Job;",
        "presentationItems",
        "Lcom/superwall/sdk/paywall/presentation/PresentationItems;",
        "getPresentationItems$superwall_release",
        "()Lcom/superwall/sdk/paywall/presentation/PresentationItems;",
        "_placements",
        "Lkotlinx/coroutines/flow/MutableSharedFlow;",
        "Lcom/superwall/sdk/analytics/superwall/SuperwallEventInfo;",
        "placements",
        "Lkotlinx/coroutines/flow/SharedFlow;",
        "getPlacements",
        "()Lkotlinx/coroutines/flow/SharedFlow;",
        "value",
        "localeIdentifier",
        "getLocaleIdentifier",
        "()Ljava/lang/String;",
        "setLocaleIdentifier",
        "(Ljava/lang/String;)V",
        "paywallView",
        "Lcom/superwall/sdk/paywall/view/PaywallView;",
        "getPaywallView",
        "()Lcom/superwall/sdk/paywall/view/PaywallView;",
        "getOptions",
        "()Lcom/superwall/sdk/config/options/SuperwallOptions;",
        "newValue",
        "Lcom/superwall/sdk/logger/LogLevel;",
        "logLevel",
        "getLogLevel",
        "()Lcom/superwall/sdk/logger/LogLevel;",
        "setLogLevel",
        "(Lcom/superwall/sdk/logger/LogLevel;)V",
        "isPaywallPresented",
        "",
        "()Z",
        "Lcom/superwall/sdk/delegate/SuperwallDelegate;",
        "delegate",
        "getDelegate",
        "()Lcom/superwall/sdk/delegate/SuperwallDelegate;",
        "setDelegate",
        "(Lcom/superwall/sdk/delegate/SuperwallDelegate;)V",
        "",
        "overrideProductsByName",
        "getOverrideProductsByName",
        "()Ljava/util/Map;",
        "setOverrideProductsByName",
        "(Ljava/util/Map;)V",
        "localResources",
        "Lcom/superwall/sdk/paywall/view/webview/PaywallResource;",
        "getLocalResources",
        "setLocalResources",
        "_customerInfo",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "Lcom/superwall/sdk/models/customer/CustomerInfo;",
        "get_customerInfo$superwall_release",
        "()Lkotlinx/coroutines/flow/MutableStateFlow;",
        "customerInfo",
        "Lkotlinx/coroutines/flow/StateFlow;",
        "getCustomerInfo",
        "()Lkotlinx/coroutines/flow/StateFlow;",
        "setJavaDelegate",
        "Lcom/superwall/sdk/delegate/SuperwallDelegateJava;",
        "emitSuperwallEvent",
        "info",
        "emitSuperwallEvent$superwall_release",
        "getJavaDelegate",
        "setSubscriptionStatus",
        "subscriptionStatus",
        "Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;",
        "entitlements",
        "",
        "([Ljava/lang/String;)V",
        "internallySetSubscriptionStatus",
        "toStatus",
        "internallySetSubscriptionStatus$superwall_release",
        "userAttributes",
        "",
        "getUserAttributes",
        "deviceAttributes",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "integrationAttributes",
        "getIntegrationAttributes",
        "setIntegrationAttributes",
        "attributes",
        "Lcom/superwall/sdk/models/attribution/AttributionProvider;",
        "userId",
        "getUserId",
        "externalAccountId",
        "getExternalAccountId",
        "isLoggedIn",
        "latestPaywallInfo",
        "Lcom/superwall/sdk/paywall/presentation/PaywallInfo;",
        "getLatestPaywallInfo",
        "()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;",
        "Lcom/superwall/sdk/store/Entitlements;",
        "getEntitlements",
        "()Lcom/superwall/sdk/store/Entitlements;",
        "entitlements$delegate",
        "Lkotlin/Lazy;",
        "getSubscriptionStatus",
        "subscriptionStatus$delegate",
        "vendorId",
        "Lcom/superwall/sdk/models/internal/VendorId;",
        "getVendorId-6xTLGo0$superwall_release",
        "configurationState",
        "Lcom/superwall/sdk/config/models/ConfigurationStatus;",
        "getConfigurationState",
        "()Lcom/superwall/sdk/config/models/ConfigurationStatus;",
        "configurationStateListener",
        "Lkotlinx/coroutines/flow/Flow;",
        "getConfigurationStateListener",
        "()Lkotlinx/coroutines/flow/Flow;",
        "_dependencyContainer",
        "Lcom/superwall/sdk/dependencies/DependencyContainer;",
        "dependencyContainer",
        "getDependencyContainer$superwall_release",
        "()Lcom/superwall/sdk/dependencies/DependencyContainer;",
        "serialTaskManager",
        "Lcom/superwall/sdk/misc/SerialTaskManager;",
        "getSerialTaskManager$superwall_release",
        "()Lcom/superwall/sdk/misc/SerialTaskManager;",
        "setup",
        "Lcom/superwall/sdk/misc/Either;",
        "",
        "setup$superwall_release",
        "addListeners",
        "configurationChangeListener",
        "Landroid/content/ComponentCallbacks2;",
        "registerConfigurationChangeListener",
        "togglePaywallSpinner",
        "isHidden",
        "setPlatformWrapper",
        "wrapper",
        "version",
        "setInterfaceStyle",
        "interfaceStyle",
        "Lcom/superwall/sdk/network/device/InterfaceStyle;",
        "cancelAllScheduledNotifications",
        "showAlert",
        "title",
        "message",
        "actionTitle",
        "closeActionTitle",
        "action",
        "Lkotlin/Function0;",
        "onClose",
        "reset",
        "duringIdentify",
        "reset$superwall_release",
        "teardown",
        "teardown$superwall_release",
        "handleDeepLink",
        "uri",
        "Landroid/net/Uri;",
        "handleDeepLink-IoAF18A",
        "(Landroid/net/Uri;)Ljava/lang/Object;",
        "preloadAllPaywalls",
        "preloadPaywalls",
        "placementNames",
        "",
        "getAssignments",
        "",
        "Lcom/superwall/sdk/models/assignment/ConfirmedAssignment;",
        "getAssignments-d1pmJ48",
        "()Ljava/lang/Object;",
        "confirmAllAssignments",
        "confirmAllAssignments-IoAF18A",
        "callback",
        "purchase",
        "Lcom/superwall/sdk/delegate/PurchaseResult;",
        "product",
        "Lcom/android/billingclient/api/ProductDetails;",
        "purchase-gIAlu-s",
        "(Lcom/android/billingclient/api/ProductDetails;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Lcom/superwall/sdk/store/abstractions/product/StoreProduct;",
        "(Lcom/superwall/sdk/store/abstractions/product/StoreProduct;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "productId",
        "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getProducts",
        "productIds",
        "getProducts-gIAlu-s",
        "([Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "onFinished",
        "consume",
        "purchaseToken",
        "consume-gIAlu-s",
        "onConsumed",
        "observe",
        "state",
        "Lcom/superwall/sdk/store/PurchasingObserverState;",
        "observePurchaseStart",
        "observePurchaseError",
        "error",
        "observePurchaseResult",
        "billingResult",
        "Lcom/android/billingclient/api/BillingResult;",
        "purchases",
        "Lcom/android/billingclient/api/Purchase;",
        "restorePurchases",
        "Lcom/superwall/sdk/delegate/RestorationResult;",
        "restorePurchases-IoAF18A",
        "eventDidOccur",
        "paywallEvent",
        "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent;",
        "(Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent;Lcom/superwall/sdk/paywall/view/PaywallView;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "redeem",
        "code",
        "redeem$superwall_release",
        "refreshConfiguration",
        "Companion",
        "superwall_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/superwall/sdk/Superwall$Companion;

.field private static final _hasInitialized:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static _instance:Lcom/superwall/sdk/Superwall;

.field private static final hasInitialized:Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static initialized:Z

.field private static retainedActivityProvider:Lcom/superwall/sdk/misc/ActivityProvider;


# instance fields
.field private final _customerInfo:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Lcom/superwall/sdk/models/customer/CustomerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private volatile _dependencyContainer:Lcom/superwall/sdk/dependencies/DependencyContainer;

.field private _options:Lcom/superwall/sdk/config/options/SuperwallOptions;

.field private final _placements:Lkotlinx/coroutines/flow/MutableSharedFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableSharedFlow<",
            "Lcom/superwall/sdk/analytics/superwall/SuperwallEventInfo;",
            ">;"
        }
    .end annotation
.end field

.field private activityProvider:Lcom/superwall/sdk/misc/ActivityProvider;

.field private apiKey:Ljava/lang/String;

.field private final completion:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lkotlin/Result<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private configurationChangeListener:Landroid/content/ComponentCallbacks2;

.field private context:Landroid/content/Context;

.field private final entitlements$delegate:Lkotlin/Lazy;

.field private localResources:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lcom/superwall/sdk/paywall/view/webview/PaywallResource;",
            ">;"
        }
    .end annotation
.end field

.field private final placements:Lkotlinx/coroutines/flow/SharedFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/SharedFlow<",
            "Lcom/superwall/sdk/analytics/superwall/SuperwallEventInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final presentationItems:Lcom/superwall/sdk/paywall/presentation/PresentationItems;

.field private purchaseController:Lcom/superwall/sdk/delegate/subscription_controller/PurchaseController;

.field private purchaseTask:Lkotlinx/coroutines/Job;

.field private final serialTaskManager:Lcom/superwall/sdk/misc/SerialTaskManager;

.field private final subscriptionStatus$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$bEwGpqUZB20WLqlu8ZH3b34ONno(Lcom/superwall/sdk/Superwall;)Lcom/superwall/sdk/store/Entitlements;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/Superwall;->entitlements_delegate$lambda$2(Lcom/superwall/sdk/Superwall;)Lcom/superwall/sdk/store/Entitlements;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$sRrDDGPrsNg2jJBhQDzWaeidyPY(Lcom/superwall/sdk/Superwall;)Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/Superwall;->subscriptionStatus_delegate$lambda$3(Lcom/superwall/sdk/Superwall;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/superwall/sdk/Superwall$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/superwall/sdk/Superwall$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    const/4 v0, 0x0

    .line 488
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    sput-object v0, Lcom/superwall/sdk/Superwall;->_hasInitialized:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 492
    check-cast v0, Lkotlinx/coroutines/flow/Flow;

    .line 1782
    new-instance v1, Lcom/superwall/sdk/Superwall$special$$inlined$filter$1;

    invoke-direct {v1, v0}, Lcom/superwall/sdk/Superwall$special$$inlined$filter$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    check-cast v1, Lkotlinx/coroutines/flow/Flow;

    const/4 v0, 0x1

    .line 494
    invoke-static {v1, v0}, Lkotlinx/coroutines/flow/FlowKt;->take(Lkotlinx/coroutines/flow/Flow;I)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    sput-object v0, Lcom/superwall/sdk/Superwall;->hasInitialized:Lkotlinx/coroutines/flow/Flow;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/superwall/sdk/delegate/subscription_controller/PurchaseController;Lcom/superwall/sdk/config/options/SuperwallOptions;Lcom/superwall/sdk/misc/ActivityProvider;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/superwall/sdk/delegate/subscription_controller/PurchaseController;",
            "Lcom/superwall/sdk/config/options/SuperwallOptions;",
            "Lcom/superwall/sdk/misc/ActivityProvider;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/Result<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "apiKey"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p2, p0, Lcom/superwall/sdk/Superwall;->apiKey:Ljava/lang/String;

    .line 111
    iput-object p3, p0, Lcom/superwall/sdk/Superwall;->purchaseController:Lcom/superwall/sdk/delegate/subscription_controller/PurchaseController;

    .line 113
    iput-object p5, p0, Lcom/superwall/sdk/Superwall;->activityProvider:Lcom/superwall/sdk/misc/ActivityProvider;

    .line 114
    iput-object p6, p0, Lcom/superwall/sdk/Superwall;->completion:Lkotlin/jvm/functions/Function1;

    .line 116
    iput-object p4, p0, Lcom/superwall/sdk/Superwall;->_options:Lcom/superwall/sdk/config/options/SuperwallOptions;

    .line 121
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "getApplicationContext(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/superwall/sdk/Superwall;->context:Landroid/content/Context;

    .line 125
    new-instance p1, Lcom/superwall/sdk/paywall/presentation/PresentationItems;

    invoke-direct {p1}, Lcom/superwall/sdk/paywall/presentation/PresentationItems;-><init>()V

    iput-object p1, p0, Lcom/superwall/sdk/Superwall;->presentationItems:Lcom/superwall/sdk/paywall/presentation/PresentationItems;

    const/16 p1, 0x100

    .line 131
    sget-object p2, Lkotlinx/coroutines/channels/BufferOverflow;->SUSPEND:Lkotlinx/coroutines/channels/BufferOverflow;

    const/4 p3, 0x0

    .line 128
    invoke-static {p3, p1, p2}, Lkotlinx/coroutines/flow/SharedFlowKt;->MutableSharedFlow(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/flow/MutableSharedFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/Superwall;->_placements:Lkotlinx/coroutines/flow/MutableSharedFlow;

    .line 139
    check-cast p1, Lkotlinx/coroutines/flow/SharedFlow;

    iput-object p1, p0, Lcom/superwall/sdk/Superwall;->placements:Lkotlinx/coroutines/flow/SharedFlow;

    .line 231
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/Superwall;->localResources:Ljava/util/Map;

    .line 234
    sget-object p1, Lcom/superwall/sdk/models/customer/CustomerInfo;->Companion:Lcom/superwall/sdk/models/customer/CustomerInfo$Companion;

    invoke-virtual {p1}, Lcom/superwall/sdk/models/customer/CustomerInfo$Companion;->empty()Lcom/superwall/sdk/models/customer/CustomerInfo;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/Superwall;->_customerInfo:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 443
    new-instance p1, Lcom/superwall/sdk/Superwall$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/superwall/sdk/Superwall$$ExternalSyntheticLambda0;-><init>(Lcom/superwall/sdk/Superwall;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/Superwall;->entitlements$delegate:Lkotlin/Lazy;

    .line 447
    new-instance p1, Lcom/superwall/sdk/Superwall$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/superwall/sdk/Superwall$$ExternalSyntheticLambda1;-><init>(Lcom/superwall/sdk/Superwall;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/superwall/sdk/Superwall;->subscriptionStatus$delegate:Lkotlin/Lazy;

    .line 646
    new-instance p1, Lcom/superwall/sdk/misc/SerialTaskManager;

    const/4 p2, 0x0

    const/4 p3, 0x1

    invoke-direct {p1, p2, p3, p2}, Lcom/superwall/sdk/misc/SerialTaskManager;-><init>(Lkotlinx/coroutines/CoroutineScope;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/superwall/sdk/Superwall;->serialTaskManager:Lcom/superwall/sdk/misc/SerialTaskManager;

    return-void
.end method

.method public static final synthetic access$getActivityProvider$p(Lcom/superwall/sdk/Superwall;)Lcom/superwall/sdk/misc/ActivityProvider;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/superwall/sdk/Superwall;->activityProvider:Lcom/superwall/sdk/misc/ActivityProvider;

    return-object p0
.end method

.method public static final synthetic access$getCompletion$p(Lcom/superwall/sdk/Superwall;)Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/superwall/sdk/Superwall;->completion:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public static final synthetic access$getHasInitialized$cp()Lkotlinx/coroutines/flow/Flow;
    .locals 1

    .line 108
    sget-object v0, Lcom/superwall/sdk/Superwall;->hasInitialized:Lkotlinx/coroutines/flow/Flow;

    return-object v0
.end method

.method public static final synthetic access$getInitialized$cp()Z
    .locals 1

    .line 108
    sget-boolean v0, Lcom/superwall/sdk/Superwall;->initialized:Z

    return v0
.end method

.method public static final synthetic access$getPurchaseTask$p(Lcom/superwall/sdk/Superwall;)Lkotlinx/coroutines/Job;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/superwall/sdk/Superwall;->purchaseTask:Lkotlinx/coroutines/Job;

    return-object p0
.end method

.method public static final synthetic access$getRetainedActivityProvider$cp()Lcom/superwall/sdk/misc/ActivityProvider;
    .locals 1

    .line 108
    sget-object v0, Lcom/superwall/sdk/Superwall;->retainedActivityProvider:Lcom/superwall/sdk/misc/ActivityProvider;

    return-object v0
.end method

.method public static final synthetic access$get_hasInitialized$cp()Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 1

    .line 108
    sget-object v0, Lcom/superwall/sdk/Superwall;->_hasInitialized:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method

.method public static final synthetic access$get_instance$cp()Lcom/superwall/sdk/Superwall;
    .locals 1

    .line 108
    sget-object v0, Lcom/superwall/sdk/Superwall;->_instance:Lcom/superwall/sdk/Superwall;

    return-object v0
.end method

.method public static final synthetic access$get_placements$p(Lcom/superwall/sdk/Superwall;)Lkotlinx/coroutines/flow/MutableSharedFlow;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/superwall/sdk/Superwall;->_placements:Lkotlinx/coroutines/flow/MutableSharedFlow;

    return-object p0
.end method

.method public static final synthetic access$setInitialized$cp(Z)V
    .locals 0

    .line 108
    sput-boolean p0, Lcom/superwall/sdk/Superwall;->initialized:Z

    return-void
.end method

.method public static final synthetic access$setPurchaseTask$p(Lcom/superwall/sdk/Superwall;Lkotlinx/coroutines/Job;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/superwall/sdk/Superwall;->purchaseTask:Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final synthetic access$setRetainedActivityProvider$cp(Lcom/superwall/sdk/misc/ActivityProvider;)V
    .locals 0

    .line 108
    sput-object p0, Lcom/superwall/sdk/Superwall;->retainedActivityProvider:Lcom/superwall/sdk/misc/ActivityProvider;

    return-void
.end method

.method public static final synthetic access$set_instance$cp(Lcom/superwall/sdk/Superwall;)V
    .locals 0

    .line 108
    sput-object p0, Lcom/superwall/sdk/Superwall;->_instance:Lcom/superwall/sdk/Superwall;

    return-void
.end method

.method private final addListeners()V
    .locals 3

    .line 710
    invoke-virtual {p0}, Lcom/superwall/sdk/Superwall;->getIoScope$superwall_release()Lcom/superwall/sdk/misc/IOScope;

    move-result-object v0

    check-cast v0, Lcom/superwall/sdk/misc/SuperwallScope;

    new-instance v1, Lcom/superwall/sdk/Superwall$addListeners$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/superwall/sdk/Superwall$addListeners$1;-><init>(Lcom/superwall/sdk/Superwall;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1}, Lcom/superwall/sdk/misc/ScopesKt;->launchWithTracking(Lcom/superwall/sdk/misc/SuperwallScope;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    .line 749
    invoke-virtual {p0}, Lcom/superwall/sdk/Superwall;->getIoScope$superwall_release()Lcom/superwall/sdk/misc/IOScope;

    move-result-object v0

    check-cast v0, Lcom/superwall/sdk/misc/SuperwallScope;

    new-instance v1, Lcom/superwall/sdk/Superwall$addListeners$2;

    invoke-direct {v1, p0, v2}, Lcom/superwall/sdk/Superwall$addListeners$2;-><init>(Lcom/superwall/sdk/Superwall;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1}, Lcom/superwall/sdk/misc/ScopesKt;->launchWithTracking(Lcom/superwall/sdk/misc/SuperwallScope;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    .line 765
    invoke-direct {p0}, Lcom/superwall/sdk/Superwall;->registerConfigurationChangeListener()V

    return-void
.end method

.method public static final configure(Landroid/app/Application;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/superwall/sdk/Superwall$Companion;->configure(Landroid/app/Application;Ljava/lang/String;)V

    return-void
.end method

.method public static final configure(Landroid/app/Application;Ljava/lang/String;Lcom/superwall/sdk/delegate/subscription_controller/PurchaseController;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/superwall/sdk/Superwall$Companion;->configure(Landroid/app/Application;Ljava/lang/String;Lcom/superwall/sdk/delegate/subscription_controller/PurchaseController;)V

    return-void
.end method

.method public static final configure(Landroid/app/Application;Ljava/lang/String;Lcom/superwall/sdk/delegate/subscription_controller/PurchaseController;Lcom/superwall/sdk/config/options/SuperwallOptions;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/superwall/sdk/Superwall$Companion;->configure(Landroid/app/Application;Ljava/lang/String;Lcom/superwall/sdk/delegate/subscription_controller/PurchaseController;Lcom/superwall/sdk/config/options/SuperwallOptions;)V

    return-void
.end method

.method public static final configure(Landroid/app/Application;Ljava/lang/String;Lcom/superwall/sdk/delegate/subscription_controller/PurchaseController;Lcom/superwall/sdk/config/options/SuperwallOptions;Lcom/superwall/sdk/misc/ActivityProvider;)V
    .locals 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/superwall/sdk/Superwall$Companion;->configure(Landroid/app/Application;Ljava/lang/String;Lcom/superwall/sdk/delegate/subscription_controller/PurchaseController;Lcom/superwall/sdk/config/options/SuperwallOptions;Lcom/superwall/sdk/misc/ActivityProvider;)V

    return-void
.end method

.method public static final configure(Landroid/app/Application;Ljava/lang/String;Lcom/superwall/sdk/delegate/subscription_controller/PurchaseController;Lcom/superwall/sdk/config/options/SuperwallOptions;Lcom/superwall/sdk/misc/ActivityProvider;Lkotlin/jvm/functions/Function1;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            "Ljava/lang/String;",
            "Lcom/superwall/sdk/delegate/subscription_controller/PurchaseController;",
            "Lcom/superwall/sdk/config/options/SuperwallOptions;",
            "Lcom/superwall/sdk/misc/ActivityProvider;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/Result<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/superwall/sdk/Superwall$Companion;->configure(Landroid/app/Application;Ljava/lang/String;Lcom/superwall/sdk/delegate/subscription_controller/PurchaseController;Lcom/superwall/sdk/config/options/SuperwallOptions;Lcom/superwall/sdk/misc/ActivityProvider;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private static final entitlements_delegate$lambda$2(Lcom/superwall/sdk/Superwall;)Lcom/superwall/sdk/store/Entitlements;
    .locals 0

    .line 444
    invoke-virtual {p0}, Lcom/superwall/sdk/Superwall;->getDependencyContainer$superwall_release()Lcom/superwall/sdk/dependencies/DependencyContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getEntitlements()Lcom/superwall/sdk/store/Entitlements;

    move-result-object p0

    return-object p0
.end method

.method private final registerConfigurationChangeListener()V
    .locals 2

    .line 776
    new-instance v0, Lcom/superwall/sdk/Superwall$registerConfigurationChangeListener$listener$1;

    invoke-direct {v0, p0}, Lcom/superwall/sdk/Superwall$registerConfigurationChangeListener$listener$1;-><init>(Lcom/superwall/sdk/Superwall;)V

    .line 787
    move-object v1, v0

    check-cast v1, Landroid/content/ComponentCallbacks2;

    iput-object v1, p0, Lcom/superwall/sdk/Superwall;->configurationChangeListener:Landroid/content/ComponentCallbacks2;

    .line 788
    iget-object v1, p0, Lcom/superwall/sdk/Superwall;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v0, Landroid/content/ComponentCallbacks;

    invoke-virtual {v1, v0}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    return-void
.end method

.method public static synthetic reset$superwall_release$default(Lcom/superwall/sdk/Superwall;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 884
    :cond_0
    invoke-virtual {p0, p1}, Lcom/superwall/sdk/Superwall;->reset$superwall_release(Z)V

    return-void
.end method

.method public static synthetic showAlert$default(Lcom/superwall/sdk/Superwall;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p8, p7, 0x1

    const/4 v0, 0x0

    if-eqz p8, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_3

    .line 856
    const-string p4, "Done"

    :cond_3
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_4

    move-object p5, v0

    :cond_4
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_5

    move-object p6, v0

    .line 852
    :cond_5
    invoke-virtual/range {p0 .. p6}, Lcom/superwall/sdk/Superwall;->showAlert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private static final subscriptionStatus_delegate$lambda$3(Lcom/superwall/sdk/Superwall;)Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    .line 448
    invoke-virtual {p0}, Lcom/superwall/sdk/Superwall;->getDependencyContainer$superwall_release()Lcom/superwall/sdk/dependencies/DependencyContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getEntitlements()Lcom/superwall/sdk/store/Entitlements;

    move-result-object p0

    invoke-virtual {p0}, Lcom/superwall/sdk/store/Entitlements;->getStatus()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p0

    return-object p0
.end method

.method public static final teardown()V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {v0}, Lcom/superwall/sdk/Superwall$Companion;->teardown()V

    return-void
.end method


# virtual methods
.method public final cancelAllScheduledNotifications()V
    .locals 3

    .line 843
    :try_start_0
    iget-object v0, p0, Lcom/superwall/sdk/Superwall;->context:Landroid/content/Context;

    invoke-static {v0}, Landroidx/work/WorkManager;->getInstance(Landroid/content/Context;)Landroidx/work/WorkManager;

    move-result-object v0

    .line 844
    const-string v1, "com.superwall.android.notifications"

    invoke-virtual {v0, v1}, Landroidx/work/WorkManager;->cancelAllWorkByTag(Ljava/lang/String;)Landroidx/work/Operation;

    move-result-object v0

    .line 1606
    new-instance v1, Lcom/superwall/sdk/misc/Either$Success;

    invoke-direct {v1, v0}, Lcom/superwall/sdk/misc/Either$Success;-><init>(Ljava/lang/Object;)V

    check-cast v1, Lcom/superwall/sdk/misc/Either;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 1608
    invoke-static {v0}, Lcom/superwall/sdk/utilities/ErrorTrackingKt;->access$shouldLog(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1609
    sget-object v1, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {v1}, Lcom/superwall/sdk/Superwall$Companion;->getInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1610
    invoke-virtual {v1}, Lcom/superwall/sdk/Superwall$Companion;->getInstance()Lcom/superwall/sdk/Superwall;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/superwall/sdk/utilities/ErrorTrackingKt;->trackError(Lcom/superwall/sdk/Superwall;Ljava/lang/Throwable;)V

    .line 1613
    :cond_0
    new-instance v1, Lcom/superwall/sdk/misc/Either$Failure;

    invoke-direct {v1, v0}, Lcom/superwall/sdk/misc/Either$Failure;-><init>(Ljava/lang/Throwable;)V

    check-cast v1, Lcom/superwall/sdk/misc/Either;

    return-void
.end method

.method public final confirmAllAssignments(Lcom/superwall/sdk/Superwall;Lkotlin/jvm/functions/Function1;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/Superwall;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/Result<",
            "+",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/assignment/ConfirmedAssignment;",
            ">;>;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1073
    invoke-virtual {p1}, Lcom/superwall/sdk/Superwall;->getIoScope$superwall_release()Lcom/superwall/sdk/misc/IOScope;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/superwall/sdk/Superwall$confirmAllAssignments$3;

    const/4 v2, 0x0

    invoke-direct {v0, p1, p2, v2}, Lcom/superwall/sdk/Superwall$confirmAllAssignments$3;-><init>(Lcom/superwall/sdk/Superwall;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final confirmAllAssignments-IoAF18A(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "+",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/assignment/ConfirmedAssignment;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    instance-of v2, v0, Lcom/superwall/sdk/Superwall$confirmAllAssignments$1;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lcom/superwall/sdk/Superwall$confirmAllAssignments$1;

    iget v3, v2, Lcom/superwall/sdk/Superwall$confirmAllAssignments$1;->label:I

    const/high16 v4, -0x80000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    iget v0, v2, Lcom/superwall/sdk/Superwall$confirmAllAssignments$1;->label:I

    sub-int/2addr v0, v4

    iput v0, v2, Lcom/superwall/sdk/Superwall$confirmAllAssignments$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/superwall/sdk/Superwall$confirmAllAssignments$1;

    invoke-direct {v2, v1, v0}, Lcom/superwall/sdk/Superwall$confirmAllAssignments$1;-><init>(Lcom/superwall/sdk/Superwall;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v2, Lcom/superwall/sdk/Superwall$confirmAllAssignments$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 1020
    iget v4, v2, Lcom/superwall/sdk/Superwall$confirmAllAssignments$1;->label:I

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v4, :cond_3

    if-eq v4, v6, :cond_2

    if-ne v4, v5, :cond_1

    iget-object v4, v2, Lcom/superwall/sdk/Superwall$confirmAllAssignments$1;->L$2:Ljava/lang/Object;

    check-cast v4, Ljava/util/Iterator;

    iget-object v6, v2, Lcom/superwall/sdk/Superwall$confirmAllAssignments$1;->L$1:Ljava/lang/Object;

    check-cast v6, Ljava/util/Set;

    iget-object v7, v2, Lcom/superwall/sdk/Superwall$confirmAllAssignments$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lcom/superwall/sdk/Superwall;

    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_5

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v4, v2, Lcom/superwall/sdk/Superwall$confirmAllAssignments$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lcom/superwall/sdk/Superwall;

    :try_start_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast v0, Lkotlin/Result;

    invoke-virtual {v0}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_3
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1022
    :try_start_2
    sget-object v0, Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$ConfirmAllAssignments;->INSTANCE:Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$ConfirmAllAssignments;

    .line 1023
    check-cast v0, Lcom/superwall/sdk/analytics/internal/trackable/Trackable;

    iput-object v1, v2, Lcom/superwall/sdk/Superwall$confirmAllAssignments$1;->L$0:Ljava/lang/Object;

    iput v6, v2, Lcom/superwall/sdk/Superwall$confirmAllAssignments$1;->label:I

    invoke-static {v1, v0, v2}, Lcom/superwall/sdk/analytics/internal/TrackingKt;->track(Lcom/superwall/sdk/Superwall;Lcom/superwall/sdk/analytics/internal/trackable/Trackable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_4

    goto/16 :goto_4

    :cond_4
    move-object v4, v1

    .line 1025
    :goto_1
    invoke-virtual {v4}, Lcom/superwall/sdk/Superwall;->getDependencyContainer$superwall_release()Lcom/superwall/sdk/dependencies/DependencyContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getConfigManager()Lcom/superwall/sdk/config/ConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/config/ConfigManager;->getConfig()Lcom/superwall/sdk/models/config/Config;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/superwall/sdk/models/config/Config;->getTriggers()Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_5

    goto/16 :goto_6

    .line 1027
    :cond_5
    invoke-virtual {v4}, Lcom/superwall/sdk/Superwall;->getDependencyContainer$superwall_release()Lcom/superwall/sdk/dependencies/DependencyContainer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getStorage()Lcom/superwall/sdk/storage/LocalStorage;

    move-result-object v6

    invoke-virtual {v6}, Lcom/superwall/sdk/storage/LocalStorage;->getConfirmedAssignments()Ljava/util/Map;

    move-result-object v6

    .line 1665
    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v7, Ljava/util/Collection;

    .line 1666
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 1031
    new-instance v9, Lcom/superwall/sdk/models/assignment/ConfirmedAssignment;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/superwall/sdk/models/triggers/Experiment$Variant;

    invoke-direct {v9, v10, v8}, Lcom/superwall/sdk/models/assignment/ConfirmedAssignment;-><init>(Ljava/lang/String;Lcom/superwall/sdk/models/triggers/Experiment$Variant;)V

    .line 1667
    invoke-interface {v7, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1668
    :cond_6
    check-cast v7, Ljava/util/List;

    .line 1665
    check-cast v7, Ljava/lang/Iterable;

    .line 1032
    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->toMutableSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v6

    .line 1034
    check-cast v0, Ljava/lang/Iterable;

    .line 1669
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v7, v4

    move-object v4, v0

    :cond_7
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/superwall/sdk/models/triggers/Trigger;

    .line 1036
    new-instance v8, Lcom/superwall/sdk/models/events/EventData;

    invoke-virtual {v0}, Lcom/superwall/sdk/models/triggers/Trigger;->getEventName()Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v11

    new-instance v12, Ljava/util/Date;

    invoke-direct {v12}, Ljava/util/Date;-><init>()V

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v8 .. v14}, Lcom/superwall/sdk/models/events/EventData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Date;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1038
    invoke-virtual {v7}, Lcom/superwall/sdk/Superwall;->getDependencyContainer$superwall_release()Lcom/superwall/sdk/dependencies/DependencyContainer;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/superwall/sdk/dependencies/RequestFactory;

    .line 1039
    new-instance v0, Lcom/superwall/sdk/paywall/presentation/internal/request/PresentationInfo$ExplicitTrigger;

    invoke-direct {v0, v8}, Lcom/superwall/sdk/paywall/presentation/internal/request/PresentationInfo$ExplicitTrigger;-><init>(Lcom/superwall/sdk/models/events/EventData;)V

    move-object v10, v0

    check-cast v10, Lcom/superwall/sdk/paywall/presentation/internal/request/PresentationInfo;

    .line 1042
    sget-object v0, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType$ConfirmAllAssignments;->INSTANCE:Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType$ConfirmAllAssignments;

    move-object/from16 v16, v0

    check-cast v16, Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType;

    const/16 v17, 0x1c

    const/16 v18, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 1038
    invoke-static/range {v9 .. v18}, Lcom/superwall/sdk/dependencies/RequestFactory$DefaultImpls;->makePresentationRequest$default(Lcom/superwall/sdk/dependencies/RequestFactory;Lcom/superwall/sdk/paywall/presentation/internal/request/PresentationInfo;Lcom/superwall/sdk/paywall/presentation/internal/request/PaywallOverrides;Landroid/app/Activity;Ljava/lang/Boolean;Lkotlinx/coroutines/flow/StateFlow;ZLcom/superwall/sdk/paywall/presentation/internal/PresentationRequestType;ILjava/lang/Object;)Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;

    move-result-object v0

    .line 1044
    invoke-virtual {v7}, Lcom/superwall/sdk/Superwall;->getDependencyContainer$superwall_release()Lcom/superwall/sdk/dependencies/DependencyContainer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getGetPaywallComponentsFactory$superwall_release()Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsFactory;

    move-result-object v8

    iput-object v7, v2, Lcom/superwall/sdk/Superwall$confirmAllAssignments$1;->L$0:Ljava/lang/Object;

    iput-object v6, v2, Lcom/superwall/sdk/Superwall$confirmAllAssignments$1;->L$1:Ljava/lang/Object;

    iput-object v4, v2, Lcom/superwall/sdk/Superwall$confirmAllAssignments$1;->L$2:Ljava/lang/Object;

    iput v5, v2, Lcom/superwall/sdk/Superwall$confirmAllAssignments$1;->label:I

    invoke-static {v8, v0, v2}, Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsKt;->confirmAssignment(Lcom/superwall/sdk/paywall/presentation/internal/GetPaywallComponentsFactory;Lcom/superwall/sdk/paywall/presentation/internal/PresentationRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_8

    :goto_4
    return-object v3

    .line 1020
    :cond_8
    :goto_5
    check-cast v0, Lcom/superwall/sdk/misc/Either;

    .line 1671
    instance-of v8, v0, Lcom/superwall/sdk/misc/Either$Success;

    if-eqz v8, :cond_9

    check-cast v0, Lcom/superwall/sdk/misc/Either$Success;

    invoke-virtual {v0}, Lcom/superwall/sdk/misc/Either$Success;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v2

    check-cast v8, Lkotlin/coroutines/Continuation;

    check-cast v0, Lcom/superwall/sdk/models/assignment/ConfirmedAssignment;

    if-eqz v0, :cond_7

    .line 1047
    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1672
    :cond_9
    instance-of v8, v0, Lcom/superwall/sdk/misc/Either$Failure;

    if-eqz v8, :cond_a

    check-cast v0, Lcom/superwall/sdk/misc/Either$Failure;

    invoke-virtual {v0}, Lcom/superwall/sdk/misc/Either$Failure;->getError()Ljava/lang/Throwable;

    move-result-object v13

    move-object v0, v2

    check-cast v0, Lkotlin/coroutines/Continuation;

    .line 1051
    sget-object v8, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 1052
    sget-object v9, Lcom/superwall/sdk/logger/LogLevel;->error:Lcom/superwall/sdk/logger/LogLevel;

    .line 1053
    sget-object v10, Lcom/superwall/sdk/logger/LogScope;->superwallCore:Lcom/superwall/sdk/logger/LogScope;

    .line 1054
    const-string v11, "Failed to confirm assignment"

    const/16 v14, 0x8

    const/4 v15, 0x0

    const/4 v12, 0x0

    .line 1051
    invoke-static/range {v8 .. v15}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    goto/16 :goto_3

    .line 1670
    :cond_a
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 1059
    :cond_b
    check-cast v6, Ljava/lang/Iterable;

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    goto :goto_7

    .line 1026
    :cond_c
    :goto_6
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 1664
    :goto_7
    new-instance v2, Lcom/superwall/sdk/misc/Either$Success;

    invoke-direct {v2, v0}, Lcom/superwall/sdk/misc/Either$Success;-><init>(Ljava/lang/Object;)V

    check-cast v2, Lcom/superwall/sdk/misc/Either;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_8

    :catchall_0
    move-exception v0

    .line 1677
    invoke-static {v0}, Lcom/superwall/sdk/utilities/ErrorTrackingKt;->access$shouldLog(Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1678
    sget-object v2, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {v2}, Lcom/superwall/sdk/Superwall$Companion;->getInitialized()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1679
    invoke-virtual {v2}, Lcom/superwall/sdk/Superwall$Companion;->getInstance()Lcom/superwall/sdk/Superwall;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/superwall/sdk/utilities/ErrorTrackingKt;->trackError(Lcom/superwall/sdk/Superwall;Ljava/lang/Throwable;)V

    .line 1682
    :cond_d
    new-instance v2, Lcom/superwall/sdk/misc/Either$Failure;

    invoke-direct {v2, v0}, Lcom/superwall/sdk/misc/Either$Failure;-><init>(Ljava/lang/Throwable;)V

    check-cast v2, Lcom/superwall/sdk/misc/Either;

    .line 1685
    :goto_8
    instance-of v0, v2, Lcom/superwall/sdk/misc/Either$Success;

    if-eqz v0, :cond_e

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    check-cast v2, Lcom/superwall/sdk/misc/Either$Success;

    invoke-virtual {v2}, Lcom/superwall/sdk/misc/Either$Success;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_9

    .line 1686
    :cond_e
    instance-of v0, v2, Lcom/superwall/sdk/misc/Either$Failure;

    if-eqz v0, :cond_f

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    check-cast v2, Lcom/superwall/sdk/misc/Either$Failure;

    invoke-virtual {v2}, Lcom/superwall/sdk/misc/Either$Failure;->getError()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_9
    return-object v0

    .line 1684
    :cond_f
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method

.method public final consume(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/Result<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "purchaseToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onConsumed"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1233
    invoke-virtual {p0}, Lcom/superwall/sdk/Superwall;->getIoScope$superwall_release()Lcom/superwall/sdk/misc/IOScope;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/superwall/sdk/Superwall$consume$3;

    const/4 v2, 0x0

    invoke-direct {v0, p2, p0, p1, v2}, Lcom/superwall/sdk/Superwall$consume$3;-><init>(Lkotlin/jvm/functions/Function1;Lcom/superwall/sdk/Superwall;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final consume-gIAlu-s(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/superwall/sdk/Superwall$consume$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/superwall/sdk/Superwall$consume$1;

    iget v1, v0, Lcom/superwall/sdk/Superwall$consume$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/superwall/sdk/Superwall$consume$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/superwall/sdk/Superwall$consume$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/superwall/sdk/Superwall$consume$1;

    invoke-direct {v0, p0, p2}, Lcom/superwall/sdk/Superwall$consume$1;-><init>(Lcom/superwall/sdk/Superwall;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/superwall/sdk/Superwall$consume$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1211
    iget v2, v0, Lcom/superwall/sdk/Superwall$consume$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/superwall/sdk/Superwall$consume$1;->L$0:Ljava/lang/Object;

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lcom/superwall/sdk/Superwall$consume$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/superwall/sdk/Superwall;

    :try_start_1
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/Result;

    invoke-virtual {p2}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v5, p2

    move-object p2, p1

    move-object p1, v5

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1213
    :try_start_2
    invoke-virtual {p0}, Lcom/superwall/sdk/Superwall;->getDependencyContainer$superwall_release()Lcom/superwall/sdk/dependencies/DependencyContainer;

    move-result-object p2

    invoke-virtual {p2}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getStoreManager()Lcom/superwall/sdk/store/StoreManager;

    move-result-object p2

    iput-object p0, v0, Lcom/superwall/sdk/Superwall$consume$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Lcom/superwall/sdk/Superwall$consume$1;->label:I

    invoke-virtual {p2, p1, v0}, Lcom/superwall/sdk/store/StoreManager;->consume-gIAlu-s(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    goto :goto_2

    :cond_4
    move-object p2, p0

    :goto_1
    invoke-static {p1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    .line 1214
    invoke-virtual {p2}, Lcom/superwall/sdk/Superwall;->getDependencyContainer$superwall_release()Lcom/superwall/sdk/dependencies/DependencyContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/superwall/sdk/dependencies/DependencyContainer;->makeHasInternalPurchaseController()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1215
    invoke-virtual {p2}, Lcom/superwall/sdk/Superwall;->getDependencyContainer$superwall_release()Lcom/superwall/sdk/dependencies/DependencyContainer;

    move-result-object p2

    invoke-virtual {p2}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getStoreManager()Lcom/superwall/sdk/store/StoreManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/superwall/sdk/store/StoreManager;->getPurchaseController()Lcom/superwall/sdk/store/InternalPurchaseController;

    move-result-object p2

    iput-object p1, v0, Lcom/superwall/sdk/Superwall$consume$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/superwall/sdk/Superwall$consume$1;->label:I

    invoke-virtual {p2, v0}, Lcom/superwall/sdk/store/InternalPurchaseController;->restorePurchases(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    :goto_2
    return-object v1

    .line 1217
    :cond_5
    :goto_3
    invoke-static {p1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object p1

    .line 1745
    new-instance p2, Lcom/superwall/sdk/misc/Either$Success;

    invoke-direct {p2, p1}, Lcom/superwall/sdk/misc/Either$Success;-><init>(Ljava/lang/Object;)V

    check-cast p2, Lcom/superwall/sdk/misc/Either;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p1

    .line 1747
    invoke-static {p1}, Lcom/superwall/sdk/utilities/ErrorTrackingKt;->access$shouldLog(Ljava/lang/Throwable;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 1748
    sget-object p2, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {p2}, Lcom/superwall/sdk/Superwall$Companion;->getInitialized()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1749
    invoke-virtual {p2}, Lcom/superwall/sdk/Superwall$Companion;->getInstance()Lcom/superwall/sdk/Superwall;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/superwall/sdk/utilities/ErrorTrackingKt;->trackError(Lcom/superwall/sdk/Superwall;Ljava/lang/Throwable;)V

    .line 1752
    :cond_6
    new-instance p2, Lcom/superwall/sdk/misc/Either$Failure;

    invoke-direct {p2, p1}, Lcom/superwall/sdk/misc/Either$Failure;-><init>(Ljava/lang/Throwable;)V

    check-cast p2, Lcom/superwall/sdk/misc/Either;

    .line 1755
    :goto_4
    instance-of p1, p2, Lcom/superwall/sdk/misc/Either$Success;

    if-eqz p1, :cond_7

    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    check-cast p2, Lcom/superwall/sdk/misc/Either$Success;

    invoke-virtual {p2}, Lcom/superwall/sdk/misc/Either$Success;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_5

    .line 1756
    :cond_7
    instance-of p1, p2, Lcom/superwall/sdk/misc/Either$Failure;

    if-eqz p1, :cond_e

    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    check-cast p2, Lcom/superwall/sdk/misc/Either$Failure;

    invoke-virtual {p2}, Lcom/superwall/sdk/misc/Either$Failure;->getError()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 1759
    :goto_5
    invoke-static {p1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result p2

    const-string v0, "Unknown error"

    if-eqz p2, :cond_a

    .line 1760
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-nez p2, :cond_8

    .line 1761
    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    goto :goto_6

    :cond_8
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_9

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    :cond_9
    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_6

    .line 1763
    :cond_a
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c

    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_b

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    :cond_b
    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_6

    .line 1764
    :cond_c
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_d

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    :cond_d
    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_6
    return-object p1

    .line 1754
    :cond_e
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method

.method public final deviceAttributes(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 387
    invoke-virtual {p0}, Lcom/superwall/sdk/Superwall;->getDependencyContainer$superwall_release()Lcom/superwall/sdk/dependencies/DependencyContainer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/superwall/sdk/dependencies/DependencyContainer;->makeSessionDeviceAttributes(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final emitSuperwallEvent$superwall_release(Lcom/superwall/sdk/analytics/superwall/SuperwallEventInfo;)V
    .locals 7

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 263
    invoke-virtual {p0}, Lcom/superwall/sdk/Superwall;->getIoScope$superwall_release()Lcom/superwall/sdk/misc/IOScope;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/superwall/sdk/Superwall$emitSuperwallEvent$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2}, Lcom/superwall/sdk/Superwall$emitSuperwallEvent$1;-><init>(Lcom/superwall/sdk/Superwall;Lcom/superwall/sdk/analytics/superwall/SuperwallEventInfo;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public eventDidOccur(Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent;Lcom/superwall/sdk/paywall/view/PaywallView;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent;",
            "Lcom/superwall/sdk/paywall/view/PaywallView;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1362
    invoke-virtual {p0}, Lcom/superwall/sdk/Superwall;->getMainScope$superwall_release()Lcom/superwall/sdk/misc/MainScope;

    move-result-object p3

    check-cast p3, Lcom/superwall/sdk/misc/SuperwallScope;

    new-instance v0, Lcom/superwall/sdk/Superwall$eventDidOccur$2;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p0, v1}, Lcom/superwall/sdk/Superwall$eventDidOccur$2;-><init>(Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallWebEvent;Lcom/superwall/sdk/paywall/view/PaywallView;Lcom/superwall/sdk/Superwall;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {p3, v0}, Lcom/superwall/sdk/misc/ScopesKt;->launchWithTracking(Lcom/superwall/sdk/misc/SuperwallScope;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    .line 1537
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final getAssignments-d1pmJ48()Ljava/lang/Object;
    .locals 5

    .line 1005
    :try_start_0
    invoke-virtual {p0}, Lcom/superwall/sdk/Superwall;->getDependencyContainer$superwall_release()Lcom/superwall/sdk/dependencies/DependencyContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getStorage()Lcom/superwall/sdk/storage/LocalStorage;

    move-result-object v0

    .line 1006
    invoke-virtual {v0}, Lcom/superwall/sdk/storage/LocalStorage;->getConfirmedAssignments()Ljava/util/Map;

    move-result-object v0

    .line 1647
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 1648
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1007
    new-instance v3, Lcom/superwall/sdk/models/assignment/ConfirmedAssignment;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/superwall/sdk/models/triggers/Experiment$Variant;

    invoke-direct {v3, v4, v2}, Lcom/superwall/sdk/models/assignment/ConfirmedAssignment;-><init>(Ljava/lang/String;Lcom/superwall/sdk/models/triggers/Experiment$Variant;)V

    .line 1649
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1650
    :cond_0
    check-cast v1, Ljava/util/List;

    .line 1646
    new-instance v0, Lcom/superwall/sdk/misc/Either$Success;

    invoke-direct {v0, v1}, Lcom/superwall/sdk/misc/Either$Success;-><init>(Ljava/lang/Object;)V

    check-cast v0, Lcom/superwall/sdk/misc/Either;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 1652
    invoke-static {v0}, Lcom/superwall/sdk/utilities/ErrorTrackingKt;->access$shouldLog(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1653
    sget-object v1, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {v1}, Lcom/superwall/sdk/Superwall$Companion;->getInitialized()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1654
    invoke-virtual {v1}, Lcom/superwall/sdk/Superwall$Companion;->getInstance()Lcom/superwall/sdk/Superwall;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/superwall/sdk/utilities/ErrorTrackingKt;->trackError(Lcom/superwall/sdk/Superwall;Ljava/lang/Throwable;)V

    .line 1657
    :cond_1
    new-instance v1, Lcom/superwall/sdk/misc/Either$Failure;

    invoke-direct {v1, v0}, Lcom/superwall/sdk/misc/Either$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v1

    check-cast v0, Lcom/superwall/sdk/misc/Either;

    .line 1660
    :goto_1
    instance-of v1, v0, Lcom/superwall/sdk/misc/Either$Success;

    if-eqz v1, :cond_2

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    check-cast v0, Lcom/superwall/sdk/misc/Either$Success;

    invoke-virtual {v0}, Lcom/superwall/sdk/misc/Either$Success;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_2

    .line 1661
    :cond_2
    instance-of v1, v0, Lcom/superwall/sdk/misc/Either$Failure;

    if-eqz v1, :cond_3

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    check-cast v0, Lcom/superwall/sdk/misc/Either$Failure;

    invoke-virtual {v0}, Lcom/superwall/sdk/misc/Either$Failure;->getError()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_2
    return-object v0

    .line 1659
    :cond_3
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method

.method public final getConfigurationState()Lcom/superwall/sdk/config/models/ConfigurationStatus;
    .locals 2

    .line 463
    invoke-virtual {p0}, Lcom/superwall/sdk/Superwall;->getDependencyContainer$superwall_release()Lcom/superwall/sdk/dependencies/DependencyContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getConfigManager()Lcom/superwall/sdk/config/ConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/config/ConfigManager;->getConfigState$superwall_release()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/superwall/sdk/config/models/ConfigState;

    .line 465
    instance-of v1, v0, Lcom/superwall/sdk/config/models/ConfigState$Retrieved;

    if-eqz v1, :cond_0

    sget-object v0, Lcom/superwall/sdk/config/models/ConfigurationStatus$Configured;->INSTANCE:Lcom/superwall/sdk/config/models/ConfigurationStatus$Configured;

    check-cast v0, Lcom/superwall/sdk/config/models/ConfigurationStatus;

    return-object v0

    .line 466
    :cond_0
    instance-of v0, v0, Lcom/superwall/sdk/config/models/ConfigState$Failed;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/superwall/sdk/config/models/ConfigurationStatus$Failed;->INSTANCE:Lcom/superwall/sdk/config/models/ConfigurationStatus$Failed;

    check-cast v0, Lcom/superwall/sdk/config/models/ConfigurationStatus;

    return-object v0

    .line 467
    :cond_1
    sget-object v0, Lcom/superwall/sdk/config/models/ConfigurationStatus$Pending;->INSTANCE:Lcom/superwall/sdk/config/models/ConfigurationStatus$Pending;

    check-cast v0, Lcom/superwall/sdk/config/models/ConfigurationStatus;

    return-object v0
.end method

.method public final getConfigurationStateListener()Lkotlinx/coroutines/flow/Flow;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/superwall/sdk/config/models/ConfigurationStatus;",
            ">;"
        }
    .end annotation

    .line 473
    invoke-virtual {p0}, Lcom/superwall/sdk/Superwall;->getDependencyContainer$superwall_release()Lcom/superwall/sdk/dependencies/DependencyContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getConfigManager()Lcom/superwall/sdk/config/ConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/config/ConfigManager;->getConfigState$superwall_release()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/flow/Flow;

    .line 1572
    new-instance v1, Lcom/superwall/sdk/Superwall$special$$inlined$map$1;

    invoke-direct {v1, v0}, Lcom/superwall/sdk/Superwall$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    check-cast v1, Lkotlinx/coroutines/flow/Flow;

    return-object v1
.end method

.method public final getContext$superwall_release()Landroid/content/Context;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/superwall/sdk/Superwall;->context:Landroid/content/Context;

    return-object v0
.end method

.method public final getCustomerInfo()Lcom/superwall/sdk/models/customer/CustomerInfo;
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/superwall/sdk/Superwall;->_customerInfo:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/superwall/sdk/models/customer/CustomerInfo;

    return-object v0
.end method

.method public final getCustomerInfo()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/superwall/sdk/models/customer/CustomerInfo;",
            ">;"
        }
    .end annotation

    .line 240
    iget-object v0, p0, Lcom/superwall/sdk/Superwall;->_customerInfo:Lkotlinx/coroutines/flow/MutableStateFlow;

    check-cast v0, Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final getDelegate()Lcom/superwall/sdk/delegate/SuperwallDelegate;
    .locals 1

    .line 185
    invoke-virtual {p0}, Lcom/superwall/sdk/Superwall;->getDependencyContainer$superwall_release()Lcom/superwall/sdk/dependencies/DependencyContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getDelegateAdapter()Lcom/superwall/sdk/delegate/SuperwallDelegateAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/delegate/SuperwallDelegateAdapter;->getKotlinDelegate()Lcom/superwall/sdk/delegate/SuperwallDelegate;

    move-result-object v0

    return-object v0
.end method

.method public final getDelegate()Lcom/superwall/sdk/delegate/SuperwallDelegateJava;
    .locals 1

    .line 272
    invoke-virtual {p0}, Lcom/superwall/sdk/Superwall;->getDependencyContainer$superwall_release()Lcom/superwall/sdk/dependencies/DependencyContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getDelegateAdapter()Lcom/superwall/sdk/delegate/SuperwallDelegateAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/delegate/SuperwallDelegateAdapter;->getJavaDelegate()Lcom/superwall/sdk/delegate/SuperwallDelegateJava;

    move-result-object v0

    return-object v0
.end method

.method public final getDependencyContainer$superwall_release()Lcom/superwall/sdk/dependencies/DependencyContainer;
    .locals 1

    .line 642
    iget-object v0, p0, Lcom/superwall/sdk/Superwall;->_dependencyContainer:Lcom/superwall/sdk/dependencies/DependencyContainer;

    if-nez v0, :cond_0

    const-string v0, "_dependencyContainer"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public final getEntitlements()Lcom/superwall/sdk/store/Entitlements;
    .locals 1

    .line 443
    iget-object v0, p0, Lcom/superwall/sdk/Superwall;->entitlements$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/superwall/sdk/store/Entitlements;

    return-object v0
.end method

.method public final getExternalAccountId()Ljava/lang/String;
    .locals 1

    .line 422
    invoke-virtual {p0}, Lcom/superwall/sdk/Superwall;->getDependencyContainer$superwall_release()Lcom/superwall/sdk/dependencies/DependencyContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getIdentityManager()Lcom/superwall/sdk/identity/IdentityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/identity/IdentityManager;->getExternalAccountId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getIntegrationAttributes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 394
    invoke-virtual {p0}, Lcom/superwall/sdk/Superwall;->getDependencyContainer$superwall_release()Lcom/superwall/sdk/dependencies/DependencyContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getAttributionManager$superwall_release()Lcom/superwall/sdk/analytics/AttributionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/analytics/AttributionManager;->getIntegrationAttributes()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getIoScope$superwall_release()Lcom/superwall/sdk/misc/IOScope;
    .locals 1

    .line 118
    invoke-virtual {p0}, Lcom/superwall/sdk/Superwall;->getDependencyContainer$superwall_release()Lcom/superwall/sdk/dependencies/DependencyContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->ioScope()Lcom/superwall/sdk/misc/IOScope;

    move-result-object v0

    return-object v0
.end method

.method public final getLatestPaywallInfo()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;
    .locals 1

    .line 439
    invoke-virtual {p0}, Lcom/superwall/sdk/Superwall;->getDependencyContainer$superwall_release()Lcom/superwall/sdk/dependencies/DependencyContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getPaywallManager()Lcom/superwall/sdk/paywall/manager/PaywallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/paywall/manager/PaywallManager;->getCurrentView()Lcom/superwall/sdk/paywall/view/PaywallView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/superwall/sdk/paywall/view/PaywallView;->getInfo()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 440
    iget-object v0, p0, Lcom/superwall/sdk/Superwall;->presentationItems:Lcom/superwall/sdk/paywall/presentation/PresentationItems;

    invoke-virtual {v0}, Lcom/superwall/sdk/paywall/presentation/PresentationItems;->getPaywallInfo()Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public final getLocalResources()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/superwall/sdk/paywall/view/webview/PaywallResource;",
            ">;"
        }
    .end annotation

    .line 231
    iget-object v0, p0, Lcom/superwall/sdk/Superwall;->localResources:Ljava/util/Map;

    return-object v0
.end method

.method public final getLocaleIdentifier()Ljava/lang/String;
    .locals 1

    .line 142
    invoke-virtual {p0}, Lcom/superwall/sdk/Superwall;->getDependencyContainer$superwall_release()Lcom/superwall/sdk/dependencies/DependencyContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getConfigManager()Lcom/superwall/sdk/config/ConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/config/ConfigManager;->getOptions()Lcom/superwall/sdk/config/options/SuperwallOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/config/options/SuperwallOptions;->getLocaleIdentifier()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getLogLevel()Lcom/superwall/sdk/logger/LogLevel;
    .locals 1

    .line 167
    invoke-virtual {p0}, Lcom/superwall/sdk/Superwall;->getOptions()Lcom/superwall/sdk/config/options/SuperwallOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/config/options/SuperwallOptions;->getLogging()Lcom/superwall/sdk/config/options/SuperwallOptions$Logging;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/config/options/SuperwallOptions$Logging;->getLevel()Lcom/superwall/sdk/logger/LogLevel;

    move-result-object v0

    return-object v0
.end method

.method public final getMainScope$superwall_release()Lcom/superwall/sdk/misc/MainScope;
    .locals 1

    .line 120
    invoke-virtual {p0}, Lcom/superwall/sdk/Superwall;->getDependencyContainer$superwall_release()Lcom/superwall/sdk/dependencies/DependencyContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->mainScope()Lcom/superwall/sdk/misc/MainScope;

    move-result-object v0

    return-object v0
.end method

.method public final getOptions()Lcom/superwall/sdk/config/options/SuperwallOptions;
    .locals 1

    .line 161
    invoke-virtual {p0}, Lcom/superwall/sdk/Superwall;->getDependencyContainer$superwall_release()Lcom/superwall/sdk/dependencies/DependencyContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getConfigManager()Lcom/superwall/sdk/config/ConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/config/ConfigManager;->getOptions()Lcom/superwall/sdk/config/options/SuperwallOptions;

    move-result-object v0

    return-object v0
.end method

.method public final getOverrideProductsByName()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 209
    invoke-virtual {p0}, Lcom/superwall/sdk/Superwall;->getOptions()Lcom/superwall/sdk/config/options/SuperwallOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/config/options/SuperwallOptions;->getPaywalls()Lcom/superwall/sdk/config/options/PaywallOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/config/options/PaywallOptions;->getOverrideProductsByName()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getPaywallView()Lcom/superwall/sdk/paywall/view/PaywallView;
    .locals 1

    .line 154
    invoke-virtual {p0}, Lcom/superwall/sdk/Superwall;->getDependencyContainer$superwall_release()Lcom/superwall/sdk/dependencies/DependencyContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getPaywallManager()Lcom/superwall/sdk/paywall/manager/PaywallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/paywall/manager/PaywallManager;->getCurrentView()Lcom/superwall/sdk/paywall/view/PaywallView;

    move-result-object v0

    return-object v0
.end method

.method public final getPlacements()Lkotlinx/coroutines/flow/SharedFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/SharedFlow<",
            "Lcom/superwall/sdk/analytics/superwall/SuperwallEventInfo;",
            ">;"
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/superwall/sdk/Superwall;->placements:Lkotlinx/coroutines/flow/SharedFlow;

    return-object v0
.end method

.method public final getPresentationItems$superwall_release()Lcom/superwall/sdk/paywall/presentation/PresentationItems;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/superwall/sdk/Superwall;->presentationItems:Lcom/superwall/sdk/paywall/presentation/PresentationItems;

    return-object v0
.end method

.method public final getProducts-gIAlu-s([Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "+",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/superwall/sdk/store/abstractions/product/StoreProduct;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/superwall/sdk/Superwall$getProducts$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/superwall/sdk/Superwall$getProducts$1;

    iget v1, v0, Lcom/superwall/sdk/Superwall$getProducts$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/superwall/sdk/Superwall$getProducts$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/superwall/sdk/Superwall$getProducts$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/superwall/sdk/Superwall$getProducts$1;

    invoke-direct {v0, p0, p2}, Lcom/superwall/sdk/Superwall$getProducts$1;-><init>(Lcom/superwall/sdk/Superwall;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v4, v0

    iget-object p2, v4, Lcom/superwall/sdk/Superwall$getProducts$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1156
    iget v1, v4, Lcom/superwall/sdk/Superwall$getProducts$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1158
    :try_start_1
    invoke-virtual {p0}, Lcom/superwall/sdk/Superwall;->getDependencyContainer$superwall_release()Lcom/superwall/sdk/dependencies/DependencyContainer;

    move-result-object p2

    invoke-virtual {p2}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getStoreManager()Lcom/superwall/sdk/store/StoreManager;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Lcom/superwall/sdk/store/StoreKit;

    invoke-static {p1}, Lkotlin/collections/ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput v2, v4, Lcom/superwall/sdk/Superwall$getProducts$1;->label:I

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/superwall/sdk/store/StoreKit$DefaultImpls;->getProductsWithoutPaywall$default(Lcom/superwall/sdk/store/StoreKit;Ljava/util/List;Ljava/util/Map;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v0, :cond_3

    return-object v0

    :cond_3
    :goto_1
    check-cast p2, Ljava/util/Map;

    .line 1731
    new-instance p1, Lcom/superwall/sdk/misc/Either$Success;

    invoke-direct {p1, p2}, Lcom/superwall/sdk/misc/Either$Success;-><init>(Ljava/lang/Object;)V

    check-cast p1, Lcom/superwall/sdk/misc/Either;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 1733
    invoke-static {p1}, Lcom/superwall/sdk/utilities/ErrorTrackingKt;->access$shouldLog(Ljava/lang/Throwable;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 1734
    sget-object p2, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {p2}, Lcom/superwall/sdk/Superwall$Companion;->getInitialized()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1735
    invoke-virtual {p2}, Lcom/superwall/sdk/Superwall$Companion;->getInstance()Lcom/superwall/sdk/Superwall;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/superwall/sdk/utilities/ErrorTrackingKt;->trackError(Lcom/superwall/sdk/Superwall;Ljava/lang/Throwable;)V

    .line 1738
    :cond_4
    new-instance p2, Lcom/superwall/sdk/misc/Either$Failure;

    invoke-direct {p2, p1}, Lcom/superwall/sdk/misc/Either$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p1, p2

    check-cast p1, Lcom/superwall/sdk/misc/Either;

    .line 1741
    :goto_2
    instance-of p2, p1, Lcom/superwall/sdk/misc/Either$Success;

    if-eqz p2, :cond_5

    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    check-cast p1, Lcom/superwall/sdk/misc/Either$Success;

    invoke-virtual {p1}, Lcom/superwall/sdk/misc/Either$Success;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_3

    .line 1742
    :cond_5
    instance-of p2, p1, Lcom/superwall/sdk/misc/Either$Failure;

    if-eqz p2, :cond_6

    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    check-cast p1, Lcom/superwall/sdk/misc/Either$Failure;

    invoke-virtual {p1}, Lcom/superwall/sdk/misc/Either$Failure;->getError()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_3
    return-object p1

    .line 1740
    :cond_6
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method

.method public final getSerialTaskManager$superwall_release()Lcom/superwall/sdk/misc/SerialTaskManager;
    .locals 1

    .line 646
    iget-object v0, p0, Lcom/superwall/sdk/Superwall;->serialTaskManager:Lcom/superwall/sdk/misc/SerialTaskManager;

    return-object v0
.end method

.method public final getSubscriptionStatus()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;",
            ">;"
        }
    .end annotation

    .line 447
    iget-object v0, p0, Lcom/superwall/sdk/Superwall;->subscriptionStatus$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final getUserAttributes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 381
    invoke-virtual {p0}, Lcom/superwall/sdk/Superwall;->getDependencyContainer$superwall_release()Lcom/superwall/sdk/dependencies/DependencyContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getIdentityManager()Lcom/superwall/sdk/identity/IdentityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/identity/IdentityManager;->getUserAttributes()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getUserId()Ljava/lang/String;
    .locals 1

    .line 414
    invoke-virtual {p0}, Lcom/superwall/sdk/Superwall;->getDependencyContainer$superwall_release()Lcom/superwall/sdk/dependencies/DependencyContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getIdentityManager()Lcom/superwall/sdk/identity/IdentityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/identity/IdentityManager;->getUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getVendorId-6xTLGo0$superwall_release()Ljava/lang/String;
    .locals 1

    .line 452
    invoke-virtual {p0}, Lcom/superwall/sdk/Superwall;->getDependencyContainer$superwall_release()Lcom/superwall/sdk/dependencies/DependencyContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getDeviceHelper()Lcom/superwall/sdk/network/device/DeviceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/network/device/DeviceHelper;->getVendorId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/superwall/sdk/models/internal/VendorId;->constructor-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final get_customerInfo$superwall_release()Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Lcom/superwall/sdk/models/customer/CustomerInfo;",
            ">;"
        }
    .end annotation

    .line 233
    iget-object v0, p0, Lcom/superwall/sdk/Superwall;->_customerInfo:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method

.method public final handleDeepLink-IoAF18A(Landroid/net/Uri;)Ljava/lang/Object;
    .locals 1

    const-string/jumbo v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 959
    sget-object v0, Lcom/superwall/sdk/deeplinks/DeepLinkRouter;->Companion:Lcom/superwall/sdk/deeplinks/DeepLinkRouter$Companion;

    invoke-virtual {v0, p1}, Lcom/superwall/sdk/deeplinks/DeepLinkRouter$Companion;->handleDeepLink-IoAF18A(Landroid/net/Uri;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final internallySetSubscriptionStatus$superwall_release(Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;)V
    .locals 2

    const-string/jumbo v0, "toStatus"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 347
    invoke-virtual {p0}, Lcom/superwall/sdk/Superwall;->getDependencyContainer$superwall_release()Lcom/superwall/sdk/dependencies/DependencyContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->makeHasExternalPurchaseController()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 350
    :cond_0
    invoke-virtual {p0}, Lcom/superwall/sdk/Superwall;->getDependencyContainer$superwall_release()Lcom/superwall/sdk/dependencies/DependencyContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getTestMode$superwall_release()Lcom/superwall/sdk/store/testmode/TestMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/store/testmode/TestMode;->isTestMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    .line 353
    :cond_1
    invoke-virtual {p0}, Lcom/superwall/sdk/Superwall;->getDependencyContainer$superwall_release()Lcom/superwall/sdk/dependencies/DependencyContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getEntitlements()Lcom/superwall/sdk/store/Entitlements;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/store/Entitlements;->getWeb()Ljava/util/Set;

    move-result-object v0

    .line 355
    instance-of v1, p1, Lcom/superwall/sdk/models/entitlements/SubscriptionStatus$Active;

    if-eqz v1, :cond_3

    .line 356
    check-cast p1, Lcom/superwall/sdk/models/entitlements/SubscriptionStatus$Active;

    invoke-virtual {p1}, Lcom/superwall/sdk/models/entitlements/SubscriptionStatus$Active;->getEntitlements()Ljava/util/Set;

    move-result-object p1

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {p1, v0}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    .line 357
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 358
    invoke-virtual {p0}, Lcom/superwall/sdk/Superwall;->getEntitlements()Lcom/superwall/sdk/store/Entitlements;

    move-result-object p1

    sget-object v0, Lcom/superwall/sdk/models/entitlements/SubscriptionStatus$Inactive;->INSTANCE:Lcom/superwall/sdk/models/entitlements/SubscriptionStatus$Inactive;

    check-cast v0, Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;

    invoke-virtual {p1, v0}, Lcom/superwall/sdk/store/Entitlements;->setSubscriptionStatus(Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;)V

    return-void

    .line 360
    :cond_2
    invoke-virtual {p0}, Lcom/superwall/sdk/Superwall;->getEntitlements()Lcom/superwall/sdk/store/Entitlements;

    move-result-object v0

    new-instance v1, Lcom/superwall/sdk/models/entitlements/SubscriptionStatus$Active;

    invoke-direct {v1, p1}, Lcom/superwall/sdk/models/entitlements/SubscriptionStatus$Active;-><init>(Ljava/util/Set;)V

    check-cast v1, Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;

    invoke-virtual {v0, v1}, Lcom/superwall/sdk/store/Entitlements;->setSubscriptionStatus(Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;)V

    return-void

    .line 364
    :cond_3
    sget-object v1, Lcom/superwall/sdk/models/entitlements/SubscriptionStatus$Inactive;->INSTANCE:Lcom/superwall/sdk/models/entitlements/SubscriptionStatus$Inactive;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 365
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 366
    invoke-virtual {p0}, Lcom/superwall/sdk/Superwall;->getEntitlements()Lcom/superwall/sdk/store/Entitlements;

    move-result-object p1

    sget-object v0, Lcom/superwall/sdk/models/entitlements/SubscriptionStatus$Inactive;->INSTANCE:Lcom/superwall/sdk/models/entitlements/SubscriptionStatus$Inactive;

    check-cast v0, Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;

    invoke-virtual {p1, v0}, Lcom/superwall/sdk/store/Entitlements;->setSubscriptionStatus(Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;)V

    return-void

    .line 368
    :cond_4
    invoke-virtual {p0}, Lcom/superwall/sdk/Superwall;->getEntitlements()Lcom/superwall/sdk/store/Entitlements;

    move-result-object p1

    new-instance v1, Lcom/superwall/sdk/models/entitlements/SubscriptionStatus$Active;

    invoke-direct {v1, v0}, Lcom/superwall/sdk/models/entitlements/SubscriptionStatus$Active;-><init>(Ljava/util/Set;)V

    check-cast v1, Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;

    invoke-virtual {p1, v1}, Lcom/superwall/sdk/store/Entitlements;->setSubscriptionStatus(Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;)V

    return-void

    .line 371
    :cond_5
    sget-object v0, Lcom/superwall/sdk/models/entitlements/SubscriptionStatus$Unknown;->INSTANCE:Lcom/superwall/sdk/models/entitlements/SubscriptionStatus$Unknown;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 372
    invoke-virtual {p0}, Lcom/superwall/sdk/Superwall;->getEntitlements()Lcom/superwall/sdk/store/Entitlements;

    move-result-object p1

    sget-object v0, Lcom/superwall/sdk/models/entitlements/SubscriptionStatus$Unknown;->INSTANCE:Lcom/superwall/sdk/models/entitlements/SubscriptionStatus$Unknown;

    check-cast v0, Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;

    invoke-virtual {p1, v0}, Lcom/superwall/sdk/store/Entitlements;->setSubscriptionStatus(Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;)V

    return-void

    .line 354
    :cond_6
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method

.method public final isLoggedIn()Z
    .locals 1

    .line 431
    invoke-virtual {p0}, Lcom/superwall/sdk/Superwall;->getDependencyContainer$superwall_release()Lcom/superwall/sdk/dependencies/DependencyContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getIdentityManager()Lcom/superwall/sdk/identity/IdentityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/identity/IdentityManager;->isLoggedIn()Z

    move-result v0

    return v0
.end method

.method public final isPaywallPresented()Z
    .locals 1

    .line 179
    invoke-virtual {p0}, Lcom/superwall/sdk/Superwall;->getPaywallView()Lcom/superwall/sdk/paywall/view/PaywallView;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final observe(Lcom/superwall/sdk/store/PurchasingObserverState;)V
    .locals 3

    const-string/jumbo v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1254
    invoke-virtual {p0}, Lcom/superwall/sdk/Superwall;->getIoScope$superwall_release()Lcom/superwall/sdk/misc/IOScope;

    move-result-object v0

    check-cast v0, Lcom/superwall/sdk/misc/SuperwallScope;

    new-instance v1, Lcom/superwall/sdk/Superwall$observe$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/superwall/sdk/Superwall$observe$1;-><init>(Lcom/superwall/sdk/Superwall;Lcom/superwall/sdk/store/PurchasingObserverState;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1}, Lcom/superwall/sdk/misc/ScopesKt;->launchWithTracking(Lcom/superwall/sdk/misc/SuperwallScope;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final observePurchaseError(Lcom/android/billingclient/api/ProductDetails;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "product"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "error"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1319
    new-instance v0, Lcom/superwall/sdk/store/PurchasingObserverState$PurchaseError;

    invoke-direct {v0, p1, p2}, Lcom/superwall/sdk/store/PurchasingObserverState$PurchaseError;-><init>(Lcom/android/billingclient/api/ProductDetails;Ljava/lang/Throwable;)V

    check-cast v0, Lcom/superwall/sdk/store/PurchasingObserverState;

    invoke-virtual {p0, v0}, Lcom/superwall/sdk/Superwall;->observe(Lcom/superwall/sdk/store/PurchasingObserverState;)V

    return-void
.end method

.method public final observePurchaseResult(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List<",
            "+",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation

    const-string v0, "billingResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "purchases"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1335
    new-instance v0, Lcom/superwall/sdk/store/PurchasingObserverState$PurchaseResult;

    invoke-direct {v0, p1, p2}, Lcom/superwall/sdk/store/PurchasingObserverState$PurchaseResult;-><init>(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    check-cast v0, Lcom/superwall/sdk/store/PurchasingObserverState;

    invoke-virtual {p0, v0}, Lcom/superwall/sdk/Superwall;->observe(Lcom/superwall/sdk/store/PurchasingObserverState;)V

    return-void
.end method

.method public final observePurchaseStart(Lcom/android/billingclient/api/ProductDetails;)V
    .locals 1

    const-string v0, "product"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1303
    new-instance v0, Lcom/superwall/sdk/store/PurchasingObserverState$PurchaseWillBegin;

    invoke-direct {v0, p1}, Lcom/superwall/sdk/store/PurchasingObserverState$PurchaseWillBegin;-><init>(Lcom/android/billingclient/api/ProductDetails;)V

    check-cast v0, Lcom/superwall/sdk/store/PurchasingObserverState;

    invoke-virtual {p0, v0}, Lcom/superwall/sdk/Superwall;->observe(Lcom/superwall/sdk/store/PurchasingObserverState;)V

    return-void
.end method

.method public final preloadAllPaywalls()V
    .locals 3

    .line 974
    invoke-virtual {p0}, Lcom/superwall/sdk/Superwall;->getIoScope$superwall_release()Lcom/superwall/sdk/misc/IOScope;

    move-result-object v0

    check-cast v0, Lcom/superwall/sdk/misc/SuperwallScope;

    new-instance v1, Lcom/superwall/sdk/Superwall$preloadAllPaywalls$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/superwall/sdk/Superwall$preloadAllPaywalls$1;-><init>(Lcom/superwall/sdk/Superwall;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1}, Lcom/superwall/sdk/misc/ScopesKt;->launchWithTracking(Lcom/superwall/sdk/misc/SuperwallScope;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final preloadPaywalls(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "placementNames"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 990
    invoke-virtual {p0}, Lcom/superwall/sdk/Superwall;->getIoScope$superwall_release()Lcom/superwall/sdk/misc/IOScope;

    move-result-object v0

    check-cast v0, Lcom/superwall/sdk/misc/SuperwallScope;

    new-instance v1, Lcom/superwall/sdk/Superwall$preloadPaywalls$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/superwall/sdk/Superwall$preloadPaywalls$1;-><init>(Lcom/superwall/sdk/Superwall;Ljava/util/Set;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1}, Lcom/superwall/sdk/misc/ScopesKt;->launchWithTracking(Lcom/superwall/sdk/misc/SuperwallScope;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final purchase(Lcom/android/billingclient/api/ProductDetails;Lkotlin/jvm/functions/Function1;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/ProductDetails;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/Result<",
            "+",
            "Lcom/superwall/sdk/delegate/PurchaseResult;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "product"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onFinished"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1188
    invoke-virtual {p0}, Lcom/superwall/sdk/Superwall;->getIoScope$superwall_release()Lcom/superwall/sdk/misc/IOScope;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/superwall/sdk/Superwall$purchase$8;

    const/4 v2, 0x0

    invoke-direct {v0, p2, p0, p1, v2}, Lcom/superwall/sdk/Superwall$purchase$8;-><init>(Lkotlin/jvm/functions/Function1;Lcom/superwall/sdk/Superwall;Lcom/android/billingclient/api/ProductDetails;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final purchase(Lcom/superwall/sdk/store/abstractions/product/StoreProduct;Lkotlin/jvm/functions/Function1;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/store/abstractions/product/StoreProduct;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/Result<",
            "+",
            "Lcom/superwall/sdk/delegate/PurchaseResult;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "product"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onFinished"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1179
    invoke-virtual {p0}, Lcom/superwall/sdk/Superwall;->getIoScope$superwall_release()Lcom/superwall/sdk/misc/IOScope;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/superwall/sdk/Superwall$purchase$7;

    const/4 v2, 0x0

    invoke-direct {v0, p2, p0, p1, v2}, Lcom/superwall/sdk/Superwall$purchase$7;-><init>(Lkotlin/jvm/functions/Function1;Lcom/superwall/sdk/Superwall;Lcom/superwall/sdk/store/abstractions/product/StoreProduct;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final purchase(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/Result<",
            "+",
            "Lcom/superwall/sdk/delegate/PurchaseResult;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "productId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onFinished"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1197
    invoke-virtual {p0}, Lcom/superwall/sdk/Superwall;->getIoScope$superwall_release()Lcom/superwall/sdk/misc/IOScope;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/superwall/sdk/Superwall$purchase$9;

    const/4 v2, 0x0

    invoke-direct {v0, p2, p0, p1, v2}, Lcom/superwall/sdk/Superwall$purchase$9;-><init>(Lkotlin/jvm/functions/Function1;Lcom/superwall/sdk/Superwall;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final purchase-gIAlu-s(Lcom/android/billingclient/api/ProductDetails;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/ProductDetails;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "+",
            "Lcom/superwall/sdk/delegate/PurchaseResult;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/superwall/sdk/Superwall$purchase$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/superwall/sdk/Superwall$purchase$1;

    iget v1, v0, Lcom/superwall/sdk/Superwall$purchase$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/superwall/sdk/Superwall$purchase$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/superwall/sdk/Superwall$purchase$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/superwall/sdk/Superwall$purchase$1;

    invoke-direct {v0, p0, p2}, Lcom/superwall/sdk/Superwall$purchase$1;-><init>(Lcom/superwall/sdk/Superwall;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/superwall/sdk/Superwall$purchase$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1092
    iget v2, v0, Lcom/superwall/sdk/Superwall$purchase$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1094
    :try_start_1
    invoke-virtual {p0}, Lcom/superwall/sdk/Superwall;->getDependencyContainer$superwall_release()Lcom/superwall/sdk/dependencies/DependencyContainer;

    move-result-object p2

    invoke-virtual {p2}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getTransactionManager()Lcom/superwall/sdk/store/transactions/TransactionManager;

    move-result-object p2

    .line 1095
    new-instance v2, Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource$ExternalPurchase;

    .line 1096
    new-instance v4, Lcom/superwall/sdk/store/abstractions/product/StoreProduct;

    sget-object v5, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;->Companion:Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$Companion;

    invoke-virtual {v5, p1}, Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct$Companion;->from(Lcom/android/billingclient/api/ProductDetails;)Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;

    move-result-object p1

    invoke-direct {v4, p1}, Lcom/superwall/sdk/store/abstractions/product/StoreProduct;-><init>(Lcom/superwall/sdk/store/abstractions/product/RawStoreProduct;)V

    .line 1095
    invoke-direct {v2, v4}, Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource$ExternalPurchase;-><init>(Lcom/superwall/sdk/store/abstractions/product/StoreProduct;)V

    check-cast v2, Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource;

    .line 1094
    iput v3, v0, Lcom/superwall/sdk/Superwall$purchase$1;->label:I

    invoke-virtual {p2, v2, v3, v0}, Lcom/superwall/sdk/store/transactions/TransactionManager;->purchase(Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    .line 1092
    :cond_3
    :goto_1
    check-cast p2, Lcom/superwall/sdk/delegate/PurchaseResult;

    .line 1689
    new-instance p1, Lcom/superwall/sdk/misc/Either$Success;

    invoke-direct {p1, p2}, Lcom/superwall/sdk/misc/Either$Success;-><init>(Ljava/lang/Object;)V

    check-cast p1, Lcom/superwall/sdk/misc/Either;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 1691
    invoke-static {p1}, Lcom/superwall/sdk/utilities/ErrorTrackingKt;->access$shouldLog(Ljava/lang/Throwable;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 1692
    sget-object p2, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {p2}, Lcom/superwall/sdk/Superwall$Companion;->getInitialized()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1693
    invoke-virtual {p2}, Lcom/superwall/sdk/Superwall$Companion;->getInstance()Lcom/superwall/sdk/Superwall;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/superwall/sdk/utilities/ErrorTrackingKt;->trackError(Lcom/superwall/sdk/Superwall;Ljava/lang/Throwable;)V

    .line 1696
    :cond_4
    new-instance p2, Lcom/superwall/sdk/misc/Either$Failure;

    invoke-direct {p2, p1}, Lcom/superwall/sdk/misc/Either$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p1, p2

    check-cast p1, Lcom/superwall/sdk/misc/Either;

    .line 1699
    :goto_2
    instance-of p2, p1, Lcom/superwall/sdk/misc/Either$Success;

    if-eqz p2, :cond_5

    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    check-cast p1, Lcom/superwall/sdk/misc/Either$Success;

    invoke-virtual {p1}, Lcom/superwall/sdk/misc/Either$Success;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_3

    .line 1700
    :cond_5
    instance-of p2, p1, Lcom/superwall/sdk/misc/Either$Failure;

    if-eqz p2, :cond_6

    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    check-cast p1, Lcom/superwall/sdk/misc/Either$Failure;

    invoke-virtual {p1}, Lcom/superwall/sdk/misc/Either$Failure;->getError()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_3
    return-object p1

    .line 1698
    :cond_6
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method

.method public final purchase-gIAlu-s(Lcom/superwall/sdk/store/abstractions/product/StoreProduct;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/store/abstractions/product/StoreProduct;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "+",
            "Lcom/superwall/sdk/delegate/PurchaseResult;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/superwall/sdk/Superwall$purchase$3;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/superwall/sdk/Superwall$purchase$3;

    iget v1, v0, Lcom/superwall/sdk/Superwall$purchase$3;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/superwall/sdk/Superwall$purchase$3;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/superwall/sdk/Superwall$purchase$3;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/superwall/sdk/Superwall$purchase$3;

    invoke-direct {v0, p0, p2}, Lcom/superwall/sdk/Superwall$purchase$3;-><init>(Lcom/superwall/sdk/Superwall;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/superwall/sdk/Superwall$purchase$3;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1115
    iget v2, v0, Lcom/superwall/sdk/Superwall$purchase$3;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1117
    :try_start_1
    invoke-virtual {p0}, Lcom/superwall/sdk/Superwall;->getDependencyContainer$superwall_release()Lcom/superwall/sdk/dependencies/DependencyContainer;

    move-result-object p2

    invoke-virtual {p2}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getTransactionManager()Lcom/superwall/sdk/store/transactions/TransactionManager;

    move-result-object p2

    .line 1118
    new-instance v2, Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource$ExternalPurchase;

    invoke-direct {v2, p1}, Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource$ExternalPurchase;-><init>(Lcom/superwall/sdk/store/abstractions/product/StoreProduct;)V

    check-cast v2, Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource;

    .line 1117
    iput v3, v0, Lcom/superwall/sdk/Superwall$purchase$3;->label:I

    invoke-virtual {p2, v2, v3, v0}, Lcom/superwall/sdk/store/transactions/TransactionManager;->purchase(Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    .line 1115
    :cond_3
    :goto_1
    check-cast p2, Lcom/superwall/sdk/delegate/PurchaseResult;

    .line 1703
    new-instance p1, Lcom/superwall/sdk/misc/Either$Success;

    invoke-direct {p1, p2}, Lcom/superwall/sdk/misc/Either$Success;-><init>(Ljava/lang/Object;)V

    check-cast p1, Lcom/superwall/sdk/misc/Either;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 1705
    invoke-static {p1}, Lcom/superwall/sdk/utilities/ErrorTrackingKt;->access$shouldLog(Ljava/lang/Throwable;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 1706
    sget-object p2, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {p2}, Lcom/superwall/sdk/Superwall$Companion;->getInitialized()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1707
    invoke-virtual {p2}, Lcom/superwall/sdk/Superwall$Companion;->getInstance()Lcom/superwall/sdk/Superwall;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/superwall/sdk/utilities/ErrorTrackingKt;->trackError(Lcom/superwall/sdk/Superwall;Ljava/lang/Throwable;)V

    .line 1710
    :cond_4
    new-instance p2, Lcom/superwall/sdk/misc/Either$Failure;

    invoke-direct {p2, p1}, Lcom/superwall/sdk/misc/Either$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p1, p2

    check-cast p1, Lcom/superwall/sdk/misc/Either;

    .line 1713
    :goto_2
    instance-of p2, p1, Lcom/superwall/sdk/misc/Either$Success;

    if-eqz p2, :cond_5

    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    check-cast p1, Lcom/superwall/sdk/misc/Either$Success;

    invoke-virtual {p1}, Lcom/superwall/sdk/misc/Either$Success;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_3

    .line 1714
    :cond_5
    instance-of p2, p1, Lcom/superwall/sdk/misc/Either$Failure;

    if-eqz p2, :cond_6

    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    check-cast p1, Lcom/superwall/sdk/misc/Either$Failure;

    invoke-virtual {p1}, Lcom/superwall/sdk/misc/Either$Failure;->getError()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_3
    return-object p1

    .line 1712
    :cond_6
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method

.method public final purchase-gIAlu-s(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "+",
            "Lcom/superwall/sdk/delegate/PurchaseResult;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "Product with id "

    instance-of v1, p2, Lcom/superwall/sdk/Superwall$purchase$5;

    if-eqz v1, :cond_0

    move-object v1, p2

    check-cast v1, Lcom/superwall/sdk/Superwall$purchase$5;

    iget v2, v1, Lcom/superwall/sdk/Superwall$purchase$5;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget p2, v1, Lcom/superwall/sdk/Superwall$purchase$5;->label:I

    sub-int/2addr p2, v3

    iput p2, v1, Lcom/superwall/sdk/Superwall$purchase$5;->label:I

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/superwall/sdk/Superwall$purchase$5;

    invoke-direct {v1, p0, p2}, Lcom/superwall/sdk/Superwall$purchase$5;-><init>(Lcom/superwall/sdk/Superwall;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v1, Lcom/superwall/sdk/Superwall$purchase$5;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 1138
    iget v3, v1, Lcom/superwall/sdk/Superwall$purchase$5;->label:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v3, :cond_3

    if-eq v3, v5, :cond_2

    if-ne v3, v4, :cond_1

    iget-object p1, v1, Lcom/superwall/sdk/Superwall$purchase$5;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v1, Lcom/superwall/sdk/Superwall$purchase$5;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object v3, v1, Lcom/superwall/sdk/Superwall$purchase$5;->L$0:Ljava/lang/Object;

    check-cast v3, Lcom/superwall/sdk/Superwall;

    :try_start_1
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/Result;

    invoke-virtual {p2}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1140
    :try_start_2
    new-array p2, v5, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, p2, v3

    iput-object p0, v1, Lcom/superwall/sdk/Superwall$purchase$5;->L$0:Ljava/lang/Object;

    iput-object p1, v1, Lcom/superwall/sdk/Superwall$purchase$5;->L$1:Ljava/lang/Object;

    iput v5, v1, Lcom/superwall/sdk/Superwall$purchase$5;->label:I

    invoke-virtual {p0, p2, v1}, Lcom/superwall/sdk/Superwall;->getProducts-gIAlu-s([Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v2, :cond_4

    goto :goto_2

    :cond_4
    move-object v3, p0

    :goto_1
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p2, Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/superwall/sdk/store/abstractions/product/StoreProduct;

    if-eqz p2, :cond_6

    .line 1141
    invoke-virtual {v3}, Lcom/superwall/sdk/Superwall;->getDependencyContainer$superwall_release()Lcom/superwall/sdk/dependencies/DependencyContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getTransactionManager()Lcom/superwall/sdk/store/transactions/TransactionManager;

    move-result-object v3

    .line 1142
    new-instance v6, Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource$ExternalPurchase;

    invoke-direct {v6, p2}, Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource$ExternalPurchase;-><init>(Lcom/superwall/sdk/store/abstractions/product/StoreProduct;)V

    check-cast v6, Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource;

    .line 1141
    iput-object p1, v1, Lcom/superwall/sdk/Superwall$purchase$5;->L$0:Ljava/lang/Object;

    const/4 p2, 0x0

    iput-object p2, v1, Lcom/superwall/sdk/Superwall$purchase$5;->L$1:Ljava/lang/Object;

    iput v4, v1, Lcom/superwall/sdk/Superwall$purchase$5;->label:I

    invoke-virtual {v3, v6, v5, v1}, Lcom/superwall/sdk/store/transactions/TransactionManager;->purchase(Lcom/superwall/sdk/store/transactions/TransactionManager$PurchaseSource;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v2, :cond_5

    :goto_2
    return-object v2

    .line 1138
    :cond_5
    :goto_3
    check-cast p2, Lcom/superwall/sdk/delegate/PurchaseResult;

    if-eqz p2, :cond_6

    .line 1717
    new-instance p1, Lcom/superwall/sdk/misc/Either$Success;

    invoke-direct {p1, p2}, Lcom/superwall/sdk/misc/Either$Success;-><init>(Ljava/lang/Object;)V

    check-cast p1, Lcom/superwall/sdk/misc/Either;

    goto :goto_4

    .line 1147
    :cond_6
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " not found"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    .line 1719
    invoke-static {p1}, Lcom/superwall/sdk/utilities/ErrorTrackingKt;->access$shouldLog(Ljava/lang/Throwable;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 1720
    sget-object p2, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {p2}, Lcom/superwall/sdk/Superwall$Companion;->getInitialized()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1721
    invoke-virtual {p2}, Lcom/superwall/sdk/Superwall$Companion;->getInstance()Lcom/superwall/sdk/Superwall;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/superwall/sdk/utilities/ErrorTrackingKt;->trackError(Lcom/superwall/sdk/Superwall;Ljava/lang/Throwable;)V

    .line 1724
    :cond_7
    new-instance p2, Lcom/superwall/sdk/misc/Either$Failure;

    invoke-direct {p2, p1}, Lcom/superwall/sdk/misc/Either$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p1, p2

    check-cast p1, Lcom/superwall/sdk/misc/Either;

    .line 1727
    :goto_4
    instance-of p2, p1, Lcom/superwall/sdk/misc/Either$Success;

    if-eqz p2, :cond_8

    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    check-cast p1, Lcom/superwall/sdk/misc/Either$Success;

    invoke-virtual {p1}, Lcom/superwall/sdk/misc/Either$Success;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_5

    .line 1728
    :cond_8
    instance-of p2, p1, Lcom/superwall/sdk/misc/Either$Failure;

    if-eqz p2, :cond_9

    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    check-cast p1, Lcom/superwall/sdk/misc/Either$Failure;

    invoke-virtual {p1}, Lcom/superwall/sdk/misc/Either$Failure;->getError()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_5
    return-object p1

    .line 1726
    :cond_9
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method

.method public final redeem$superwall_release(Ljava/lang/String;)V
    .locals 7

    const-string v0, "code"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1540
    invoke-virtual {p0}, Lcom/superwall/sdk/Superwall;->getIoScope$superwall_release()Lcom/superwall/sdk/misc/IOScope;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/superwall/sdk/Superwall$redeem$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2}, Lcom/superwall/sdk/Superwall$redeem$1;-><init>(Lcom/superwall/sdk/Superwall;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final refreshConfiguration()V
    .locals 7

    .line 1550
    invoke-virtual {p0}, Lcom/superwall/sdk/Superwall;->getIoScope$superwall_release()Lcom/superwall/sdk/misc/IOScope;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/superwall/sdk/Superwall$refreshConfiguration$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/superwall/sdk/Superwall$refreshConfiguration$1;-><init>(Lcom/superwall/sdk/Superwall;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final reset()V
    .locals 3

    const/4 v0, 0x0

    .line 876
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/superwall/sdk/Superwall;->reset$superwall_release(Z)V

    .line 877
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1616
    new-instance v1, Lcom/superwall/sdk/misc/Either$Success;

    invoke-direct {v1, v0}, Lcom/superwall/sdk/misc/Either$Success;-><init>(Ljava/lang/Object;)V

    check-cast v1, Lcom/superwall/sdk/misc/Either;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 1618
    invoke-static {v0}, Lcom/superwall/sdk/utilities/ErrorTrackingKt;->access$shouldLog(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1619
    sget-object v1, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {v1}, Lcom/superwall/sdk/Superwall$Companion;->getInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1620
    invoke-virtual {v1}, Lcom/superwall/sdk/Superwall$Companion;->getInstance()Lcom/superwall/sdk/Superwall;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/superwall/sdk/utilities/ErrorTrackingKt;->trackError(Lcom/superwall/sdk/Superwall;Ljava/lang/Throwable;)V

    .line 1623
    :cond_0
    new-instance v1, Lcom/superwall/sdk/misc/Either$Failure;

    invoke-direct {v1, v0}, Lcom/superwall/sdk/misc/Either$Failure;-><init>(Ljava/lang/Throwable;)V

    check-cast v1, Lcom/superwall/sdk/misc/Either;

    return-void
.end method

.method public final reset$superwall_release(Z)V
    .locals 6

    if-nez p1, :cond_0

    .line 889
    :try_start_0
    invoke-virtual {p0}, Lcom/superwall/sdk/Superwall;->getDependencyContainer$superwall_release()Lcom/superwall/sdk/dependencies/DependencyContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getIdentityManager()Lcom/superwall/sdk/identity/IdentityManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/superwall/sdk/identity/IdentityManager;->reset()V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    .line 893
    :cond_0
    invoke-virtual {p0}, Lcom/superwall/sdk/Superwall;->getDependencyContainer$superwall_release()Lcom/superwall/sdk/dependencies/DependencyContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getStorage()Lcom/superwall/sdk/storage/LocalStorage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/superwall/sdk/storage/LocalStorage;->reset()V

    .line 894
    invoke-virtual {p0}, Lcom/superwall/sdk/Superwall;->getDependencyContainer$superwall_release()Lcom/superwall/sdk/dependencies/DependencyContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getPaywallManager()Lcom/superwall/sdk/paywall/manager/PaywallManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/superwall/sdk/paywall/manager/PaywallManager;->resetCache()V

    .line 895
    iget-object p1, p0, Lcom/superwall/sdk/Superwall;->presentationItems:Lcom/superwall/sdk/paywall/presentation/PresentationItems;

    invoke-virtual {p1}, Lcom/superwall/sdk/paywall/presentation/PresentationItems;->reset()V

    .line 896
    invoke-virtual {p0}, Lcom/superwall/sdk/Superwall;->getDependencyContainer$superwall_release()Lcom/superwall/sdk/dependencies/DependencyContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getConfigManager()Lcom/superwall/sdk/config/ConfigManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/superwall/sdk/config/ConfigManager;->reset()V

    .line 897
    invoke-virtual {p0}, Lcom/superwall/sdk/Superwall;->getDependencyContainer$superwall_release()Lcom/superwall/sdk/dependencies/DependencyContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getReedemer()Lcom/superwall/sdk/web/WebPaywallRedeemer;

    move-result-object p1

    sget-object v0, Lcom/superwall/sdk/models/internal/RedemptionOwnershipType;->AppUser:Lcom/superwall/sdk/models/internal/RedemptionOwnershipType;

    invoke-virtual {p1, v0}, Lcom/superwall/sdk/web/WebPaywallRedeemer;->clear(Lcom/superwall/sdk/models/internal/RedemptionOwnershipType;)V

    .line 898
    invoke-virtual {p0}, Lcom/superwall/sdk/Superwall;->getIoScope$superwall_release()Lcom/superwall/sdk/misc/IOScope;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    new-instance p1, Lcom/superwall/sdk/Superwall$reset$2$1;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lcom/superwall/sdk/Superwall$reset$2$1;-><init>(Lcom/superwall/sdk/Superwall;Lkotlin/coroutines/Continuation;)V

    move-object v3, p1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    .line 1626
    :goto_0
    new-instance v0, Lcom/superwall/sdk/misc/Either$Success;

    invoke-direct {v0, p1}, Lcom/superwall/sdk/misc/Either$Success;-><init>(Ljava/lang/Object;)V

    check-cast v0, Lcom/superwall/sdk/misc/Either;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 1628
    invoke-static {p1}, Lcom/superwall/sdk/utilities/ErrorTrackingKt;->access$shouldLog(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1629
    sget-object v0, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {v0}, Lcom/superwall/sdk/Superwall$Companion;->getInitialized()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1630
    invoke-virtual {v0}, Lcom/superwall/sdk/Superwall$Companion;->getInstance()Lcom/superwall/sdk/Superwall;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/superwall/sdk/utilities/ErrorTrackingKt;->trackError(Lcom/superwall/sdk/Superwall;Ljava/lang/Throwable;)V

    .line 1633
    :cond_1
    new-instance v0, Lcom/superwall/sdk/misc/Either$Failure;

    invoke-direct {v0, p1}, Lcom/superwall/sdk/misc/Either$Failure;-><init>(Ljava/lang/Throwable;)V

    check-cast v0, Lcom/superwall/sdk/misc/Either;

    return-void
.end method

.method public final restorePurchases(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/Job;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/Result<",
            "+",
            "Lcom/superwall/sdk/delegate/RestorationResult;",
            ">;",
            "Lkotlin/Unit;",
            ">;)",
            "Lkotlinx/coroutines/Job;"
        }
    .end annotation

    const-string v0, "onFinished"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1354
    invoke-virtual {p0}, Lcom/superwall/sdk/Superwall;->getIoScope$superwall_release()Lcom/superwall/sdk/misc/IOScope;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/superwall/sdk/Superwall$restorePurchases$3;

    const/4 v2, 0x0

    invoke-direct {v0, p1, p0, v2}, Lcom/superwall/sdk/Superwall$restorePurchases$3;-><init>(Lkotlin/jvm/functions/Function1;Lcom/superwall/sdk/Superwall;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    return-object p1
.end method

.method public final restorePurchases-IoAF18A(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "+",
            "Lcom/superwall/sdk/delegate/RestorationResult;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/superwall/sdk/Superwall$restorePurchases$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/superwall/sdk/Superwall$restorePurchases$1;

    iget v1, v0, Lcom/superwall/sdk/Superwall$restorePurchases$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/superwall/sdk/Superwall$restorePurchases$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/superwall/sdk/Superwall$restorePurchases$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/superwall/sdk/Superwall$restorePurchases$1;

    invoke-direct {v0, p0, p1}, Lcom/superwall/sdk/Superwall$restorePurchases$1;-><init>(Lcom/superwall/sdk/Superwall;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/superwall/sdk/Superwall$restorePurchases$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1343
    iget v2, v0, Lcom/superwall/sdk/Superwall$restorePurchases$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1345
    :try_start_1
    invoke-virtual {p0}, Lcom/superwall/sdk/Superwall;->getDependencyContainer$superwall_release()Lcom/superwall/sdk/dependencies/DependencyContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getTransactionManager()Lcom/superwall/sdk/store/transactions/TransactionManager;

    move-result-object p1

    iput v3, v0, Lcom/superwall/sdk/Superwall$restorePurchases$1;->label:I

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Lcom/superwall/sdk/store/transactions/TransactionManager;->tryToRestorePurchases(Lcom/superwall/sdk/paywall/view/PaywallView;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Lcom/superwall/sdk/delegate/RestorationResult;

    .line 1767
    new-instance v0, Lcom/superwall/sdk/misc/Either$Success;

    invoke-direct {v0, p1}, Lcom/superwall/sdk/misc/Either$Success;-><init>(Ljava/lang/Object;)V

    check-cast v0, Lcom/superwall/sdk/misc/Either;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 1769
    invoke-static {p1}, Lcom/superwall/sdk/utilities/ErrorTrackingKt;->access$shouldLog(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1770
    sget-object v0, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {v0}, Lcom/superwall/sdk/Superwall$Companion;->getInitialized()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1771
    invoke-virtual {v0}, Lcom/superwall/sdk/Superwall$Companion;->getInstance()Lcom/superwall/sdk/Superwall;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/superwall/sdk/utilities/ErrorTrackingKt;->trackError(Lcom/superwall/sdk/Superwall;Ljava/lang/Throwable;)V

    .line 1774
    :cond_4
    new-instance v0, Lcom/superwall/sdk/misc/Either$Failure;

    invoke-direct {v0, p1}, Lcom/superwall/sdk/misc/Either$Failure;-><init>(Ljava/lang/Throwable;)V

    check-cast v0, Lcom/superwall/sdk/misc/Either;

    .line 1777
    :goto_2
    instance-of p1, v0, Lcom/superwall/sdk/misc/Either$Success;

    if-eqz p1, :cond_5

    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    check-cast v0, Lcom/superwall/sdk/misc/Either$Success;

    invoke-virtual {v0}, Lcom/superwall/sdk/misc/Either$Success;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_3

    .line 1778
    :cond_5
    instance-of p1, v0, Lcom/superwall/sdk/misc/Either$Failure;

    if-eqz p1, :cond_6

    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    check-cast v0, Lcom/superwall/sdk/misc/Either$Failure;

    invoke-virtual {v0}, Lcom/superwall/sdk/misc/Either$Failure;->getError()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_3
    return-object p1

    .line 1776
    :cond_6
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method

.method public final setContext$superwall_release(Landroid/content/Context;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    iput-object p1, p0, Lcom/superwall/sdk/Superwall;->context:Landroid/content/Context;

    return-void
.end method

.method public final setDelegate(Lcom/superwall/sdk/delegate/SuperwallDelegate;)V
    .locals 6

    .line 187
    invoke-virtual {p0}, Lcom/superwall/sdk/Superwall;->getDependencyContainer$superwall_release()Lcom/superwall/sdk/dependencies/DependencyContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getDelegateAdapter()Lcom/superwall/sdk/delegate/SuperwallDelegateAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/superwall/sdk/delegate/SuperwallDelegateAdapter;->setKotlinDelegate(Lcom/superwall/sdk/delegate/SuperwallDelegate;)V

    .line 188
    invoke-virtual {p0}, Lcom/superwall/sdk/Superwall;->getIoScope$superwall_release()Lcom/superwall/sdk/misc/IOScope;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    new-instance p1, Lcom/superwall/sdk/Superwall$delegate$1;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lcom/superwall/sdk/Superwall$delegate$1;-><init>(Lcom/superwall/sdk/Superwall;Lkotlin/coroutines/Continuation;)V

    move-object v3, p1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final setDelegate(Lcom/superwall/sdk/delegate/SuperwallDelegateJava;)V
    .locals 6

    .line 255
    :try_start_0
    invoke-virtual {p0}, Lcom/superwall/sdk/Superwall;->getDependencyContainer$superwall_release()Lcom/superwall/sdk/dependencies/DependencyContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getDelegateAdapter()Lcom/superwall/sdk/delegate/SuperwallDelegateAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/superwall/sdk/delegate/SuperwallDelegateAdapter;->setJavaDelegate(Lcom/superwall/sdk/delegate/SuperwallDelegateJava;)V

    .line 256
    invoke-virtual {p0}, Lcom/superwall/sdk/Superwall;->getIoScope$superwall_release()Lcom/superwall/sdk/misc/IOScope;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    new-instance p1, Lcom/superwall/sdk/Superwall$setJavaDelegate$1$1;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lcom/superwall/sdk/Superwall$setJavaDelegate$1$1;-><init>(Lcom/superwall/sdk/Superwall;Lkotlin/coroutines/Continuation;)V

    move-object v3, p1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    .line 1557
    new-instance v0, Lcom/superwall/sdk/misc/Either$Success;

    invoke-direct {v0, p1}, Lcom/superwall/sdk/misc/Either$Success;-><init>(Ljava/lang/Object;)V

    check-cast v0, Lcom/superwall/sdk/misc/Either;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 1559
    invoke-static {p1}, Lcom/superwall/sdk/utilities/ErrorTrackingKt;->access$shouldLog(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1560
    sget-object v0, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {v0}, Lcom/superwall/sdk/Superwall$Companion;->getInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1561
    invoke-virtual {v0}, Lcom/superwall/sdk/Superwall$Companion;->getInstance()Lcom/superwall/sdk/Superwall;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/superwall/sdk/utilities/ErrorTrackingKt;->trackError(Lcom/superwall/sdk/Superwall;Ljava/lang/Throwable;)V

    .line 1564
    :cond_0
    new-instance v0, Lcom/superwall/sdk/misc/Either$Failure;

    invoke-direct {v0, p1}, Lcom/superwall/sdk/misc/Either$Failure;-><init>(Ljava/lang/Throwable;)V

    check-cast v0, Lcom/superwall/sdk/misc/Either;

    return-void
.end method

.method public final setIntegrationAttributes(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/superwall/sdk/models/attribution/AttributionProvider;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "attributes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 404
    invoke-virtual {p0}, Lcom/superwall/sdk/Superwall;->getDependencyContainer$superwall_release()Lcom/superwall/sdk/dependencies/DependencyContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getAttributionManager$superwall_release()Lcom/superwall/sdk/analytics/AttributionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/superwall/sdk/analytics/AttributionManager;->setIntegrationAttributes(Ljava/util/Map;)V

    return-void
.end method

.method public final setInterfaceStyle(Lcom/superwall/sdk/network/device/InterfaceStyle;)V
    .locals 6

    .line 829
    :try_start_0
    invoke-virtual {p0}, Lcom/superwall/sdk/Superwall;->getDependencyContainer$superwall_release()Lcom/superwall/sdk/dependencies/DependencyContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getDeviceHelper()Lcom/superwall/sdk/network/device/DeviceHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/superwall/sdk/network/device/DeviceHelper;->setInterfaceStyleOverride(Lcom/superwall/sdk/network/device/InterfaceStyle;)V

    .line 830
    invoke-virtual {p0}, Lcom/superwall/sdk/Superwall;->getIoScope$superwall_release()Lcom/superwall/sdk/misc/IOScope;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    new-instance p1, Lcom/superwall/sdk/Superwall$setInterfaceStyle$1$1;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lcom/superwall/sdk/Superwall$setInterfaceStyle$1$1;-><init>(Lcom/superwall/sdk/Superwall;Lkotlin/coroutines/Continuation;)V

    move-object v3, p1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    .line 1596
    new-instance v0, Lcom/superwall/sdk/misc/Either$Success;

    invoke-direct {v0, p1}, Lcom/superwall/sdk/misc/Either$Success;-><init>(Ljava/lang/Object;)V

    check-cast v0, Lcom/superwall/sdk/misc/Either;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 1598
    invoke-static {p1}, Lcom/superwall/sdk/utilities/ErrorTrackingKt;->access$shouldLog(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1599
    sget-object v0, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {v0}, Lcom/superwall/sdk/Superwall$Companion;->getInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1600
    invoke-virtual {v0}, Lcom/superwall/sdk/Superwall$Companion;->getInstance()Lcom/superwall/sdk/Superwall;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/superwall/sdk/utilities/ErrorTrackingKt;->trackError(Lcom/superwall/sdk/Superwall;Ljava/lang/Throwable;)V

    .line 1603
    :cond_0
    new-instance v0, Lcom/superwall/sdk/misc/Either$Failure;

    invoke-direct {v0, p1}, Lcom/superwall/sdk/misc/Either$Failure;-><init>(Ljava/lang/Throwable;)V

    check-cast v0, Lcom/superwall/sdk/misc/Either;

    return-void
.end method

.method public final setLocalResources(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lcom/superwall/sdk/paywall/view/webview/PaywallResource;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    iput-object p1, p0, Lcom/superwall/sdk/Superwall;->localResources:Ljava/util/Map;

    return-void
.end method

.method public final setLocaleIdentifier(Ljava/lang/String;)V
    .locals 6

    .line 144
    invoke-virtual {p0}, Lcom/superwall/sdk/Superwall;->getDependencyContainer$superwall_release()Lcom/superwall/sdk/dependencies/DependencyContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getConfigManager()Lcom/superwall/sdk/config/ConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/config/ConfigManager;->getOptions()Lcom/superwall/sdk/config/options/SuperwallOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/superwall/sdk/config/options/SuperwallOptions;->setLocaleIdentifier(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0}, Lcom/superwall/sdk/Superwall;->getIoScope$superwall_release()Lcom/superwall/sdk/misc/IOScope;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    new-instance p1, Lcom/superwall/sdk/Superwall$localeIdentifier$1;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lcom/superwall/sdk/Superwall$localeIdentifier$1;-><init>(Lcom/superwall/sdk/Superwall;Lkotlin/coroutines/Continuation;)V

    move-object v3, p1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final setLogLevel(Lcom/superwall/sdk/logger/LogLevel;)V
    .locals 6

    const-string v0, "newValue"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    invoke-virtual {p0}, Lcom/superwall/sdk/Superwall;->getOptions()Lcom/superwall/sdk/config/options/SuperwallOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/config/options/SuperwallOptions;->getLogging()Lcom/superwall/sdk/config/options/SuperwallOptions$Logging;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/superwall/sdk/config/options/SuperwallOptions$Logging;->setLevel(Lcom/superwall/sdk/logger/LogLevel;)V

    .line 170
    invoke-virtual {p0}, Lcom/superwall/sdk/Superwall;->getIoScope$superwall_release()Lcom/superwall/sdk/misc/IOScope;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    new-instance p1, Lcom/superwall/sdk/Superwall$logLevel$1;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lcom/superwall/sdk/Superwall$logLevel$1;-><init>(Lcom/superwall/sdk/Superwall;Lkotlin/coroutines/Continuation;)V

    move-object v3, p1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final setOverrideProductsByName(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    invoke-virtual {p0}, Lcom/superwall/sdk/Superwall;->getOptions()Lcom/superwall/sdk/config/options/SuperwallOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/config/options/SuperwallOptions;->getPaywalls()Lcom/superwall/sdk/config/options/PaywallOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/superwall/sdk/config/options/PaywallOptions;->setOverrideProductsByName(Ljava/util/Map;)V

    return-void
.end method

.method public final setPlatformWrapper(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-string/jumbo v0, "wrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "version"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 815
    :try_start_0
    invoke-virtual {p0}, Lcom/superwall/sdk/Superwall;->getDependencyContainer$superwall_release()Lcom/superwall/sdk/dependencies/DependencyContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getDeviceHelper()Lcom/superwall/sdk/network/device/DeviceHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/superwall/sdk/network/device/DeviceHelper;->setPlatformWrapper(Ljava/lang/String;)V

    .line 816
    invoke-virtual {p0}, Lcom/superwall/sdk/Superwall;->getDependencyContainer$superwall_release()Lcom/superwall/sdk/dependencies/DependencyContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getDeviceHelper()Lcom/superwall/sdk/network/device/DeviceHelper;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/superwall/sdk/network/device/DeviceHelper;->setPlatformWrapperVersion(Ljava/lang/String;)V

    .line 817
    invoke-virtual {p0}, Lcom/superwall/sdk/Superwall;->getIoScope$superwall_release()Lcom/superwall/sdk/misc/IOScope;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    new-instance p1, Lcom/superwall/sdk/Superwall$setPlatformWrapper$1$1;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/superwall/sdk/Superwall$setPlatformWrapper$1$1;-><init>(Lcom/superwall/sdk/Superwall;Lkotlin/coroutines/Continuation;)V

    move-object v3, p1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    .line 1586
    new-instance p2, Lcom/superwall/sdk/misc/Either$Success;

    invoke-direct {p2, p1}, Lcom/superwall/sdk/misc/Either$Success;-><init>(Ljava/lang/Object;)V

    check-cast p2, Lcom/superwall/sdk/misc/Either;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 1588
    invoke-static {p1}, Lcom/superwall/sdk/utilities/ErrorTrackingKt;->access$shouldLog(Ljava/lang/Throwable;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1589
    sget-object p2, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {p2}, Lcom/superwall/sdk/Superwall$Companion;->getInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1590
    invoke-virtual {p2}, Lcom/superwall/sdk/Superwall$Companion;->getInstance()Lcom/superwall/sdk/Superwall;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/superwall/sdk/utilities/ErrorTrackingKt;->trackError(Lcom/superwall/sdk/Superwall;Ljava/lang/Throwable;)V

    .line 1593
    :cond_0
    new-instance p2, Lcom/superwall/sdk/misc/Either$Failure;

    invoke-direct {p2, p1}, Lcom/superwall/sdk/misc/Either$Failure;-><init>(Ljava/lang/Throwable;)V

    check-cast p2, Lcom/superwall/sdk/misc/Either;

    return-void
.end method

.method public final setSubscriptionStatus(Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;)V
    .locals 9

    const-string/jumbo v0, "subscriptionStatus"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 300
    invoke-virtual {p0}, Lcom/superwall/sdk/Superwall;->getDependencyContainer$superwall_release()Lcom/superwall/sdk/dependencies/DependencyContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getTestMode$superwall_release()Lcom/superwall/sdk/store/testmode/TestMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/store/testmode/TestMode;->isTestMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    sget-object v1, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 302
    sget-object v2, Lcom/superwall/sdk/logger/LogLevel;->warn:Lcom/superwall/sdk/logger/LogLevel;

    .line 303
    sget-object v3, Lcom/superwall/sdk/logger/LogScope;->superwallCore:Lcom/superwall/sdk/logger/LogScope;

    const/16 v7, 0x18

    const/4 v8, 0x0

    .line 301
    const-string/jumbo v4, "setSubscriptionStatus ignored: test mode is active"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v8}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return-void

    .line 308
    :cond_0
    invoke-virtual {p0}, Lcom/superwall/sdk/Superwall;->getEntitlements()Lcom/superwall/sdk/store/Entitlements;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/superwall/sdk/store/Entitlements;->setSubscriptionStatus(Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;)V

    return-void
.end method

.method public final varargs setSubscriptionStatus([Ljava/lang/String;)V
    .locals 9

    const-string v0, "entitlements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 322
    invoke-virtual {p0}, Lcom/superwall/sdk/Superwall;->getDependencyContainer$superwall_release()Lcom/superwall/sdk/dependencies/DependencyContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getTestMode$superwall_release()Lcom/superwall/sdk/store/testmode/TestMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/store/testmode/TestMode;->isTestMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    sget-object v1, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 324
    sget-object v2, Lcom/superwall/sdk/logger/LogLevel;->warn:Lcom/superwall/sdk/logger/LogLevel;

    .line 325
    sget-object v3, Lcom/superwall/sdk/logger/LogScope;->superwallCore:Lcom/superwall/sdk/logger/LogScope;

    const/16 v7, 0x18

    const/4 v8, 0x0

    .line 323
    const-string/jumbo v4, "setSubscriptionStatus ignored: test mode is active"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v8}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return-void

    .line 330
    :cond_0
    array-length v0, p1

    if-nez v0, :cond_1

    .line 331
    invoke-virtual {p0}, Lcom/superwall/sdk/Superwall;->getEntitlements()Lcom/superwall/sdk/store/Entitlements;

    move-result-object p1

    sget-object v0, Lcom/superwall/sdk/models/entitlements/SubscriptionStatus$Inactive;->INSTANCE:Lcom/superwall/sdk/models/entitlements/SubscriptionStatus$Inactive;

    check-cast v0, Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;

    invoke-virtual {p1, v0}, Lcom/superwall/sdk/store/Entitlements;->setSubscriptionStatus(Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;)V

    return-void

    .line 333
    :cond_1
    invoke-virtual {p0}, Lcom/superwall/sdk/Superwall;->getEntitlements()Lcom/superwall/sdk/store/Entitlements;

    move-result-object v0

    .line 1566
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 1567
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p1, v3

    .line 337
    new-instance v5, Lcom/superwall/sdk/models/entitlements/Entitlement;

    invoke-direct {v5, v4}, Lcom/superwall/sdk/models/entitlements/Entitlement;-><init>(Ljava/lang/String;)V

    .line 1568
    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1569
    :cond_2
    check-cast v1, Ljava/util/List;

    .line 1566
    check-cast v1, Ljava/lang/Iterable;

    .line 340
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    .line 334
    new-instance v1, Lcom/superwall/sdk/models/entitlements/SubscriptionStatus$Active;

    invoke-direct {v1, p1}, Lcom/superwall/sdk/models/entitlements/SubscriptionStatus$Active;-><init>(Ljava/util/Set;)V

    check-cast v1, Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;

    .line 333
    invoke-virtual {v0, v1}, Lcom/superwall/sdk/store/Entitlements;->setSubscriptionStatus(Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;)V

    return-void
.end method

.method public final setup$superwall_release()Lcom/superwall/sdk/misc/Either;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/superwall/sdk/misc/Either<",
            "Lkotlin/Unit;",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .line 649
    monitor-enter p0

    .line 653
    :try_start_0
    new-instance v0, Lcom/superwall/sdk/dependencies/DependencyContainer;

    .line 654
    iget-object v1, p0, Lcom/superwall/sdk/Superwall;->context:Landroid/content/Context;

    .line 655
    iget-object v2, p0, Lcom/superwall/sdk/Superwall;->purchaseController:Lcom/superwall/sdk/delegate/subscription_controller/PurchaseController;

    .line 656
    iget-object v3, p0, Lcom/superwall/sdk/Superwall;->_options:Lcom/superwall/sdk/config/options/SuperwallOptions;

    .line 657
    iget-object v4, p0, Lcom/superwall/sdk/Superwall;->activityProvider:Lcom/superwall/sdk/misc/ActivityProvider;

    .line 658
    iget-object v5, p0, Lcom/superwall/sdk/Superwall;->apiKey:Ljava/lang/String;

    .line 653
    invoke-direct/range {v0 .. v5}, Lcom/superwall/sdk/dependencies/DependencyContainer;-><init>(Landroid/content/Context;Lcom/superwall/sdk/delegate/subscription_controller/PurchaseController;Lcom/superwall/sdk/config/options/SuperwallOptions;Lcom/superwall/sdk/misc/ActivityProvider;Ljava/lang/String;)V

    .line 652
    iput-object v0, p0, Lcom/superwall/sdk/Superwall;->_dependencyContainer:Lcom/superwall/sdk/dependencies/DependencyContainer;

    .line 660
    invoke-virtual {p0}, Lcom/superwall/sdk/Superwall;->getDependencyContainer$superwall_release()Lcom/superwall/sdk/dependencies/DependencyContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getStorage()Lcom/superwall/sdk/storage/LocalStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/superwall/sdk/Superwall;->apiKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/superwall/sdk/storage/LocalStorage;->configure(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 667
    :try_start_1
    invoke-virtual {p0}, Lcom/superwall/sdk/Superwall;->getDependencyContainer$superwall_release()Lcom/superwall/sdk/dependencies/DependencyContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getStorage()Lcom/superwall/sdk/storage/LocalStorage;

    move-result-object v0

    sget-object v1, Lcom/superwall/sdk/storage/StoredSubscriptionStatus;->INSTANCE:Lcom/superwall/sdk/storage/StoredSubscriptionStatus;

    check-cast v1, Lcom/superwall/sdk/storage/Storable;

    invoke-virtual {v0, v1}, Lcom/superwall/sdk/storage/LocalStorage;->read(Lcom/superwall/sdk/storage/Storable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;

    if-nez v0, :cond_0

    .line 668
    sget-object v0, Lcom/superwall/sdk/models/entitlements/SubscriptionStatus$Unknown;->INSTANCE:Lcom/superwall/sdk/models/entitlements/SubscriptionStatus$Unknown;

    check-cast v0, Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;

    .line 669
    :cond_0
    iget-object v1, p0, Lcom/superwall/sdk/Superwall;->_customerInfo:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 670
    invoke-virtual {p0}, Lcom/superwall/sdk/Superwall;->getDependencyContainer$superwall_release()Lcom/superwall/sdk/dependencies/DependencyContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getStorage()Lcom/superwall/sdk/storage/LocalStorage;

    move-result-object v2

    sget-object v3, Lcom/superwall/sdk/storage/LatestCustomerInfo;->INSTANCE:Lcom/superwall/sdk/storage/LatestCustomerInfo;

    check-cast v3, Lcom/superwall/sdk/storage/Storable;

    invoke-virtual {v2, v3}, Lcom/superwall/sdk/storage/LocalStorage;->read(Lcom/superwall/sdk/storage/Storable;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/superwall/sdk/models/customer/CustomerInfo;

    if-nez v2, :cond_1

    sget-object v2, Lcom/superwall/sdk/models/customer/CustomerInfo;->Companion:Lcom/superwall/sdk/models/customer/CustomerInfo$Companion;

    invoke-virtual {v2}, Lcom/superwall/sdk/models/customer/CustomerInfo$Companion;->empty()Lcom/superwall/sdk/models/customer/CustomerInfo;

    move-result-object v2

    .line 669
    :cond_1
    invoke-interface {v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 672
    invoke-virtual {p0, v0}, Lcom/superwall/sdk/Superwall;->setSubscriptionStatus(Lcom/superwall/sdk/models/entitlements/SubscriptionStatus;)V

    .line 675
    invoke-virtual {p0}, Lcom/superwall/sdk/Superwall;->getDependencyContainer$superwall_release()Lcom/superwall/sdk/dependencies/DependencyContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getCustomerInfoManager$superwall_release()Lcom/superwall/sdk/customer/CustomerInfoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/customer/CustomerInfoManager;->updateMergedCustomerInfo()V

    .line 677
    invoke-direct {p0}, Lcom/superwall/sdk/Superwall;->addListeners()V

    .line 679
    invoke-virtual {p0}, Lcom/superwall/sdk/Superwall;->getIoScope$superwall_release()Lcom/superwall/sdk/misc/IOScope;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/superwall/sdk/Superwall$setup$1$1$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/superwall/sdk/Superwall$setup$1$1$1;-><init>(Lcom/superwall/sdk/Superwall;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 705
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1576
    new-instance v1, Lcom/superwall/sdk/misc/Either$Success;

    invoke-direct {v1, v0}, Lcom/superwall/sdk/misc/Either$Success;-><init>(Ljava/lang/Object;)V

    check-cast v1, Lcom/superwall/sdk/misc/Either;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 662
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 663
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1578
    :goto_0
    :try_start_2
    invoke-static {v0}, Lcom/superwall/sdk/utilities/ErrorTrackingKt;->access$shouldLog(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1579
    sget-object v1, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {v1}, Lcom/superwall/sdk/Superwall$Companion;->getInitialized()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1580
    invoke-virtual {v1}, Lcom/superwall/sdk/Superwall$Companion;->getInstance()Lcom/superwall/sdk/Superwall;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/superwall/sdk/utilities/ErrorTrackingKt;->trackError(Lcom/superwall/sdk/Superwall;Ljava/lang/Throwable;)V

    .line 1583
    :cond_2
    new-instance v1, Lcom/superwall/sdk/misc/Either$Failure;

    invoke-direct {v1, v0}, Lcom/superwall/sdk/misc/Either$Failure;-><init>(Ljava/lang/Throwable;)V

    check-cast v1, Lcom/superwall/sdk/misc/Either;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 649
    :goto_1
    monitor-exit p0

    return-object v1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final showAlert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "closeActionTitle"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 860
    invoke-virtual {p0}, Lcom/superwall/sdk/Superwall;->getPaywallView()Lcom/superwall/sdk/paywall/view/PaywallView;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/superwall/sdk/paywall/view/PaywallView;->showAlert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    :cond_0
    return-void
.end method

.method public final teardown$superwall_release()V
    .locals 3

    const/4 v0, 0x0

    .line 931
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/superwall/sdk/Superwall;->reset$superwall_release(Z)V

    .line 933
    invoke-virtual {p0}, Lcom/superwall/sdk/Superwall;->getDependencyContainer$superwall_release()Lcom/superwall/sdk/dependencies/DependencyContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/dependencies/DependencyContainer;->getPaywallRequestManager()Lcom/superwall/sdk/paywall/request/PaywallRequestManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/superwall/sdk/paywall/request/PaywallRequestManager;->resetCache$superwall_release()V

    .line 938
    iget-object v0, p0, Lcom/superwall/sdk/Superwall;->configurationChangeListener:Landroid/content/ComponentCallbacks2;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 939
    iget-object v2, p0, Lcom/superwall/sdk/Superwall;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v0, Landroid/content/ComponentCallbacks;

    invoke-virtual {v2, v0}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 940
    iput-object v1, p0, Lcom/superwall/sdk/Superwall;->configurationChangeListener:Landroid/content/ComponentCallbacks2;

    .line 938
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1636
    :cond_0
    new-instance v0, Lcom/superwall/sdk/misc/Either$Success;

    invoke-direct {v0, v1}, Lcom/superwall/sdk/misc/Either$Success;-><init>(Ljava/lang/Object;)V

    check-cast v0, Lcom/superwall/sdk/misc/Either;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 1638
    invoke-static {v0}, Lcom/superwall/sdk/utilities/ErrorTrackingKt;->access$shouldLog(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1639
    sget-object v1, Lcom/superwall/sdk/Superwall;->Companion:Lcom/superwall/sdk/Superwall$Companion;

    invoke-virtual {v1}, Lcom/superwall/sdk/Superwall$Companion;->getInitialized()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1640
    invoke-virtual {v1}, Lcom/superwall/sdk/Superwall$Companion;->getInstance()Lcom/superwall/sdk/Superwall;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/superwall/sdk/utilities/ErrorTrackingKt;->trackError(Lcom/superwall/sdk/Superwall;Ljava/lang/Throwable;)V

    .line 1643
    :cond_1
    new-instance v1, Lcom/superwall/sdk/misc/Either$Failure;

    invoke-direct {v1, v0}, Lcom/superwall/sdk/misc/Either$Failure;-><init>(Ljava/lang/Throwable;)V

    check-cast v1, Lcom/superwall/sdk/misc/Either;

    return-void
.end method

.method public final togglePaywallSpinner(Z)V
    .locals 3

    .line 800
    invoke-virtual {p0}, Lcom/superwall/sdk/Superwall;->getIoScope$superwall_release()Lcom/superwall/sdk/misc/IOScope;

    move-result-object v0

    check-cast v0, Lcom/superwall/sdk/misc/SuperwallScope;

    new-instance v1, Lcom/superwall/sdk/Superwall$togglePaywallSpinner$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/superwall/sdk/Superwall$togglePaywallSpinner$1;-><init>(Lcom/superwall/sdk/Superwall;ZLkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1}, Lcom/superwall/sdk/misc/ScopesKt;->launchWithTracking(Lcom/superwall/sdk/misc/SuperwallScope;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    return-void
.end method
