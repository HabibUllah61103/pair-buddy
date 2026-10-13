.class public final Lcom/superwall/sdk/paywall/presentation/PaywallInfo;
.super Ljava/lang/Object;
.source "PaywallInfo.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/paywall/presentation/PaywallInfo$$serializer;,
        Lcom/superwall/sdk/paywall/presentation/PaywallInfo$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPaywallInfo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PaywallInfo.kt\ncom/superwall/sdk/paywall/presentation/PaywallInfo\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,346:1\n1#2:347\n1872#3,3:348\n535#4:351\n520#4,6:352\n*S KotlinDebug\n*F\n+ 1 PaywallInfo.kt\ncom/superwall/sdk/paywall/presentation/PaywallInfo\n*L\n288#1:348,3\n298#1:351\n298#1:352,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00ae\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0006\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u00086\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010%\n\u0002\u00080\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u0000 \u00b4\u00012\u00020\u0001:\u0004\u00b4\u0001\u00b5\u0001B\u0095\u0003\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b\u0012\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u000b\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0011\u001a\u00020\u0003\u0012\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017\u0012\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0017\u0012\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010 \u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010!\u001a\u0004\u0018\u00010\u0017\u0012\u0008\u0010\"\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010#\u001a\u00020$\u0012\u0006\u0010%\u001a\u00020&\u0012\u0006\u0010\'\u001a\u00020(\u0012\u000c\u0010)\u001a\u0008\u0012\u0004\u0012\u00020*0\u000b\u0012\u000c\u0010+\u001a\u0008\u0012\u0004\u0012\u00020,0\u000b\u0012\u000c\u0010-\u001a\u0008\u0012\u0004\u0012\u00020.0\u000b\u0012\u0006\u0010/\u001a\u000200\u0012\u0006\u00101\u001a\u00020\u0003\u0012\u0006\u00102\u001a\u00020\u0003\u0012\u0006\u00103\u001a\u00020$\u0012\u0014\u0008\u0002\u00104\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u000105\u0012\u0008\u0008\u0002\u00106\u001a\u000207\u00a2\u0006\u0004\u00088\u00109B\u00e5\u0002\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b\u0012\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u000b\u0012\u0008\u0010:\u001a\u0004\u0018\u00010;\u0012\u0008\u0010\u0013\u001a\u0004\u0018\u00010<\u0012\u0008\u0010\u0014\u001a\u0004\u0018\u00010<\u0012\u0008\u0010\u0015\u001a\u0004\u0018\u00010<\u0012\u0008\u0010\u0018\u001a\u0004\u0018\u00010<\u0012\u0008\u0010\u0019\u001a\u0004\u0018\u00010<\u0012\u0008\u0010\u001a\u001a\u0004\u0018\u00010<\u0012\u0008\u0010\u001c\u001a\u0004\u0018\u00010<\u0012\u0008\u0010\u001e\u001a\u0004\u0018\u00010<\u0012\u0008\u0010\u001d\u001a\u0004\u0018\u00010<\u0012\u0008\u0010\u001f\u001a\u0004\u0018\u00010<\u0012\u0008\u0010 \u001a\u0004\u0018\u00010<\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\n\u0008\u0002\u0010\"\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010#\u001a\u00020$\u0012\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0008\u0002\u0010%\u001a\u00020&\u0012\u000c\u0010)\u001a\u0008\u0012\u0004\u0012\u00020*0\u000b\u0012\u000c\u0010+\u001a\u0008\u0012\u0004\u0012\u00020,0\u000b\u0012\u0006\u0010\'\u001a\u00020(\u0012\u000c\u0010-\u001a\u0008\u0012\u0004\u0012\u00020.0\u000b\u0012\u0006\u0010/\u001a\u000200\u0012\u0006\u00101\u001a\u00020\u0003\u0012\u0006\u00102\u001a\u00020\u0003\u0012\u0006\u00103\u001a\u00020$\u0012\u0014\u0008\u0002\u00104\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u000105\u0012\u0008\u0008\u0002\u00106\u001a\u000207\u00a2\u0006\u0004\u00088\u0010=B\u00cf\u0003\u0008\u0010\u0012\u0006\u0010>\u001a\u00020?\u0012\u0006\u0010@\u001a\u00020?\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\u000e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u000b\u0012\u000e\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u000b\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017\u0012\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0017\u0012\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010 \u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010!\u001a\u0004\u0018\u00010\u0017\u0012\u0008\u0010\"\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010#\u001a\u00020$\u0012\u0008\u0010%\u001a\u0004\u0018\u00010&\u0012\u0008\u0010\'\u001a\u0004\u0018\u00010(\u0012\u000e\u0010)\u001a\n\u0012\u0004\u0012\u00020*\u0018\u00010\u000b\u0012\u000e\u0010+\u001a\n\u0012\u0004\u0012\u00020,\u0018\u00010\u000b\u0012\u000e\u0010-\u001a\n\u0012\u0004\u0012\u00020.\u0018\u00010\u000b\u0012\u0008\u0010/\u001a\u0004\u0018\u000100\u0012\u0008\u00101\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u00102\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u00103\u001a\u00020$\u0012\u0014\u00104\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0001\u0018\u000105\u0012\u0008\u00106\u001a\u0004\u0018\u000107\u0012\u0008\u0010A\u001a\u0004\u0018\u00010B\u00a2\u0006\u0004\u00088\u0010CJ8\u0010w\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0001052\n\u0008\u0002\u0010x\u001a\u0004\u0018\u00010y2\u0018\u0008\u0002\u0010z\u001a\u0012\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u000105J\u0012\u0010{\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00010|J\t\u0010}\u001a\u00020\u0003H\u00c6\u0003J\t\u0010~\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u007f\u001a\u00020\u0003H\u00c6\u0003J\u0012\u0010\u0080\u0001\u001a\u00020\u0007H\u00c6\u0003\u00a2\u0006\u0005\u0008\u0081\u0001\u0010EJ\u000c\u0010\u0082\u0001\u001a\u0004\u0018\u00010\tH\u00c6\u0003J\u0010\u0010\u0083\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bH\u00c6\u0003J\u0010\u0010\u0084\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u000bH\u00c6\u0003J\u000c\u0010\u0085\u0001\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000c\u0010\u0086\u0001\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000c\u0010\u0087\u0001\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\n\u0010\u0088\u0001\u001a\u00020\u0003H\u00c6\u0003J\u000c\u0010\u0089\u0001\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000c\u0010\u008a\u0001\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000c\u0010\u008b\u0001\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000c\u0010\u008c\u0001\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u0011\u0010\u008d\u0001\u001a\u0004\u0018\u00010\u0017H\u00c6\u0003\u00a2\u0006\u0002\u0010XJ\u000c\u0010\u008e\u0001\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000c\u0010\u008f\u0001\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000c\u0010\u0090\u0001\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u0011\u0010\u0091\u0001\u001a\u0004\u0018\u00010\u0017H\u00c6\u0003\u00a2\u0006\u0002\u0010XJ\u000c\u0010\u0092\u0001\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000c\u0010\u0093\u0001\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000c\u0010\u0094\u0001\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000c\u0010\u0095\u0001\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000c\u0010\u0096\u0001\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u0011\u0010\u0097\u0001\u001a\u0004\u0018\u00010\u0017H\u00c6\u0003\u00a2\u0006\u0002\u0010XJ\u000c\u0010\u0098\u0001\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\n\u0010\u0099\u0001\u001a\u00020$H\u00c6\u0003J\n\u0010\u009a\u0001\u001a\u00020&H\u00c6\u0003J\n\u0010\u009b\u0001\u001a\u00020(H\u00c6\u0003J\u0010\u0010\u009c\u0001\u001a\u0008\u0012\u0004\u0012\u00020*0\u000bH\u00c6\u0003J\u0010\u0010\u009d\u0001\u001a\u0008\u0012\u0004\u0012\u00020,0\u000bH\u00c6\u0003J\u0010\u0010\u009e\u0001\u001a\u0008\u0012\u0004\u0012\u00020.0\u000bH\u00c6\u0003J\n\u0010\u009f\u0001\u001a\u000200H\u00c6\u0003J\n\u0010\u00a0\u0001\u001a\u00020\u0003H\u00c6\u0003J\n\u0010\u00a1\u0001\u001a\u00020\u0003H\u00c6\u0003J\n\u0010\u00a2\u0001\u001a\u00020$H\u00c6\u0003J\u0016\u0010\u00a3\u0001\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u000105H\u00c6\u0003J\n\u0010\u00a4\u0001\u001a\u000207H\u00c6\u0003J\u00eb\u0003\u0010\u00a5\u0001\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t2\u000e\u0008\u0002\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b2\u000e\u0008\u0002\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u000b2\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00032\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00172\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u00172\n\u0008\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010 \u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010!\u001a\u0004\u0018\u00010\u00172\n\u0008\u0002\u0010\"\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010#\u001a\u00020$2\u0008\u0008\u0002\u0010%\u001a\u00020&2\u0008\u0008\u0002\u0010\'\u001a\u00020(2\u000e\u0008\u0002\u0010)\u001a\u0008\u0012\u0004\u0012\u00020*0\u000b2\u000e\u0008\u0002\u0010+\u001a\u0008\u0012\u0004\u0012\u00020,0\u000b2\u000e\u0008\u0002\u0010-\u001a\u0008\u0012\u0004\u0012\u00020.0\u000b2\u0008\u0008\u0002\u0010/\u001a\u0002002\u0008\u0008\u0002\u00101\u001a\u00020\u00032\u0008\u0008\u0002\u00102\u001a\u00020\u00032\u0008\u0008\u0002\u00103\u001a\u00020$2\u0014\u0008\u0002\u00104\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0001052\u0008\u0008\u0002\u00106\u001a\u000207H\u00c6\u0001\u00a2\u0006\u0006\u0008\u00a6\u0001\u0010\u00a7\u0001J\u0015\u0010\u00a8\u0001\u001a\u00020$2\t\u0010\u00a9\u0001\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\n\u0010\u00aa\u0001\u001a\u00020?H\u00d6\u0001J\n\u0010\u00ab\u0001\u001a\u00020\u0003H\u00d6\u0001J-\u0010\u00ac\u0001\u001a\u00030\u00ad\u00012\u0007\u0010\u00ae\u0001\u001a\u00020\u00002\u0008\u0010\u00af\u0001\u001a\u00030\u00b0\u00012\u0008\u0010\u00b1\u0001\u001a\u00030\u00b2\u0001H\u0001\u00a2\u0006\u0003\u0008\u00b3\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008D\u0010ER\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008F\u0010ER\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008G\u0010ER\u0013\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\n\n\u0002\u0010I\u001a\u0004\u0008H\u0010ER\u0013\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008J\u0010KR\u0017\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008L\u0010MR\u0017\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008N\u0010MR\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008O\u0010ER\u0013\u0010\u000f\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008P\u0010ER\u0013\u0010\u0010\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008Q\u0010ER\u0011\u0010\u0011\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008R\u0010ER\u0013\u0010\u0012\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008S\u0010ER\u0013\u0010\u0013\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008T\u0010ER\u0013\u0010\u0014\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008U\u0010ER\u0013\u0010\u0015\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008V\u0010ER\u0015\u0010\u0016\u001a\u0004\u0018\u00010\u0017\u00a2\u0006\n\n\u0002\u0010Y\u001a\u0004\u0008W\u0010XR\u0013\u0010\u0018\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008Z\u0010ER\u0013\u0010\u0019\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008[\u0010ER\u0013\u0010\u001a\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\\\u0010ER\u0015\u0010\u001b\u001a\u0004\u0018\u00010\u0017\u00a2\u0006\n\n\u0002\u0010Y\u001a\u0004\u0008]\u0010XR\u0013\u0010\u001c\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008^\u0010ER\u0013\u0010\u001d\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008_\u0010ER\u0013\u0010\u001e\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008`\u0010ER\u0013\u0010\u001f\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008a\u0010ER\u0013\u0010 \u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008b\u0010ER\u0015\u0010!\u001a\u0004\u0018\u00010\u0017\u00a2\u0006\n\n\u0002\u0010Y\u001a\u0004\u0008c\u0010XR\u0013\u0010\"\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008d\u0010ER\u0011\u0010#\u001a\u00020$\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010eR\u0011\u0010%\u001a\u00020&\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008f\u0010gR\u0011\u0010\'\u001a\u00020(\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008h\u0010iR\u0017\u0010)\u001a\u0008\u0012\u0004\u0012\u00020*0\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008j\u0010MR\u0017\u0010+\u001a\u0008\u0012\u0004\u0012\u00020,0\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008k\u0010MR\u0017\u0010-\u001a\u0008\u0012\u0004\u0012\u00020.0\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008l\u0010MR\u0011\u0010/\u001a\u000200\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008m\u0010nR\u0011\u00101\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008o\u0010ER\u0011\u00102\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008p\u0010ER\u0011\u00103\u001a\u00020$\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00083\u0010eR(\u00104\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0001058\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008q\u0010r\u001a\u0004\u0008s\u0010tR\u0011\u00106\u001a\u000207\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008u\u0010v\u00a8\u0006\u00b6\u0001"
    }
    d2 = {
        "Lcom/superwall/sdk/paywall/presentation/PaywallInfo;",
        "",
        "databaseId",
        "",
        "identifier",
        "name",
        "url",
        "Lcom/superwall/sdk/models/paywall/PaywallURL;",
        "experiment",
        "Lcom/superwall/sdk/models/triggers/Experiment;",
        "products",
        "",
        "Lcom/superwall/sdk/models/product/ProductItem;",
        "productIds",
        "presentedByEventWithName",
        "presentedByEventWithId",
        "presentedByEventAt",
        "presentedBy",
        "presentationSourceType",
        "responseLoadStartTime",
        "responseLoadCompleteTime",
        "responseLoadFailTime",
        "responseLoadDuration",
        "",
        "webViewLoadStartTime",
        "webViewLoadCompleteTime",
        "webViewLoadFailTime",
        "webViewLoadDuration",
        "productsLoadStartTime",
        "productsLoadCompleteTime",
        "productsLoadFailTime",
        "shimmerLoadStartTime",
        "shimmerLoadCompleteTime",
        "productsLoadDuration",
        "paywalljsVersion",
        "isFreeTrialAvailable",
        "",
        "featureGatingBehavior",
        "Lcom/superwall/sdk/models/config/FeatureGatingBehavior;",
        "closeReason",
        "Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;",
        "localNotifications",
        "Lcom/superwall/sdk/models/paywall/LocalNotification;",
        "computedPropertyRequests",
        "Lcom/superwall/sdk/models/config/ComputedPropertyRequest;",
        "surveys",
        "Lcom/superwall/sdk/config/models/Survey;",
        "presentation",
        "Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;",
        "buildId",
        "cacheKey",
        "isScrollEnabled",
        "state",
        "",
        "customerInfo",
        "Lcom/superwall/sdk/models/customer/CustomerInfo;",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/models/triggers/Experiment;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;ZLcom/superwall/sdk/models/config/FeatureGatingBehavior;Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Lcom/superwall/sdk/models/customer/CustomerInfo;Lkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "eventData",
        "Lcom/superwall/sdk/models/events/EventData;",
        "Ljava/util/Date;",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/superwall/sdk/models/events/EventData;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Lcom/superwall/sdk/models/triggers/Experiment;Ljava/lang/String;ZLjava/lang/String;Lcom/superwall/sdk/models/config/FeatureGatingBehavior;Ljava/util/List;Ljava/util/List;Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;Ljava/util/List;Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Lcom/superwall/sdk/models/customer/CustomerInfo;Lkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "seen0",
        "",
        "seen1",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/models/triggers/Experiment;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;ZLcom/superwall/sdk/models/config/FeatureGatingBehavior;Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Lcom/superwall/sdk/models/customer/CustomerInfo;Lkotlinx/serialization/internal/SerializationConstructorMarker;Lkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "getDatabaseId",
        "()Ljava/lang/String;",
        "getIdentifier",
        "getName",
        "getUrl-24UBhI0",
        "Ljava/lang/String;",
        "getExperiment",
        "()Lcom/superwall/sdk/models/triggers/Experiment;",
        "getProducts",
        "()Ljava/util/List;",
        "getProductIds",
        "getPresentedByEventWithName",
        "getPresentedByEventWithId",
        "getPresentedByEventAt",
        "getPresentedBy",
        "getPresentationSourceType",
        "getResponseLoadStartTime",
        "getResponseLoadCompleteTime",
        "getResponseLoadFailTime",
        "getResponseLoadDuration",
        "()Ljava/lang/Double;",
        "Ljava/lang/Double;",
        "getWebViewLoadStartTime",
        "getWebViewLoadCompleteTime",
        "getWebViewLoadFailTime",
        "getWebViewLoadDuration",
        "getProductsLoadStartTime",
        "getProductsLoadCompleteTime",
        "getProductsLoadFailTime",
        "getShimmerLoadStartTime",
        "getShimmerLoadCompleteTime",
        "getProductsLoadDuration",
        "getPaywalljsVersion",
        "()Z",
        "getFeatureGatingBehavior",
        "()Lcom/superwall/sdk/models/config/FeatureGatingBehavior;",
        "getCloseReason",
        "()Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;",
        "getLocalNotifications",
        "getComputedPropertyRequests",
        "getSurveys",
        "getPresentation",
        "()Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;",
        "getBuildId",
        "getCacheKey",
        "getState$annotations",
        "()V",
        "getState",
        "()Ljava/util/Map;",
        "getCustomerInfo",
        "()Lcom/superwall/sdk/models/customer/CustomerInfo;",
        "eventParams",
        "product",
        "Lcom/superwall/sdk/store/abstractions/product/StoreProductType;",
        "otherParams",
        "audienceFilterParams",
        "",
        "component1",
        "component2",
        "component3",
        "component4",
        "component4-24UBhI0",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "component10",
        "component11",
        "component12",
        "component13",
        "component14",
        "component15",
        "component16",
        "component17",
        "component18",
        "component19",
        "component20",
        "component21",
        "component22",
        "component23",
        "component24",
        "component25",
        "component26",
        "component27",
        "component28",
        "component29",
        "component30",
        "component31",
        "component32",
        "component33",
        "component34",
        "component35",
        "component36",
        "component37",
        "component38",
        "component39",
        "copy",
        "copy-zhR-ERg",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/models/triggers/Experiment;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;ZLcom/superwall/sdk/models/config/FeatureGatingBehavior;Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Lcom/superwall/sdk/models/customer/CustomerInfo;)Lcom/superwall/sdk/paywall/presentation/PaywallInfo;",
        "equals",
        "other",
        "hashCode",
        "toString",
        "write$Self",
        "",
        "self",
        "output",
        "Lkotlinx/serialization/encoding/CompositeEncoder;",
        "serialDesc",
        "Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "write$Self$superwall_release",
        "Companion",
        "$serializer",
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

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field private static final $childSerializers:[Lkotlinx/serialization/KSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlinx/serialization/KSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/superwall/sdk/paywall/presentation/PaywallInfo$Companion;

.field private static final json:Lkotlinx/serialization/json/Json;


# instance fields
.field private final buildId:Ljava/lang/String;

.field private final cacheKey:Ljava/lang/String;

.field private final closeReason:Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;

.field private final computedPropertyRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/config/ComputedPropertyRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final customerInfo:Lcom/superwall/sdk/models/customer/CustomerInfo;

.field private final databaseId:Ljava/lang/String;

.field private final experiment:Lcom/superwall/sdk/models/triggers/Experiment;

.field private final featureGatingBehavior:Lcom/superwall/sdk/models/config/FeatureGatingBehavior;

.field private final identifier:Ljava/lang/String;

.field private final isFreeTrialAvailable:Z

.field private final isScrollEnabled:Z

.field private final localNotifications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/paywall/LocalNotification;",
            ">;"
        }
    .end annotation
.end field

.field private final name:Ljava/lang/String;

.field private final paywalljsVersion:Ljava/lang/String;

.field private final presentation:Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;

.field private final presentationSourceType:Ljava/lang/String;

.field private final presentedBy:Ljava/lang/String;

.field private final presentedByEventAt:Ljava/lang/String;

.field private final presentedByEventWithId:Ljava/lang/String;

.field private final presentedByEventWithName:Ljava/lang/String;

.field private final productIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final products:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/product/ProductItem;",
            ">;"
        }
    .end annotation
.end field

.field private final productsLoadCompleteTime:Ljava/lang/String;

.field private final productsLoadDuration:Ljava/lang/Double;

.field private final productsLoadFailTime:Ljava/lang/String;

.field private final productsLoadStartTime:Ljava/lang/String;

.field private final responseLoadCompleteTime:Ljava/lang/String;

.field private final responseLoadDuration:Ljava/lang/Double;

.field private final responseLoadFailTime:Ljava/lang/String;

.field private final responseLoadStartTime:Ljava/lang/String;

.field private final shimmerLoadCompleteTime:Ljava/lang/String;

.field private final shimmerLoadStartTime:Ljava/lang/String;

.field private final state:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final surveys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/superwall/sdk/config/models/Survey;",
            ">;"
        }
    .end annotation
.end field

.field private final url:Ljava/lang/String;

.field private final webViewLoadCompleteTime:Ljava/lang/String;

.field private final webViewLoadDuration:Ljava/lang/Double;

.field private final webViewLoadFailTime:Ljava/lang/String;

.field private final webViewLoadStartTime:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$GA3OrMSV6ZtQPOKBV9ncyEN95ds(Lkotlinx/serialization/json/JsonBuilder;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->json$lambda$26(Lkotlinx/serialization/json/JsonBuilder;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ggS5Vh_OQrnT5KYXKocDxt_HNvw(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->eventParams$lambda$18(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/superwall/sdk/paywall/presentation/PaywallInfo$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->Companion:Lcom/superwall/sdk/paywall/presentation/PaywallInfo$Companion;

    const/16 v0, 0x27

    .line 301
    new-array v0, v0, [Lkotlinx/serialization/KSerializer;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const/4 v3, 0x3

    aput-object v1, v0, v3

    const/4 v3, 0x4

    aput-object v1, v0, v3

    new-instance v3, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v4, Lcom/superwall/sdk/models/product/ProductItemSerializer;->INSTANCE:Lcom/superwall/sdk/models/product/ProductItemSerializer;

    check-cast v4, Lkotlinx/serialization/KSerializer;

    invoke-direct {v3, v4}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    const/4 v4, 0x5

    aput-object v3, v0, v4

    new-instance v3, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v4, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v4, Lkotlinx/serialization/KSerializer;

    invoke-direct {v3, v4}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    const/4 v4, 0x6

    aput-object v3, v0, v4

    const/4 v3, 0x7

    aput-object v1, v0, v3

    const/16 v3, 0x8

    aput-object v1, v0, v3

    const/16 v3, 0x9

    aput-object v1, v0, v3

    const/16 v3, 0xa

    aput-object v1, v0, v3

    const/16 v3, 0xb

    aput-object v1, v0, v3

    const/16 v3, 0xc

    aput-object v1, v0, v3

    const/16 v3, 0xd

    aput-object v1, v0, v3

    const/16 v3, 0xe

    aput-object v1, v0, v3

    const/16 v3, 0xf

    aput-object v1, v0, v3

    const/16 v3, 0x10

    aput-object v1, v0, v3

    const/16 v3, 0x11

    aput-object v1, v0, v3

    const/16 v3, 0x12

    aput-object v1, v0, v3

    const/16 v3, 0x13

    aput-object v1, v0, v3

    const/16 v3, 0x14

    aput-object v1, v0, v3

    const/16 v3, 0x15

    aput-object v1, v0, v3

    const/16 v3, 0x16

    aput-object v1, v0, v3

    const/16 v3, 0x17

    aput-object v1, v0, v3

    const/16 v3, 0x18

    aput-object v1, v0, v3

    const/16 v3, 0x19

    aput-object v1, v0, v3

    const/16 v3, 0x1a

    aput-object v1, v0, v3

    const/16 v3, 0x1b

    aput-object v1, v0, v3

    const/16 v3, 0x1c

    aput-object v1, v0, v3

    sget-object v3, Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;->Companion:Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason$Companion;

    invoke-virtual {v3}, Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v3

    const/16 v4, 0x1d

    aput-object v3, v0, v4

    new-instance v3, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v4, Lcom/superwall/sdk/models/paywall/LocalNotification$$serializer;->INSTANCE:Lcom/superwall/sdk/models/paywall/LocalNotification$$serializer;

    check-cast v4, Lkotlinx/serialization/KSerializer;

    invoke-direct {v3, v4}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    const/16 v4, 0x1e

    aput-object v3, v0, v4

    new-instance v3, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v4, Lcom/superwall/sdk/models/config/ComputedPropertyRequest$$serializer;->INSTANCE:Lcom/superwall/sdk/models/config/ComputedPropertyRequest$$serializer;

    check-cast v4, Lkotlinx/serialization/KSerializer;

    invoke-direct {v3, v4}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    const/16 v4, 0x1f

    aput-object v3, v0, v4

    new-instance v3, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v4, Lcom/superwall/sdk/config/models/Survey$$serializer;->INSTANCE:Lcom/superwall/sdk/config/models/Survey$$serializer;

    check-cast v4, Lkotlinx/serialization/KSerializer;

    invoke-direct {v3, v4}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    const/16 v4, 0x20

    aput-object v3, v0, v4

    const/16 v3, 0x21

    aput-object v1, v0, v3

    const/16 v3, 0x22

    aput-object v1, v0, v3

    const/16 v3, 0x23

    aput-object v1, v0, v3

    const/16 v3, 0x24

    aput-object v1, v0, v3

    const/16 v3, 0x25

    aput-object v1, v0, v3

    const/16 v3, 0x26

    aput-object v1, v0, v3

    sput-object v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    .line 302
    new-instance v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/superwall/sdk/paywall/presentation/PaywallInfo$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v1, v0, v2, v1}, Lkotlinx/serialization/json/JsonKt;->Json$default(Lkotlinx/serialization/json/Json;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/serialization/json/Json;

    move-result-object v0

    sput-object v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->json:Lkotlinx/serialization/json/Json;

    return-void
.end method

.method private synthetic constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/models/triggers/Experiment;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;ZLcom/superwall/sdk/models/config/FeatureGatingBehavior;Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Lcom/superwall/sdk/models/customer/CustomerInfo;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v2, p1, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    and-int/lit8 v4, p2, 0x1f

    const/16 v5, 0x1f

    if-eq v5, v4, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    or-int/2addr v0, v3

    if-eqz v0, :cond_2

    .line 25
    filled-new-array/range {p1 .. p2}, [I

    move-result-object p1

    filled-new-array {v2, v5}, [I

    move-result-object v0

    sget-object v1, Lcom/superwall/sdk/paywall/presentation/PaywallInfo$$serializer;->INSTANCE:Lcom/superwall/sdk/paywall/presentation/PaywallInfo$$serializer;

    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/presentation/PaywallInfo$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwArrayMissingFieldException([I[ILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->databaseId:Ljava/lang/String;

    iput-object p4, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->identifier:Ljava/lang/String;

    iput-object p5, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->name:Ljava/lang/String;

    iput-object p6, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->url:Ljava/lang/String;

    iput-object p7, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->experiment:Lcom/superwall/sdk/models/triggers/Experiment;

    iput-object p8, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->products:Ljava/util/List;

    iput-object p9, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->productIds:Ljava/util/List;

    move-object/from16 p1, p10

    iput-object p1, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->presentedByEventWithName:Ljava/lang/String;

    move-object/from16 p1, p11

    iput-object p1, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->presentedByEventWithId:Ljava/lang/String;

    move-object/from16 p1, p12

    iput-object p1, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->presentedByEventAt:Ljava/lang/String;

    move-object/from16 p1, p13

    iput-object p1, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->presentedBy:Ljava/lang/String;

    move-object/from16 p1, p14

    iput-object p1, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->presentationSourceType:Ljava/lang/String;

    move-object/from16 p1, p15

    iput-object p1, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->responseLoadStartTime:Ljava/lang/String;

    move-object/from16 p1, p16

    iput-object p1, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->responseLoadCompleteTime:Ljava/lang/String;

    move-object/from16 p1, p17

    iput-object p1, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->responseLoadFailTime:Ljava/lang/String;

    move-object/from16 p1, p18

    iput-object p1, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->responseLoadDuration:Ljava/lang/Double;

    move-object/from16 p1, p19

    iput-object p1, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->webViewLoadStartTime:Ljava/lang/String;

    move-object/from16 p1, p20

    iput-object p1, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->webViewLoadCompleteTime:Ljava/lang/String;

    move-object/from16 p1, p21

    iput-object p1, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->webViewLoadFailTime:Ljava/lang/String;

    move-object/from16 p1, p22

    iput-object p1, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->webViewLoadDuration:Ljava/lang/Double;

    move-object/from16 p1, p23

    iput-object p1, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->productsLoadStartTime:Ljava/lang/String;

    move-object/from16 p1, p24

    iput-object p1, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->productsLoadCompleteTime:Ljava/lang/String;

    move-object/from16 p1, p25

    iput-object p1, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->productsLoadFailTime:Ljava/lang/String;

    move-object/from16 p1, p26

    iput-object p1, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->shimmerLoadStartTime:Ljava/lang/String;

    move-object/from16 p1, p27

    iput-object p1, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->shimmerLoadCompleteTime:Ljava/lang/String;

    move-object/from16 p1, p28

    iput-object p1, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->productsLoadDuration:Ljava/lang/Double;

    move-object/from16 p1, p29

    iput-object p1, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->paywalljsVersion:Ljava/lang/String;

    move/from16 p1, p30

    iput-boolean p1, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->isFreeTrialAvailable:Z

    move-object/from16 p1, p31

    iput-object p1, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->featureGatingBehavior:Lcom/superwall/sdk/models/config/FeatureGatingBehavior;

    move-object/from16 p1, p32

    iput-object p1, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->closeReason:Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;

    move-object/from16 p1, p33

    iput-object p1, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->localNotifications:Ljava/util/List;

    move-object/from16 p1, p34

    iput-object p1, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->computedPropertyRequests:Ljava/util/List;

    move-object/from16 p1, p35

    iput-object p1, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->surveys:Ljava/util/List;

    move-object/from16 p1, p36

    iput-object p1, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->presentation:Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;

    move-object/from16 p1, p37

    iput-object p1, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->buildId:Ljava/lang/String;

    move-object/from16 p1, p38

    iput-object p1, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->cacheKey:Ljava/lang/String;

    move/from16 p1, p39

    iput-boolean p1, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->isScrollEnabled:Z

    and-int/lit8 p1, p2, 0x20

    if-nez p1, :cond_3

    .line 65
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p1

    goto :goto_2

    :cond_3
    move-object/from16 p1, p40

    .line 25
    :goto_2
    iput-object p1, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->state:Ljava/util/Map;

    and-int/lit8 p1, p2, 0x40

    if-nez p1, :cond_4

    .line 66
    sget-object p1, Lcom/superwall/sdk/models/customer/CustomerInfo;->Companion:Lcom/superwall/sdk/models/customer/CustomerInfo$Companion;

    invoke-virtual {p1}, Lcom/superwall/sdk/models/customer/CustomerInfo$Companion;->empty()Lcom/superwall/sdk/models/customer/CustomerInfo;

    move-result-object p1

    .line 25
    :goto_3
    iput-object p1, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->customerInfo:Lcom/superwall/sdk/models/customer/CustomerInfo;

    return-void

    :cond_4
    move-object/from16 p1, p41

    goto :goto_3
.end method

.method public synthetic constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/models/triggers/Experiment;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;ZLcom/superwall/sdk/models/config/FeatureGatingBehavior;Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Lcom/superwall/sdk/models/customer/CustomerInfo;Lkotlinx/serialization/internal/SerializationConstructorMarker;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p42}, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/models/triggers/Experiment;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;ZLcom/superwall/sdk/models/config/FeatureGatingBehavior;Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Lcom/superwall/sdk/models/customer/CustomerInfo;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/models/triggers/Experiment;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;ZLcom/superwall/sdk/models/config/FeatureGatingBehavior;Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Lcom/superwall/sdk/models/customer/CustomerInfo;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/superwall/sdk/models/triggers/Experiment;",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/product/ProductItem;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/superwall/sdk/models/config/FeatureGatingBehavior;",
            "Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/paywall/LocalNotification;",
            ">;",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/config/ComputedPropertyRequest;",
            ">;",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/config/models/Survey;",
            ">;",
            "Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/superwall/sdk/models/customer/CustomerInfo;",
            ")V"
        }
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p11

    move-object/from16 v8, p29

    move-object/from16 v9, p30

    move-object/from16 v10, p31

    move-object/from16 v11, p32

    move-object/from16 v12, p33

    move-object/from16 v13, p34

    move-object/from16 v14, p35

    move-object/from16 v15, p36

    const-string v0, "databaseId"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "identifier"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "products"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "productIds"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "presentedBy"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featureGatingBehavior"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "closeReason"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "localNotifications"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "computedPropertyRequests"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "surveys"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "presentation"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buildId"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cacheKey"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    move-object/from16 v15, p38

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "customerInfo"

    move-object/from16 v15, p39

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    .line 27
    iput-object v1, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->databaseId:Ljava/lang/String;

    .line 28
    iput-object v2, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->identifier:Ljava/lang/String;

    .line 29
    iput-object v3, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->name:Ljava/lang/String;

    .line 30
    iput-object v4, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->url:Ljava/lang/String;

    move-object/from16 v1, p5

    .line 31
    iput-object v1, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->experiment:Lcom/superwall/sdk/models/triggers/Experiment;

    .line 32
    iput-object v5, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->products:Ljava/util/List;

    .line 33
    iput-object v6, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->productIds:Ljava/util/List;

    move-object/from16 v1, p8

    .line 34
    iput-object v1, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->presentedByEventWithName:Ljava/lang/String;

    move-object/from16 v1, p9

    .line 35
    iput-object v1, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->presentedByEventWithId:Ljava/lang/String;

    move-object/from16 v1, p10

    .line 36
    iput-object v1, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->presentedByEventAt:Ljava/lang/String;

    .line 37
    iput-object v7, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->presentedBy:Ljava/lang/String;

    move-object/from16 v1, p12

    .line 38
    iput-object v1, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->presentationSourceType:Ljava/lang/String;

    move-object/from16 v1, p13

    .line 39
    iput-object v1, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->responseLoadStartTime:Ljava/lang/String;

    move-object/from16 v1, p14

    .line 40
    iput-object v1, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->responseLoadCompleteTime:Ljava/lang/String;

    move-object/from16 v1, p15

    .line 41
    iput-object v1, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->responseLoadFailTime:Ljava/lang/String;

    move-object/from16 v1, p16

    .line 42
    iput-object v1, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->responseLoadDuration:Ljava/lang/Double;

    move-object/from16 v1, p17

    .line 43
    iput-object v1, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->webViewLoadStartTime:Ljava/lang/String;

    move-object/from16 v1, p18

    .line 44
    iput-object v1, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->webViewLoadCompleteTime:Ljava/lang/String;

    move-object/from16 v1, p19

    .line 45
    iput-object v1, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->webViewLoadFailTime:Ljava/lang/String;

    move-object/from16 v1, p20

    .line 46
    iput-object v1, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->webViewLoadDuration:Ljava/lang/Double;

    move-object/from16 v1, p21

    .line 47
    iput-object v1, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->productsLoadStartTime:Ljava/lang/String;

    move-object/from16 v1, p22

    .line 48
    iput-object v1, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->productsLoadCompleteTime:Ljava/lang/String;

    move-object/from16 v1, p23

    .line 49
    iput-object v1, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->productsLoadFailTime:Ljava/lang/String;

    move-object/from16 v1, p24

    .line 50
    iput-object v1, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->shimmerLoadStartTime:Ljava/lang/String;

    move-object/from16 v1, p25

    .line 51
    iput-object v1, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->shimmerLoadCompleteTime:Ljava/lang/String;

    move-object/from16 v1, p26

    .line 52
    iput-object v1, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->productsLoadDuration:Ljava/lang/Double;

    move-object/from16 v1, p27

    .line 53
    iput-object v1, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->paywalljsVersion:Ljava/lang/String;

    move/from16 v1, p28

    .line 54
    iput-boolean v1, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->isFreeTrialAvailable:Z

    .line 55
    iput-object v8, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->featureGatingBehavior:Lcom/superwall/sdk/models/config/FeatureGatingBehavior;

    .line 56
    iput-object v9, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->closeReason:Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;

    .line 57
    iput-object v10, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->localNotifications:Ljava/util/List;

    .line 58
    iput-object v11, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->computedPropertyRequests:Ljava/util/List;

    .line 59
    iput-object v12, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->surveys:Ljava/util/List;

    .line 60
    iput-object v13, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->presentation:Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;

    .line 61
    iput-object v14, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->buildId:Ljava/lang/String;

    move-object/from16 v1, p36

    .line 62
    iput-object v1, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->cacheKey:Ljava/lang/String;

    move/from16 v1, p37

    .line 63
    iput-boolean v1, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->isScrollEnabled:Z

    move-object/from16 v1, p38

    .line 64
    iput-object v1, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->state:Ljava/util/Map;

    .line 66
    iput-object v15, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->customerInfo:Lcom/superwall/sdk/models/customer/CustomerInfo;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/models/triggers/Experiment;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;ZLcom/superwall/sdk/models/config/FeatureGatingBehavior;Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Lcom/superwall/sdk/models/customer/CustomerInfo;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 42

    and-int/lit8 v0, p41, 0x20

    if-eqz v0, :cond_0

    .line 65
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    move-object/from16 v39, v0

    goto :goto_0

    :cond_0
    move-object/from16 v39, p38

    :goto_0
    and-int/lit8 v0, p41, 0x40

    if-eqz v0, :cond_1

    .line 66
    sget-object v0, Lcom/superwall/sdk/models/customer/CustomerInfo;->Companion:Lcom/superwall/sdk/models/customer/CustomerInfo$Companion;

    invoke-virtual {v0}, Lcom/superwall/sdk/models/customer/CustomerInfo$Companion;->empty()Lcom/superwall/sdk/models/customer/CustomerInfo;

    move-result-object v0

    move-object/from16 v40, v0

    goto :goto_1

    :cond_1
    move-object/from16 v40, p39

    :goto_1
    const/16 v41, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    move-object/from16 v20, p19

    move-object/from16 v21, p20

    move-object/from16 v22, p21

    move-object/from16 v23, p22

    move-object/from16 v24, p23

    move-object/from16 v25, p24

    move-object/from16 v26, p25

    move-object/from16 v27, p26

    move-object/from16 v28, p27

    move/from16 v29, p28

    move-object/from16 v30, p29

    move-object/from16 v31, p30

    move-object/from16 v32, p31

    move-object/from16 v33, p32

    move-object/from16 v34, p33

    move-object/from16 v35, p34

    move-object/from16 v36, p35

    move-object/from16 v37, p36

    move/from16 v38, p37

    .line 26
    invoke-direct/range {v1 .. v41}, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/models/triggers/Experiment;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;ZLcom/superwall/sdk/models/config/FeatureGatingBehavior;Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Lcom/superwall/sdk/models/customer/CustomerInfo;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/models/triggers/Experiment;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;ZLcom/superwall/sdk/models/config/FeatureGatingBehavior;Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Lcom/superwall/sdk/models/customer/CustomerInfo;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p39}, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/models/triggers/Experiment;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;ZLcom/superwall/sdk/models/config/FeatureGatingBehavior;Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Lcom/superwall/sdk/models/customer/CustomerInfo;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/superwall/sdk/models/events/EventData;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Lcom/superwall/sdk/models/triggers/Experiment;Ljava/lang/String;ZLjava/lang/String;Lcom/superwall/sdk/models/config/FeatureGatingBehavior;Ljava/util/List;Ljava/util/List;Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;Ljava/util/List;Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Lcom/superwall/sdk/models/customer/CustomerInfo;)V
    .locals 50
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/product/ProductItem;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/superwall/sdk/models/events/EventData;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Lcom/superwall/sdk/models/triggers/Experiment;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Lcom/superwall/sdk/models/config/FeatureGatingBehavior;",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/paywall/LocalNotification;",
            ">;",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/config/ComputedPropertyRequest;",
            ">;",
            "Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/config/models/Survey;",
            ">;",
            "Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/superwall/sdk/models/customer/CustomerInfo;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p8

    move-object/from16 v1, p10

    move-object/from16 v2, p11

    move-object/from16 v3, p12

    move-object/from16 v4, p13

    move-object/from16 v5, p14

    move-object/from16 v6, p15

    move-object/from16 v7, p16

    const-string v8, "databaseId"

    move-object/from16 v10, p1

    invoke-static {v10, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "identifier"

    move-object/from16 v11, p2

    invoke-static {v11, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "name"

    move-object/from16 v12, p3

    invoke-static {v12, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "url"

    move-object/from16 v13, p4

    invoke-static {v13, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "products"

    move-object/from16 v15, p5

    invoke-static {v15, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "productIds"

    move-object/from16 v9, p6

    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "featureGatingBehavior"

    move-object/from16 v14, p23

    invoke-static {v14, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "localNotifications"

    move-object/from16 v9, p24

    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "computedPropertyRequests"

    move-object/from16 v9, p25

    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "closeReason"

    move-object/from16 v9, p26

    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "surveys"

    move-object/from16 v9, p27

    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "presentation"

    move-object/from16 v9, p28

    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "buildId"

    move-object/from16 v9, p29

    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "cacheKey"

    move-object/from16 v9, p30

    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "state"

    move-object/from16 v9, p32

    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "customerInfo"

    move-object/from16 v9, p33

    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p7, :cond_0

    .line 107
    invoke-virtual/range {p7 .. p7}, Lcom/superwall/sdk/models/events/EventData;->getName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v17, v16

    goto :goto_0

    :cond_0
    const/16 v17, 0x0

    :goto_0
    if-eqz p7, :cond_1

    .line 108
    invoke-virtual/range {p7 .. p7}, Lcom/superwall/sdk/models/events/EventData;->getCreatedAt()Ljava/util/Date;

    move-result-object v16

    if-eqz v16, :cond_1

    invoke-virtual/range {v16 .. v16}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v19, v16

    goto :goto_1

    :cond_1
    const/16 v19, 0x0

    :goto_1
    if-eqz p7, :cond_2

    .line 109
    invoke-virtual/range {p7 .. p7}, Lcom/superwall/sdk/models/events/EventData;->getId()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    sget-object v9, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v8, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "toLowerCase(...)"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v18, v8

    goto :goto_2

    :cond_2
    const/16 v18, 0x0

    :goto_2
    if-eqz p7, :cond_3

    .line 116
    const-string v8, "event"

    goto :goto_3

    :cond_3
    const-string v8, "programmatically"

    :goto_3
    move-object/from16 v20, v8

    .line 119
    const-string v8, ""

    if-eqz v0, :cond_5

    .line 120
    invoke-static {}, Lcom/superwall/sdk/utilities/DateUtilsKt;->getDateFormatterUtil()Ljava/text/SimpleDateFormat;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_4

    goto :goto_4

    :cond_4
    move-object/from16 v22, v9

    goto :goto_5

    :cond_5
    :goto_4
    move-object/from16 v22, v8

    :goto_5
    if-eqz v0, :cond_7

    .line 124
    invoke-static {}, Lcom/superwall/sdk/utilities/DateUtilsKt;->getDateFormatterUtil()Ljava/text/SimpleDateFormat;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_6

    goto :goto_6

    :cond_6
    move-object/from16 v23, v9

    goto :goto_7

    :cond_7
    :goto_6
    move-object/from16 v23, v8

    :goto_7
    if-eqz v1, :cond_9

    .line 128
    invoke-static {}, Lcom/superwall/sdk/utilities/DateUtilsKt;->getDateFormatterUtil()Ljava/text/SimpleDateFormat;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    goto :goto_8

    :cond_8
    move-object/from16 v24, v1

    goto :goto_9

    :cond_9
    :goto_8
    move-object/from16 v24, v8

    :goto_9
    const/16 v1, 0x3e8

    if-eqz v0, :cond_b

    if-eqz p9, :cond_a

    .line 133
    invoke-virtual/range {p9 .. p9}, Ljava/util/Date;->getTime()J

    move-result-wide v25

    move-object/from16 p7, v8

    int-to-long v8, v1

    div-long v25, v25, v8

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v27

    div-long v27, v27, v8

    sub-long v8, v25, v27

    long-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_a

    :cond_a
    move-object/from16 p7, v8

    const/4 v0, 0x0

    :goto_a
    move-object/from16 v25, v0

    goto :goto_b

    :cond_b
    move-object/from16 p7, v8

    const/16 v25, 0x0

    :goto_b
    if-eqz v2, :cond_d

    .line 138
    invoke-static {}, Lcom/superwall/sdk/utilities/DateUtilsKt;->getDateFormatterUtil()Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c

    goto :goto_c

    :cond_c
    move-object/from16 v26, v0

    goto :goto_d

    :cond_d
    :goto_c
    move-object/from16 v26, p7

    :goto_d
    if-eqz v3, :cond_f

    .line 142
    invoke-static {}, Lcom/superwall/sdk/utilities/DateUtilsKt;->getDateFormatterUtil()Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_e

    goto :goto_e

    :cond_e
    move-object/from16 v27, v0

    goto :goto_f

    :cond_f
    :goto_e
    move-object/from16 v27, p7

    :goto_f
    if-eqz v4, :cond_11

    .line 146
    invoke-static {}, Lcom/superwall/sdk/utilities/DateUtilsKt;->getDateFormatterUtil()Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_10

    goto :goto_10

    :cond_10
    move-object/from16 v28, v0

    goto :goto_11

    :cond_11
    :goto_10
    move-object/from16 v28, p7

    :goto_11
    if-eqz v2, :cond_13

    if-eqz v3, :cond_12

    .line 151
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    int-to-long v8, v1

    div-long/2addr v3, v8

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v29

    div-long v29, v29, v8

    sub-long v3, v3, v29

    long-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_12

    :cond_12
    const/4 v0, 0x0

    :goto_12
    move-object/from16 v29, v0

    goto :goto_13

    :cond_13
    const/16 v29, 0x0

    :goto_13
    if-eqz v5, :cond_15

    .line 156
    invoke-static {}, Lcom/superwall/sdk/utilities/DateUtilsKt;->getDateFormatterUtil()Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_14

    goto :goto_14

    :cond_14
    move-object/from16 v30, v0

    goto :goto_15

    :cond_15
    :goto_14
    move-object/from16 v30, p7

    :goto_15
    if-eqz v7, :cond_17

    .line 160
    invoke-static {}, Lcom/superwall/sdk/utilities/DateUtilsKt;->getDateFormatterUtil()Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_16

    goto :goto_16

    :cond_16
    move-object/from16 v31, v0

    goto :goto_17

    :cond_17
    :goto_16
    move-object/from16 v31, p7

    :goto_17
    if-eqz v6, :cond_19

    .line 164
    invoke-static {}, Lcom/superwall/sdk/utilities/DateUtilsKt;->getDateFormatterUtil()Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_18

    goto :goto_18

    :cond_18
    move-object/from16 v32, v0

    goto :goto_19

    :cond_19
    :goto_18
    move-object/from16 v32, p7

    :goto_19
    if-eqz v5, :cond_1b

    if-eqz v7, :cond_1a

    .line 169
    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    int-to-long v0, v1

    div-long/2addr v3, v0

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    div-long/2addr v5, v0

    sub-long/2addr v3, v5

    long-to-double v0, v3

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    move-object v8, v0

    goto :goto_1a

    :cond_1a
    const/4 v8, 0x0

    :goto_1a
    move-object/from16 v35, v8

    goto :goto_1b

    :cond_1b
    const/16 v35, 0x0

    :goto_1b
    if-eqz v2, :cond_1d

    .line 174
    invoke-static {}, Lcom/superwall/sdk/utilities/DateUtilsKt;->getDateFormatterUtil()Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1c

    goto :goto_1c

    :cond_1c
    move-object/from16 v33, v0

    goto :goto_1d

    :cond_1d
    :goto_1c
    move-object/from16 v33, p7

    :goto_1d
    if-eqz v2, :cond_1f

    .line 178
    invoke-static {}, Lcom/superwall/sdk/utilities/DateUtilsKt;->getDateFormatterUtil()Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1e

    goto :goto_1e

    :cond_1e
    move-object/from16 v34, v0

    goto :goto_1f

    :cond_1f
    :goto_1e
    move-object/from16 v34, p7

    :goto_1f
    const/16 v49, 0x0

    move-object/from16 v9, p0

    move-object/from16 v16, p6

    move-object/from16 v36, p20

    move/from16 v37, p21

    move-object/from16 v21, p22

    move-object/from16 v40, p24

    move-object/from16 v41, p25

    move-object/from16 v39, p26

    move-object/from16 v42, p27

    move-object/from16 v43, p28

    move-object/from16 v44, p29

    move-object/from16 v45, p30

    move/from16 v46, p31

    move-object/from16 v47, p32

    move-object/from16 v48, p33

    move-object/from16 v38, v14

    move-object/from16 v14, p19

    .line 102
    invoke-direct/range {v9 .. v49}, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/models/triggers/Experiment;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;ZLcom/superwall/sdk/models/config/FeatureGatingBehavior;Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Lcom/superwall/sdk/models/customer/CustomerInfo;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/superwall/sdk/models/events/EventData;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Lcom/superwall/sdk/models/triggers/Experiment;Ljava/lang/String;ZLjava/lang/String;Lcom/superwall/sdk/models/config/FeatureGatingBehavior;Ljava/util/List;Ljava/util/List;Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;Ljava/util/List;Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Lcom/superwall/sdk/models/customer/CustomerInfo;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 37

    const/high16 v0, 0x40000

    and-int v0, p34, v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object/from16 v21, v1

    goto :goto_0

    :cond_0
    move-object/from16 v21, p19

    :goto_0
    const/high16 v0, 0x80000

    and-int v0, p34, v0

    if-eqz v0, :cond_1

    move-object/from16 v22, v1

    goto :goto_1

    :cond_1
    move-object/from16 v22, p20

    :goto_1
    const/high16 v0, 0x200000

    and-int v0, p34, v0

    if-eqz v0, :cond_2

    move-object/from16 v24, v1

    goto :goto_2

    :cond_2
    move-object/from16 v24, p22

    :goto_2
    const/high16 v0, 0x400000

    and-int v0, p34, v0

    if-eqz v0, :cond_3

    .line 91
    sget-object v0, Lcom/superwall/sdk/models/config/FeatureGatingBehavior$NonGated;->INSTANCE:Lcom/superwall/sdk/models/config/FeatureGatingBehavior$NonGated;

    check-cast v0, Lcom/superwall/sdk/models/config/FeatureGatingBehavior;

    move-object/from16 v25, v0

    goto :goto_3

    :cond_3
    move-object/from16 v25, p23

    :goto_3
    const/high16 v0, -0x80000000

    and-int v0, p34, v0

    if-eqz v0, :cond_4

    .line 100
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    move-object/from16 v34, v0

    goto :goto_4

    :cond_4
    move-object/from16 v34, p32

    :goto_4
    and-int/lit8 v0, p35, 0x1

    if-eqz v0, :cond_5

    .line 101
    sget-object v0, Lcom/superwall/sdk/models/customer/CustomerInfo;->Companion:Lcom/superwall/sdk/models/customer/CustomerInfo$Companion;

    invoke-virtual {v0}, Lcom/superwall/sdk/models/customer/CustomerInfo$Companion;->empty()Lcom/superwall/sdk/models/customer/CustomerInfo;

    move-result-object v0

    move-object/from16 v35, v0

    goto :goto_5

    :cond_5
    move-object/from16 v35, p33

    :goto_5
    const/16 v36, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move-object/from16 v15, p13

    move-object/from16 v16, p14

    move-object/from16 v17, p15

    move-object/from16 v18, p16

    move-object/from16 v19, p17

    move-object/from16 v20, p18

    move/from16 v23, p21

    move-object/from16 v26, p24

    move-object/from16 v27, p25

    move-object/from16 v28, p26

    move-object/from16 v29, p27

    move-object/from16 v30, p28

    move-object/from16 v31, p29

    move-object/from16 v32, p30

    move/from16 v33, p31

    .line 68
    invoke-direct/range {v2 .. v36}, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/superwall/sdk/models/events/EventData;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Lcom/superwall/sdk/models/triggers/Experiment;Ljava/lang/String;ZLjava/lang/String;Lcom/superwall/sdk/models/config/FeatureGatingBehavior;Ljava/util/List;Ljava/util/List;Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;Ljava/util/List;Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Lcom/superwall/sdk/models/customer/CustomerInfo;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/superwall/sdk/models/events/EventData;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Lcom/superwall/sdk/models/triggers/Experiment;Ljava/lang/String;ZLjava/lang/String;Lcom/superwall/sdk/models/config/FeatureGatingBehavior;Ljava/util/List;Ljava/util/List;Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;Ljava/util/List;Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Lcom/superwall/sdk/models/customer/CustomerInfo;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p33}, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/superwall/sdk/models/events/EventData;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Lcom/superwall/sdk/models/triggers/Experiment;Ljava/lang/String;ZLjava/lang/String;Lcom/superwall/sdk/models/config/FeatureGatingBehavior;Ljava/util/List;Ljava/util/List;Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;Ljava/util/List;Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Lcom/superwall/sdk/models/customer/CustomerInfo;)V

    return-void
.end method

.method public static final synthetic access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 25
    sget-object v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method public static synthetic copy-zhR-ERg$default(Lcom/superwall/sdk/paywall/presentation/PaywallInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/models/triggers/Experiment;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;ZLcom/superwall/sdk/models/config/FeatureGatingBehavior;Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Lcom/superwall/sdk/models/customer/CustomerInfo;IILjava/lang/Object;)Lcom/superwall/sdk/paywall/presentation/PaywallInfo;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p40

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->databaseId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->identifier:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->name:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->url:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->experiment:Lcom/superwall/sdk/models/triggers/Experiment;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->products:Ljava/util/List;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->productIds:Ljava/util/List;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->presentedByEventWithName:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-object v10, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->presentedByEventWithId:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget-object v11, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->presentedByEventAt:Ljava/lang/String;

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    iget-object v12, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->presentedBy:Ljava/lang/String;

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    iget-object v13, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->presentationSourceType:Ljava/lang/String;

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_c

    iget-object v14, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->responseLoadStartTime:Ljava/lang/String;

    goto :goto_c

    :cond_c
    move-object/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget-object v15, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->responseLoadCompleteTime:Ljava/lang/String;

    goto :goto_d

    :cond_d
    move-object/from16 v15, p14

    :goto_d
    move-object/from16 p1, v2

    and-int/lit16 v2, v1, 0x4000

    if-eqz v2, :cond_e

    iget-object v2, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->responseLoadFailTime:Ljava/lang/String;

    goto :goto_e

    :cond_e
    move-object/from16 v2, p15

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    if-eqz v16, :cond_f

    iget-object v1, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->responseLoadDuration:Ljava/lang/Double;

    goto :goto_f

    :cond_f
    move-object/from16 v1, p16

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, p40, v16

    move-object/from16 p2, v1

    if-eqz v16, :cond_10

    iget-object v1, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->webViewLoadStartTime:Ljava/lang/String;

    goto :goto_10

    :cond_10
    move-object/from16 v1, p17

    :goto_10
    const/high16 v16, 0x20000

    and-int v16, p40, v16

    move-object/from16 p3, v1

    if-eqz v16, :cond_11

    iget-object v1, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->webViewLoadCompleteTime:Ljava/lang/String;

    goto :goto_11

    :cond_11
    move-object/from16 v1, p18

    :goto_11
    const/high16 v16, 0x40000

    and-int v16, p40, v16

    move-object/from16 p4, v1

    if-eqz v16, :cond_12

    iget-object v1, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->webViewLoadFailTime:Ljava/lang/String;

    goto :goto_12

    :cond_12
    move-object/from16 v1, p19

    :goto_12
    const/high16 v16, 0x80000

    and-int v16, p40, v16

    move-object/from16 p5, v1

    if-eqz v16, :cond_13

    iget-object v1, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->webViewLoadDuration:Ljava/lang/Double;

    goto :goto_13

    :cond_13
    move-object/from16 v1, p20

    :goto_13
    const/high16 v16, 0x100000

    and-int v16, p40, v16

    move-object/from16 p6, v1

    if-eqz v16, :cond_14

    iget-object v1, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->productsLoadStartTime:Ljava/lang/String;

    goto :goto_14

    :cond_14
    move-object/from16 v1, p21

    :goto_14
    const/high16 v16, 0x200000

    and-int v16, p40, v16

    move-object/from16 p7, v1

    if-eqz v16, :cond_15

    iget-object v1, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->productsLoadCompleteTime:Ljava/lang/String;

    goto :goto_15

    :cond_15
    move-object/from16 v1, p22

    :goto_15
    const/high16 v16, 0x400000

    and-int v16, p40, v16

    move-object/from16 p8, v1

    if-eqz v16, :cond_16

    iget-object v1, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->productsLoadFailTime:Ljava/lang/String;

    goto :goto_16

    :cond_16
    move-object/from16 v1, p23

    :goto_16
    const/high16 v16, 0x800000

    and-int v16, p40, v16

    move-object/from16 p9, v1

    if-eqz v16, :cond_17

    iget-object v1, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->shimmerLoadStartTime:Ljava/lang/String;

    goto :goto_17

    :cond_17
    move-object/from16 v1, p24

    :goto_17
    const/high16 v16, 0x1000000

    and-int v16, p40, v16

    move-object/from16 p10, v1

    if-eqz v16, :cond_18

    iget-object v1, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->shimmerLoadCompleteTime:Ljava/lang/String;

    goto :goto_18

    :cond_18
    move-object/from16 v1, p25

    :goto_18
    const/high16 v16, 0x2000000

    and-int v16, p40, v16

    move-object/from16 p11, v1

    if-eqz v16, :cond_19

    iget-object v1, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->productsLoadDuration:Ljava/lang/Double;

    goto :goto_19

    :cond_19
    move-object/from16 v1, p26

    :goto_19
    const/high16 v16, 0x4000000

    and-int v16, p40, v16

    move-object/from16 p12, v1

    if-eqz v16, :cond_1a

    iget-object v1, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->paywalljsVersion:Ljava/lang/String;

    goto :goto_1a

    :cond_1a
    move-object/from16 v1, p27

    :goto_1a
    const/high16 v16, 0x8000000

    and-int v16, p40, v16

    move-object/from16 p13, v1

    if-eqz v16, :cond_1b

    iget-boolean v1, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->isFreeTrialAvailable:Z

    goto :goto_1b

    :cond_1b
    move/from16 v1, p28

    :goto_1b
    const/high16 v16, 0x10000000

    and-int v16, p40, v16

    move/from16 p14, v1

    if-eqz v16, :cond_1c

    iget-object v1, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->featureGatingBehavior:Lcom/superwall/sdk/models/config/FeatureGatingBehavior;

    goto :goto_1c

    :cond_1c
    move-object/from16 v1, p29

    :goto_1c
    const/high16 v16, 0x20000000

    and-int v16, p40, v16

    move-object/from16 p15, v1

    if-eqz v16, :cond_1d

    iget-object v1, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->closeReason:Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;

    goto :goto_1d

    :cond_1d
    move-object/from16 v1, p30

    :goto_1d
    const/high16 v16, 0x40000000    # 2.0f

    and-int v16, p40, v16

    move-object/from16 p16, v1

    if-eqz v16, :cond_1e

    iget-object v1, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->localNotifications:Ljava/util/List;

    goto :goto_1e

    :cond_1e
    move-object/from16 v1, p31

    :goto_1e
    const/high16 v16, -0x80000000

    and-int v16, p40, v16

    move-object/from16 p17, v1

    if-eqz v16, :cond_1f

    iget-object v1, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->computedPropertyRequests:Ljava/util/List;

    goto :goto_1f

    :cond_1f
    move-object/from16 v1, p32

    :goto_1f
    and-int/lit8 v16, p41, 0x1

    move-object/from16 p18, v1

    if-eqz v16, :cond_20

    iget-object v1, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->surveys:Ljava/util/List;

    goto :goto_20

    :cond_20
    move-object/from16 v1, p33

    :goto_20
    and-int/lit8 v16, p41, 0x2

    move-object/from16 p19, v1

    if-eqz v16, :cond_21

    iget-object v1, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->presentation:Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;

    goto :goto_21

    :cond_21
    move-object/from16 v1, p34

    :goto_21
    and-int/lit8 v16, p41, 0x4

    move-object/from16 p20, v1

    if-eqz v16, :cond_22

    iget-object v1, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->buildId:Ljava/lang/String;

    goto :goto_22

    :cond_22
    move-object/from16 v1, p35

    :goto_22
    and-int/lit8 v16, p41, 0x8

    move-object/from16 p21, v1

    if-eqz v16, :cond_23

    iget-object v1, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->cacheKey:Ljava/lang/String;

    goto :goto_23

    :cond_23
    move-object/from16 v1, p36

    :goto_23
    and-int/lit8 v16, p41, 0x10

    move-object/from16 p22, v1

    if-eqz v16, :cond_24

    iget-boolean v1, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->isScrollEnabled:Z

    goto :goto_24

    :cond_24
    move/from16 v1, p37

    :goto_24
    and-int/lit8 v16, p41, 0x20

    move/from16 p23, v1

    if-eqz v16, :cond_25

    iget-object v1, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->state:Ljava/util/Map;

    goto :goto_25

    :cond_25
    move-object/from16 v1, p38

    :goto_25
    and-int/lit8 v16, p41, 0x40

    if-eqz v16, :cond_26

    move-object/from16 p24, v1

    iget-object v1, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->customerInfo:Lcom/superwall/sdk/models/customer/CustomerInfo;

    move-object/from16 p39, p24

    move-object/from16 p40, v1

    move-object/from16 p25, p10

    move-object/from16 p26, p11

    move-object/from16 p27, p12

    move-object/from16 p28, p13

    move/from16 p29, p14

    move-object/from16 p30, p15

    move-object/from16 p31, p16

    move-object/from16 p32, p17

    move-object/from16 p33, p18

    move-object/from16 p34, p19

    move-object/from16 p35, p20

    move-object/from16 p36, p21

    move-object/from16 p37, p22

    move/from16 p38, p23

    move-object/from16 p16, v2

    move-object/from16 p10, v10

    move-object/from16 p11, v11

    move-object/from16 p12, v12

    move-object/from16 p13, v13

    move-object/from16 p14, v14

    move-object/from16 p15, v15

    move-object/from16 p17, p2

    move-object/from16 p18, p3

    move-object/from16 p19, p4

    move-object/from16 p20, p5

    move-object/from16 p21, p6

    move-object/from16 p22, p7

    move-object/from16 p23, p8

    move-object/from16 p24, p9

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    move-object/from16 p9, v9

    goto :goto_26

    :cond_26
    move-object/from16 p40, p39

    move-object/from16 p39, v1

    move-object/from16 p24, p9

    move-object/from16 p25, p10

    move-object/from16 p26, p11

    move-object/from16 p27, p12

    move-object/from16 p28, p13

    move/from16 p29, p14

    move-object/from16 p30, p15

    move-object/from16 p31, p16

    move-object/from16 p32, p17

    move-object/from16 p33, p18

    move-object/from16 p34, p19

    move-object/from16 p35, p20

    move-object/from16 p36, p21

    move-object/from16 p37, p22

    move/from16 p38, p23

    move-object/from16 p16, v2

    move-object/from16 p9, v9

    move-object/from16 p10, v10

    move-object/from16 p11, v11

    move-object/from16 p12, v12

    move-object/from16 p13, v13

    move-object/from16 p14, v14

    move-object/from16 p15, v15

    move-object/from16 p17, p2

    move-object/from16 p18, p3

    move-object/from16 p19, p4

    move-object/from16 p20, p5

    move-object/from16 p21, p6

    move-object/from16 p22, p7

    move-object/from16 p23, p8

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    :goto_26
    move-object/from16 p2, p1

    move-object/from16 p1, v0

    invoke-virtual/range {p1 .. p40}, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->copy-zhR-ERg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/models/triggers/Experiment;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;ZLcom/superwall/sdk/models/config/FeatureGatingBehavior;Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Lcom/superwall/sdk/models/customer/CustomerInfo;)Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic eventParams$default(Lcom/superwall/sdk/paywall/presentation/PaywallInfo;Lcom/superwall/sdk/store/abstractions/product/StoreProductType;Ljava/util/Map;ILjava/lang/Object;)Ljava/util/Map;
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move-object p2, v0

    .line 192
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->eventParams(Lcom/superwall/sdk/store/abstractions/product/StoreProductType;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private static final eventParams$lambda$18(Ljava/lang/Object;)Z
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic getState$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/Serializable;
        with = Lcom/superwall/sdk/models/serialization/AnyMapSerializer;
    .end annotation

    return-void
.end method

.method private static final json$lambda$26(Lkotlinx/serialization/json/JsonBuilder;)Lkotlin/Unit;
    .locals 1

    const-string v0, "$this$Json"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 302
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static final synthetic write$Self$superwall_release(Lcom/superwall/sdk/paywall/presentation/PaywallInfo;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 25
    sget-object v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->databaseId:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->identifier:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->name:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    sget-object v1, Lcom/superwall/sdk/models/paywall/PaywallURL$$serializer;->INSTANCE:Lcom/superwall/sdk/models/paywall/PaywallURL$$serializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object v2, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->url:Ljava/lang/String;

    invoke-static {v2}, Lcom/superwall/sdk/models/paywall/PaywallURL;->box-impl(Ljava/lang/String;)Lcom/superwall/sdk/models/paywall/PaywallURL;

    move-result-object v2

    const/4 v3, 0x3

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v1, Lcom/superwall/sdk/models/triggers/Experiment$$serializer;->INSTANCE:Lcom/superwall/sdk/models/triggers/Experiment$$serializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object v2, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->experiment:Lcom/superwall/sdk/models/triggers/Experiment;

    const/4 v3, 0x4

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v1, 0x5

    aget-object v2, v0, v1

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    iget-object v3, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->products:Ljava/util/List;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v1, 0x6

    aget-object v2, v0, v1

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    iget-object v3, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->productIds:Ljava/util/List;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object v2, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->presentedByEventWithName:Ljava/lang/String;

    const/4 v3, 0x7

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object v2, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->presentedByEventWithId:Ljava/lang/String;

    const/16 v3, 0x8

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object v2, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->presentedByEventAt:Ljava/lang/String;

    const/16 v3, 0x9

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->presentedBy:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object v2, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->presentationSourceType:Ljava/lang/String;

    const/16 v3, 0xb

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object v2, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->responseLoadStartTime:Ljava/lang/String;

    const/16 v3, 0xc

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object v2, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->responseLoadCompleteTime:Ljava/lang/String;

    const/16 v3, 0xd

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object v2, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->responseLoadFailTime:Ljava/lang/String;

    const/16 v3, 0xe

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v1, Lkotlinx/serialization/internal/DoubleSerializer;->INSTANCE:Lkotlinx/serialization/internal/DoubleSerializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object v2, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->responseLoadDuration:Ljava/lang/Double;

    const/16 v3, 0xf

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object v2, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->webViewLoadStartTime:Ljava/lang/String;

    const/16 v3, 0x10

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object v2, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->webViewLoadCompleteTime:Ljava/lang/String;

    const/16 v3, 0x11

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object v2, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->webViewLoadFailTime:Ljava/lang/String;

    const/16 v3, 0x12

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v1, Lkotlinx/serialization/internal/DoubleSerializer;->INSTANCE:Lkotlinx/serialization/internal/DoubleSerializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object v2, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->webViewLoadDuration:Ljava/lang/Double;

    const/16 v3, 0x13

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object v2, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->productsLoadStartTime:Ljava/lang/String;

    const/16 v3, 0x14

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object v2, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->productsLoadCompleteTime:Ljava/lang/String;

    const/16 v3, 0x15

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object v2, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->productsLoadFailTime:Ljava/lang/String;

    const/16 v3, 0x16

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object v2, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->shimmerLoadStartTime:Ljava/lang/String;

    const/16 v3, 0x17

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object v2, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->shimmerLoadCompleteTime:Ljava/lang/String;

    const/16 v3, 0x18

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v1, Lkotlinx/serialization/internal/DoubleSerializer;->INSTANCE:Lkotlinx/serialization/internal/DoubleSerializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object v2, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->productsLoadDuration:Ljava/lang/Double;

    const/16 v3, 0x19

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object v2, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->paywalljsVersion:Ljava/lang/String;

    const/16 v3, 0x1a

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/16 v1, 0x1b

    iget-boolean v2, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->isFreeTrialAvailable:Z

    invoke-interface {p1, p2, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    sget-object v1, Lcom/superwall/sdk/models/config/FeatureGatingBehaviorSerializer;->INSTANCE:Lcom/superwall/sdk/models/config/FeatureGatingBehaviorSerializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object v2, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->featureGatingBehavior:Lcom/superwall/sdk/models/config/FeatureGatingBehavior;

    const/16 v3, 0x1c

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/16 v1, 0x1d

    aget-object v2, v0, v1

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    iget-object v3, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->closeReason:Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/16 v1, 0x1e

    aget-object v2, v0, v1

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    iget-object v3, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->localNotifications:Ljava/util/List;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/16 v1, 0x1f

    aget-object v2, v0, v1

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    iget-object v3, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->computedPropertyRequests:Ljava/util/List;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/16 v1, 0x20

    aget-object v0, v0, v1

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object v2, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->surveys:Ljava/util/List;

    invoke-interface {p1, p2, v1, v0, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v0, Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo$$serializer;->INSTANCE:Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo$$serializer;

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->presentation:Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;

    const/16 v2, 0x21

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/16 v0, 0x22

    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->buildId:Ljava/lang/String;

    invoke-interface {p1, p2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/16 v0, 0x23

    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->cacheKey:Ljava/lang/String;

    invoke-interface {p1, p2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/16 v0, 0x24

    iget-boolean v1, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->isScrollEnabled:Z

    invoke-interface {p1, p2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/16 v0, 0x25

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->state:Ljava/util/Map;

    .line 65
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v2

    .line 25
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    sget-object v1, Lcom/superwall/sdk/models/serialization/AnyMapSerializer;->INSTANCE:Lcom/superwall/sdk/models/serialization/AnyMapSerializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object v2, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->state:Ljava/util/Map;

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_1
    const/16 v0, 0x26

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->customerInfo:Lcom/superwall/sdk/models/customer/CustomerInfo;

    .line 66
    sget-object v2, Lcom/superwall/sdk/models/customer/CustomerInfo;->Companion:Lcom/superwall/sdk/models/customer/CustomerInfo$Companion;

    invoke-virtual {v2}, Lcom/superwall/sdk/models/customer/CustomerInfo$Companion;->empty()Lcom/superwall/sdk/models/customer/CustomerInfo;

    move-result-object v2

    .line 25
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :goto_1
    sget-object v1, Lcom/superwall/sdk/models/customer/CustomerInfo$$serializer;->INSTANCE:Lcom/superwall/sdk/models/customer/CustomerInfo$$serializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object p0, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->customerInfo:Lcom/superwall/sdk/models/customer/CustomerInfo;

    invoke-interface {p1, p2, v0, v1, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public final audienceFilterParams()Ljava/util/Map;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 271
    sget-object v1, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->json:Lkotlinx/serialization/json/Json;

    sget-object v2, Lcom/superwall/sdk/models/config/FeatureGatingBehavior;->Companion:Lcom/superwall/sdk/models/config/FeatureGatingBehavior$Companion;

    invoke-virtual {v2}, Lcom/superwall/sdk/models/config/FeatureGatingBehavior$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v2

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    iget-object v3, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->featureGatingBehavior:Lcom/superwall/sdk/models/config/FeatureGatingBehavior;

    invoke-virtual {v1, v2, v3}, Lkotlinx/serialization/json/Json;->encodeToString(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    .line 275
    new-array v2, v2, [Lkotlin/Pair;

    const-string v3, "paywall_id"

    iget-object v4, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->databaseId:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 276
    const-string v3, "paywall_name"

    iget-object v5, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->name:Ljava/lang/String;

    invoke-static {v3, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 277
    iget-object v3, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->presentedByEventWithName:Ljava/lang/String;

    const-string v6, ""

    if-nez v3, :cond_0

    move-object v3, v6

    :cond_0
    const-string v7, "presented_by_event_name"

    invoke-static {v7, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/4 v7, 0x2

    aput-object v3, v2, v7

    .line 278
    iget-object v3, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->productIds:Ljava/util/List;

    move-object v8, v3

    check-cast v8, Ljava/lang/Iterable;

    const-string v3, ","

    move-object v9, v3

    check-cast v9, Ljava/lang/CharSequence;

    const/16 v15, 0x3e

    const/16 v16, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v8 .. v16}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v8, "paywall_product_ids"

    invoke-static {v8, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/4 v8, 0x3

    aput-object v3, v2, v8

    .line 279
    iget-boolean v3, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->isFreeTrialAvailable:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v8, "is_free_trial_available"

    invoke-static {v8, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/4 v8, 0x4

    aput-object v3, v2, v8

    .line 280
    const-string v3, "feature_gating"

    invoke-static {v3, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v3, 0x5

    aput-object v1, v2, v3

    .line 281
    const-string v1, "presented_by"

    iget-object v3, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->presentedBy:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v3, 0x6

    aput-object v1, v2, v3

    .line 274
    invoke-static {v2}, Lkotlin/collections/MapsKt;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v1

    .line 284
    const-string v2, "primary_product_id"

    invoke-interface {v1, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    const-string v3, "secondary_product_id"

    invoke-interface {v1, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    const-string v8, "tertiary_product_id"

    invoke-interface {v1, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    iget-object v6, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->products:Ljava/util/List;

    check-cast v6, Ljava/lang/Iterable;

    .line 349
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v10, v4, 0x1

    if-gez v4, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_1
    check-cast v9, Lcom/superwall/sdk/models/product/ProductItem;

    if-eqz v4, :cond_4

    if-eq v4, v5, :cond_3

    if-eq v4, v7, :cond_2

    goto :goto_1

    .line 292
    :cond_2
    invoke-virtual {v9}, Lcom/superwall/sdk/models/product/ProductItem;->getFullProductId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 291
    :cond_3
    invoke-virtual {v9}, Lcom/superwall/sdk/models/product/ProductItem;->getFullProductId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 290
    :cond_4
    invoke-virtual {v9}, Lcom/superwall/sdk/models/product/ProductItem;->getFullProductId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    :goto_1
    invoke-virtual {v9}, Lcom/superwall/sdk/models/product/ProductItem;->getName()Ljava/lang/String;

    move-result-object v4

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v11, "_product_id"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 295
    invoke-virtual {v9}, Lcom/superwall/sdk/models/product/ProductItem;->getFullProductId()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v4, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v4, v10

    goto :goto_0

    .line 351
    :cond_5
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v2, Ljava/util/Map;

    .line 352
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 298
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 354
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 298
    :cond_7
    invoke-static {v2}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method

.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->databaseId:Ljava/lang/String;

    return-object v0
.end method

.method public final component10()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->presentedByEventAt:Ljava/lang/String;

    return-object v0
.end method

.method public final component11()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->presentedBy:Ljava/lang/String;

    return-object v0
.end method

.method public final component12()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->presentationSourceType:Ljava/lang/String;

    return-object v0
.end method

.method public final component13()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->responseLoadStartTime:Ljava/lang/String;

    return-object v0
.end method

.method public final component14()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->responseLoadCompleteTime:Ljava/lang/String;

    return-object v0
.end method

.method public final component15()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->responseLoadFailTime:Ljava/lang/String;

    return-object v0
.end method

.method public final component16()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->responseLoadDuration:Ljava/lang/Double;

    return-object v0
.end method

.method public final component17()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->webViewLoadStartTime:Ljava/lang/String;

    return-object v0
.end method

.method public final component18()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->webViewLoadCompleteTime:Ljava/lang/String;

    return-object v0
.end method

.method public final component19()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->webViewLoadFailTime:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public final component20()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->webViewLoadDuration:Ljava/lang/Double;

    return-object v0
.end method

.method public final component21()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->productsLoadStartTime:Ljava/lang/String;

    return-object v0
.end method

.method public final component22()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->productsLoadCompleteTime:Ljava/lang/String;

    return-object v0
.end method

.method public final component23()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->productsLoadFailTime:Ljava/lang/String;

    return-object v0
.end method

.method public final component24()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->shimmerLoadStartTime:Ljava/lang/String;

    return-object v0
.end method

.method public final component25()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->shimmerLoadCompleteTime:Ljava/lang/String;

    return-object v0
.end method

.method public final component26()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->productsLoadDuration:Ljava/lang/Double;

    return-object v0
.end method

.method public final component27()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->paywalljsVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final component28()Z
    .locals 1

    iget-boolean v0, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->isFreeTrialAvailable:Z

    return v0
.end method

.method public final component29()Lcom/superwall/sdk/models/config/FeatureGatingBehavior;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->featureGatingBehavior:Lcom/superwall/sdk/models/config/FeatureGatingBehavior;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final component30()Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->closeReason:Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;

    return-object v0
.end method

.method public final component31()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/paywall/LocalNotification;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->localNotifications:Ljava/util/List;

    return-object v0
.end method

.method public final component32()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/config/ComputedPropertyRequest;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->computedPropertyRequests:Ljava/util/List;

    return-object v0
.end method

.method public final component33()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/config/models/Survey;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->surveys:Ljava/util/List;

    return-object v0
.end method

.method public final component34()Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->presentation:Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;

    return-object v0
.end method

.method public final component35()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->buildId:Ljava/lang/String;

    return-object v0
.end method

.method public final component36()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->cacheKey:Ljava/lang/String;

    return-object v0
.end method

.method public final component37()Z
    .locals 1

    iget-boolean v0, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->isScrollEnabled:Z

    return v0
.end method

.method public final component38()Ljava/util/Map;
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

    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->state:Ljava/util/Map;

    return-object v0
.end method

.method public final component39()Lcom/superwall/sdk/models/customer/CustomerInfo;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->customerInfo:Lcom/superwall/sdk/models/customer/CustomerInfo;

    return-object v0
.end method

.method public final component4-24UBhI0()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->url:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Lcom/superwall/sdk/models/triggers/Experiment;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->experiment:Lcom/superwall/sdk/models/triggers/Experiment;

    return-object v0
.end method

.method public final component6()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/product/ProductItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->products:Ljava/util/List;

    return-object v0
.end method

.method public final component7()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->productIds:Ljava/util/List;

    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->presentedByEventWithName:Ljava/lang/String;

    return-object v0
.end method

.method public final component9()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->presentedByEventWithId:Ljava/lang/String;

    return-object v0
.end method

.method public final copy-zhR-ERg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/models/triggers/Experiment;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;ZLcom/superwall/sdk/models/config/FeatureGatingBehavior;Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Lcom/superwall/sdk/models/customer/CustomerInfo;)Lcom/superwall/sdk/paywall/presentation/PaywallInfo;
    .locals 42
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/superwall/sdk/models/triggers/Experiment;",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/product/ProductItem;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/superwall/sdk/models/config/FeatureGatingBehavior;",
            "Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/paywall/LocalNotification;",
            ">;",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/config/ComputedPropertyRequest;",
            ">;",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/config/models/Survey;",
            ">;",
            "Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/superwall/sdk/models/customer/CustomerInfo;",
            ")",
            "Lcom/superwall/sdk/paywall/presentation/PaywallInfo;"
        }
    .end annotation

    const-string v0, "databaseId"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "identifier"

    move-object/from16 v3, p2

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "products"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "productIds"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "presentedBy"

    move-object/from16 v12, p11

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featureGatingBehavior"

    move-object/from16 v1, p29

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "closeReason"

    move-object/from16 v6, p30

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "localNotifications"

    move-object/from16 v9, p31

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "computedPropertyRequests"

    move-object/from16 v10, p32

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "surveys"

    move-object/from16 v11, p33

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "presentation"

    move-object/from16 v13, p34

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buildId"

    move-object/from16 v14, p35

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cacheKey"

    move-object/from16 v15, p36

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    move-object/from16 v1, p38

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "customerInfo"

    move-object/from16 v1, p39

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    const/16 v41, 0x0

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    move-object/from16 v20, p19

    move-object/from16 v21, p20

    move-object/from16 v22, p21

    move-object/from16 v23, p22

    move-object/from16 v24, p23

    move-object/from16 v25, p24

    move-object/from16 v26, p25

    move-object/from16 v27, p26

    move-object/from16 v28, p27

    move/from16 v29, p28

    move-object/from16 v30, p29

    move/from16 v38, p37

    move-object/from16 v39, p38

    move-object/from16 v40, p39

    move-object/from16 v31, v6

    move-object/from16 v32, v9

    move-object/from16 v33, v10

    move-object/from16 v34, v11

    move-object/from16 v35, v13

    move-object/from16 v36, v14

    move-object/from16 v37, v15

    move-object/from16 v6, p5

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    invoke-direct/range {v1 .. v41}, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/models/triggers/Experiment;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;ZLcom/superwall/sdk/models/config/FeatureGatingBehavior;Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Lcom/superwall/sdk/models/customer/CustomerInfo;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->databaseId:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->databaseId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->identifier:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->identifier:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->url:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->url:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/superwall/sdk/models/paywall/PaywallURL;->equals-impl0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->experiment:Lcom/superwall/sdk/models/triggers/Experiment;

    iget-object v3, p1, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->experiment:Lcom/superwall/sdk/models/triggers/Experiment;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->products:Ljava/util/List;

    iget-object v3, p1, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->products:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->productIds:Ljava/util/List;

    iget-object v3, p1, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->productIds:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->presentedByEventWithName:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->presentedByEventWithName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->presentedByEventWithId:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->presentedByEventWithId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->presentedByEventAt:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->presentedByEventAt:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->presentedBy:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->presentedBy:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->presentationSourceType:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->presentationSourceType:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->responseLoadStartTime:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->responseLoadStartTime:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->responseLoadCompleteTime:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->responseLoadCompleteTime:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->responseLoadFailTime:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->responseLoadFailTime:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    :cond_10
    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->responseLoadDuration:Ljava/lang/Double;

    iget-object v3, p1, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->responseLoadDuration:Ljava/lang/Double;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    :cond_11
    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->webViewLoadStartTime:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->webViewLoadStartTime:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v2

    :cond_12
    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->webViewLoadCompleteTime:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->webViewLoadCompleteTime:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->webViewLoadFailTime:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->webViewLoadFailTime:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    return v2

    :cond_14
    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->webViewLoadDuration:Ljava/lang/Double;

    iget-object v3, p1, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->webViewLoadDuration:Ljava/lang/Double;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    return v2

    :cond_15
    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->productsLoadStartTime:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->productsLoadStartTime:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    return v2

    :cond_16
    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->productsLoadCompleteTime:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->productsLoadCompleteTime:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->productsLoadFailTime:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->productsLoadFailTime:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    return v2

    :cond_18
    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->shimmerLoadStartTime:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->shimmerLoadStartTime:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    return v2

    :cond_19
    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->shimmerLoadCompleteTime:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->shimmerLoadCompleteTime:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    return v2

    :cond_1a
    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->productsLoadDuration:Ljava/lang/Double;

    iget-object v3, p1, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->productsLoadDuration:Ljava/lang/Double;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    return v2

    :cond_1b
    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->paywalljsVersion:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->paywalljsVersion:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    return v2

    :cond_1c
    iget-boolean v1, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->isFreeTrialAvailable:Z

    iget-boolean v3, p1, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->isFreeTrialAvailable:Z

    if-eq v1, v3, :cond_1d

    return v2

    :cond_1d
    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->featureGatingBehavior:Lcom/superwall/sdk/models/config/FeatureGatingBehavior;

    iget-object v3, p1, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->featureGatingBehavior:Lcom/superwall/sdk/models/config/FeatureGatingBehavior;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    return v2

    :cond_1e
    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->closeReason:Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;

    iget-object v3, p1, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->closeReason:Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    return v2

    :cond_1f
    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->localNotifications:Ljava/util/List;

    iget-object v3, p1, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->localNotifications:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    return v2

    :cond_20
    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->computedPropertyRequests:Ljava/util/List;

    iget-object v3, p1, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->computedPropertyRequests:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    return v2

    :cond_21
    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->surveys:Ljava/util/List;

    iget-object v3, p1, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->surveys:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->presentation:Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;

    iget-object v3, p1, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->presentation:Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    return v2

    :cond_23
    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->buildId:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->buildId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    return v2

    :cond_24
    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->cacheKey:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->cacheKey:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    return v2

    :cond_25
    iget-boolean v1, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->isScrollEnabled:Z

    iget-boolean v3, p1, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->isScrollEnabled:Z

    if-eq v1, v3, :cond_26

    return v2

    :cond_26
    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->state:Ljava/util/Map;

    iget-object v3, p1, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->state:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    return v2

    :cond_27
    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->customerInfo:Lcom/superwall/sdk/models/customer/CustomerInfo;

    iget-object p1, p1, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->customerInfo:Lcom/superwall/sdk/models/customer/CustomerInfo;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_28

    return v2

    :cond_28
    return v0
.end method

.method public final eventParams(Lcom/superwall/sdk/store/abstractions/product/StoreProductType;Ljava/util/Map;)Ljava/util/Map;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/store/abstractions/product/StoreProductType;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 196
    invoke-virtual {v0}, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->audienceFilterParams()Ljava/util/Map;

    move-result-object v2

    const/16 v3, 0x16

    .line 200
    new-array v3, v3, [Lkotlin/Pair;

    const-string v4, "paywalljs_version"

    iget-object v5, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->paywalljsVersion:Ljava/lang/String;

    invoke-static {v4, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const-string v5, ""

    if-eqz v4, :cond_0

    check-cast v4, Ljava/io/Serializable;

    goto :goto_0

    :cond_0
    move-object v4, v5

    check-cast v4, Ljava/io/Serializable;

    :goto_0
    const/4 v6, 0x0

    aput-object v4, v3, v6

    .line 201
    const-string v4, "paywall_identifier"

    iget-object v7, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->identifier:Ljava/lang/String;

    invoke-static {v4, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/4 v7, 0x1

    aput-object v4, v3, v7

    .line 202
    iget-object v4, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->url:Ljava/lang/String;

    invoke-static {v4}, Lcom/superwall/sdk/models/paywall/PaywallURL;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "paywall_url"

    invoke-static {v7, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/4 v7, 0x2

    aput-object v4, v3, v7

    .line 203
    const-string v4, "presented_by_event_id"

    iget-object v8, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->presentedByEventWithId:Ljava/lang/String;

    invoke-static {v4, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/4 v8, 0x3

    aput-object v4, v3, v8

    .line 204
    const-string v4, "presented_by_event_timestamp"

    iget-object v8, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->presentedByEventAt:Ljava/lang/String;

    invoke-static {v4, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/4 v8, 0x4

    aput-object v4, v3, v8

    .line 205
    const-string v4, "presentation_source_type"

    iget-object v8, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->presentationSourceType:Ljava/lang/String;

    invoke-static {v4, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/4 v8, 0x5

    aput-object v4, v3, v8

    .line 206
    const-string v4, "paywall_response_load_start_time"

    iget-object v8, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->responseLoadStartTime:Ljava/lang/String;

    invoke-static {v4, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/4 v8, 0x6

    aput-object v4, v3, v8

    .line 207
    const-string v4, "paywall_response_load_complete_time"

    iget-object v8, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->responseLoadCompleteTime:Ljava/lang/String;

    invoke-static {v4, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/4 v8, 0x7

    aput-object v4, v3, v8

    .line 208
    const-string v4, "paywall_response_load_duration"

    iget-object v8, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->responseLoadDuration:Ljava/lang/Double;

    invoke-static {v4, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/16 v8, 0x8

    aput-object v4, v3, v8

    .line 209
    const-string v4, "paywall_webview_load_start_time"

    iget-object v8, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->webViewLoadStartTime:Ljava/lang/String;

    invoke-static {v4, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/16 v8, 0x9

    aput-object v4, v3, v8

    .line 210
    const-string v4, "paywall_webview_load_complete_time"

    iget-object v8, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->webViewLoadCompleteTime:Ljava/lang/String;

    invoke-static {v4, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/16 v8, 0xa

    aput-object v4, v3, v8

    .line 211
    const-string v4, "paywall_webview_load_fail_time"

    iget-object v8, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->webViewLoadFailTime:Ljava/lang/String;

    invoke-static {v4, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/16 v8, 0xb

    aput-object v4, v3, v8

    .line 212
    const-string v4, "paywall_webview_load_duration"

    iget-object v8, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->webViewLoadDuration:Ljava/lang/Double;

    invoke-static {v4, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/16 v8, 0xc

    aput-object v4, v3, v8

    .line 213
    const-string v4, "paywall_products_load_start_time"

    iget-object v8, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->productsLoadStartTime:Ljava/lang/String;

    invoke-static {v4, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/16 v8, 0xd

    aput-object v4, v3, v8

    .line 214
    const-string v4, "paywall_products_load_complete_time"

    iget-object v8, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->productsLoadCompleteTime:Ljava/lang/String;

    invoke-static {v4, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/16 v8, 0xe

    aput-object v4, v3, v8

    .line 215
    const-string v4, "paywall_products_load_fail_time"

    iget-object v8, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->productsLoadFailTime:Ljava/lang/String;

    invoke-static {v4, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/16 v8, 0xf

    aput-object v4, v3, v8

    .line 216
    const-string v4, "paywall_products_load_duration"

    iget-object v8, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->productsLoadDuration:Ljava/lang/Double;

    invoke-static {v4, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/16 v8, 0x10

    aput-object v4, v3, v8

    .line 218
    const-string v4, "trigger_session_id"

    invoke-static {v4, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/16 v5, 0x11

    aput-object v4, v3, v5

    .line 219
    iget-object v4, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->experiment:Lcom/superwall/sdk/models/triggers/Experiment;

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/superwall/sdk/models/triggers/Experiment;->getId()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v5

    :goto_1
    const-string v8, "experiment_id"

    invoke-static {v8, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/16 v8, 0x12

    aput-object v4, v3, v8

    .line 220
    iget-object v4, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->experiment:Lcom/superwall/sdk/models/triggers/Experiment;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/superwall/sdk/models/triggers/Experiment;->getVariant()Lcom/superwall/sdk/models/triggers/Experiment$Variant;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/superwall/sdk/models/triggers/Experiment$Variant;->getId()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_2
    move-object v4, v5

    :goto_2
    const-string v8, "variant_id"

    invoke-static {v8, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/16 v8, 0x13

    aput-object v4, v3, v8

    .line 221
    iget-boolean v4, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->isScrollEnabled:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v8, "is_scroll_enabled"

    invoke-static {v8, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/16 v8, 0x14

    aput-object v4, v3, v8

    .line 222
    const-string v4, "state"

    iget-object v8, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->state:Ljava/util/Map;

    invoke-static {v4, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/16 v8, 0x15

    aput-object v4, v3, v8

    .line 199
    invoke-static {v3}, Lkotlin/collections/MapsKt;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v3

    .line 224
    iget-object v4, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->customerInfo:Lcom/superwall/sdk/models/customer/CustomerInfo;

    invoke-virtual {v4}, Lcom/superwall/sdk/models/customer/CustomerInfo;->toParams()Ljava/util/Map;

    move-result-object v4

    .line 225
    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    .line 226
    const-string v8, "customer_info"

    invoke-interface {v3, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    :cond_3
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    new-instance v8, Lcom/superwall/sdk/paywall/presentation/PaywallInfo$$ExternalSyntheticLambda0;

    invoke-direct {v8}, Lcom/superwall/sdk/paywall/presentation/PaywallInfo$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v4, v8}, Lkotlin/collections/CollectionsKt;->removeAll(Ljava/lang/Iterable;Lkotlin/jvm/functions/Function1;)Z

    .line 229
    const-string v4, "null cannot be cast to non-null type kotlin.collections.MutableMap<kotlin.String, kotlin.Any>"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    .line 230
    invoke-interface {v2, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 232
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v12, v3

    check-cast v12, Ljava/util/Map;

    .line 233
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 234
    move-object v8, v4

    check-cast v8, Ljava/lang/CharSequence;

    const-string v9, "_load_"

    check-cast v9, Ljava/lang/CharSequence;

    invoke-static {v8, v9, v6, v7, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 235
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 236
    invoke-interface {v12, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 241
    :cond_5
    sget-object v8, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 242
    sget-object v9, Lcom/superwall/sdk/logger/LogLevel;->debug:Lcom/superwall/sdk/logger/LogLevel;

    .line 243
    sget-object v10, Lcom/superwall/sdk/logger/LogScope;->paywallEvents:Lcom/superwall/sdk/logger/LogScope;

    const/16 v14, 0x10

    const/4 v15, 0x0

    .line 241
    const-string v11, "Paywall loading timestamps"

    const/4 v13, 0x0

    invoke-static/range {v8 .. v15}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    if-eqz p1, :cond_7

    .line 249
    const-string v3, "product_id"

    invoke-interface/range {p1 .. p1}, Lcom/superwall/sdk/store/abstractions/product/StoreProductType;->getFullIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    invoke-interface/range {p1 .. p1}, Lcom/superwall/sdk/store/abstractions/product/StoreProductType;->getAttributes()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 251
    invoke-interface/range {p1 .. p1}, Lcom/superwall/sdk/store/abstractions/product/StoreProductType;->getAttributes()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_6

    .line 252
    invoke-static {v4}, Lcom/superwall/sdk/misc/String_Helpers_ktKt;->camelCaseToSnakeCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "product_"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_7
    if-eqz v1, :cond_9

    .line 258
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 259
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 260
    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_9
    return-object v2
.end method

.method public final getBuildId()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->buildId:Ljava/lang/String;

    return-object v0
.end method

.method public final getCacheKey()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->cacheKey:Ljava/lang/String;

    return-object v0
.end method

.method public final getCloseReason()Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->closeReason:Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;

    return-object v0
.end method

.method public final getComputedPropertyRequests()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/config/ComputedPropertyRequest;",
            ">;"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->computedPropertyRequests:Ljava/util/List;

    return-object v0
.end method

.method public final getCustomerInfo()Lcom/superwall/sdk/models/customer/CustomerInfo;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->customerInfo:Lcom/superwall/sdk/models/customer/CustomerInfo;

    return-object v0
.end method

.method public final getDatabaseId()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->databaseId:Ljava/lang/String;

    return-object v0
.end method

.method public final getExperiment()Lcom/superwall/sdk/models/triggers/Experiment;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->experiment:Lcom/superwall/sdk/models/triggers/Experiment;

    return-object v0
.end method

.method public final getFeatureGatingBehavior()Lcom/superwall/sdk/models/config/FeatureGatingBehavior;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->featureGatingBehavior:Lcom/superwall/sdk/models/config/FeatureGatingBehavior;

    return-object v0
.end method

.method public final getIdentifier()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public final getLocalNotifications()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/paywall/LocalNotification;",
            ">;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->localNotifications:Ljava/util/List;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getPaywalljsVersion()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->paywalljsVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final getPresentation()Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->presentation:Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;

    return-object v0
.end method

.method public final getPresentationSourceType()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->presentationSourceType:Ljava/lang/String;

    return-object v0
.end method

.method public final getPresentedBy()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->presentedBy:Ljava/lang/String;

    return-object v0
.end method

.method public final getPresentedByEventAt()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->presentedByEventAt:Ljava/lang/String;

    return-object v0
.end method

.method public final getPresentedByEventWithId()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->presentedByEventWithId:Ljava/lang/String;

    return-object v0
.end method

.method public final getPresentedByEventWithName()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->presentedByEventWithName:Ljava/lang/String;

    return-object v0
.end method

.method public final getProductIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->productIds:Ljava/util/List;

    return-object v0
.end method

.method public final getProducts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/product/ProductItem;",
            ">;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->products:Ljava/util/List;

    return-object v0
.end method

.method public final getProductsLoadCompleteTime()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->productsLoadCompleteTime:Ljava/lang/String;

    return-object v0
.end method

.method public final getProductsLoadDuration()Ljava/lang/Double;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->productsLoadDuration:Ljava/lang/Double;

    return-object v0
.end method

.method public final getProductsLoadFailTime()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->productsLoadFailTime:Ljava/lang/String;

    return-object v0
.end method

.method public final getProductsLoadStartTime()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->productsLoadStartTime:Ljava/lang/String;

    return-object v0
.end method

.method public final getResponseLoadCompleteTime()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->responseLoadCompleteTime:Ljava/lang/String;

    return-object v0
.end method

.method public final getResponseLoadDuration()Ljava/lang/Double;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->responseLoadDuration:Ljava/lang/Double;

    return-object v0
.end method

.method public final getResponseLoadFailTime()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->responseLoadFailTime:Ljava/lang/String;

    return-object v0
.end method

.method public final getResponseLoadStartTime()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->responseLoadStartTime:Ljava/lang/String;

    return-object v0
.end method

.method public final getShimmerLoadCompleteTime()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->shimmerLoadCompleteTime:Ljava/lang/String;

    return-object v0
.end method

.method public final getShimmerLoadStartTime()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->shimmerLoadStartTime:Ljava/lang/String;

    return-object v0
.end method

.method public final getState()Ljava/util/Map;
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

    .line 64
    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->state:Ljava/util/Map;

    return-object v0
.end method

.method public final getSurveys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/config/models/Survey;",
            ">;"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->surveys:Ljava/util/List;

    return-object v0
.end method

.method public final getUrl-24UBhI0()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->url:Ljava/lang/String;

    return-object v0
.end method

.method public final getWebViewLoadCompleteTime()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->webViewLoadCompleteTime:Ljava/lang/String;

    return-object v0
.end method

.method public final getWebViewLoadDuration()Ljava/lang/Double;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->webViewLoadDuration:Ljava/lang/Double;

    return-object v0
.end method

.method public final getWebViewLoadFailTime()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->webViewLoadFailTime:Ljava/lang/String;

    return-object v0
.end method

.method public final getWebViewLoadStartTime()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->webViewLoadStartTime:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->databaseId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->identifier:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->url:Ljava/lang/String;

    invoke-static {v1}, Lcom/superwall/sdk/models/paywall/PaywallURL;->hashCode-impl(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->experiment:Lcom/superwall/sdk/models/triggers/Experiment;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/superwall/sdk/models/triggers/Experiment;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->products:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->productIds:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->presentedByEventWithName:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->presentedByEventWithId:Ljava/lang/String;

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->presentedByEventAt:Ljava/lang/String;

    if-nez v1, :cond_3

    move v1, v2

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->presentedBy:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->presentationSourceType:Ljava/lang/String;

    if-nez v1, :cond_4

    move v1, v2

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->responseLoadStartTime:Ljava/lang/String;

    if-nez v1, :cond_5

    move v1, v2

    goto :goto_5

    :cond_5
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->responseLoadCompleteTime:Ljava/lang/String;

    if-nez v1, :cond_6

    move v1, v2

    goto :goto_6

    :cond_6
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->responseLoadFailTime:Ljava/lang/String;

    if-nez v1, :cond_7

    move v1, v2

    goto :goto_7

    :cond_7
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_7
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->responseLoadDuration:Ljava/lang/Double;

    if-nez v1, :cond_8

    move v1, v2

    goto :goto_8

    :cond_8
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_8
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->webViewLoadStartTime:Ljava/lang/String;

    if-nez v1, :cond_9

    move v1, v2

    goto :goto_9

    :cond_9
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_9
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->webViewLoadCompleteTime:Ljava/lang/String;

    if-nez v1, :cond_a

    move v1, v2

    goto :goto_a

    :cond_a
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_a
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->webViewLoadFailTime:Ljava/lang/String;

    if-nez v1, :cond_b

    move v1, v2

    goto :goto_b

    :cond_b
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_b
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->webViewLoadDuration:Ljava/lang/Double;

    if-nez v1, :cond_c

    move v1, v2

    goto :goto_c

    :cond_c
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_c
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->productsLoadStartTime:Ljava/lang/String;

    if-nez v1, :cond_d

    move v1, v2

    goto :goto_d

    :cond_d
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_d
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->productsLoadCompleteTime:Ljava/lang/String;

    if-nez v1, :cond_e

    move v1, v2

    goto :goto_e

    :cond_e
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_e
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->productsLoadFailTime:Ljava/lang/String;

    if-nez v1, :cond_f

    move v1, v2

    goto :goto_f

    :cond_f
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_f
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->shimmerLoadStartTime:Ljava/lang/String;

    if-nez v1, :cond_10

    move v1, v2

    goto :goto_10

    :cond_10
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_10
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->shimmerLoadCompleteTime:Ljava/lang/String;

    if-nez v1, :cond_11

    move v1, v2

    goto :goto_11

    :cond_11
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_11
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->productsLoadDuration:Ljava/lang/Double;

    if-nez v1, :cond_12

    move v1, v2

    goto :goto_12

    :cond_12
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_12
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->paywalljsVersion:Ljava/lang/String;

    if-nez v1, :cond_13

    goto :goto_13

    :cond_13
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_13
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->isFreeTrialAvailable:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->featureGatingBehavior:Lcom/superwall/sdk/models/config/FeatureGatingBehavior;

    invoke-virtual {v1}, Lcom/superwall/sdk/models/config/FeatureGatingBehavior;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->closeReason:Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;

    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->localNotifications:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->computedPropertyRequests:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->surveys:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->presentation:Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;

    invoke-virtual {v1}, Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->buildId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->cacheKey:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->isScrollEnabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->state:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->customerInfo:Lcom/superwall/sdk/models/customer/CustomerInfo;

    invoke-virtual {v1}, Lcom/superwall/sdk/models/customer/CustomerInfo;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final isFreeTrialAvailable()Z
    .locals 1

    .line 54
    iget-boolean v0, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->isFreeTrialAvailable:Z

    return v0
.end method

.method public final isScrollEnabled()Z
    .locals 1

    .line 63
    iget-boolean v0, p0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->isScrollEnabled:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 41

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->databaseId:Ljava/lang/String;

    iget-object v2, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->identifier:Ljava/lang/String;

    iget-object v3, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->name:Ljava/lang/String;

    iget-object v4, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->url:Ljava/lang/String;

    invoke-static {v4}, Lcom/superwall/sdk/models/paywall/PaywallURL;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->experiment:Lcom/superwall/sdk/models/triggers/Experiment;

    iget-object v6, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->products:Ljava/util/List;

    iget-object v7, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->productIds:Ljava/util/List;

    iget-object v8, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->presentedByEventWithName:Ljava/lang/String;

    iget-object v9, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->presentedByEventWithId:Ljava/lang/String;

    iget-object v10, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->presentedByEventAt:Ljava/lang/String;

    iget-object v11, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->presentedBy:Ljava/lang/String;

    iget-object v12, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->presentationSourceType:Ljava/lang/String;

    iget-object v13, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->responseLoadStartTime:Ljava/lang/String;

    iget-object v14, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->responseLoadCompleteTime:Ljava/lang/String;

    iget-object v15, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->responseLoadFailTime:Ljava/lang/String;

    move-object/from16 v16, v15

    iget-object v15, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->responseLoadDuration:Ljava/lang/Double;

    move-object/from16 v17, v15

    iget-object v15, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->webViewLoadStartTime:Ljava/lang/String;

    move-object/from16 v18, v15

    iget-object v15, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->webViewLoadCompleteTime:Ljava/lang/String;

    move-object/from16 v19, v15

    iget-object v15, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->webViewLoadFailTime:Ljava/lang/String;

    move-object/from16 v20, v15

    iget-object v15, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->webViewLoadDuration:Ljava/lang/Double;

    move-object/from16 v21, v15

    iget-object v15, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->productsLoadStartTime:Ljava/lang/String;

    move-object/from16 v22, v15

    iget-object v15, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->productsLoadCompleteTime:Ljava/lang/String;

    move-object/from16 v23, v15

    iget-object v15, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->productsLoadFailTime:Ljava/lang/String;

    move-object/from16 v24, v15

    iget-object v15, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->shimmerLoadStartTime:Ljava/lang/String;

    move-object/from16 v25, v15

    iget-object v15, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->shimmerLoadCompleteTime:Ljava/lang/String;

    move-object/from16 v26, v15

    iget-object v15, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->productsLoadDuration:Ljava/lang/Double;

    move-object/from16 v27, v15

    iget-object v15, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->paywalljsVersion:Ljava/lang/String;

    move-object/from16 v28, v15

    iget-boolean v15, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->isFreeTrialAvailable:Z

    move/from16 v29, v15

    iget-object v15, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->featureGatingBehavior:Lcom/superwall/sdk/models/config/FeatureGatingBehavior;

    move-object/from16 v30, v15

    iget-object v15, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->closeReason:Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;

    move-object/from16 v31, v15

    iget-object v15, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->localNotifications:Ljava/util/List;

    move-object/from16 v32, v15

    iget-object v15, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->computedPropertyRequests:Ljava/util/List;

    move-object/from16 v33, v15

    iget-object v15, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->surveys:Ljava/util/List;

    move-object/from16 v34, v15

    iget-object v15, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->presentation:Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;

    move-object/from16 v35, v15

    iget-object v15, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->buildId:Ljava/lang/String;

    move-object/from16 v36, v15

    iget-object v15, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->cacheKey:Ljava/lang/String;

    move-object/from16 v37, v15

    iget-boolean v15, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->isScrollEnabled:Z

    move/from16 v38, v15

    iget-object v15, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->state:Ljava/util/Map;

    move-object/from16 v39, v15

    iget-object v15, v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->customerInfo:Lcom/superwall/sdk/models/customer/CustomerInfo;

    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v40, v15

    const-string v15, "PaywallInfo(databaseId="

    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", identifier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", experiment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", products="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", productIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", presentedByEventWithName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", presentedByEventWithId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", presentedByEventAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", presentedBy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", presentationSourceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", responseLoadStartTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", responseLoadCompleteTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", responseLoadFailTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", responseLoadDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", webViewLoadStartTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", webViewLoadCompleteTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", webViewLoadFailTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", webViewLoadDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", productsLoadStartTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", productsLoadCompleteTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", productsLoadFailTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", shimmerLoadStartTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", shimmerLoadCompleteTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", productsLoadDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", paywalljsVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isFreeTrialAvailable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", featureGatingBehavior="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", closeReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", localNotifications="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", computedPropertyRequests="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", surveys="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", presentation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", buildId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cacheKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isScrollEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", customerInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
