.class public final Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;
.super Ljava/lang/Object;
.source "DeviceTemplate.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate$$serializer;,
        Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u000f\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0011\n\u0002\u0010$\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008A\n\u0002\u0018\u0002\n\u0002\u0008=\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u0000 \u00cb\u00012\u00020\u0001:\u0004\u00ca\u0001\u00cb\u0001B\u00e9\u0003\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0007\u0012\u0006\u0010\u0008\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\u0006\u0010\u000b\u001a\u00020\u0003\u0012\u0006\u0010\u000c\u001a\u00020\u0003\u0012\u0006\u0010\r\u001a\u00020\u0003\u0012\u0006\u0010\u000e\u001a\u00020\u0003\u0012\u0006\u0010\u000f\u001a\u00020\u0003\u0012\u0006\u0010\u0010\u001a\u00020\u0003\u0012\u0006\u0010\u0011\u001a\u00020\u0003\u0012\u0006\u0010\u0012\u001a\u00020\u0003\u0012\u0006\u0010\u0013\u001a\u00020\u0003\u0012\u0006\u0010\u0014\u001a\u00020\u0003\u0012\u0006\u0010\u0015\u001a\u00020\u0003\u0012\u0006\u0010\u0016\u001a\u00020\u0017\u0012\u0006\u0010\u0018\u001a\u00020\u0003\u0012\u0006\u0010\u0019\u001a\u00020\u0003\u0012\u0006\u0010\u001a\u001a\u00020\u001b\u0012\u0006\u0010\u001c\u001a\u00020\u0003\u0012\u0006\u0010\u001d\u001a\u00020\u0003\u0012\u0006\u0010\u001e\u001a\u00020\u001b\u0012\u0006\u0010\u001f\u001a\u00020\u0017\u0012\u0006\u0010 \u001a\u00020\u0017\u0012\u0008\u0010!\u001a\u0004\u0018\u00010\u0017\u0012\u0008\u0010\"\u001a\u0004\u0018\u00010\u0017\u0012\u0006\u0010#\u001a\u00020\u0017\u0012\u0006\u0010$\u001a\u00020\u0003\u0012\u0006\u0010%\u001a\u00020\u0003\u0012\u0006\u0010&\u001a\u00020\u0003\u0012\u0006\u0010\'\u001a\u00020\u0003\u0012\u0006\u0010(\u001a\u00020\u0003\u0012\u0006\u0010)\u001a\u00020\u0003\u0012\u0006\u0010*\u001a\u00020\u0003\u0012\u000c\u0010+\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0007\u0012\u0018\u0010,\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030-0\u0007\u0012\u0008\u0010.\u001a\u0004\u0018\u00010\u0003\u0012\u000c\u0010/\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0007\u0012\u0006\u00100\u001a\u00020\u001b\u0012\u0006\u00101\u001a\u00020\u0003\u0012\u0006\u00102\u001a\u00020\u0003\u0012\u0006\u00103\u001a\u00020\u0003\u0012\u0008\u00104\u001a\u0004\u0018\u00010\u0017\u0012\u0006\u00105\u001a\u00020\u0003\u0012\u000c\u00106\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0007\u0012\u0006\u00107\u001a\u000208\u0012\u0006\u00109\u001a\u00020\u0003\u0012\u0006\u0010:\u001a\u00020\u0003\u0012\u0006\u0010;\u001a\u00020\u0003\u0012\u0006\u0010<\u001a\u00020\u0017\u0012\u0006\u0010=\u001a\u00020\u0003\u00a2\u0006\u0004\u0008>\u0010?B\u00d9\u0004\u0008\u0010\u0012\u0006\u0010@\u001a\u00020\u0017\u0012\u0006\u0010A\u001a\u00020\u0017\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0007\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0016\u001a\u00020\u0017\u0012\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u001a\u001a\u00020\u001b\u0012\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u001e\u001a\u00020\u001b\u0012\u0006\u0010\u001f\u001a\u00020\u0017\u0012\u0006\u0010 \u001a\u00020\u0017\u0012\u0008\u0010!\u001a\u0004\u0018\u00010\u0017\u0012\u0008\u0010\"\u001a\u0004\u0018\u00010\u0017\u0012\u0006\u0010#\u001a\u00020\u0017\u0012\u0008\u0010$\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010%\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010&\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\'\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010(\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010)\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010*\u001a\u0004\u0018\u00010\u0003\u0012\u000e\u0010+\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0007\u0012\u001a\u0010,\u001a\u0016\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030-\u0018\u00010\u0007\u0012\u0008\u0010.\u001a\u0004\u0018\u00010\u0003\u0012\u000e\u0010/\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0007\u0012\u0006\u00100\u001a\u00020\u001b\u0012\u0008\u00101\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u00102\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u00103\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u00104\u001a\u0004\u0018\u00010\u0017\u0012\u0008\u00105\u001a\u0004\u0018\u00010\u0003\u0012\u000e\u00106\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0007\u0012\u0008\u00107\u001a\u0004\u0018\u000108\u0012\u0008\u00109\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010:\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010;\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010<\u001a\u00020\u0017\u0012\u0008\u0010=\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010B\u001a\u0004\u0018\u00010C\u00a2\u0006\u0004\u0008>\u0010DJ\u001d\u0010\u0083\u0001\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00010-2\u0008\u0010\u0084\u0001\u001a\u00030\u0085\u0001J\n\u0010\u0086\u0001\u001a\u00020\u0003H\u00c6\u0003J\n\u0010\u0087\u0001\u001a\u00020\u0003H\u00c6\u0003J\n\u0010\u0088\u0001\u001a\u00020\u0003H\u00c6\u0003J\u0010\u0010\u0089\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0007H\u00c6\u0003J\n\u0010\u008a\u0001\u001a\u00020\u0003H\u00c6\u0003J\n\u0010\u008b\u0001\u001a\u00020\u0003H\u00c6\u0003J\n\u0010\u008c\u0001\u001a\u00020\u0003H\u00c6\u0003J\n\u0010\u008d\u0001\u001a\u00020\u0003H\u00c6\u0003J\n\u0010\u008e\u0001\u001a\u00020\u0003H\u00c6\u0003J\n\u0010\u008f\u0001\u001a\u00020\u0003H\u00c6\u0003J\n\u0010\u0090\u0001\u001a\u00020\u0003H\u00c6\u0003J\n\u0010\u0091\u0001\u001a\u00020\u0003H\u00c6\u0003J\n\u0010\u0092\u0001\u001a\u00020\u0003H\u00c6\u0003J\n\u0010\u0093\u0001\u001a\u00020\u0003H\u00c6\u0003J\n\u0010\u0094\u0001\u001a\u00020\u0003H\u00c6\u0003J\n\u0010\u0095\u0001\u001a\u00020\u0003H\u00c6\u0003J\n\u0010\u0096\u0001\u001a\u00020\u0003H\u00c6\u0003J\n\u0010\u0097\u0001\u001a\u00020\u0003H\u00c6\u0003J\n\u0010\u0098\u0001\u001a\u00020\u0017H\u00c6\u0003J\n\u0010\u0099\u0001\u001a\u00020\u0003H\u00c6\u0003J\n\u0010\u009a\u0001\u001a\u00020\u0003H\u00c6\u0003J\n\u0010\u009b\u0001\u001a\u00020\u001bH\u00c6\u0003J\n\u0010\u009c\u0001\u001a\u00020\u0003H\u00c6\u0003J\n\u0010\u009d\u0001\u001a\u00020\u0003H\u00c6\u0003J\n\u0010\u009e\u0001\u001a\u00020\u001bH\u00c6\u0003J\n\u0010\u009f\u0001\u001a\u00020\u0017H\u00c6\u0003J\n\u0010\u00a0\u0001\u001a\u00020\u0017H\u00c6\u0003J\u0011\u0010\u00a1\u0001\u001a\u0004\u0018\u00010\u0017H\u00c6\u0003\u00a2\u0006\u0002\u0010cJ\u0011\u0010\u00a2\u0001\u001a\u0004\u0018\u00010\u0017H\u00c6\u0003\u00a2\u0006\u0002\u0010cJ\n\u0010\u00a3\u0001\u001a\u00020\u0017H\u00c6\u0003J\n\u0010\u00a4\u0001\u001a\u00020\u0003H\u00c6\u0003J\n\u0010\u00a5\u0001\u001a\u00020\u0003H\u00c6\u0003J\n\u0010\u00a6\u0001\u001a\u00020\u0003H\u00c6\u0003J\n\u0010\u00a7\u0001\u001a\u00020\u0003H\u00c6\u0003J\n\u0010\u00a8\u0001\u001a\u00020\u0003H\u00c6\u0003J\n\u0010\u00a9\u0001\u001a\u00020\u0003H\u00c6\u0003J\n\u0010\u00aa\u0001\u001a\u00020\u0003H\u00c6\u0003J\u0010\u0010\u00ab\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0007H\u00c6\u0003J\u001c\u0010\u00ac\u0001\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030-0\u0007H\u00c6\u0003J\u000c\u0010\u00ad\u0001\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u0010\u0010\u00ae\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0007H\u00c6\u0003J\n\u0010\u00af\u0001\u001a\u00020\u001bH\u00c6\u0003J\n\u0010\u00b0\u0001\u001a\u00020\u0003H\u00c6\u0003J\n\u0010\u00b1\u0001\u001a\u00020\u0003H\u00c6\u0003J\n\u0010\u00b2\u0001\u001a\u00020\u0003H\u00c6\u0003J\u0011\u0010\u00b3\u0001\u001a\u0004\u0018\u00010\u0017H\u00c6\u0003\u00a2\u0006\u0002\u0010cJ\n\u0010\u00b4\u0001\u001a\u00020\u0003H\u00c6\u0003J\u0010\u0010\u00b5\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0007H\u00c6\u0003J\n\u0010\u00b6\u0001\u001a\u000208H\u00c6\u0003J\n\u0010\u00b7\u0001\u001a\u00020\u0003H\u00c6\u0003J\n\u0010\u00b8\u0001\u001a\u00020\u0003H\u00c6\u0003J\n\u0010\u00b9\u0001\u001a\u00020\u0003H\u00c6\u0003J\n\u0010\u00ba\u0001\u001a\u00020\u0017H\u00c6\u0003J\n\u0010\u00bb\u0001\u001a\u00020\u0003H\u00c6\u0003J\u00de\u0004\u0010\u00bc\u0001\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u000e\u0008\u0002\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00032\u0008\u0008\u0002\u0010\t\u001a\u00020\u00032\u0008\u0008\u0002\u0010\n\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00032\u0008\u0008\u0002\u0010\r\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u00172\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u001b2\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u001d\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u001b2\u0008\u0008\u0002\u0010\u001f\u001a\u00020\u00172\u0008\u0008\u0002\u0010 \u001a\u00020\u00172\n\u0008\u0002\u0010!\u001a\u0004\u0018\u00010\u00172\n\u0008\u0002\u0010\"\u001a\u0004\u0018\u00010\u00172\u0008\u0008\u0002\u0010#\u001a\u00020\u00172\u0008\u0008\u0002\u0010$\u001a\u00020\u00032\u0008\u0008\u0002\u0010%\u001a\u00020\u00032\u0008\u0008\u0002\u0010&\u001a\u00020\u00032\u0008\u0008\u0002\u0010\'\u001a\u00020\u00032\u0008\u0008\u0002\u0010(\u001a\u00020\u00032\u0008\u0008\u0002\u0010)\u001a\u00020\u00032\u0008\u0008\u0002\u0010*\u001a\u00020\u00032\u000e\u0008\u0002\u0010+\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00072\u001a\u0008\u0002\u0010,\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030-0\u00072\n\u0008\u0002\u0010.\u001a\u0004\u0018\u00010\u00032\u000e\u0008\u0002\u0010/\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00072\u0008\u0008\u0002\u00100\u001a\u00020\u001b2\u0008\u0008\u0002\u00101\u001a\u00020\u00032\u0008\u0008\u0002\u00102\u001a\u00020\u00032\u0008\u0008\u0002\u00103\u001a\u00020\u00032\n\u0008\u0002\u00104\u001a\u0004\u0018\u00010\u00172\u0008\u0008\u0002\u00105\u001a\u00020\u00032\u000e\u0008\u0002\u00106\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00072\u0008\u0008\u0002\u00107\u001a\u0002082\u0008\u0008\u0002\u00109\u001a\u00020\u00032\u0008\u0008\u0002\u0010:\u001a\u00020\u00032\u0008\u0008\u0002\u0010;\u001a\u00020\u00032\u0008\u0008\u0002\u0010<\u001a\u00020\u00172\u0008\u0008\u0002\u0010=\u001a\u00020\u0003H\u00c6\u0001\u00a2\u0006\u0003\u0010\u00bd\u0001J\u0015\u0010\u00be\u0001\u001a\u00020\u001b2\t\u0010\u00bf\u0001\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\n\u0010\u00c0\u0001\u001a\u00020\u0017H\u00d6\u0001J\n\u0010\u00c1\u0001\u001a\u00020\u0003H\u00d6\u0001J-\u0010\u00c2\u0001\u001a\u00030\u00c3\u00012\u0007\u0010\u00c4\u0001\u001a\u00020\u00002\u0008\u0010\u00c5\u0001\u001a\u00030\u00c6\u00012\u0008\u0010\u00c7\u0001\u001a\u00030\u00c8\u0001H\u0001\u00a2\u0006\u0003\u0008\u00c9\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008E\u0010FR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008G\u0010FR\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008H\u0010FR\u0017\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008I\u0010JR\u0011\u0010\u0008\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008K\u0010FR\u0011\u0010\t\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008L\u0010FR\u0011\u0010\n\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008M\u0010FR\u0011\u0010\u000b\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008N\u0010FR\u0011\u0010\u000c\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008O\u0010FR\u0011\u0010\r\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008P\u0010FR\u0011\u0010\u000e\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008Q\u0010FR\u0011\u0010\u000f\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008R\u0010FR\u0011\u0010\u0010\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008S\u0010FR\u0011\u0010\u0011\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008T\u0010FR\u0011\u0010\u0012\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008U\u0010FR\u0011\u0010\u0013\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008V\u0010FR\u0011\u0010\u0014\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008W\u0010FR\u0011\u0010\u0015\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008X\u0010FR\u0011\u0010\u0016\u001a\u00020\u0017\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008Y\u0010ZR\u0011\u0010\u0018\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008[\u0010FR\u0011\u0010\u0019\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\\\u0010FR\u0011\u0010\u001a\u001a\u00020\u001b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010]R\u0011\u0010\u001c\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008^\u0010FR\u0011\u0010\u001d\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008_\u0010FR\u0011\u0010\u001e\u001a\u00020\u001b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010]R\u0011\u0010\u001f\u001a\u00020\u0017\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008`\u0010ZR\u0011\u0010 \u001a\u00020\u0017\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008a\u0010ZR\u0015\u0010!\u001a\u0004\u0018\u00010\u0017\u00a2\u0006\n\n\u0002\u0010d\u001a\u0004\u0008b\u0010cR\u0015\u0010\"\u001a\u0004\u0018\u00010\u0017\u00a2\u0006\n\n\u0002\u0010d\u001a\u0004\u0008e\u0010cR\u0011\u0010#\u001a\u00020\u0017\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008f\u0010ZR\u0011\u0010$\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008g\u0010FR\u0011\u0010%\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008h\u0010FR\u0011\u0010&\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008i\u0010FR\u0011\u0010\'\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008j\u0010FR\u0011\u0010(\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008k\u0010FR\u0011\u0010)\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008l\u0010FR\u0011\u0010*\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008*\u0010FR\u0017\u0010+\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008m\u0010JR#\u0010,\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030-0\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008n\u0010JR\u0013\u0010.\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008o\u0010FR\u0017\u0010/\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008p\u0010JR\u0011\u00100\u001a\u00020\u001b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00080\u0010]R\u0011\u00101\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008q\u0010FR\u0011\u00102\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008r\u0010FR\u0011\u00103\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008s\u0010FR\u0015\u00104\u001a\u0004\u0018\u00010\u0017\u00a2\u0006\n\n\u0002\u0010d\u001a\u0004\u0008t\u0010cR\u0011\u00105\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008u\u0010FR\"\u00106\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00078\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008v\u0010w\u001a\u0004\u0008x\u0010JR\u001c\u00107\u001a\u0002088\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008y\u0010w\u001a\u0004\u0008z\u0010{R\u001c\u00109\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008|\u0010w\u001a\u0004\u0008}\u0010FR\u001c\u0010:\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008~\u0010w\u001a\u0004\u0008\u007f\u0010FR\u0012\u0010;\u001a\u00020\u0003\u00a2\u0006\t\n\u0000\u001a\u0005\u0008\u0080\u0001\u0010FR\u0012\u0010<\u001a\u00020\u0017\u00a2\u0006\t\n\u0000\u001a\u0005\u0008\u0081\u0001\u0010ZR\u0012\u0010=\u001a\u00020\u0003\u00a2\u0006\t\n\u0000\u001a\u0005\u0008\u0082\u0001\u0010F\u00a8\u0006\u00cc\u0001"
    }
    d2 = {
        "Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;",
        "",
        "publicApiKey",
        "",
        "platform",
        "appUserId",
        "aliases",
        "",
        "vendorId",
        "deviceId",
        "appVersion",
        "appVersionPadded",
        "osVersion",
        "deviceModel",
        "deviceLocale",
        "preferredLocale",
        "deviceLanguageCode",
        "preferredLanguageCode",
        "regionCode",
        "preferredRegionCode",
        "deviceCurrencyCode",
        "deviceCurrencySymbol",
        "timezoneOffset",
        "",
        "radioType",
        "interfaceStyle",
        "isLowPowerModeEnabled",
        "",
        "bundleId",
        "appInstallDate",
        "isMac",
        "daysSinceInstall",
        "minutesSinceInstall",
        "daysSinceLastPaywallView",
        "minutesSinceLastPaywallView",
        "totalPaywallViews",
        "utcDate",
        "localDate",
        "utcTime",
        "localTime",
        "utcDateTime",
        "localDateTime",
        "isSandbox",
        "activeEntitlements",
        "activeEntitlementsObject",
        "",
        "subscriptionStatus",
        "activeProducts",
        "isFirstAppOpen",
        "sdkVersion",
        "sdkVersionPadded",
        "appBuildString",
        "appBuildStringNumber",
        "interfaceStyleMode",
        "capabilities",
        "capabilitiesConfig",
        "Lkotlinx/serialization/json/JsonElement;",
        "platformWrapper",
        "platformWrapperVersion",
        "deviceTier",
        "reviewRequestCount",
        "kotlinVersion",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZIILjava/lang/Integer;Ljava/lang/Integer;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Lkotlinx/serialization/json/JsonElement;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V",
        "seen0",
        "seen1",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZIILjava/lang/Integer;Ljava/lang/Integer;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Lkotlinx/serialization/json/JsonElement;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "getPublicApiKey",
        "()Ljava/lang/String;",
        "getPlatform",
        "getAppUserId",
        "getAliases",
        "()Ljava/util/List;",
        "getVendorId",
        "getDeviceId",
        "getAppVersion",
        "getAppVersionPadded",
        "getOsVersion",
        "getDeviceModel",
        "getDeviceLocale",
        "getPreferredLocale",
        "getDeviceLanguageCode",
        "getPreferredLanguageCode",
        "getRegionCode",
        "getPreferredRegionCode",
        "getDeviceCurrencyCode",
        "getDeviceCurrencySymbol",
        "getTimezoneOffset",
        "()I",
        "getRadioType",
        "getInterfaceStyle",
        "()Z",
        "getBundleId",
        "getAppInstallDate",
        "getDaysSinceInstall",
        "getMinutesSinceInstall",
        "getDaysSinceLastPaywallView",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "getMinutesSinceLastPaywallView",
        "getTotalPaywallViews",
        "getUtcDate",
        "getLocalDate",
        "getUtcTime",
        "getLocalTime",
        "getUtcDateTime",
        "getLocalDateTime",
        "getActiveEntitlements",
        "getActiveEntitlementsObject",
        "getSubscriptionStatus",
        "getActiveProducts",
        "getSdkVersion",
        "getSdkVersionPadded",
        "getAppBuildString",
        "getAppBuildStringNumber",
        "getInterfaceStyleMode",
        "getCapabilities$annotations",
        "()V",
        "getCapabilities",
        "getCapabilitiesConfig$annotations",
        "getCapabilitiesConfig",
        "()Lkotlinx/serialization/json/JsonElement;",
        "getPlatformWrapper$annotations",
        "getPlatformWrapper",
        "getPlatformWrapperVersion$annotations",
        "getPlatformWrapperVersion",
        "getDeviceTier",
        "getReviewRequestCount",
        "getKotlinVersion",
        "toDictionary",
        "json",
        "Lkotlinx/serialization/json/Json;",
        "component1",
        "component2",
        "component3",
        "component4",
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
        "component40",
        "component41",
        "component42",
        "component43",
        "component44",
        "component45",
        "component46",
        "component47",
        "component48",
        "component49",
        "component50",
        "component51",
        "component52",
        "component53",
        "component54",
        "copy",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZIILjava/lang/Integer;Ljava/lang/Integer;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Lkotlinx/serialization/json/JsonElement;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;",
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
        "$serializer",
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

.field public static final Companion:Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate$Companion;


# instance fields
.field private final activeEntitlements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final activeEntitlementsObject:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final activeProducts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final aliases:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final appBuildString:Ljava/lang/String;

.field private final appBuildStringNumber:Ljava/lang/Integer;

.field private final appInstallDate:Ljava/lang/String;

.field private final appUserId:Ljava/lang/String;

.field private final appVersion:Ljava/lang/String;

.field private final appVersionPadded:Ljava/lang/String;

.field private final bundleId:Ljava/lang/String;

.field private final capabilities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final capabilitiesConfig:Lkotlinx/serialization/json/JsonElement;

.field private final daysSinceInstall:I

.field private final daysSinceLastPaywallView:Ljava/lang/Integer;

.field private final deviceCurrencyCode:Ljava/lang/String;

.field private final deviceCurrencySymbol:Ljava/lang/String;

.field private final deviceId:Ljava/lang/String;

.field private final deviceLanguageCode:Ljava/lang/String;

.field private final deviceLocale:Ljava/lang/String;

.field private final deviceModel:Ljava/lang/String;

.field private final deviceTier:Ljava/lang/String;

.field private final interfaceStyle:Ljava/lang/String;

.field private final interfaceStyleMode:Ljava/lang/String;

.field private final isFirstAppOpen:Z

.field private final isLowPowerModeEnabled:Z

.field private final isMac:Z

.field private final isSandbox:Ljava/lang/String;

.field private final kotlinVersion:Ljava/lang/String;

.field private final localDate:Ljava/lang/String;

.field private final localDateTime:Ljava/lang/String;

.field private final localTime:Ljava/lang/String;

.field private final minutesSinceInstall:I

.field private final minutesSinceLastPaywallView:Ljava/lang/Integer;

.field private final osVersion:Ljava/lang/String;

.field private final platform:Ljava/lang/String;

.field private final platformWrapper:Ljava/lang/String;

.field private final platformWrapperVersion:Ljava/lang/String;

.field private final preferredLanguageCode:Ljava/lang/String;

.field private final preferredLocale:Ljava/lang/String;

.field private final preferredRegionCode:Ljava/lang/String;

.field private final publicApiKey:Ljava/lang/String;

.field private final radioType:Ljava/lang/String;

.field private final regionCode:Ljava/lang/String;

.field private final reviewRequestCount:I

.field private final sdkVersion:Ljava/lang/String;

.field private final sdkVersionPadded:Ljava/lang/String;

.field private final subscriptionStatus:Ljava/lang/String;

.field private final timezoneOffset:I

.field private final totalPaywallViews:I

.field private final utcDate:Ljava/lang/String;

.field private final utcDateTime:Ljava/lang/String;

.field private final utcTime:Ljava/lang/String;

.field private final vendorId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->Companion:Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate$Companion;

    const/16 v0, 0x36

    .line 9
    new-array v0, v0, [Lkotlinx/serialization/KSerializer;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v2, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v3, Lkotlinx/serialization/KSerializer;

    invoke-direct {v2, v3}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    const/4 v3, 0x3

    aput-object v2, v0, v3

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const/16 v2, 0x17

    aput-object v1, v0, v2

    const/16 v2, 0x18

    aput-object v1, v0, v2

    const/16 v2, 0x19

    aput-object v1, v0, v2

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    const/16 v2, 0x20

    aput-object v1, v0, v2

    const/16 v2, 0x21

    aput-object v1, v0, v2

    const/16 v2, 0x22

    aput-object v1, v0, v2

    const/16 v2, 0x23

    aput-object v1, v0, v2

    const/16 v2, 0x24

    aput-object v1, v0, v2

    new-instance v2, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v3, Lkotlinx/serialization/KSerializer;

    invoke-direct {v2, v3}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    const/16 v3, 0x25

    aput-object v2, v0, v3

    new-instance v2, Lkotlinx/serialization/internal/ArrayListSerializer;

    new-instance v3, Lkotlinx/serialization/internal/LinkedHashMapSerializer;

    sget-object v4, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v4, Lkotlinx/serialization/KSerializer;

    sget-object v5, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v5, Lkotlinx/serialization/KSerializer;

    invoke-direct {v3, v4, v5}, Lkotlinx/serialization/internal/LinkedHashMapSerializer;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)V

    check-cast v3, Lkotlinx/serialization/KSerializer;

    invoke-direct {v2, v3}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    const/16 v3, 0x26

    aput-object v2, v0, v3

    const/16 v2, 0x27

    aput-object v1, v0, v2

    new-instance v2, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v3, Lkotlinx/serialization/KSerializer;

    invoke-direct {v2, v3}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    const/16 v3, 0x28

    aput-object v2, v0, v3

    const/16 v2, 0x29

    aput-object v1, v0, v2

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    new-instance v2, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v3, Lkotlinx/serialization/KSerializer;

    invoke-direct {v2, v3}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    const/16 v3, 0x2f

    aput-object v2, v0, v3

    const/16 v2, 0x30

    aput-object v1, v0, v2

    const/16 v2, 0x31

    aput-object v1, v0, v2

    const/16 v2, 0x32

    aput-object v1, v0, v2

    const/16 v2, 0x33

    aput-object v1, v0, v2

    const/16 v2, 0x34

    aput-object v1, v0, v2

    const/16 v2, 0x35

    aput-object v1, v0, v2

    sput-object v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-void
.end method

.method public synthetic constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZIILjava/lang/Integer;Ljava/lang/Integer;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Lkotlinx/serialization/json/JsonElement;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
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
    const v4, 0x3fffff

    and-int v5, p2, v4

    if-eq v4, v5, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    or-int/2addr v0, v3

    if-eqz v0, :cond_2

    .line 9
    filled-new-array/range {p1 .. p2}, [I

    move-result-object p1

    filled-new-array {v2, v4}, [I

    move-result-object p2

    sget-object v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate$$serializer;->INSTANCE:Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate$$serializer;

    invoke-virtual {v0}, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwArrayMissingFieldException([I[ILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->publicApiKey:Ljava/lang/String;

    iput-object p4, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->platform:Ljava/lang/String;

    iput-object p5, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->appUserId:Ljava/lang/String;

    iput-object p6, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->aliases:Ljava/util/List;

    iput-object p7, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->vendorId:Ljava/lang/String;

    iput-object p8, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->deviceId:Ljava/lang/String;

    iput-object p9, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->appVersion:Ljava/lang/String;

    move-object/from16 p1, p10

    iput-object p1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->appVersionPadded:Ljava/lang/String;

    move-object/from16 p1, p11

    iput-object p1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->osVersion:Ljava/lang/String;

    move-object/from16 p1, p12

    iput-object p1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->deviceModel:Ljava/lang/String;

    move-object/from16 p1, p13

    iput-object p1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->deviceLocale:Ljava/lang/String;

    move-object/from16 p1, p14

    iput-object p1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->preferredLocale:Ljava/lang/String;

    move-object/from16 p1, p15

    iput-object p1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->deviceLanguageCode:Ljava/lang/String;

    move-object/from16 p1, p16

    iput-object p1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->preferredLanguageCode:Ljava/lang/String;

    move-object/from16 p1, p17

    iput-object p1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->regionCode:Ljava/lang/String;

    move-object/from16 p1, p18

    iput-object p1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->preferredRegionCode:Ljava/lang/String;

    move-object/from16 p1, p19

    iput-object p1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->deviceCurrencyCode:Ljava/lang/String;

    move-object/from16 p1, p20

    iput-object p1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->deviceCurrencySymbol:Ljava/lang/String;

    move/from16 p1, p21

    iput p1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->timezoneOffset:I

    move-object/from16 p1, p22

    iput-object p1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->radioType:Ljava/lang/String;

    move-object/from16 p1, p23

    iput-object p1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->interfaceStyle:Ljava/lang/String;

    move/from16 p1, p24

    iput-boolean p1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->isLowPowerModeEnabled:Z

    move-object/from16 p1, p25

    iput-object p1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->bundleId:Ljava/lang/String;

    move-object/from16 p1, p26

    iput-object p1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->appInstallDate:Ljava/lang/String;

    move/from16 p1, p27

    iput-boolean p1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->isMac:Z

    move/from16 p1, p28

    iput p1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->daysSinceInstall:I

    move/from16 p1, p29

    iput p1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->minutesSinceInstall:I

    move-object/from16 p1, p30

    iput-object p1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->daysSinceLastPaywallView:Ljava/lang/Integer;

    move-object/from16 p1, p31

    iput-object p1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->minutesSinceLastPaywallView:Ljava/lang/Integer;

    move/from16 p1, p32

    iput p1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->totalPaywallViews:I

    move-object/from16 p1, p33

    iput-object p1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->utcDate:Ljava/lang/String;

    move-object/from16 p1, p34

    iput-object p1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->localDate:Ljava/lang/String;

    move-object/from16 p1, p35

    iput-object p1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->utcTime:Ljava/lang/String;

    move-object/from16 p1, p36

    iput-object p1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->localTime:Ljava/lang/String;

    move-object/from16 p1, p37

    iput-object p1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->utcDateTime:Ljava/lang/String;

    move-object/from16 p1, p38

    iput-object p1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->localDateTime:Ljava/lang/String;

    move-object/from16 p1, p39

    iput-object p1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->isSandbox:Ljava/lang/String;

    move-object/from16 p1, p40

    iput-object p1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->activeEntitlements:Ljava/util/List;

    move-object/from16 p1, p41

    iput-object p1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->activeEntitlementsObject:Ljava/util/List;

    move-object/from16 p1, p42

    iput-object p1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->subscriptionStatus:Ljava/lang/String;

    move-object/from16 p1, p43

    iput-object p1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->activeProducts:Ljava/util/List;

    move/from16 p1, p44

    iput-boolean p1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->isFirstAppOpen:Z

    move-object/from16 p1, p45

    iput-object p1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->sdkVersion:Ljava/lang/String;

    move-object/from16 p1, p46

    iput-object p1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->sdkVersionPadded:Ljava/lang/String;

    move-object/from16 p1, p47

    iput-object p1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->appBuildString:Ljava/lang/String;

    move-object/from16 p1, p48

    iput-object p1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->appBuildStringNumber:Ljava/lang/Integer;

    move-object/from16 p1, p49

    iput-object p1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->interfaceStyleMode:Ljava/lang/String;

    move-object/from16 p1, p50

    iput-object p1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->capabilities:Ljava/util/List;

    move-object/from16 p1, p51

    iput-object p1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->capabilitiesConfig:Lkotlinx/serialization/json/JsonElement;

    move-object/from16 p1, p52

    iput-object p1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->platformWrapper:Ljava/lang/String;

    move-object/from16 p1, p53

    iput-object p1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->platformWrapperVersion:Ljava/lang/String;

    move-object/from16 p1, p54

    iput-object p1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->deviceTier:Ljava/lang/String;

    move/from16 p1, p55

    iput p1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->reviewRequestCount:I

    move-object/from16 p1, p56

    iput-object p1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->kotlinVersion:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZIILjava/lang/Integer;Ljava/lang/Integer;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Lkotlinx/serialization/json/JsonElement;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
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
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZII",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlinx/serialization/json/JsonElement;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    const-string v0, "publicApiKey"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "platform"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appUserId"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "aliases"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "vendorId"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceId"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appVersion"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appVersionPadded"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "osVersion"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceModel"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceLocale"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "preferredLocale"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceLanguageCode"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "preferredLanguageCode"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "regionCode"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "preferredRegionCode"

    move-object/from16 v15, p16

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceCurrencyCode"

    move-object/from16 v15, p17

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceCurrencySymbol"

    move-object/from16 v15, p18

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "radioType"

    move-object/from16 v15, p20

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "interfaceStyle"

    move-object/from16 v15, p21

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bundleId"

    move-object/from16 v15, p23

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appInstallDate"

    move-object/from16 v15, p24

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "utcDate"

    move-object/from16 v15, p31

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "localDate"

    move-object/from16 v15, p32

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "utcTime"

    move-object/from16 v15, p33

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "localTime"

    move-object/from16 v15, p34

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "utcDateTime"

    move-object/from16 v15, p35

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "localDateTime"

    move-object/from16 v15, p36

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "isSandbox"

    move-object/from16 v15, p37

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activeEntitlements"

    move-object/from16 v15, p38

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activeEntitlementsObject"

    move-object/from16 v15, p39

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activeProducts"

    move-object/from16 v15, p41

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkVersion"

    move-object/from16 v15, p43

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkVersionPadded"

    move-object/from16 v15, p44

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appBuildString"

    move-object/from16 v15, p45

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "interfaceStyleMode"

    move-object/from16 v15, p47

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "capabilities"

    move-object/from16 v15, p48

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "capabilitiesConfig"

    move-object/from16 v15, p49

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "platformWrapper"

    move-object/from16 v15, p50

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "platformWrapperVersion"

    move-object/from16 v15, p51

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceTier"

    move-object/from16 v15, p52

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kotlinVersion"

    move-object/from16 v15, p54

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    .line 11
    iput-object v1, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->publicApiKey:Ljava/lang/String;

    .line 12
    iput-object v2, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->platform:Ljava/lang/String;

    .line 13
    iput-object v3, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->appUserId:Ljava/lang/String;

    .line 14
    iput-object v4, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->aliases:Ljava/util/List;

    .line 15
    iput-object v5, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->vendorId:Ljava/lang/String;

    .line 16
    iput-object v6, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->deviceId:Ljava/lang/String;

    .line 17
    iput-object v7, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->appVersion:Ljava/lang/String;

    .line 18
    iput-object v8, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->appVersionPadded:Ljava/lang/String;

    .line 19
    iput-object v9, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->osVersion:Ljava/lang/String;

    .line 20
    iput-object v10, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->deviceModel:Ljava/lang/String;

    .line 21
    iput-object v11, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->deviceLocale:Ljava/lang/String;

    .line 22
    iput-object v12, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->preferredLocale:Ljava/lang/String;

    .line 23
    iput-object v13, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->deviceLanguageCode:Ljava/lang/String;

    .line 24
    iput-object v14, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->preferredLanguageCode:Ljava/lang/String;

    move-object/from16 v1, p15

    .line 25
    iput-object v1, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->regionCode:Ljava/lang/String;

    move-object/from16 v1, p16

    .line 26
    iput-object v1, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->preferredRegionCode:Ljava/lang/String;

    move-object/from16 v1, p17

    .line 27
    iput-object v1, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->deviceCurrencyCode:Ljava/lang/String;

    move-object/from16 v1, p18

    .line 28
    iput-object v1, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->deviceCurrencySymbol:Ljava/lang/String;

    move/from16 v1, p19

    .line 29
    iput v1, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->timezoneOffset:I

    move-object/from16 v1, p20

    .line 30
    iput-object v1, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->radioType:Ljava/lang/String;

    move-object/from16 v1, p21

    .line 31
    iput-object v1, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->interfaceStyle:Ljava/lang/String;

    move/from16 v1, p22

    .line 32
    iput-boolean v1, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->isLowPowerModeEnabled:Z

    move-object/from16 v1, p23

    .line 33
    iput-object v1, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->bundleId:Ljava/lang/String;

    move-object/from16 v1, p24

    .line 34
    iput-object v1, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->appInstallDate:Ljava/lang/String;

    move/from16 v1, p25

    .line 35
    iput-boolean v1, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->isMac:Z

    move/from16 v1, p26

    .line 36
    iput v1, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->daysSinceInstall:I

    move/from16 v1, p27

    .line 37
    iput v1, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->minutesSinceInstall:I

    move-object/from16 v1, p28

    .line 38
    iput-object v1, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->daysSinceLastPaywallView:Ljava/lang/Integer;

    move-object/from16 v1, p29

    .line 39
    iput-object v1, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->minutesSinceLastPaywallView:Ljava/lang/Integer;

    move/from16 v1, p30

    .line 40
    iput v1, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->totalPaywallViews:I

    move-object/from16 v1, p31

    .line 41
    iput-object v1, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->utcDate:Ljava/lang/String;

    move-object/from16 v1, p32

    .line 42
    iput-object v1, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->localDate:Ljava/lang/String;

    move-object/from16 v1, p33

    .line 43
    iput-object v1, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->utcTime:Ljava/lang/String;

    move-object/from16 v1, p34

    .line 44
    iput-object v1, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->localTime:Ljava/lang/String;

    move-object/from16 v1, p35

    .line 45
    iput-object v1, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->utcDateTime:Ljava/lang/String;

    move-object/from16 v1, p36

    .line 46
    iput-object v1, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->localDateTime:Ljava/lang/String;

    move-object/from16 v1, p37

    .line 47
    iput-object v1, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->isSandbox:Ljava/lang/String;

    move-object/from16 v1, p38

    .line 48
    iput-object v1, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->activeEntitlements:Ljava/util/List;

    move-object/from16 v1, p39

    .line 49
    iput-object v1, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->activeEntitlementsObject:Ljava/util/List;

    move-object/from16 v1, p40

    .line 50
    iput-object v1, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->subscriptionStatus:Ljava/lang/String;

    move-object/from16 v1, p41

    .line 51
    iput-object v1, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->activeProducts:Ljava/util/List;

    move/from16 v1, p42

    .line 52
    iput-boolean v1, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->isFirstAppOpen:Z

    move-object/from16 v1, p43

    .line 53
    iput-object v1, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->sdkVersion:Ljava/lang/String;

    move-object/from16 v1, p44

    .line 54
    iput-object v1, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->sdkVersionPadded:Ljava/lang/String;

    move-object/from16 v1, p45

    .line 55
    iput-object v1, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->appBuildString:Ljava/lang/String;

    move-object/from16 v1, p46

    .line 56
    iput-object v1, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->appBuildStringNumber:Ljava/lang/Integer;

    move-object/from16 v1, p47

    .line 57
    iput-object v1, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->interfaceStyleMode:Ljava/lang/String;

    move-object/from16 v1, p48

    .line 58
    iput-object v1, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->capabilities:Ljava/util/List;

    move-object/from16 v1, p49

    .line 60
    iput-object v1, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->capabilitiesConfig:Lkotlinx/serialization/json/JsonElement;

    move-object/from16 v1, p50

    .line 62
    iput-object v1, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->platformWrapper:Ljava/lang/String;

    move-object/from16 v1, p51

    .line 64
    iput-object v1, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->platformWrapperVersion:Ljava/lang/String;

    move-object/from16 v1, p52

    .line 66
    iput-object v1, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->deviceTier:Ljava/lang/String;

    move/from16 v1, p53

    .line 67
    iput v1, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->reviewRequestCount:I

    .line 68
    iput-object v15, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->kotlinVersion:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 9
    sget-object v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method public static synthetic copy$default(Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZIILjava/lang/Integer;Ljava/lang/Integer;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Lkotlinx/serialization/json/JsonElement;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILjava/lang/Object;)Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;
    .locals 24

    move-object/from16 v0, p0

    move/from16 v1, p55

    move/from16 v2, p56

    and-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->publicApiKey:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object/from16 v3, p1

    :goto_0
    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->platform:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v4, p2

    :goto_1
    and-int/lit8 v5, v1, 0x4

    if-eqz v5, :cond_2

    iget-object v5, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->appUserId:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v5, p3

    :goto_2
    and-int/lit8 v6, v1, 0x8

    if-eqz v6, :cond_3

    iget-object v6, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->aliases:Ljava/util/List;

    goto :goto_3

    :cond_3
    move-object/from16 v6, p4

    :goto_3
    and-int/lit8 v7, v1, 0x10

    if-eqz v7, :cond_4

    iget-object v7, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->vendorId:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v7, p5

    :goto_4
    and-int/lit8 v8, v1, 0x20

    if-eqz v8, :cond_5

    iget-object v8, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->deviceId:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v8, p6

    :goto_5
    and-int/lit8 v9, v1, 0x40

    if-eqz v9, :cond_6

    iget-object v9, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->appVersion:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v9, p7

    :goto_6
    and-int/lit16 v10, v1, 0x80

    if-eqz v10, :cond_7

    iget-object v10, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->appVersionPadded:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v10, p8

    :goto_7
    and-int/lit16 v11, v1, 0x100

    if-eqz v11, :cond_8

    iget-object v11, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->osVersion:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v11, p9

    :goto_8
    and-int/lit16 v12, v1, 0x200

    if-eqz v12, :cond_9

    iget-object v12, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->deviceModel:Ljava/lang/String;

    goto :goto_9

    :cond_9
    move-object/from16 v12, p10

    :goto_9
    and-int/lit16 v13, v1, 0x400

    if-eqz v13, :cond_a

    iget-object v13, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->deviceLocale:Ljava/lang/String;

    goto :goto_a

    :cond_a
    move-object/from16 v13, p11

    :goto_a
    and-int/lit16 v14, v1, 0x800

    if-eqz v14, :cond_b

    iget-object v14, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->preferredLocale:Ljava/lang/String;

    goto :goto_b

    :cond_b
    move-object/from16 v14, p12

    :goto_b
    and-int/lit16 v15, v1, 0x1000

    if-eqz v15, :cond_c

    iget-object v15, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->deviceLanguageCode:Ljava/lang/String;

    goto :goto_c

    :cond_c
    move-object/from16 v15, p13

    :goto_c
    move-object/from16 p1, v3

    and-int/lit16 v3, v1, 0x2000

    if-eqz v3, :cond_d

    iget-object v3, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->preferredLanguageCode:Ljava/lang/String;

    goto :goto_d

    :cond_d
    move-object/from16 v3, p14

    :goto_d
    move-object/from16 p2, v3

    and-int/lit16 v3, v1, 0x4000

    if-eqz v3, :cond_e

    iget-object v3, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->regionCode:Ljava/lang/String;

    goto :goto_e

    :cond_e
    move-object/from16 v3, p15

    :goto_e
    const v16, 0x8000

    and-int v17, v1, v16

    if-eqz v17, :cond_f

    iget-object v1, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->preferredRegionCode:Ljava/lang/String;

    goto :goto_f

    :cond_f
    move-object/from16 v1, p16

    :goto_f
    const/high16 v17, 0x10000

    and-int v18, p55, v17

    move-object/from16 p3, v1

    if-eqz v18, :cond_10

    iget-object v1, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->deviceCurrencyCode:Ljava/lang/String;

    goto :goto_10

    :cond_10
    move-object/from16 v1, p17

    :goto_10
    const/high16 v18, 0x20000

    and-int v19, p55, v18

    move-object/from16 p4, v1

    if-eqz v19, :cond_11

    iget-object v1, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->deviceCurrencySymbol:Ljava/lang/String;

    goto :goto_11

    :cond_11
    move-object/from16 v1, p18

    :goto_11
    const/high16 v19, 0x40000

    and-int v20, p55, v19

    move-object/from16 p5, v1

    if-eqz v20, :cond_12

    iget v1, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->timezoneOffset:I

    goto :goto_12

    :cond_12
    move/from16 v1, p19

    :goto_12
    const/high16 v20, 0x80000

    and-int v21, p55, v20

    move/from16 p6, v1

    if-eqz v21, :cond_13

    iget-object v1, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->radioType:Ljava/lang/String;

    goto :goto_13

    :cond_13
    move-object/from16 v1, p20

    :goto_13
    const/high16 v21, 0x100000

    and-int v22, p55, v21

    move-object/from16 p7, v1

    if-eqz v22, :cond_14

    iget-object v1, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->interfaceStyle:Ljava/lang/String;

    goto :goto_14

    :cond_14
    move-object/from16 v1, p21

    :goto_14
    const/high16 v22, 0x200000

    and-int v23, p55, v22

    move-object/from16 p8, v1

    if-eqz v23, :cond_15

    iget-boolean v1, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->isLowPowerModeEnabled:Z

    goto :goto_15

    :cond_15
    move/from16 v1, p22

    :goto_15
    const/high16 v23, 0x400000

    and-int v23, p55, v23

    move/from16 p9, v1

    if-eqz v23, :cond_16

    iget-object v1, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->bundleId:Ljava/lang/String;

    goto :goto_16

    :cond_16
    move-object/from16 v1, p23

    :goto_16
    const/high16 v23, 0x800000

    and-int v23, p55, v23

    move-object/from16 p10, v1

    if-eqz v23, :cond_17

    iget-object v1, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->appInstallDate:Ljava/lang/String;

    goto :goto_17

    :cond_17
    move-object/from16 v1, p24

    :goto_17
    const/high16 v23, 0x1000000

    and-int v23, p55, v23

    move-object/from16 p11, v1

    if-eqz v23, :cond_18

    iget-boolean v1, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->isMac:Z

    goto :goto_18

    :cond_18
    move/from16 v1, p25

    :goto_18
    const/high16 v23, 0x2000000

    and-int v23, p55, v23

    move/from16 p12, v1

    if-eqz v23, :cond_19

    iget v1, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->daysSinceInstall:I

    goto :goto_19

    :cond_19
    move/from16 v1, p26

    :goto_19
    const/high16 v23, 0x4000000

    and-int v23, p55, v23

    move/from16 p13, v1

    if-eqz v23, :cond_1a

    iget v1, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->minutesSinceInstall:I

    goto :goto_1a

    :cond_1a
    move/from16 v1, p27

    :goto_1a
    const/high16 v23, 0x8000000

    and-int v23, p55, v23

    move/from16 p14, v1

    if-eqz v23, :cond_1b

    iget-object v1, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->daysSinceLastPaywallView:Ljava/lang/Integer;

    goto :goto_1b

    :cond_1b
    move-object/from16 v1, p28

    :goto_1b
    const/high16 v23, 0x10000000

    and-int v23, p55, v23

    move-object/from16 p15, v1

    if-eqz v23, :cond_1c

    iget-object v1, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->minutesSinceLastPaywallView:Ljava/lang/Integer;

    goto :goto_1c

    :cond_1c
    move-object/from16 v1, p29

    :goto_1c
    const/high16 v23, 0x20000000

    and-int v23, p55, v23

    move-object/from16 p16, v1

    if-eqz v23, :cond_1d

    iget v1, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->totalPaywallViews:I

    goto :goto_1d

    :cond_1d
    move/from16 v1, p30

    :goto_1d
    const/high16 v23, 0x40000000    # 2.0f

    and-int v23, p55, v23

    move/from16 p17, v1

    if-eqz v23, :cond_1e

    iget-object v1, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->utcDate:Ljava/lang/String;

    goto :goto_1e

    :cond_1e
    move-object/from16 v1, p31

    :goto_1e
    const/high16 v23, -0x80000000

    and-int v23, p55, v23

    move-object/from16 p18, v1

    if-eqz v23, :cond_1f

    iget-object v1, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->localDate:Ljava/lang/String;

    goto :goto_1f

    :cond_1f
    move-object/from16 v1, p32

    :goto_1f
    and-int/lit8 v23, v2, 0x1

    move-object/from16 p19, v1

    if-eqz v23, :cond_20

    iget-object v1, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->utcTime:Ljava/lang/String;

    goto :goto_20

    :cond_20
    move-object/from16 v1, p33

    :goto_20
    and-int/lit8 v23, v2, 0x2

    move-object/from16 p20, v1

    if-eqz v23, :cond_21

    iget-object v1, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->localTime:Ljava/lang/String;

    goto :goto_21

    :cond_21
    move-object/from16 v1, p34

    :goto_21
    and-int/lit8 v23, v2, 0x4

    move-object/from16 p21, v1

    if-eqz v23, :cond_22

    iget-object v1, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->utcDateTime:Ljava/lang/String;

    goto :goto_22

    :cond_22
    move-object/from16 v1, p35

    :goto_22
    and-int/lit8 v23, v2, 0x8

    move-object/from16 p22, v1

    if-eqz v23, :cond_23

    iget-object v1, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->localDateTime:Ljava/lang/String;

    goto :goto_23

    :cond_23
    move-object/from16 v1, p36

    :goto_23
    and-int/lit8 v23, v2, 0x10

    move-object/from16 p23, v1

    if-eqz v23, :cond_24

    iget-object v1, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->isSandbox:Ljava/lang/String;

    goto :goto_24

    :cond_24
    move-object/from16 v1, p37

    :goto_24
    and-int/lit8 v23, v2, 0x20

    move-object/from16 p24, v1

    if-eqz v23, :cond_25

    iget-object v1, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->activeEntitlements:Ljava/util/List;

    goto :goto_25

    :cond_25
    move-object/from16 v1, p38

    :goto_25
    and-int/lit8 v23, v2, 0x40

    move-object/from16 p25, v1

    if-eqz v23, :cond_26

    iget-object v1, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->activeEntitlementsObject:Ljava/util/List;

    goto :goto_26

    :cond_26
    move-object/from16 v1, p39

    :goto_26
    move-object/from16 p26, v1

    and-int/lit16 v1, v2, 0x80

    if-eqz v1, :cond_27

    iget-object v1, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->subscriptionStatus:Ljava/lang/String;

    goto :goto_27

    :cond_27
    move-object/from16 v1, p40

    :goto_27
    move-object/from16 p27, v1

    and-int/lit16 v1, v2, 0x100

    if-eqz v1, :cond_28

    iget-object v1, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->activeProducts:Ljava/util/List;

    goto :goto_28

    :cond_28
    move-object/from16 v1, p41

    :goto_28
    move-object/from16 p28, v1

    and-int/lit16 v1, v2, 0x200

    if-eqz v1, :cond_29

    iget-boolean v1, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->isFirstAppOpen:Z

    goto :goto_29

    :cond_29
    move/from16 v1, p42

    :goto_29
    move/from16 p29, v1

    and-int/lit16 v1, v2, 0x400

    if-eqz v1, :cond_2a

    iget-object v1, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->sdkVersion:Ljava/lang/String;

    goto :goto_2a

    :cond_2a
    move-object/from16 v1, p43

    :goto_2a
    move-object/from16 p30, v1

    and-int/lit16 v1, v2, 0x800

    if-eqz v1, :cond_2b

    iget-object v1, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->sdkVersionPadded:Ljava/lang/String;

    goto :goto_2b

    :cond_2b
    move-object/from16 v1, p44

    :goto_2b
    move-object/from16 p31, v1

    and-int/lit16 v1, v2, 0x1000

    if-eqz v1, :cond_2c

    iget-object v1, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->appBuildString:Ljava/lang/String;

    goto :goto_2c

    :cond_2c
    move-object/from16 v1, p45

    :goto_2c
    move-object/from16 p32, v1

    and-int/lit16 v1, v2, 0x2000

    if-eqz v1, :cond_2d

    iget-object v1, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->appBuildStringNumber:Ljava/lang/Integer;

    goto :goto_2d

    :cond_2d
    move-object/from16 v1, p46

    :goto_2d
    move-object/from16 p33, v1

    and-int/lit16 v1, v2, 0x4000

    if-eqz v1, :cond_2e

    iget-object v1, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->interfaceStyleMode:Ljava/lang/String;

    goto :goto_2e

    :cond_2e
    move-object/from16 v1, p47

    :goto_2e
    and-int v16, v2, v16

    move-object/from16 p34, v1

    if-eqz v16, :cond_2f

    iget-object v1, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->capabilities:Ljava/util/List;

    goto :goto_2f

    :cond_2f
    move-object/from16 v1, p48

    :goto_2f
    and-int v16, v2, v17

    move-object/from16 p35, v1

    if-eqz v16, :cond_30

    iget-object v1, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->capabilitiesConfig:Lkotlinx/serialization/json/JsonElement;

    goto :goto_30

    :cond_30
    move-object/from16 v1, p49

    :goto_30
    and-int v16, v2, v18

    move-object/from16 p36, v1

    if-eqz v16, :cond_31

    iget-object v1, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->platformWrapper:Ljava/lang/String;

    goto :goto_31

    :cond_31
    move-object/from16 v1, p50

    :goto_31
    and-int v16, v2, v19

    move-object/from16 p37, v1

    if-eqz v16, :cond_32

    iget-object v1, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->platformWrapperVersion:Ljava/lang/String;

    goto :goto_32

    :cond_32
    move-object/from16 v1, p51

    :goto_32
    and-int v16, v2, v20

    move-object/from16 p38, v1

    if-eqz v16, :cond_33

    iget-object v1, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->deviceTier:Ljava/lang/String;

    goto :goto_33

    :cond_33
    move-object/from16 v1, p52

    :goto_33
    and-int v16, v2, v21

    move-object/from16 p39, v1

    if-eqz v16, :cond_34

    iget v1, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->reviewRequestCount:I

    goto :goto_34

    :cond_34
    move/from16 v1, p53

    :goto_34
    and-int v2, v2, v22

    if-eqz v2, :cond_35

    iget-object v2, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->kotlinVersion:Ljava/lang/String;

    move-object/from16 p55, v2

    goto :goto_35

    :cond_35
    move-object/from16 p55, p54

    :goto_35
    move-object/from16 p40, p26

    move-object/from16 p41, p27

    move-object/from16 p42, p28

    move/from16 p43, p29

    move-object/from16 p44, p30

    move-object/from16 p45, p31

    move-object/from16 p46, p32

    move-object/from16 p47, p33

    move-object/from16 p48, p34

    move-object/from16 p49, p35

    move-object/from16 p50, p36

    move-object/from16 p51, p37

    move-object/from16 p52, p38

    move-object/from16 p53, p39

    move/from16 p54, v1

    move/from16 p26, p12

    move/from16 p27, p13

    move/from16 p28, p14

    move-object/from16 p29, p15

    move-object/from16 p30, p16

    move/from16 p31, p17

    move-object/from16 p32, p18

    move-object/from16 p33, p19

    move-object/from16 p34, p20

    move-object/from16 p35, p21

    move-object/from16 p36, p22

    move-object/from16 p37, p23

    move-object/from16 p38, p24

    move-object/from16 p39, p25

    move-object/from16 p16, v3

    move-object/from16 p12, v13

    move-object/from16 p13, v14

    move-object/from16 p14, v15

    move-object/from16 p15, p2

    move-object/from16 p17, p3

    move-object/from16 p18, p4

    move-object/from16 p19, p5

    move/from16 p20, p6

    move-object/from16 p21, p7

    move-object/from16 p22, p8

    move/from16 p23, p9

    move-object/from16 p24, p10

    move-object/from16 p25, p11

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p2, p1

    move-object/from16 p1, v0

    invoke-virtual/range {p1 .. p55}, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZIILjava/lang/Integer;Ljava/lang/Integer;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Lkotlinx/serialization/json/JsonElement;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic getCapabilities$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "capabilities"
    .end annotation

    return-void
.end method

.method public static synthetic getCapabilitiesConfig$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "capabilities_config"
    .end annotation

    return-void
.end method

.method public static synthetic getPlatformWrapper$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "platform_wrapper"
    .end annotation

    return-void
.end method

.method public static synthetic getPlatformWrapperVersion$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "platform_wrapper_version"
    .end annotation

    return-void
.end method

.method public static final synthetic write$Self$superwall_release(Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 9
    sget-object v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->publicApiKey:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->platform:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->appUserId:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/4 v1, 0x3

    aget-object v2, v0, v1

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    iget-object v3, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->aliases:Ljava/util/List;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->vendorId:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->deviceId:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->appVersion:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->appVersionPadded:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->osVersion:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->deviceModel:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->deviceLocale:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->preferredLocale:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->deviceLanguageCode:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->preferredLanguageCode:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/16 v1, 0xe

    iget-object v2, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->regionCode:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/16 v1, 0xf

    iget-object v2, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->preferredRegionCode:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/16 v1, 0x10

    iget-object v2, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->deviceCurrencyCode:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/16 v1, 0x11

    iget-object v2, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->deviceCurrencySymbol:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/16 v1, 0x12

    iget v2, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->timezoneOffset:I

    invoke-interface {p1, p2, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    const/16 v1, 0x13

    iget-object v2, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->radioType:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/16 v1, 0x14

    iget-object v2, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->interfaceStyle:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/16 v1, 0x15

    iget-boolean v2, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->isLowPowerModeEnabled:Z

    invoke-interface {p1, p2, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/16 v1, 0x16

    iget-object v2, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->bundleId:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/16 v1, 0x17

    iget-object v2, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->appInstallDate:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/16 v1, 0x18

    iget-boolean v2, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->isMac:Z

    invoke-interface {p1, p2, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/16 v1, 0x19

    iget v2, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->daysSinceInstall:I

    invoke-interface {p1, p2, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    const/16 v1, 0x1a

    iget v2, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->minutesSinceInstall:I

    invoke-interface {p1, p2, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    sget-object v1, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object v2, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->daysSinceLastPaywallView:Ljava/lang/Integer;

    const/16 v3, 0x1b

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v1, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object v2, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->minutesSinceLastPaywallView:Ljava/lang/Integer;

    const/16 v3, 0x1c

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/16 v1, 0x1d

    iget v2, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->totalPaywallViews:I

    invoke-interface {p1, p2, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    const/16 v1, 0x1e

    iget-object v2, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->utcDate:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/16 v1, 0x1f

    iget-object v2, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->localDate:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/16 v1, 0x20

    iget-object v2, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->utcTime:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/16 v1, 0x21

    iget-object v2, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->localTime:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/16 v1, 0x22

    iget-object v2, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->utcDateTime:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/16 v1, 0x23

    iget-object v2, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->localDateTime:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/16 v1, 0x24

    iget-object v2, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->isSandbox:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/16 v1, 0x25

    aget-object v2, v0, v1

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    iget-object v3, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->activeEntitlements:Ljava/util/List;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/16 v1, 0x26

    aget-object v2, v0, v1

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    iget-object v3, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->activeEntitlementsObject:Ljava/util/List;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object v2, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->subscriptionStatus:Ljava/lang/String;

    const/16 v3, 0x27

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/16 v1, 0x28

    aget-object v2, v0, v1

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    iget-object v3, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->activeProducts:Ljava/util/List;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/16 v1, 0x29

    iget-boolean v2, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->isFirstAppOpen:Z

    invoke-interface {p1, p2, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/16 v1, 0x2a

    iget-object v2, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->sdkVersion:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/16 v1, 0x2b

    iget-object v2, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->sdkVersionPadded:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/16 v1, 0x2c

    iget-object v2, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->appBuildString:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    sget-object v1, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object v2, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->appBuildStringNumber:Ljava/lang/Integer;

    const/16 v3, 0x2d

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/16 v1, 0x2e

    iget-object v2, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->interfaceStyleMode:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/16 v1, 0x2f

    aget-object v0, v0, v1

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object v2, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->capabilities:Ljava/util/List;

    invoke-interface {p1, p2, v1, v0, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v0, Lkotlinx/serialization/json/JsonElementSerializer;->INSTANCE:Lkotlinx/serialization/json/JsonElementSerializer;

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->capabilitiesConfig:Lkotlinx/serialization/json/JsonElement;

    const/16 v2, 0x30

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/16 v0, 0x31

    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->platformWrapper:Ljava/lang/String;

    invoke-interface {p1, p2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/16 v0, 0x32

    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->platformWrapperVersion:Ljava/lang/String;

    invoke-interface {p1, p2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/16 v0, 0x33

    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->deviceTier:Ljava/lang/String;

    invoke-interface {p1, p2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/16 v0, 0x34

    iget v1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->reviewRequestCount:I

    invoke-interface {p1, p2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    const/16 v0, 0x35

    iget-object p0, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->kotlinVersion:Ljava/lang/String;

    invoke-interface {p1, p2, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->publicApiKey:Ljava/lang/String;

    return-object v0
.end method

.method public final component10()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->deviceModel:Ljava/lang/String;

    return-object v0
.end method

.method public final component11()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->deviceLocale:Ljava/lang/String;

    return-object v0
.end method

.method public final component12()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->preferredLocale:Ljava/lang/String;

    return-object v0
.end method

.method public final component13()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->deviceLanguageCode:Ljava/lang/String;

    return-object v0
.end method

.method public final component14()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->preferredLanguageCode:Ljava/lang/String;

    return-object v0
.end method

.method public final component15()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->regionCode:Ljava/lang/String;

    return-object v0
.end method

.method public final component16()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->preferredRegionCode:Ljava/lang/String;

    return-object v0
.end method

.method public final component17()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->deviceCurrencyCode:Ljava/lang/String;

    return-object v0
.end method

.method public final component18()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->deviceCurrencySymbol:Ljava/lang/String;

    return-object v0
.end method

.method public final component19()I
    .locals 1

    iget v0, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->timezoneOffset:I

    return v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->platform:Ljava/lang/String;

    return-object v0
.end method

.method public final component20()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->radioType:Ljava/lang/String;

    return-object v0
.end method

.method public final component21()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->interfaceStyle:Ljava/lang/String;

    return-object v0
.end method

.method public final component22()Z
    .locals 1

    iget-boolean v0, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->isLowPowerModeEnabled:Z

    return v0
.end method

.method public final component23()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->bundleId:Ljava/lang/String;

    return-object v0
.end method

.method public final component24()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->appInstallDate:Ljava/lang/String;

    return-object v0
.end method

.method public final component25()Z
    .locals 1

    iget-boolean v0, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->isMac:Z

    return v0
.end method

.method public final component26()I
    .locals 1

    iget v0, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->daysSinceInstall:I

    return v0
.end method

.method public final component27()I
    .locals 1

    iget v0, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->minutesSinceInstall:I

    return v0
.end method

.method public final component28()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->daysSinceLastPaywallView:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component29()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->minutesSinceLastPaywallView:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->appUserId:Ljava/lang/String;

    return-object v0
.end method

.method public final component30()I
    .locals 1

    iget v0, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->totalPaywallViews:I

    return v0
.end method

.method public final component31()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->utcDate:Ljava/lang/String;

    return-object v0
.end method

.method public final component32()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->localDate:Ljava/lang/String;

    return-object v0
.end method

.method public final component33()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->utcTime:Ljava/lang/String;

    return-object v0
.end method

.method public final component34()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->localTime:Ljava/lang/String;

    return-object v0
.end method

.method public final component35()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->utcDateTime:Ljava/lang/String;

    return-object v0
.end method

.method public final component36()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->localDateTime:Ljava/lang/String;

    return-object v0
.end method

.method public final component37()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->isSandbox:Ljava/lang/String;

    return-object v0
.end method

.method public final component38()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->activeEntitlements:Ljava/util/List;

    return-object v0
.end method

.method public final component39()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->activeEntitlementsObject:Ljava/util/List;

    return-object v0
.end method

.method public final component4()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->aliases:Ljava/util/List;

    return-object v0
.end method

.method public final component40()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->subscriptionStatus:Ljava/lang/String;

    return-object v0
.end method

.method public final component41()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->activeProducts:Ljava/util/List;

    return-object v0
.end method

.method public final component42()Z
    .locals 1

    iget-boolean v0, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->isFirstAppOpen:Z

    return v0
.end method

.method public final component43()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->sdkVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final component44()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->sdkVersionPadded:Ljava/lang/String;

    return-object v0
.end method

.method public final component45()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->appBuildString:Ljava/lang/String;

    return-object v0
.end method

.method public final component46()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->appBuildStringNumber:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component47()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->interfaceStyleMode:Ljava/lang/String;

    return-object v0
.end method

.method public final component48()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->capabilities:Ljava/util/List;

    return-object v0
.end method

.method public final component49()Lkotlinx/serialization/json/JsonElement;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->capabilitiesConfig:Lkotlinx/serialization/json/JsonElement;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->vendorId:Ljava/lang/String;

    return-object v0
.end method

.method public final component50()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->platformWrapper:Ljava/lang/String;

    return-object v0
.end method

.method public final component51()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->platformWrapperVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final component52()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->deviceTier:Ljava/lang/String;

    return-object v0
.end method

.method public final component53()I
    .locals 1

    iget v0, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->reviewRequestCount:I

    return v0
.end method

.method public final component54()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->kotlinVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->appVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->appVersionPadded:Ljava/lang/String;

    return-object v0
.end method

.method public final component9()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->osVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZIILjava/lang/Integer;Ljava/lang/Integer;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Lkotlinx/serialization/json/JsonElement;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;
    .locals 56
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
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
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZII",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlinx/serialization/json/JsonElement;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;"
        }
    .end annotation

    const-string v0, "publicApiKey"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "platform"

    move-object/from16 v3, p2

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appUserId"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "aliases"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "vendorId"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceId"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appVersion"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appVersionPadded"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "osVersion"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceModel"

    move-object/from16 v11, p10

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceLocale"

    move-object/from16 v12, p11

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "preferredLocale"

    move-object/from16 v13, p12

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceLanguageCode"

    move-object/from16 v14, p13

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "preferredLanguageCode"

    move-object/from16 v15, p14

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "regionCode"

    move-object/from16 v1, p15

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "preferredRegionCode"

    move-object/from16 v1, p16

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceCurrencyCode"

    move-object/from16 v1, p17

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceCurrencySymbol"

    move-object/from16 v1, p18

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "radioType"

    move-object/from16 v1, p20

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "interfaceStyle"

    move-object/from16 v1, p21

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bundleId"

    move-object/from16 v1, p23

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appInstallDate"

    move-object/from16 v1, p24

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "utcDate"

    move-object/from16 v1, p31

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "localDate"

    move-object/from16 v1, p32

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "utcTime"

    move-object/from16 v1, p33

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "localTime"

    move-object/from16 v1, p34

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "utcDateTime"

    move-object/from16 v1, p35

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "localDateTime"

    move-object/from16 v1, p36

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "isSandbox"

    move-object/from16 v1, p37

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activeEntitlements"

    move-object/from16 v1, p38

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activeEntitlementsObject"

    move-object/from16 v1, p39

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activeProducts"

    move-object/from16 v1, p41

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkVersion"

    move-object/from16 v1, p43

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkVersionPadded"

    move-object/from16 v1, p44

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appBuildString"

    move-object/from16 v1, p45

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "interfaceStyleMode"

    move-object/from16 v1, p47

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "capabilities"

    move-object/from16 v1, p48

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "capabilitiesConfig"

    move-object/from16 v1, p49

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "platformWrapper"

    move-object/from16 v1, p50

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "platformWrapperVersion"

    move-object/from16 v1, p51

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceTier"

    move-object/from16 v1, p52

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kotlinVersion"

    move-object/from16 v1, p54

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    move/from16 v20, p19

    move-object/from16 v21, p20

    move-object/from16 v22, p21

    move/from16 v23, p22

    move-object/from16 v24, p23

    move-object/from16 v25, p24

    move/from16 v26, p25

    move/from16 v27, p26

    move/from16 v28, p27

    move-object/from16 v29, p28

    move-object/from16 v30, p29

    move/from16 v31, p30

    move-object/from16 v32, p31

    move-object/from16 v33, p32

    move-object/from16 v34, p33

    move-object/from16 v35, p34

    move-object/from16 v36, p35

    move-object/from16 v37, p36

    move-object/from16 v38, p37

    move-object/from16 v39, p38

    move-object/from16 v40, p39

    move-object/from16 v41, p40

    move-object/from16 v42, p41

    move/from16 v43, p42

    move-object/from16 v44, p43

    move-object/from16 v45, p44

    move-object/from16 v46, p45

    move-object/from16 v47, p46

    move-object/from16 v48, p47

    move-object/from16 v49, p48

    move-object/from16 v50, p49

    move-object/from16 v51, p50

    move-object/from16 v52, p51

    move-object/from16 v53, p52

    move/from16 v54, p53

    move-object/from16 v55, p54

    invoke-direct/range {v1 .. v55}, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZIILjava/lang/Integer;Ljava/lang/Integer;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Lkotlinx/serialization/json/JsonElement;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;

    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->publicApiKey:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->publicApiKey:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->platform:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->platform:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->appUserId:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->appUserId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->aliases:Ljava/util/List;

    iget-object v3, p1, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->aliases:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->vendorId:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->vendorId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->deviceId:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->deviceId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->appVersion:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->appVersion:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->appVersionPadded:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->appVersionPadded:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->osVersion:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->osVersion:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->deviceModel:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->deviceModel:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->deviceLocale:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->deviceLocale:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->preferredLocale:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->preferredLocale:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->deviceLanguageCode:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->deviceLanguageCode:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->preferredLanguageCode:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->preferredLanguageCode:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->regionCode:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->regionCode:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    :cond_10
    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->preferredRegionCode:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->preferredRegionCode:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    :cond_11
    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->deviceCurrencyCode:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->deviceCurrencyCode:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v2

    :cond_12
    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->deviceCurrencySymbol:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->deviceCurrencySymbol:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v2

    :cond_13
    iget v1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->timezoneOffset:I

    iget v3, p1, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->timezoneOffset:I

    if-eq v1, v3, :cond_14

    return v2

    :cond_14
    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->radioType:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->radioType:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    return v2

    :cond_15
    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->interfaceStyle:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->interfaceStyle:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    return v2

    :cond_16
    iget-boolean v1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->isLowPowerModeEnabled:Z

    iget-boolean v3, p1, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->isLowPowerModeEnabled:Z

    if-eq v1, v3, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->bundleId:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->bundleId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    return v2

    :cond_18
    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->appInstallDate:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->appInstallDate:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    return v2

    :cond_19
    iget-boolean v1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->isMac:Z

    iget-boolean v3, p1, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->isMac:Z

    if-eq v1, v3, :cond_1a

    return v2

    :cond_1a
    iget v1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->daysSinceInstall:I

    iget v3, p1, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->daysSinceInstall:I

    if-eq v1, v3, :cond_1b

    return v2

    :cond_1b
    iget v1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->minutesSinceInstall:I

    iget v3, p1, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->minutesSinceInstall:I

    if-eq v1, v3, :cond_1c

    return v2

    :cond_1c
    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->daysSinceLastPaywallView:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->daysSinceLastPaywallView:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    return v2

    :cond_1d
    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->minutesSinceLastPaywallView:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->minutesSinceLastPaywallView:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    return v2

    :cond_1e
    iget v1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->totalPaywallViews:I

    iget v3, p1, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->totalPaywallViews:I

    if-eq v1, v3, :cond_1f

    return v2

    :cond_1f
    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->utcDate:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->utcDate:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    return v2

    :cond_20
    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->localDate:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->localDate:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    return v2

    :cond_21
    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->utcTime:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->utcTime:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->localTime:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->localTime:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    return v2

    :cond_23
    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->utcDateTime:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->utcDateTime:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    return v2

    :cond_24
    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->localDateTime:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->localDateTime:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    return v2

    :cond_25
    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->isSandbox:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->isSandbox:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    return v2

    :cond_26
    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->activeEntitlements:Ljava/util/List;

    iget-object v3, p1, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->activeEntitlements:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    return v2

    :cond_27
    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->activeEntitlementsObject:Ljava/util/List;

    iget-object v3, p1, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->activeEntitlementsObject:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    return v2

    :cond_28
    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->subscriptionStatus:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->subscriptionStatus:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    return v2

    :cond_29
    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->activeProducts:Ljava/util/List;

    iget-object v3, p1, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->activeProducts:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    return v2

    :cond_2a
    iget-boolean v1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->isFirstAppOpen:Z

    iget-boolean v3, p1, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->isFirstAppOpen:Z

    if-eq v1, v3, :cond_2b

    return v2

    :cond_2b
    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->sdkVersion:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->sdkVersion:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    return v2

    :cond_2c
    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->sdkVersionPadded:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->sdkVersionPadded:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->appBuildString:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->appBuildString:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    return v2

    :cond_2e
    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->appBuildStringNumber:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->appBuildStringNumber:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2f

    return v2

    :cond_2f
    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->interfaceStyleMode:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->interfaceStyleMode:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    return v2

    :cond_30
    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->capabilities:Ljava/util/List;

    iget-object v3, p1, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->capabilities:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_31

    return v2

    :cond_31
    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->capabilitiesConfig:Lkotlinx/serialization/json/JsonElement;

    iget-object v3, p1, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->capabilitiesConfig:Lkotlinx/serialization/json/JsonElement;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_32

    return v2

    :cond_32
    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->platformWrapper:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->platformWrapper:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_33

    return v2

    :cond_33
    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->platformWrapperVersion:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->platformWrapperVersion:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    return v2

    :cond_34
    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->deviceTier:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->deviceTier:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_35

    return v2

    :cond_35
    iget v1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->reviewRequestCount:I

    iget v3, p1, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->reviewRequestCount:I

    if-eq v1, v3, :cond_36

    return v2

    :cond_36
    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->kotlinVersion:Ljava/lang/String;

    iget-object p1, p1, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->kotlinVersion:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_37

    return v2

    :cond_37
    return v0
.end method

.method public final getActiveEntitlements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->activeEntitlements:Ljava/util/List;

    return-object v0
.end method

.method public final getActiveEntitlementsObject()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->activeEntitlementsObject:Ljava/util/List;

    return-object v0
.end method

.method public final getActiveProducts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->activeProducts:Ljava/util/List;

    return-object v0
.end method

.method public final getAliases()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->aliases:Ljava/util/List;

    return-object v0
.end method

.method public final getAppBuildString()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->appBuildString:Ljava/lang/String;

    return-object v0
.end method

.method public final getAppBuildStringNumber()Ljava/lang/Integer;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->appBuildStringNumber:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getAppInstallDate()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->appInstallDate:Ljava/lang/String;

    return-object v0
.end method

.method public final getAppUserId()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->appUserId:Ljava/lang/String;

    return-object v0
.end method

.method public final getAppVersion()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->appVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final getAppVersionPadded()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->appVersionPadded:Ljava/lang/String;

    return-object v0
.end method

.method public final getBundleId()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->bundleId:Ljava/lang/String;

    return-object v0
.end method

.method public final getCapabilities()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->capabilities:Ljava/util/List;

    return-object v0
.end method

.method public final getCapabilitiesConfig()Lkotlinx/serialization/json/JsonElement;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->capabilitiesConfig:Lkotlinx/serialization/json/JsonElement;

    return-object v0
.end method

.method public final getDaysSinceInstall()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->daysSinceInstall:I

    return v0
.end method

.method public final getDaysSinceLastPaywallView()Ljava/lang/Integer;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->daysSinceLastPaywallView:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getDeviceCurrencyCode()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->deviceCurrencyCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getDeviceCurrencySymbol()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->deviceCurrencySymbol:Ljava/lang/String;

    return-object v0
.end method

.method public final getDeviceId()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public final getDeviceLanguageCode()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->deviceLanguageCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getDeviceLocale()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->deviceLocale:Ljava/lang/String;

    return-object v0
.end method

.method public final getDeviceModel()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->deviceModel:Ljava/lang/String;

    return-object v0
.end method

.method public final getDeviceTier()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->deviceTier:Ljava/lang/String;

    return-object v0
.end method

.method public final getInterfaceStyle()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->interfaceStyle:Ljava/lang/String;

    return-object v0
.end method

.method public final getInterfaceStyleMode()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->interfaceStyleMode:Ljava/lang/String;

    return-object v0
.end method

.method public final getKotlinVersion()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->kotlinVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final getLocalDate()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->localDate:Ljava/lang/String;

    return-object v0
.end method

.method public final getLocalDateTime()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->localDateTime:Ljava/lang/String;

    return-object v0
.end method

.method public final getLocalTime()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->localTime:Ljava/lang/String;

    return-object v0
.end method

.method public final getMinutesSinceInstall()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->minutesSinceInstall:I

    return v0
.end method

.method public final getMinutesSinceLastPaywallView()Ljava/lang/Integer;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->minutesSinceLastPaywallView:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getOsVersion()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->osVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final getPlatform()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->platform:Ljava/lang/String;

    return-object v0
.end method

.method public final getPlatformWrapper()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->platformWrapper:Ljava/lang/String;

    return-object v0
.end method

.method public final getPlatformWrapperVersion()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->platformWrapperVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final getPreferredLanguageCode()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->preferredLanguageCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getPreferredLocale()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->preferredLocale:Ljava/lang/String;

    return-object v0
.end method

.method public final getPreferredRegionCode()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->preferredRegionCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getPublicApiKey()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->publicApiKey:Ljava/lang/String;

    return-object v0
.end method

.method public final getRadioType()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->radioType:Ljava/lang/String;

    return-object v0
.end method

.method public final getRegionCode()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->regionCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getReviewRequestCount()I
    .locals 1

    .line 67
    iget v0, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->reviewRequestCount:I

    return v0
.end method

.method public final getSdkVersion()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->sdkVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final getSdkVersionPadded()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->sdkVersionPadded:Ljava/lang/String;

    return-object v0
.end method

.method public final getSubscriptionStatus()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->subscriptionStatus:Ljava/lang/String;

    return-object v0
.end method

.method public final getTimezoneOffset()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->timezoneOffset:I

    return v0
.end method

.method public final getTotalPaywallViews()I
    .locals 1

    .line 40
    iget v0, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->totalPaywallViews:I

    return v0
.end method

.method public final getUtcDate()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->utcDate:Ljava/lang/String;

    return-object v0
.end method

.method public final getUtcDateTime()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->utcDateTime:Ljava/lang/String;

    return-object v0
.end method

.method public final getUtcTime()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->utcTime:Ljava/lang/String;

    return-object v0
.end method

.method public final getVendorId()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->vendorId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->publicApiKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->platform:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->appUserId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->aliases:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->vendorId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->deviceId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->appVersion:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->appVersionPadded:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->osVersion:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->deviceModel:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->deviceLocale:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->preferredLocale:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->deviceLanguageCode:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->preferredLanguageCode:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->regionCode:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->preferredRegionCode:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->deviceCurrencyCode:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->deviceCurrencySymbol:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->timezoneOffset:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->radioType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->interfaceStyle:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->isLowPowerModeEnabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->bundleId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->appInstallDate:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->isMac:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->daysSinceInstall:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->minutesSinceInstall:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->daysSinceLastPaywallView:Ljava/lang/Integer;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->minutesSinceLastPaywallView:Ljava/lang/Integer;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->totalPaywallViews:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->utcDate:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->localDate:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->utcTime:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->localTime:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->utcDateTime:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->localDateTime:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->isSandbox:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->activeEntitlements:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->activeEntitlementsObject:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->subscriptionStatus:Ljava/lang/String;

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->activeProducts:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->isFirstAppOpen:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->sdkVersion:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->sdkVersionPadded:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->appBuildString:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->appBuildStringNumber:Ljava/lang/Integer;

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->interfaceStyleMode:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->capabilities:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->capabilitiesConfig:Lkotlinx/serialization/json/JsonElement;

    invoke-virtual {v1}, Lkotlinx/serialization/json/JsonElement;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->platformWrapper:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->platformWrapperVersion:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->deviceTier:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->reviewRequestCount:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->kotlinVersion:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final isFirstAppOpen()Z
    .locals 1

    .line 52
    iget-boolean v0, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->isFirstAppOpen:Z

    return v0
.end method

.method public final isLowPowerModeEnabled()Z
    .locals 1

    .line 32
    iget-boolean v0, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->isLowPowerModeEnabled:Z

    return v0
.end method

.method public final isMac()Z
    .locals 1

    .line 35
    iget-boolean v0, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->isMac:Z

    return v0
.end method

.method public final isSandbox()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->isSandbox:Ljava/lang/String;

    return-object v0
.end method

.method public final toDictionary(Lkotlinx/serialization/json/Json;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/json/Json;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "json"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    sget-object v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->Companion:Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate$Companion;

    invoke-virtual {v0}, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    invoke-virtual {p1, v0, p0}, Lkotlinx/serialization/json/Json;->encodeToString(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 72
    invoke-static {p1, v0}, Lcom/superwall/sdk/storage/core_data/ConvertersKt;->toNullableTypedMap(Lkotlinx/serialization/json/Json;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 56

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->publicApiKey:Ljava/lang/String;

    iget-object v2, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->platform:Ljava/lang/String;

    iget-object v3, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->appUserId:Ljava/lang/String;

    iget-object v4, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->aliases:Ljava/util/List;

    iget-object v5, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->vendorId:Ljava/lang/String;

    iget-object v6, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->deviceId:Ljava/lang/String;

    iget-object v7, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->appVersion:Ljava/lang/String;

    iget-object v8, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->appVersionPadded:Ljava/lang/String;

    iget-object v9, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->osVersion:Ljava/lang/String;

    iget-object v10, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->deviceModel:Ljava/lang/String;

    iget-object v11, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->deviceLocale:Ljava/lang/String;

    iget-object v12, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->preferredLocale:Ljava/lang/String;

    iget-object v13, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->deviceLanguageCode:Ljava/lang/String;

    iget-object v14, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->preferredLanguageCode:Ljava/lang/String;

    iget-object v15, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->regionCode:Ljava/lang/String;

    move-object/from16 v16, v15

    iget-object v15, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->preferredRegionCode:Ljava/lang/String;

    move-object/from16 v17, v15

    iget-object v15, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->deviceCurrencyCode:Ljava/lang/String;

    move-object/from16 v18, v15

    iget-object v15, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->deviceCurrencySymbol:Ljava/lang/String;

    move-object/from16 v19, v15

    iget v15, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->timezoneOffset:I

    move/from16 v20, v15

    iget-object v15, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->radioType:Ljava/lang/String;

    move-object/from16 v21, v15

    iget-object v15, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->interfaceStyle:Ljava/lang/String;

    move-object/from16 v22, v15

    iget-boolean v15, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->isLowPowerModeEnabled:Z

    move/from16 v23, v15

    iget-object v15, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->bundleId:Ljava/lang/String;

    move-object/from16 v24, v15

    iget-object v15, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->appInstallDate:Ljava/lang/String;

    move-object/from16 v25, v15

    iget-boolean v15, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->isMac:Z

    move/from16 v26, v15

    iget v15, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->daysSinceInstall:I

    move/from16 v27, v15

    iget v15, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->minutesSinceInstall:I

    move/from16 v28, v15

    iget-object v15, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->daysSinceLastPaywallView:Ljava/lang/Integer;

    move-object/from16 v29, v15

    iget-object v15, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->minutesSinceLastPaywallView:Ljava/lang/Integer;

    move-object/from16 v30, v15

    iget v15, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->totalPaywallViews:I

    move/from16 v31, v15

    iget-object v15, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->utcDate:Ljava/lang/String;

    move-object/from16 v32, v15

    iget-object v15, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->localDate:Ljava/lang/String;

    move-object/from16 v33, v15

    iget-object v15, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->utcTime:Ljava/lang/String;

    move-object/from16 v34, v15

    iget-object v15, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->localTime:Ljava/lang/String;

    move-object/from16 v35, v15

    iget-object v15, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->utcDateTime:Ljava/lang/String;

    move-object/from16 v36, v15

    iget-object v15, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->localDateTime:Ljava/lang/String;

    move-object/from16 v37, v15

    iget-object v15, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->isSandbox:Ljava/lang/String;

    move-object/from16 v38, v15

    iget-object v15, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->activeEntitlements:Ljava/util/List;

    move-object/from16 v39, v15

    iget-object v15, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->activeEntitlementsObject:Ljava/util/List;

    move-object/from16 v40, v15

    iget-object v15, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->subscriptionStatus:Ljava/lang/String;

    move-object/from16 v41, v15

    iget-object v15, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->activeProducts:Ljava/util/List;

    move-object/from16 v42, v15

    iget-boolean v15, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->isFirstAppOpen:Z

    move/from16 v43, v15

    iget-object v15, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->sdkVersion:Ljava/lang/String;

    move-object/from16 v44, v15

    iget-object v15, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->sdkVersionPadded:Ljava/lang/String;

    move-object/from16 v45, v15

    iget-object v15, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->appBuildString:Ljava/lang/String;

    move-object/from16 v46, v15

    iget-object v15, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->appBuildStringNumber:Ljava/lang/Integer;

    move-object/from16 v47, v15

    iget-object v15, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->interfaceStyleMode:Ljava/lang/String;

    move-object/from16 v48, v15

    iget-object v15, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->capabilities:Ljava/util/List;

    move-object/from16 v49, v15

    iget-object v15, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->capabilitiesConfig:Lkotlinx/serialization/json/JsonElement;

    move-object/from16 v50, v15

    iget-object v15, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->platformWrapper:Ljava/lang/String;

    move-object/from16 v51, v15

    iget-object v15, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->platformWrapperVersion:Ljava/lang/String;

    move-object/from16 v52, v15

    iget-object v15, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->deviceTier:Ljava/lang/String;

    move-object/from16 v53, v15

    iget v15, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->reviewRequestCount:I

    move/from16 v54, v15

    iget-object v15, v0, Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;->kotlinVersion:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v55, v15

    const-string v15, "DeviceTemplate(publicApiKey="

    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", platform="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", appUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", aliases="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", vendorId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", deviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", appVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", appVersionPadded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", osVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", deviceModel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", deviceLocale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", preferredLocale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", deviceLanguageCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", preferredLanguageCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", regionCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", preferredRegionCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", deviceCurrencyCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", deviceCurrencySymbol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timezoneOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", radioType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", interfaceStyle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isLowPowerModeEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bundleId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", appInstallDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isMac="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", daysSinceInstall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", minutesSinceInstall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", daysSinceLastPaywallView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", minutesSinceLastPaywallView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", totalPaywallViews="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", utcDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", localDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", utcTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", localTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", utcDateTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", localDateTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isSandbox="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", activeEntitlements="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", activeEntitlementsObject="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", subscriptionStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", activeProducts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isFirstAppOpen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sdkVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sdkVersionPadded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", appBuildString="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", appBuildStringNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", interfaceStyleMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", capabilities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", capabilitiesConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", platformWrapper="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", platformWrapperVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", deviceTier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reviewRequestCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", kotlinVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
