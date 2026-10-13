.class public final Lcom/superwall/sdk/models/paywall/Paywall;
.super Ljava/lang/Object;
.source "Paywall.kt"

# interfaces
.implements Lcom/superwall/sdk/models/SerializableEntity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/models/paywall/Paywall$$serializer;,
        Lcom/superwall/sdk/models/paywall/Paywall$Companion;,
        Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;,
        Lcom/superwall/sdk/models/paywall/Paywall$ToggleMode;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPaywall.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Paywall.kt\ncom/superwall/sdk/models/paywall/Paywall\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,331:1\n1557#2:332\n1628#2,3:333\n1557#2:336\n1628#2,3:337\n774#2:340\n865#2,2:341\n1557#2:343\n1628#2,3:344\n774#2:347\n865#2,2:348\n774#2:350\n865#2,2:351\n774#2:353\n865#2,2:354\n1557#2:356\n1628#2,3:357\n1557#2:360\n1628#2,3:361\n1628#2,3:364\n1557#2:367\n1628#2,3:368\n*S KotlinDebug\n*F\n+ 1 Paywall.kt\ncom/superwall/sdk/models/paywall/Paywall\n*L\n88#1:332\n88#1:333,3\n89#1:336\n89#1:337,3\n148#1:340\n148#1:341,2\n148#1:343\n148#1:344,3\n162#1:347\n162#1:348,2\n166#1:350\n166#1:351,2\n169#1:353\n169#1:354,2\n176#1:356\n176#1:357,3\n184#1:360\n184#1:361,3\n88#1:364,3\n89#1:367\n89#1:368,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00e5\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0003\u0008\u008a\u0001\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u00084\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0087\u0008\u0018\u0000 \u0091\u00022\u00020\u0001:\u0008\u0090\u0002\u0091\u0002\u0092\u0002\u0093\u0002B\u00d5\u0003\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0010\u0004\u001a\u00060\u0003j\u0002`\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u0012\u0006\u0010\r\u001a\u00020\u000e\u0012\u0006\u0010\u000f\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0011\u0012\u0006\u0010\u0012\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0003\u0012\u000e\u0008\u0002\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u0015\u0012\u000e\u0008\u0002\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u0015\u0012\u000e\u0008\u0002\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u0015\u0012\u000e\u0008\u0002\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0015\u0012\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u001c\u0012\u0008\u0008\u0002\u0010\u001d\u001a\u00020\u001c\u0012\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u001c\u0012\u0008\u0008\u0002\u0010\u001f\u001a\u00020\u001c\u0012\u0010\u0008\u0002\u0010 \u001a\n\u0012\u0004\u0012\u00020!\u0018\u00010\u0015\u0012\u0010\u0008\u0002\u0010\"\u001a\n\u0012\u0004\u0012\u00020!\u0018\u00010\u0015\u0012\n\u0008\u0002\u0010#\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0008\u0002\u0010$\u001a\u00020%\u0012\n\u0008\u0002\u0010&\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0008\u0002\u0010\'\u001a\u00020(\u0012\u000e\u0008\u0002\u0010)\u001a\u0008\u0012\u0004\u0012\u00020*0\u0015\u0012\u000e\u0008\u0002\u0010+\u001a\u0008\u0012\u0004\u0012\u00020,0\u0015\u0012\u0008\u0008\u0002\u0010-\u001a\u00020.\u0012\n\u0008\u0002\u0010/\u001a\u0004\u0018\u000100\u0012\u0008\u0008\u0002\u00101\u001a\u000202\u0012\u0014\u0008\u0002\u00103\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020504\u0012\n\u0008\u0002\u00106\u001a\u0004\u0018\u000107\u0012\n\u00108\u001a\u00060\u0003j\u0002`9\u0012\u0006\u0010:\u001a\u00020\u0003\u0012\u000e\u0008\u0002\u0010;\u001a\u0008\u0012\u0004\u0012\u00020<0\u0015\u0012\n\u0008\u0002\u0010=\u001a\u0004\u0018\u00010%\u0012\n\u0008\u0002\u0010>\u001a\u0004\u0018\u00010?\u0012\u0008\u0008\u0002\u0010@\u001a\u00020A\u00a2\u0006\u0004\u0008B\u0010CB\u00e3\u0002\u0008\u0010\u0012\u0006\u0010D\u001a\u00020E\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u0012\u0006\u0010\r\u001a\u00020\u000e\u0012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0003\u0012\u000e\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\u0018\u0018\u00010\u0015\u0012\u000e\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\u0016\u0018\u00010\u0015\u0012\u000e\u0010 \u001a\n\u0012\u0004\u0012\u00020!\u0018\u00010\u0015\u0012\u000e\u0010\"\u001a\n\u0012\u0004\u0012\u00020!\u0018\u00010\u0015\u0012\u0008\u0010#\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010$\u001a\u00020%\u0012\u0008\u0010&\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\'\u001a\u0004\u0018\u00010(\u0012\u000e\u0010)\u001a\n\u0012\u0004\u0012\u00020*\u0018\u00010\u0015\u0012\u000e\u0010+\u001a\n\u0012\u0004\u0012\u00020,\u0018\u00010\u0015\u0012\u0008\u0010-\u001a\u0004\u0018\u00010.\u0012\u0008\u00106\u001a\u0004\u0018\u000107\u0012\u0008\u00108\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010:\u001a\u0004\u0018\u00010\u0003\u0012\u000e\u0010;\u001a\n\u0012\u0004\u0012\u00020<\u0018\u00010\u0015\u0012\u0008\u0010=\u001a\u0004\u0018\u00010%\u0012\u0008\u0010>\u001a\u0004\u0018\u00010?\u0012\u0008\u0010@\u001a\u0004\u0018\u00010A\u0012\u0008\u0010F\u001a\u0004\u0018\u00010G\u00a2\u0006\u0004\u0008B\u0010HJ\u0011\u0010\u00d1\u0001\u001a\u00030\u00d2\u00012\u0007\u0010\u00d3\u0001\u001a\u00020\u0000J\u0014\u0010\u00d4\u0001\u001a\u00030\u00d5\u00012\n\u0010\u00d6\u0001\u001a\u0005\u0018\u00010\u00d7\u0001J\n\u0010\u00d8\u0001\u001a\u00020\u0003H\u00c6\u0003J\u000e\u0010\u00d9\u0001\u001a\u00060\u0003j\u0002`\u0005H\u00c6\u0003J\n\u0010\u00da\u0001\u001a\u00020\u0003H\u00c6\u0003J\u0012\u0010\u00db\u0001\u001a\u00020\u0008H\u00c6\u0003\u00a2\u0006\u0005\u0008\u00dc\u0001\u0010LJ\n\u0010\u00dd\u0001\u001a\u00020\u0003H\u00c6\u0003J\u000c\u0010\u00de\u0001\u001a\u0004\u0018\u00010\u0003H\u00c2\u0003J\u000c\u0010\u00df\u0001\u001a\u0004\u0018\u00010\u000cH\u00c2\u0003J\n\u0010\u00e0\u0001\u001a\u00020\u000eH\u00c2\u0003J\n\u0010\u00e1\u0001\u001a\u00020\u0003H\u00c2\u0003J\n\u0010\u00e2\u0001\u001a\u00020\u0011H\u00c6\u0003J\n\u0010\u00e3\u0001\u001a\u00020\u0003H\u00c6\u0003J\u000c\u0010\u00e4\u0001\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u0010\u0010\u00e5\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u0015H\u00c2\u0003J\u0016\u0010\u00e6\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u0015H\u00c0\u0003\u00a2\u0006\u0003\u0008\u00e7\u0001J\u0016\u0010\u00e8\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u0015H\u00c0\u0003\u00a2\u0006\u0003\u0008\u00e9\u0001J\u0010\u0010\u00ea\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0015H\u00c6\u0003J\n\u0010\u00eb\u0001\u001a\u00020\u001cH\u00c6\u0003J\n\u0010\u00ec\u0001\u001a\u00020\u001cH\u00c6\u0003J\n\u0010\u00ed\u0001\u001a\u00020\u001cH\u00c6\u0003J\n\u0010\u00ee\u0001\u001a\u00020\u001cH\u00c6\u0003J\u0012\u0010\u00ef\u0001\u001a\n\u0012\u0004\u0012\u00020!\u0018\u00010\u0015H\u00c6\u0003J\u0012\u0010\u00f0\u0001\u001a\n\u0012\u0004\u0012\u00020!\u0018\u00010\u0015H\u00c6\u0003J\u000c\u0010\u00f1\u0001\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\n\u0010\u00f2\u0001\u001a\u00020%H\u00c6\u0003J\u000c\u0010\u00f3\u0001\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\n\u0010\u00f4\u0001\u001a\u00020(H\u00c6\u0003J\u0010\u0010\u00f5\u0001\u001a\u0008\u0012\u0004\u0012\u00020*0\u0015H\u00c6\u0003J\u0010\u0010\u00f6\u0001\u001a\u0008\u0012\u0004\u0012\u00020,0\u0015H\u00c6\u0003J\n\u0010\u00f7\u0001\u001a\u00020.H\u00c6\u0003J\u000c\u0010\u00f8\u0001\u001a\u0004\u0018\u000100H\u00c6\u0003J\n\u0010\u00f9\u0001\u001a\u000202H\u00c6\u0003J\u0016\u0010\u00fa\u0001\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020504H\u00c6\u0003J\u000c\u0010\u00fb\u0001\u001a\u0004\u0018\u000107H\u00c6\u0003J\u000e\u0010\u00fc\u0001\u001a\u00060\u0003j\u0002`9H\u00c6\u0003J\n\u0010\u00fd\u0001\u001a\u00020\u0003H\u00c6\u0003J\u0010\u0010\u00fe\u0001\u001a\u0008\u0012\u0004\u0012\u00020<0\u0015H\u00c6\u0003J\u0012\u0010\u00ff\u0001\u001a\u0004\u0018\u00010%H\u00c6\u0003\u00a2\u0006\u0003\u0010\u00b4\u0001J\u000c\u0010\u0080\u0002\u001a\u0004\u0018\u00010?H\u00c6\u0003J\n\u0010\u0081\u0002\u001a\u00020AH\u00c6\u0003J\u00f9\u0003\u0010\u0082\u0002\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u000c\u0008\u0002\u0010\u0004\u001a\u00060\u0003j\u0002`\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\u00032\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00112\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u00032\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00032\u000e\u0008\u0002\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u00152\u000e\u0008\u0002\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u00152\u000e\u0008\u0002\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u00152\u000e\u0008\u0002\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00152\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u001c2\u0008\u0008\u0002\u0010\u001d\u001a\u00020\u001c2\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u001c2\u0008\u0008\u0002\u0010\u001f\u001a\u00020\u001c2\u0010\u0008\u0002\u0010 \u001a\n\u0012\u0004\u0012\u00020!\u0018\u00010\u00152\u0010\u0008\u0002\u0010\"\u001a\n\u0012\u0004\u0012\u00020!\u0018\u00010\u00152\n\u0008\u0002\u0010#\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010$\u001a\u00020%2\n\u0008\u0002\u0010&\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\'\u001a\u00020(2\u000e\u0008\u0002\u0010)\u001a\u0008\u0012\u0004\u0012\u00020*0\u00152\u000e\u0008\u0002\u0010+\u001a\u0008\u0012\u0004\u0012\u00020,0\u00152\u0008\u0008\u0002\u0010-\u001a\u00020.2\n\u0008\u0002\u0010/\u001a\u0004\u0018\u0001002\u0008\u0008\u0002\u00101\u001a\u0002022\u0014\u0008\u0002\u00103\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u000205042\n\u0008\u0002\u00106\u001a\u0004\u0018\u0001072\u000c\u0008\u0002\u00108\u001a\u00060\u0003j\u0002`92\u0008\u0008\u0002\u0010:\u001a\u00020\u00032\u000e\u0008\u0002\u0010;\u001a\u0008\u0012\u0004\u0012\u00020<0\u00152\n\u0008\u0002\u0010=\u001a\u0004\u0018\u00010%2\n\u0008\u0002\u0010>\u001a\u0004\u0018\u00010?2\u0008\u0008\u0002\u0010@\u001a\u00020AH\u00c6\u0001\u00a2\u0006\u0006\u0008\u0083\u0002\u0010\u0084\u0002J\u0015\u0010\u0085\u0002\u001a\u00020%2\t\u0010\u0086\u0002\u001a\u0004\u0018\u000105H\u00d6\u0003J\n\u0010\u0087\u0002\u001a\u00020EH\u00d6\u0001J\n\u0010\u0088\u0002\u001a\u00020\u0003H\u00d6\u0001J-\u0010\u0089\u0002\u001a\u00030\u00d2\u00012\u0007\u0010\u008a\u0002\u001a\u00020\u00002\u0008\u0010\u008b\u0002\u001a\u00030\u008c\u00022\u0008\u0010\u008d\u0002\u001a\u00030\u008e\u0002H\u0001\u00a2\u0006\u0003\u0008\u008f\u0002R\u001c\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008I\u0010J\u001a\u0004\u0008K\u0010LR(\u0010\u0004\u001a\u00060\u0003j\u0002`\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008M\u0010J\u001a\u0004\u0008N\u0010L\"\u0004\u0008O\u0010PR\u001c\u0010\u0006\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008Q\u0010J\u001a\u0004\u0008R\u0010LR\u001e\u0010\u0007\u001a\u00020\u00088\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0002\u0010U\u0012\u0004\u0008S\u0010J\u001a\u0004\u0008T\u0010LR\u001c\u0010\t\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008V\u0010J\u001a\u0004\u0008W\u0010LR\u0018\u0010\n\u001a\u0004\u0018\u00010\u00038\u0002X\u0083\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008X\u0010JR\u0018\u0010\u000b\u001a\u0004\u0018\u00010\u000c8\u0002X\u0083\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008Y\u0010JR\u0016\u0010\r\u001a\u00020\u000e8\u0002X\u0083\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008Z\u0010JR\u0016\u0010\u000f\u001a\u00020\u00038\u0002X\u0083\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008[\u0010JR$\u0010\u0010\u001a\u00020\u00118\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\\\u0010J\u001a\u0004\u0008]\u0010^\"\u0004\u0008_\u0010`R\u001c\u0010\u0012\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008a\u0010J\u001a\u0004\u0008b\u0010LR\u001e\u0010\u0013\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008c\u0010J\u001a\u0004\u0008d\u0010LR\u001e\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u00158\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008e\u0010JR*\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u00158\u0000@\u0000X\u0081\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008f\u0010J\u001a\u0004\u0008g\u0010h\"\u0004\u0008i\u0010jR*\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u00158\u0000@\u0000X\u0081\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008k\u0010J\u001a\u0004\u0008l\u0010h\"\u0004\u0008m\u0010jR*\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00158\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008n\u0010J\u001a\u0004\u0008o\u0010h\"\u0004\u0008p\u0010jR$\u0010\u001b\u001a\u00020\u001c8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008q\u0010J\u001a\u0004\u0008r\u0010s\"\u0004\u0008t\u0010uR$\u0010\u001d\u001a\u00020\u001c8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008v\u0010J\u001a\u0004\u0008w\u0010s\"\u0004\u0008x\u0010uR$\u0010\u001e\u001a\u00020\u001c8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008y\u0010J\u001a\u0004\u0008z\u0010s\"\u0004\u0008{\u0010uR$\u0010\u001f\u001a\u00020\u001c8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008|\u0010J\u001a\u0004\u0008}\u0010s\"\u0004\u0008~\u0010uR#\u0010 \u001a\n\u0012\u0004\u0012\u00020!\u0018\u00010\u0015X\u0086\u000e\u00a2\u0006\u000f\n\u0000\u001a\u0004\u0008\u007f\u0010h\"\u0005\u0008\u0080\u0001\u0010jR$\u0010\"\u001a\n\u0012\u0004\u0012\u00020!\u0018\u00010\u0015X\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u0081\u0001\u0010h\"\u0005\u0008\u0082\u0001\u0010jR\u001e\u0010#\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u0083\u0001\u0010L\"\u0005\u0008\u0084\u0001\u0010PR\u001d\u0010$\u001a\u00020%X\u0086\u000e\u00a2\u0006\u0011\n\u0000\u001a\u0005\u0008$\u0010\u0085\u0001\"\u0006\u0008\u0086\u0001\u0010\u0087\u0001R\u001e\u0010&\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u0088\u0001\u0010L\"\u0005\u0008\u0089\u0001\u0010PR)\u0010\'\u001a\u00020(8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0019\n\u0000\u0012\u0005\u0008\u008a\u0001\u0010J\u001a\u0006\u0008\u008b\u0001\u0010\u008c\u0001\"\u0006\u0008\u008d\u0001\u0010\u008e\u0001R-\u0010)\u001a\u0008\u0012\u0004\u0012\u00020*0\u00158\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0017\n\u0000\u0012\u0005\u0008\u008f\u0001\u0010J\u001a\u0005\u0008\u0090\u0001\u0010h\"\u0005\u0008\u0091\u0001\u0010jR-\u0010+\u001a\u0008\u0012\u0004\u0012\u00020,0\u00158\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0017\n\u0000\u0012\u0005\u0008\u0092\u0001\u0010J\u001a\u0005\u0008\u0093\u0001\u0010h\"\u0005\u0008\u0094\u0001\u0010jR)\u0010-\u001a\u00020.8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0019\n\u0000\u0012\u0005\u0008\u0095\u0001\u0010J\u001a\u0006\u0008\u0096\u0001\u0010\u0097\u0001\"\u0006\u0008\u0098\u0001\u0010\u0099\u0001R+\u0010/\u001a\u0004\u0018\u0001008\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0019\n\u0000\u0012\u0005\u0008\u009a\u0001\u0010J\u001a\u0006\u0008\u009b\u0001\u0010\u009c\u0001\"\u0006\u0008\u009d\u0001\u0010\u009e\u0001R)\u00101\u001a\u0002028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0019\n\u0000\u0012\u0005\u0008\u009f\u0001\u0010J\u001a\u0006\u0008\u00a0\u0001\u0010\u00a1\u0001\"\u0006\u0008\u00a2\u0001\u0010\u00a3\u0001R5\u00103\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u000205048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0019\n\u0000\u0012\u0005\u0008\u00a4\u0001\u0010J\u001a\u0006\u0008\u00a5\u0001\u0010\u00a6\u0001\"\u0006\u0008\u00a7\u0001\u0010\u00a8\u0001R!\u00106\u001a\u0004\u0018\u0001078\u0006X\u0087\u0004\u00a2\u0006\u0011\n\u0000\u0012\u0005\u0008\u00a9\u0001\u0010J\u001a\u0006\u0008\u00aa\u0001\u0010\u00ab\u0001R\"\u00108\u001a\u00060\u0003j\u0002`98\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0000\u0012\u0005\u0008\u00ac\u0001\u0010J\u001a\u0005\u0008\u00ad\u0001\u0010LR\u001e\u0010:\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0000\u0012\u0005\u0008\u00ae\u0001\u0010J\u001a\u0005\u0008\u00af\u0001\u0010LR-\u0010;\u001a\u0008\u0012\u0004\u0012\u00020<0\u00158\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0017\n\u0000\u0012\u0005\u0008\u00b0\u0001\u0010J\u001a\u0005\u0008\u00b1\u0001\u0010h\"\u0005\u0008\u00b2\u0001\u0010jR#\u0010=\u001a\u0004\u0018\u00010%8\u0006X\u0087\u0004\u00a2\u0006\u0013\n\u0003\u0010\u00b5\u0001\u0012\u0005\u0008\u00b3\u0001\u0010J\u001a\u0005\u0008=\u0010\u00b4\u0001R!\u0010>\u001a\u0004\u0018\u00010?8\u0006X\u0087\u0004\u00a2\u0006\u0011\n\u0000\u0012\u0005\u0008\u00b6\u0001\u0010J\u001a\u0006\u0008\u00b7\u0001\u0010\u00b8\u0001R\u001f\u0010@\u001a\u00020A8\u0006X\u0087\u0004\u00a2\u0006\u0011\n\u0000\u0012\u0005\u0008\u00b9\u0001\u0010J\u001a\u0006\u0008\u00ba\u0001\u0010\u00bb\u0001R\u0019\u0010\u00bc\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u00158F\u00a2\u0006\u0007\u001a\u0005\u0008\u00bd\u0001\u0010hR\u0019\u0010\u00be\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u00158F\u00a2\u0006\u0007\u001a\u0005\u0008\u00bf\u0001\u0010hR\u0019\u0010\u00c0\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u00158F\u00a2\u0006\u0007\u001a\u0005\u0008\u00c1\u0001\u0010hR4\u0010\u00c3\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u00152\r\u0010\u00c2\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u00158F@FX\u0086\u000e\u00a2\u0006\u000e\u001a\u0005\u0008\u00c4\u0001\u0010h\"\u0005\u0008\u00c5\u0001\u0010jR\u0019\u0010\u00c6\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u00158F\u00a2\u0006\u0007\u001a\u0005\u0008\u00c7\u0001\u0010hR \u0010\u00c8\u0001\u001a\u00020E8FX\u0086\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u00cb\u0001\u0010\u00cc\u0001\u001a\u0006\u0008\u00c9\u0001\u0010\u00ca\u0001R\"\u0010\u00cd\u0001\u001a\u0004\u0018\u00010E8FX\u0086\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u00d0\u0001\u0010\u00cc\u0001\u001a\u0006\u0008\u00ce\u0001\u0010\u00cf\u0001\u00a8\u0006\u0094\u0002"
    }
    d2 = {
        "Lcom/superwall/sdk/models/paywall/Paywall;",
        "Lcom/superwall/sdk/models/SerializableEntity;",
        "databaseId",
        "",
        "identifier",
        "Lcom/superwall/sdk/models/paywall/PaywallIdentifier;",
        "name",
        "url",
        "Lcom/superwall/sdk/models/paywall/PaywallURL;",
        "htmlSubstitutions",
        "presentationStyle",
        "expandedPresentationStyle",
        "Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;",
        "presentationDelay",
        "",
        "presentationCondition",
        "presentation",
        "Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;",
        "backgroundColorHex",
        "darkBackgroundColorHex",
        "_products",
        "",
        "Lcom/superwall/sdk/models/product/ProductItem;",
        "_productItemsV3",
        "Lcom/superwall/sdk/models/product/CrossplatformProduct;",
        "_productItems",
        "productIds",
        "responseLoadingInfo",
        "Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;",
        "webviewLoadingInfo",
        "productsLoadingInfo",
        "shimmerLoadingInfo",
        "productVariables",
        "Lcom/superwall/sdk/models/product/ProductVariable;",
        "swProductVariablesTemplate",
        "paywalljsVersion",
        "isFreeTrialAvailable",
        "",
        "presentationSourceType",
        "featureGating",
        "Lcom/superwall/sdk/models/config/FeatureGatingBehavior;",
        "computedPropertyRequests",
        "Lcom/superwall/sdk/models/config/ComputedPropertyRequest;",
        "localNotifications",
        "Lcom/superwall/sdk/models/paywall/LocalNotification;",
        "onDeviceCache",
        "Lcom/superwall/sdk/config/models/OnDeviceCaching;",
        "experiment",
        "Lcom/superwall/sdk/models/triggers/Experiment;",
        "closeReason",
        "Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;",
        "state",
        "",
        "",
        "urlConfig",
        "Lcom/superwall/sdk/models/paywall/PaywallWebviewUrl$Config;",
        "cacheKey",
        "Lcom/superwall/sdk/models/paywall/CacheKey;",
        "buildId",
        "surveys",
        "Lcom/superwall/sdk/config/models/Survey;",
        "isScrollEnabled",
        "rerouteBackButton",
        "Lcom/superwall/sdk/models/paywall/Paywall$ToggleMode;",
        "introOfferEligibility",
        "Lcom/superwall/sdk/models/paywall/IntroOfferEligibility;",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;JLjava/lang/String;Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ZLjava/lang/String;Lcom/superwall/sdk/models/config/FeatureGatingBehavior;Ljava/util/List;Ljava/util/List;Lcom/superwall/sdk/config/models/OnDeviceCaching;Lcom/superwall/sdk/models/triggers/Experiment;Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;Ljava/util/Map;Lcom/superwall/sdk/models/paywall/PaywallWebviewUrl$Config;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Boolean;Lcom/superwall/sdk/models/paywall/Paywall$ToggleMode;Lcom/superwall/sdk/models/paywall/IntroOfferEligibility;Lkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "seen0",
        "",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ZLjava/lang/String;Lcom/superwall/sdk/models/config/FeatureGatingBehavior;Ljava/util/List;Ljava/util/List;Lcom/superwall/sdk/config/models/OnDeviceCaching;Lcom/superwall/sdk/models/paywall/PaywallWebviewUrl$Config;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Boolean;Lcom/superwall/sdk/models/paywall/Paywall$ToggleMode;Lcom/superwall/sdk/models/paywall/IntroOfferEligibility;Lkotlinx/serialization/internal/SerializationConstructorMarker;Lkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "getDatabaseId$annotations",
        "()V",
        "getDatabaseId",
        "()Ljava/lang/String;",
        "getIdentifier$annotations",
        "getIdentifier",
        "setIdentifier",
        "(Ljava/lang/String;)V",
        "getName$annotations",
        "getName",
        "getUrl-24UBhI0$annotations",
        "getUrl-24UBhI0",
        "Ljava/lang/String;",
        "getHtmlSubstitutions$annotations",
        "getHtmlSubstitutions",
        "getPresentationStyle$annotations",
        "getExpandedPresentationStyle$annotations",
        "getPresentationDelay$annotations",
        "getPresentationCondition$annotations",
        "getPresentation$annotations",
        "getPresentation",
        "()Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;",
        "setPresentation",
        "(Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;)V",
        "getBackgroundColorHex$annotations",
        "getBackgroundColorHex",
        "getDarkBackgroundColorHex$annotations",
        "getDarkBackgroundColorHex",
        "get_products$annotations",
        "get_productItemsV3$superwall_release$annotations",
        "get_productItemsV3$superwall_release",
        "()Ljava/util/List;",
        "set_productItemsV3$superwall_release",
        "(Ljava/util/List;)V",
        "get_productItems$superwall_release$annotations",
        "get_productItems$superwall_release",
        "set_productItems$superwall_release",
        "getProductIds$annotations",
        "getProductIds",
        "setProductIds",
        "getResponseLoadingInfo$annotations",
        "getResponseLoadingInfo",
        "()Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;",
        "setResponseLoadingInfo",
        "(Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;)V",
        "getWebviewLoadingInfo$annotations",
        "getWebviewLoadingInfo",
        "setWebviewLoadingInfo",
        "getProductsLoadingInfo$annotations",
        "getProductsLoadingInfo",
        "setProductsLoadingInfo",
        "getShimmerLoadingInfo$annotations",
        "getShimmerLoadingInfo",
        "setShimmerLoadingInfo",
        "getProductVariables",
        "setProductVariables",
        "getSwProductVariablesTemplate",
        "setSwProductVariablesTemplate",
        "getPaywalljsVersion",
        "setPaywalljsVersion",
        "()Z",
        "setFreeTrialAvailable",
        "(Z)V",
        "getPresentationSourceType",
        "setPresentationSourceType",
        "getFeatureGating$annotations",
        "getFeatureGating",
        "()Lcom/superwall/sdk/models/config/FeatureGatingBehavior;",
        "setFeatureGating",
        "(Lcom/superwall/sdk/models/config/FeatureGatingBehavior;)V",
        "getComputedPropertyRequests$annotations",
        "getComputedPropertyRequests",
        "setComputedPropertyRequests",
        "getLocalNotifications$annotations",
        "getLocalNotifications",
        "setLocalNotifications",
        "getOnDeviceCache$annotations",
        "getOnDeviceCache",
        "()Lcom/superwall/sdk/config/models/OnDeviceCaching;",
        "setOnDeviceCache",
        "(Lcom/superwall/sdk/config/models/OnDeviceCaching;)V",
        "getExperiment$annotations",
        "getExperiment",
        "()Lcom/superwall/sdk/models/triggers/Experiment;",
        "setExperiment",
        "(Lcom/superwall/sdk/models/triggers/Experiment;)V",
        "getCloseReason$annotations",
        "getCloseReason",
        "()Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;",
        "setCloseReason",
        "(Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;)V",
        "getState$annotations",
        "getState",
        "()Ljava/util/Map;",
        "setState",
        "(Ljava/util/Map;)V",
        "getUrlConfig$annotations",
        "getUrlConfig",
        "()Lcom/superwall/sdk/models/paywall/PaywallWebviewUrl$Config;",
        "getCacheKey$annotations",
        "getCacheKey",
        "getBuildId$annotations",
        "getBuildId",
        "getSurveys$annotations",
        "getSurveys",
        "setSurveys",
        "isScrollEnabled$annotations",
        "()Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
        "getRerouteBackButton$annotations",
        "getRerouteBackButton",
        "()Lcom/superwall/sdk/models/paywall/Paywall$ToggleMode;",
        "getIntroOfferEligibility$annotations",
        "getIntroOfferEligibility",
        "()Lcom/superwall/sdk/models/paywall/IntroOfferEligibility;",
        "playStoreProducts",
        "getPlayStoreProducts",
        "stripeProducts",
        "getStripeProducts",
        "paddleProducts",
        "getPaddleProducts",
        "value",
        "productItems",
        "getProductItems",
        "setProductItems",
        "products",
        "getProducts",
        "backgroundColor",
        "getBackgroundColor",
        "()I",
        "backgroundColor$delegate",
        "Lkotlin/Lazy;",
        "darkBackgroundColor",
        "getDarkBackgroundColor",
        "()Ljava/lang/Integer;",
        "darkBackgroundColor$delegate",
        "update",
        "",
        "paywall",
        "getInfo",
        "Lcom/superwall/sdk/paywall/presentation/PaywallInfo;",
        "fromEvent",
        "Lcom/superwall/sdk/models/events/EventData;",
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
        "component14$superwall_release",
        "component15",
        "component15$superwall_release",
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
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;JLjava/lang/String;Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ZLjava/lang/String;Lcom/superwall/sdk/models/config/FeatureGatingBehavior;Ljava/util/List;Ljava/util/List;Lcom/superwall/sdk/config/models/OnDeviceCaching;Lcom/superwall/sdk/models/triggers/Experiment;Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;Ljava/util/Map;Lcom/superwall/sdk/models/paywall/PaywallWebviewUrl$Config;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Boolean;Lcom/superwall/sdk/models/paywall/Paywall$ToggleMode;Lcom/superwall/sdk/models/paywall/IntroOfferEligibility;)Lcom/superwall/sdk/models/paywall/Paywall;",
        "equals",
        "other",
        "hashCode",
        "toString",
        "write$Self",
        "self",
        "output",
        "Lkotlinx/serialization/encoding/CompositeEncoder;",
        "serialDesc",
        "Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "write$Self$superwall_release",
        "LoadingInfo",
        "Companion",
        "ToggleMode",
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

.field public static final Companion:Lcom/superwall/sdk/models/paywall/Paywall$Companion;


# instance fields
.field private _productItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/product/ProductItem;",
            ">;"
        }
    .end annotation
.end field

.field private _productItemsV3:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/product/CrossplatformProduct;",
            ">;"
        }
    .end annotation
.end field

.field private _products:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/product/ProductItem;",
            ">;"
        }
    .end annotation
.end field

.field private final backgroundColor$delegate:Lkotlin/Lazy;

.field private final backgroundColorHex:Ljava/lang/String;

.field private final buildId:Ljava/lang/String;

.field private final cacheKey:Ljava/lang/String;

.field private closeReason:Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;

.field private computedPropertyRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/config/ComputedPropertyRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final darkBackgroundColor$delegate:Lkotlin/Lazy;

.field private final darkBackgroundColorHex:Ljava/lang/String;

.field private final databaseId:Ljava/lang/String;

.field private final expandedPresentationStyle:Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;

.field private experiment:Lcom/superwall/sdk/models/triggers/Experiment;

.field private featureGating:Lcom/superwall/sdk/models/config/FeatureGatingBehavior;

.field private final htmlSubstitutions:Ljava/lang/String;

.field private identifier:Ljava/lang/String;

.field private final introOfferEligibility:Lcom/superwall/sdk/models/paywall/IntroOfferEligibility;

.field private isFreeTrialAvailable:Z

.field private final isScrollEnabled:Ljava/lang/Boolean;

.field private localNotifications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/paywall/LocalNotification;",
            ">;"
        }
    .end annotation
.end field

.field private final name:Ljava/lang/String;

.field private onDeviceCache:Lcom/superwall/sdk/config/models/OnDeviceCaching;

.field private paywalljsVersion:Ljava/lang/String;

.field private presentation:Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;

.field private final presentationCondition:Ljava/lang/String;

.field private final presentationDelay:J

.field private presentationSourceType:Ljava/lang/String;

.field private final presentationStyle:Ljava/lang/String;

.field private productIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private productVariables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/product/ProductVariable;",
            ">;"
        }
    .end annotation
.end field

.field private productsLoadingInfo:Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;

.field private final rerouteBackButton:Lcom/superwall/sdk/models/paywall/Paywall$ToggleMode;

.field private responseLoadingInfo:Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;

.field private shimmerLoadingInfo:Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;

.field private state:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private surveys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/superwall/sdk/config/models/Survey;",
            ">;"
        }
    .end annotation
.end field

.field private swProductVariablesTemplate:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/product/ProductVariable;",
            ">;"
        }
    .end annotation
.end field

.field private final url:Ljava/lang/String;

.field private final urlConfig:Lcom/superwall/sdk/models/paywall/PaywallWebviewUrl$Config;

.field private webviewLoadingInfo:Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;


# direct methods
.method public static synthetic $r8$lambda$IAIhk7cinE65sJ7IqnSZ9-fU8oY(Lcom/superwall/sdk/models/paywall/Paywall;)I
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/models/paywall/Paywall;->backgroundColor_delegate$lambda$12(Lcom/superwall/sdk/models/paywall/Paywall;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Liz-DUk-TnLGvm-HwYBOTMzsKzg(Lcom/superwall/sdk/models/paywall/Paywall;)I
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/models/paywall/Paywall;->_init_$lambda$18(Lcom/superwall/sdk/models/paywall/Paywall;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$NAVOp9NlS_7Hp9IHdELInHWyjDI(Lcom/superwall/sdk/models/paywall/Paywall;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/models/paywall/Paywall;->darkBackgroundColor_delegate$lambda$13(Lcom/superwall/sdk/models/paywall/Paywall;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$T9J8-WKxlOfMrdLppcBLGqIdcUA(Lcom/superwall/sdk/models/paywall/Paywall;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/models/paywall/Paywall;->_init_$lambda$19(Lcom/superwall/sdk/models/paywall/Paywall;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/superwall/sdk/models/paywall/Paywall$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/superwall/sdk/models/paywall/Paywall$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/superwall/sdk/models/paywall/Paywall;->Companion:Lcom/superwall/sdk/models/paywall/Paywall$Companion;

    const/16 v0, 0x1d

    .line 277
    new-array v0, v0, [Lkotlinx/serialization/KSerializer;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v2, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;->Companion:Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Companion;

    invoke-virtual {v2}, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v0, v3

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const/16 v2, 0xa

    aput-object v1, v0, v2

    new-instance v2, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v3, Lcom/superwall/sdk/models/product/CrossplatformProductSerializer;->INSTANCE:Lcom/superwall/sdk/models/product/CrossplatformProductSerializer;

    check-cast v3, Lkotlinx/serialization/KSerializer;

    invoke-direct {v2, v3}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    const/16 v3, 0xb

    aput-object v2, v0, v3

    new-instance v2, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v3, Lcom/superwall/sdk/models/product/ProductItemSerializer;->INSTANCE:Lcom/superwall/sdk/models/product/ProductItemSerializer;

    check-cast v3, Lkotlinx/serialization/KSerializer;

    invoke-direct {v2, v3}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    const/16 v3, 0xc

    aput-object v2, v0, v3

    new-instance v2, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v3, Lcom/superwall/sdk/models/product/ProductVariableSerializer;->INSTANCE:Lcom/superwall/sdk/models/product/ProductVariableSerializer;

    check-cast v3, Lkotlinx/serialization/KSerializer;

    invoke-direct {v2, v3}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    const/16 v3, 0xd

    aput-object v2, v0, v3

    new-instance v2, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v3, Lcom/superwall/sdk/models/product/ProductVariableSerializer;->INSTANCE:Lcom/superwall/sdk/models/product/ProductVariableSerializer;

    check-cast v3, Lkotlinx/serialization/KSerializer;

    invoke-direct {v2, v3}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    const/16 v3, 0xe

    aput-object v2, v0, v3

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const/16 v2, 0x12

    aput-object v1, v0, v2

    new-instance v2, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v3, Lcom/superwall/sdk/models/config/ComputedPropertyRequest$$serializer;->INSTANCE:Lcom/superwall/sdk/models/config/ComputedPropertyRequest$$serializer;

    check-cast v3, Lkotlinx/serialization/KSerializer;

    invoke-direct {v2, v3}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    const/16 v3, 0x13

    aput-object v2, v0, v3

    new-instance v2, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v3, Lcom/superwall/sdk/models/paywall/LocalNotification$$serializer;->INSTANCE:Lcom/superwall/sdk/models/paywall/LocalNotification$$serializer;

    check-cast v3, Lkotlinx/serialization/KSerializer;

    invoke-direct {v2, v3}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    const/16 v3, 0x14

    aput-object v2, v0, v3

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const/16 v2, 0x17

    aput-object v1, v0, v2

    const/16 v2, 0x18

    aput-object v1, v0, v2

    new-instance v2, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v3, Lcom/superwall/sdk/config/models/Survey$$serializer;->INSTANCE:Lcom/superwall/sdk/config/models/Survey$$serializer;

    check-cast v3, Lkotlinx/serialization/KSerializer;

    invoke-direct {v2, v3}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    const/16 v3, 0x19

    aput-object v2, v0, v3

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Lcom/superwall/sdk/models/paywall/Paywall$ToggleMode;->Companion:Lcom/superwall/sdk/models/paywall/Paywall$ToggleMode$Companion;

    invoke-virtual {v1}, Lcom/superwall/sdk/models/paywall/Paywall$ToggleMode$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v1

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sget-object v1, Lcom/superwall/sdk/models/paywall/IntroOfferEligibility;->Companion:Lcom/superwall/sdk/models/paywall/IntroOfferEligibility$Companion;

    invoke-virtual {v1}, Lcom/superwall/sdk/models/paywall/IntroOfferEligibility$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v1

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    sput-object v0, Lcom/superwall/sdk/models/paywall/Paywall;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-void
.end method

.method private synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ZLjava/lang/String;Lcom/superwall/sdk/models/config/FeatureGatingBehavior;Ljava/util/List;Ljava/util/List;Lcom/superwall/sdk/config/models/OnDeviceCaching;Lcom/superwall/sdk/models/paywall/PaywallWebviewUrl$Config;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Boolean;Lcom/superwall/sdk/models/paywall/Paywall$ToggleMode;Lcom/superwall/sdk/models/paywall/IntroOfferEligibility;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 12

    move-object/from16 v0, p7

    move-object/from16 v1, p8

    move-wide/from16 v2, p9

    const v4, 0x18003ff

    and-int v5, p1, v4

    if-eq v4, v5, :cond_0

    .line 40
    sget-object v5, Lcom/superwall/sdk/models/paywall/Paywall$$serializer;->INSTANCE:Lcom/superwall/sdk/models/paywall/Paywall$$serializer;

    invoke-virtual {v5}, Lcom/superwall/sdk/models/paywall/Paywall$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v5

    invoke-static {p1, v4, v5}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/superwall/sdk/models/paywall/Paywall;->databaseId:Ljava/lang/String;

    iput-object p3, p0, Lcom/superwall/sdk/models/paywall/Paywall;->identifier:Ljava/lang/String;

    move-object/from16 p2, p4

    iput-object p2, p0, Lcom/superwall/sdk/models/paywall/Paywall;->name:Ljava/lang/String;

    move-object/from16 p2, p5

    iput-object p2, p0, Lcom/superwall/sdk/models/paywall/Paywall;->url:Ljava/lang/String;

    move-object/from16 p2, p6

    iput-object p2, p0, Lcom/superwall/sdk/models/paywall/Paywall;->htmlSubstitutions:Ljava/lang/String;

    iput-object v0, p0, Lcom/superwall/sdk/models/paywall/Paywall;->presentationStyle:Ljava/lang/String;

    iput-object v1, p0, Lcom/superwall/sdk/models/paywall/Paywall;->expandedPresentationStyle:Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;

    iput-wide v2, p0, Lcom/superwall/sdk/models/paywall/Paywall;->presentationDelay:J

    move-object/from16 p2, p11

    iput-object p2, p0, Lcom/superwall/sdk/models/paywall/Paywall;->presentationCondition:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 66
    sget-object p2, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$None;->INSTANCE:Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$None;

    .line 67
    sget-object v4, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 68
    sget-object v5, Lcom/superwall/sdk/logger/LogLevel;->warn:Lcom/superwall/sdk/logger/LogLevel;

    .line 69
    sget-object v6, Lcom/superwall/sdk/logger/LogScope;->paywallPresentation:Lcom/superwall/sdk/logger/LogScope;

    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v7, "Unknown or unsupported presentation style: "

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v10, 0x18

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 67
    invoke-static/range {v4 .. v11}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 66
    check-cast p2, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;

    move-object v1, p2

    .line 63
    :cond_1
    new-instance p2, Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;

    invoke-direct {p2, v1, v2, v3}, Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;-><init>(Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;J)V

    .line 40
    iput-object p2, p0, Lcom/superwall/sdk/models/paywall/Paywall;->presentation:Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;

    move-object/from16 p2, p12

    iput-object p2, p0, Lcom/superwall/sdk/models/paywall/Paywall;->backgroundColorHex:Ljava/lang/String;

    and-int/lit16 p2, p1, 0x400

    const/4 v0, 0x0

    if-nez p2, :cond_2

    iput-object v0, p0, Lcom/superwall/sdk/models/paywall/Paywall;->darkBackgroundColorHex:Ljava/lang/String;

    goto :goto_0

    :cond_2
    move-object/from16 p2, p13

    iput-object p2, p0, Lcom/superwall/sdk/models/paywall/Paywall;->darkBackgroundColorHex:Ljava/lang/String;

    .line 81
    :goto_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p2

    .line 40
    iput-object p2, p0, Lcom/superwall/sdk/models/paywall/Paywall;->_products:Ljava/util/List;

    and-int/lit16 p2, p1, 0x800

    if-nez p2, :cond_3

    .line 83
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p2

    goto :goto_1

    :cond_3
    move-object/from16 p2, p14

    .line 40
    :goto_1
    iput-object p2, p0, Lcom/superwall/sdk/models/paywall/Paywall;->_productItemsV3:Ljava/util/List;

    and-int/lit16 p2, p1, 0x1000

    if-nez p2, :cond_4

    .line 85
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p2

    goto :goto_2

    :cond_4
    move-object/from16 p2, p15

    .line 40
    :goto_2
    iput-object p2, p0, Lcom/superwall/sdk/models/paywall/Paywall;->_productItems:Ljava/util/List;

    iget-object p2, p0, Lcom/superwall/sdk/models/paywall/Paywall;->_productItems:Ljava/util/List;

    check-cast p2, Ljava/lang/Iterable;

    .line 332
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p2, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 364
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 365
    check-cast v3, Lcom/superwall/sdk/models/product/ProductItem;

    .line 88
    invoke-virtual {v3}, Lcom/superwall/sdk/models/product/ProductItem;->getCompositeId()Ljava/lang/String;

    move-result-object v3

    .line 365
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 366
    :cond_5
    check-cast v1, Ljava/util/List;

    .line 332
    check-cast v1, Ljava/util/Collection;

    .line 88
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 40
    iget-object p2, p0, Lcom/superwall/sdk/models/paywall/Paywall;->_productItemsV3:Ljava/util/List;

    check-cast p2, Ljava/lang/Iterable;

    .line 367
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p2, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 368
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 369
    check-cast v2, Lcom/superwall/sdk/models/product/CrossplatformProduct;

    .line 89
    invoke-virtual {v2}, Lcom/superwall/sdk/models/product/CrossplatformProduct;->getFullProductId()Ljava/lang/String;

    move-result-object v2

    .line 369
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 370
    :cond_6
    check-cast v1, Ljava/util/List;

    .line 88
    :cond_7
    check-cast v1, Ljava/util/List;

    .line 40
    iput-object v1, p0, Lcom/superwall/sdk/models/paywall/Paywall;->productIds:Ljava/util/List;

    .line 92
    new-instance p2, Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move/from16 p6, v1

    move-object/from16 p7, v2

    move-object p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    invoke-direct/range {p2 .. p7}, Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;-><init>(Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 40
    iput-object p2, p0, Lcom/superwall/sdk/models/paywall/Paywall;->responseLoadingInfo:Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;

    .line 94
    new-instance p2, Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;

    move-object p3, p2

    move/from16 p7, v1

    move-object/from16 p8, v2

    move-object/from16 p4, v3

    move-object/from16 p5, v4

    move-object/from16 p6, v5

    invoke-direct/range {p3 .. p8}, Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;-><init>(Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 40
    iput-object p2, p0, Lcom/superwall/sdk/models/paywall/Paywall;->webviewLoadingInfo:Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;

    .line 96
    new-instance p2, Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;

    move-object p3, p2

    invoke-direct/range {p3 .. p8}, Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;-><init>(Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 40
    iput-object p2, p0, Lcom/superwall/sdk/models/paywall/Paywall;->productsLoadingInfo:Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;

    .line 98
    new-instance p2, Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;

    move-object p3, p2

    invoke-direct/range {p3 .. p8}, Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;-><init>(Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 40
    iput-object p2, p0, Lcom/superwall/sdk/models/paywall/Paywall;->shimmerLoadingInfo:Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;

    and-int/lit16 p2, p1, 0x2000

    if-nez p2, :cond_8

    iput-object v0, p0, Lcom/superwall/sdk/models/paywall/Paywall;->productVariables:Ljava/util/List;

    goto :goto_5

    :cond_8
    move-object/from16 p2, p16

    iput-object p2, p0, Lcom/superwall/sdk/models/paywall/Paywall;->productVariables:Ljava/util/List;

    :goto_5
    and-int/lit16 p2, p1, 0x4000

    if-nez p2, :cond_9

    iput-object v0, p0, Lcom/superwall/sdk/models/paywall/Paywall;->swProductVariablesTemplate:Ljava/util/List;

    goto :goto_6

    :cond_9
    move-object/from16 p2, p17

    iput-object p2, p0, Lcom/superwall/sdk/models/paywall/Paywall;->swProductVariablesTemplate:Ljava/util/List;

    :goto_6
    const p2, 0x8000

    and-int/2addr p2, p1

    if-nez p2, :cond_a

    iput-object v0, p0, Lcom/superwall/sdk/models/paywall/Paywall;->paywalljsVersion:Ljava/lang/String;

    goto :goto_7

    :cond_a
    move-object/from16 p2, p18

    iput-object p2, p0, Lcom/superwall/sdk/models/paywall/Paywall;->paywalljsVersion:Ljava/lang/String;

    :goto_7
    const/high16 p2, 0x10000

    and-int/2addr p2, p1

    if-nez p2, :cond_b

    const/4 p2, 0x0

    goto :goto_8

    :cond_b
    move/from16 p2, p19

    :goto_8
    iput-boolean p2, p0, Lcom/superwall/sdk/models/paywall/Paywall;->isFreeTrialAvailable:Z

    const/high16 p2, 0x20000

    and-int/2addr p2, p1

    if-nez p2, :cond_c

    iput-object v0, p0, Lcom/superwall/sdk/models/paywall/Paywall;->presentationSourceType:Ljava/lang/String;

    goto :goto_9

    :cond_c
    move-object/from16 p2, p20

    iput-object p2, p0, Lcom/superwall/sdk/models/paywall/Paywall;->presentationSourceType:Ljava/lang/String;

    :goto_9
    const/high16 p2, 0x40000

    and-int/2addr p2, p1

    if-nez p2, :cond_d

    .line 106
    sget-object p2, Lcom/superwall/sdk/models/config/FeatureGatingBehavior$NonGated;->INSTANCE:Lcom/superwall/sdk/models/config/FeatureGatingBehavior$NonGated;

    check-cast p2, Lcom/superwall/sdk/models/config/FeatureGatingBehavior;

    goto :goto_a

    :cond_d
    move-object/from16 p2, p21

    .line 40
    :goto_a
    iput-object p2, p0, Lcom/superwall/sdk/models/paywall/Paywall;->featureGating:Lcom/superwall/sdk/models/config/FeatureGatingBehavior;

    const/high16 p2, 0x80000

    and-int/2addr p2, p1

    if-nez p2, :cond_e

    .line 108
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p2

    goto :goto_b

    :cond_e
    move-object/from16 p2, p22

    .line 40
    :goto_b
    iput-object p2, p0, Lcom/superwall/sdk/models/paywall/Paywall;->computedPropertyRequests:Ljava/util/List;

    const/high16 p2, 0x100000

    and-int/2addr p2, p1

    if-nez p2, :cond_f

    .line 110
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p2

    goto :goto_c

    :cond_f
    move-object/from16 p2, p23

    .line 40
    :goto_c
    iput-object p2, p0, Lcom/superwall/sdk/models/paywall/Paywall;->localNotifications:Ljava/util/List;

    const/high16 p2, 0x200000

    and-int/2addr p2, p1

    if-nez p2, :cond_10

    .line 115
    sget-object p2, Lcom/superwall/sdk/config/models/OnDeviceCaching$Disabled;->INSTANCE:Lcom/superwall/sdk/config/models/OnDeviceCaching$Disabled;

    check-cast p2, Lcom/superwall/sdk/config/models/OnDeviceCaching;

    goto :goto_d

    :cond_10
    move-object/from16 p2, p24

    .line 40
    :goto_d
    iput-object p2, p0, Lcom/superwall/sdk/models/paywall/Paywall;->onDeviceCache:Lcom/superwall/sdk/config/models/OnDeviceCaching;

    iput-object v0, p0, Lcom/superwall/sdk/models/paywall/Paywall;->experiment:Lcom/superwall/sdk/models/triggers/Experiment;

    .line 119
    sget-object p2, Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason$None;->INSTANCE:Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason$None;

    check-cast p2, Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;

    .line 40
    iput-object p2, p0, Lcom/superwall/sdk/models/paywall/Paywall;->closeReason:Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;

    .line 124
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p2

    .line 40
    iput-object p2, p0, Lcom/superwall/sdk/models/paywall/Paywall;->state:Ljava/util/Map;

    const/high16 p2, 0x400000

    and-int/2addr p2, p1

    if-nez p2, :cond_11

    iput-object v0, p0, Lcom/superwall/sdk/models/paywall/Paywall;->urlConfig:Lcom/superwall/sdk/models/paywall/PaywallWebviewUrl$Config;

    goto :goto_e

    :cond_11
    move-object/from16 p2, p25

    iput-object p2, p0, Lcom/superwall/sdk/models/paywall/Paywall;->urlConfig:Lcom/superwall/sdk/models/paywall/PaywallWebviewUrl$Config;

    :goto_e
    move-object/from16 p2, p26

    iput-object p2, p0, Lcom/superwall/sdk/models/paywall/Paywall;->cacheKey:Ljava/lang/String;

    move-object/from16 p2, p27

    iput-object p2, p0, Lcom/superwall/sdk/models/paywall/Paywall;->buildId:Ljava/lang/String;

    const/high16 p2, 0x2000000

    and-int/2addr p2, p1

    if-nez p2, :cond_12

    .line 137
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p2

    goto :goto_f

    :cond_12
    move-object/from16 p2, p28

    .line 40
    :goto_f
    iput-object p2, p0, Lcom/superwall/sdk/models/paywall/Paywall;->surveys:Ljava/util/List;

    const/high16 p2, 0x4000000

    and-int/2addr p2, p1

    if-nez p2, :cond_13

    const/4 p2, 0x1

    .line 139
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    goto :goto_10

    :cond_13
    move-object/from16 p2, p29

    .line 40
    :goto_10
    iput-object p2, p0, Lcom/superwall/sdk/models/paywall/Paywall;->isScrollEnabled:Ljava/lang/Boolean;

    const/high16 p2, 0x8000000

    and-int/2addr p2, p1

    if-nez p2, :cond_14

    iput-object v0, p0, Lcom/superwall/sdk/models/paywall/Paywall;->rerouteBackButton:Lcom/superwall/sdk/models/paywall/Paywall$ToggleMode;

    goto :goto_11

    :cond_14
    move-object/from16 p2, p30

    iput-object p2, p0, Lcom/superwall/sdk/models/paywall/Paywall;->rerouteBackButton:Lcom/superwall/sdk/models/paywall/Paywall$ToggleMode;

    :goto_11
    const/high16 p2, 0x10000000

    and-int/2addr p1, p2

    if-nez p1, :cond_15

    .line 143
    sget-object p1, Lcom/superwall/sdk/models/paywall/IntroOfferEligibility;->AUTOMATIC:Lcom/superwall/sdk/models/paywall/IntroOfferEligibility;

    goto :goto_12

    :cond_15
    move-object/from16 p1, p31

    .line 40
    :goto_12
    iput-object p1, p0, Lcom/superwall/sdk/models/paywall/Paywall;->introOfferEligibility:Lcom/superwall/sdk/models/paywall/IntroOfferEligibility;

    .line 191
    new-instance p1, Lcom/superwall/sdk/models/paywall/Paywall$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/superwall/sdk/models/paywall/Paywall$$ExternalSyntheticLambda0;-><init>(Lcom/superwall/sdk/models/paywall/Paywall;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    .line 40
    iput-object p1, p0, Lcom/superwall/sdk/models/paywall/Paywall;->backgroundColor$delegate:Lkotlin/Lazy;

    .line 206
    new-instance p1, Lcom/superwall/sdk/models/paywall/Paywall$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/superwall/sdk/models/paywall/Paywall$$ExternalSyntheticLambda1;-><init>(Lcom/superwall/sdk/models/paywall/Paywall;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    .line 40
    iput-object p1, p0, Lcom/superwall/sdk/models/paywall/Paywall;->darkBackgroundColor$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ZLjava/lang/String;Lcom/superwall/sdk/models/config/FeatureGatingBehavior;Ljava/util/List;Ljava/util/List;Lcom/superwall/sdk/config/models/OnDeviceCaching;Lcom/superwall/sdk/models/paywall/PaywallWebviewUrl$Config;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Boolean;Lcom/superwall/sdk/models/paywall/Paywall$ToggleMode;Lcom/superwall/sdk/models/paywall/IntroOfferEligibility;Lkotlinx/serialization/internal/SerializationConstructorMarker;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p32}, Lcom/superwall/sdk/models/paywall/Paywall;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ZLjava/lang/String;Lcom/superwall/sdk/models/config/FeatureGatingBehavior;Ljava/util/List;Ljava/util/List;Lcom/superwall/sdk/config/models/OnDeviceCaching;Lcom/superwall/sdk/models/paywall/PaywallWebviewUrl$Config;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Boolean;Lcom/superwall/sdk/models/paywall/Paywall$ToggleMode;Lcom/superwall/sdk/models/paywall/IntroOfferEligibility;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;JLjava/lang/String;Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ZLjava/lang/String;Lcom/superwall/sdk/models/config/FeatureGatingBehavior;Ljava/util/List;Ljava/util/List;Lcom/superwall/sdk/config/models/OnDeviceCaching;Lcom/superwall/sdk/models/triggers/Experiment;Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;Ljava/util/Map;Lcom/superwall/sdk/models/paywall/PaywallWebviewUrl$Config;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Boolean;Lcom/superwall/sdk/models/paywall/Paywall$ToggleMode;Lcom/superwall/sdk/models/paywall/IntroOfferEligibility;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;",
            "J",
            "Ljava/lang/String;",
            "Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/product/ProductItem;",
            ">;",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/product/CrossplatformProduct;",
            ">;",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/product/ProductItem;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;",
            "Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;",
            "Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;",
            "Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/product/ProductVariable;",
            ">;",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/product/ProductVariable;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Lcom/superwall/sdk/models/config/FeatureGatingBehavior;",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/config/ComputedPropertyRequest;",
            ">;",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/paywall/LocalNotification;",
            ">;",
            "Lcom/superwall/sdk/config/models/OnDeviceCaching;",
            "Lcom/superwall/sdk/models/triggers/Experiment;",
            "Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/superwall/sdk/models/paywall/PaywallWebviewUrl$Config;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/config/models/Survey;",
            ">;",
            "Ljava/lang/Boolean;",
            "Lcom/superwall/sdk/models/paywall/Paywall$ToggleMode;",
            "Lcom/superwall/sdk/models/paywall/IntroOfferEligibility;",
            ")V"
        }
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p10

    move-object/from16 v7, p11

    move-object/from16 v8, p12

    move-object/from16 v9, p14

    move-object/from16 v10, p15

    move-object/from16 v11, p16

    move-object/from16 v12, p17

    move-object/from16 v13, p18

    move-object/from16 v14, p19

    move-object/from16 v15, p20

    const-string v0, "databaseId"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "identifier"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "htmlSubstitutions"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "presentationCondition"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "presentation"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backgroundColorHex"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_products"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_productItemsV3"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_productItems"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "productIds"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "responseLoadingInfo"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "webviewLoadingInfo"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "productsLoadingInfo"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shimmerLoadingInfo"

    move-object/from16 v15, p21

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featureGating"

    move-object/from16 v15, p27

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "computedPropertyRequests"

    move-object/from16 v15, p28

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "localNotifications"

    move-object/from16 v15, p29

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onDeviceCache"

    move-object/from16 v15, p30

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "closeReason"

    move-object/from16 v15, p32

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    move-object/from16 v15, p33

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cacheKey"

    move-object/from16 v15, p35

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buildId"

    move-object/from16 v15, p36

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "surveys"

    move-object/from16 v15, p37

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "introOfferEligibility"

    move-object/from16 v15, p40

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    .line 43
    iput-object v1, v0, Lcom/superwall/sdk/models/paywall/Paywall;->databaseId:Ljava/lang/String;

    .line 45
    iput-object v2, v0, Lcom/superwall/sdk/models/paywall/Paywall;->identifier:Ljava/lang/String;

    .line 47
    iput-object v3, v0, Lcom/superwall/sdk/models/paywall/Paywall;->name:Ljava/lang/String;

    .line 49
    iput-object v4, v0, Lcom/superwall/sdk/models/paywall/Paywall;->url:Ljava/lang/String;

    .line 51
    iput-object v5, v0, Lcom/superwall/sdk/models/paywall/Paywall;->htmlSubstitutions:Ljava/lang/String;

    move-object/from16 v1, p6

    .line 53
    iput-object v1, v0, Lcom/superwall/sdk/models/paywall/Paywall;->presentationStyle:Ljava/lang/String;

    move-object/from16 v1, p7

    .line 55
    iput-object v1, v0, Lcom/superwall/sdk/models/paywall/Paywall;->expandedPresentationStyle:Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;

    move-wide/from16 v1, p8

    .line 57
    iput-wide v1, v0, Lcom/superwall/sdk/models/paywall/Paywall;->presentationDelay:J

    .line 59
    iput-object v6, v0, Lcom/superwall/sdk/models/paywall/Paywall;->presentationCondition:Ljava/lang/String;

    .line 61
    iput-object v7, v0, Lcom/superwall/sdk/models/paywall/Paywall;->presentation:Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;

    .line 75
    iput-object v8, v0, Lcom/superwall/sdk/models/paywall/Paywall;->backgroundColorHex:Ljava/lang/String;

    move-object/from16 v1, p13

    .line 77
    iput-object v1, v0, Lcom/superwall/sdk/models/paywall/Paywall;->darkBackgroundColorHex:Ljava/lang/String;

    .line 80
    iput-object v9, v0, Lcom/superwall/sdk/models/paywall/Paywall;->_products:Ljava/util/List;

    .line 82
    iput-object v10, v0, Lcom/superwall/sdk/models/paywall/Paywall;->_productItemsV3:Ljava/util/List;

    .line 84
    iput-object v11, v0, Lcom/superwall/sdk/models/paywall/Paywall;->_productItems:Ljava/util/List;

    .line 86
    iput-object v12, v0, Lcom/superwall/sdk/models/paywall/Paywall;->productIds:Ljava/util/List;

    .line 91
    iput-object v13, v0, Lcom/superwall/sdk/models/paywall/Paywall;->responseLoadingInfo:Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;

    .line 93
    iput-object v14, v0, Lcom/superwall/sdk/models/paywall/Paywall;->webviewLoadingInfo:Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;

    move-object/from16 v1, p20

    .line 95
    iput-object v1, v0, Lcom/superwall/sdk/models/paywall/Paywall;->productsLoadingInfo:Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;

    move-object/from16 v1, p21

    .line 97
    iput-object v1, v0, Lcom/superwall/sdk/models/paywall/Paywall;->shimmerLoadingInfo:Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;

    move-object/from16 v1, p22

    .line 99
    iput-object v1, v0, Lcom/superwall/sdk/models/paywall/Paywall;->productVariables:Ljava/util/List;

    move-object/from16 v1, p23

    .line 100
    iput-object v1, v0, Lcom/superwall/sdk/models/paywall/Paywall;->swProductVariablesTemplate:Ljava/util/List;

    move-object/from16 v1, p24

    .line 101
    iput-object v1, v0, Lcom/superwall/sdk/models/paywall/Paywall;->paywalljsVersion:Ljava/lang/String;

    move/from16 v1, p25

    .line 102
    iput-boolean v1, v0, Lcom/superwall/sdk/models/paywall/Paywall;->isFreeTrialAvailable:Z

    move-object/from16 v1, p26

    .line 104
    iput-object v1, v0, Lcom/superwall/sdk/models/paywall/Paywall;->presentationSourceType:Ljava/lang/String;

    move-object/from16 v1, p27

    .line 105
    iput-object v1, v0, Lcom/superwall/sdk/models/paywall/Paywall;->featureGating:Lcom/superwall/sdk/models/config/FeatureGatingBehavior;

    move-object/from16 v1, p28

    .line 107
    iput-object v1, v0, Lcom/superwall/sdk/models/paywall/Paywall;->computedPropertyRequests:Ljava/util/List;

    move-object/from16 v1, p29

    .line 109
    iput-object v1, v0, Lcom/superwall/sdk/models/paywall/Paywall;->localNotifications:Ljava/util/List;

    move-object/from16 v1, p30

    .line 114
    iput-object v1, v0, Lcom/superwall/sdk/models/paywall/Paywall;->onDeviceCache:Lcom/superwall/sdk/config/models/OnDeviceCaching;

    move-object/from16 v1, p31

    .line 116
    iput-object v1, v0, Lcom/superwall/sdk/models/paywall/Paywall;->experiment:Lcom/superwall/sdk/models/triggers/Experiment;

    move-object/from16 v1, p32

    .line 118
    iput-object v1, v0, Lcom/superwall/sdk/models/paywall/Paywall;->closeReason:Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;

    move-object/from16 v1, p33

    .line 123
    iput-object v1, v0, Lcom/superwall/sdk/models/paywall/Paywall;->state:Ljava/util/Map;

    move-object/from16 v1, p34

    .line 125
    iput-object v1, v0, Lcom/superwall/sdk/models/paywall/Paywall;->urlConfig:Lcom/superwall/sdk/models/paywall/PaywallWebviewUrl$Config;

    move-object/from16 v1, p35

    .line 127
    iput-object v1, v0, Lcom/superwall/sdk/models/paywall/Paywall;->cacheKey:Ljava/lang/String;

    move-object/from16 v1, p36

    .line 130
    iput-object v1, v0, Lcom/superwall/sdk/models/paywall/Paywall;->buildId:Ljava/lang/String;

    move-object/from16 v1, p37

    .line 136
    iput-object v1, v0, Lcom/superwall/sdk/models/paywall/Paywall;->surveys:Ljava/util/List;

    move-object/from16 v1, p38

    .line 138
    iput-object v1, v0, Lcom/superwall/sdk/models/paywall/Paywall;->isScrollEnabled:Ljava/lang/Boolean;

    move-object/from16 v1, p39

    .line 140
    iput-object v1, v0, Lcom/superwall/sdk/models/paywall/Paywall;->rerouteBackButton:Lcom/superwall/sdk/models/paywall/Paywall$ToggleMode;

    .line 142
    iput-object v15, v0, Lcom/superwall/sdk/models/paywall/Paywall;->introOfferEligibility:Lcom/superwall/sdk/models/paywall/IntroOfferEligibility;

    .line 191
    new-instance v1, Lcom/superwall/sdk/models/paywall/Paywall$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0}, Lcom/superwall/sdk/models/paywall/Paywall$$ExternalSyntheticLambda2;-><init>(Lcom/superwall/sdk/models/paywall/Paywall;)V

    invoke-static {v1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    iput-object v1, v0, Lcom/superwall/sdk/models/paywall/Paywall;->backgroundColor$delegate:Lkotlin/Lazy;

    .line 206
    new-instance v1, Lcom/superwall/sdk/models/paywall/Paywall$$ExternalSyntheticLambda3;

    invoke-direct {v1, v0}, Lcom/superwall/sdk/models/paywall/Paywall$$ExternalSyntheticLambda3;-><init>(Lcom/superwall/sdk/models/paywall/Paywall;)V

    invoke-static {v1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    iput-object v1, v0, Lcom/superwall/sdk/models/paywall/Paywall;->darkBackgroundColor$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;JLjava/lang/String;Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ZLjava/lang/String;Lcom/superwall/sdk/models/config/FeatureGatingBehavior;Ljava/util/List;Ljava/util/List;Lcom/superwall/sdk/config/models/OnDeviceCaching;Lcom/superwall/sdk/models/triggers/Experiment;Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;Ljava/util/Map;Lcom/superwall/sdk/models/paywall/PaywallWebviewUrl$Config;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Boolean;Lcom/superwall/sdk/models/paywall/Paywall$ToggleMode;Lcom/superwall/sdk/models/paywall/IntroOfferEligibility;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 49

    move/from16 v0, p41

    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_1

    if-nez p7, :cond_0

    .line 66
    sget-object v1, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$None;->INSTANCE:Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$None;

    .line 67
    sget-object v2, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 68
    sget-object v3, Lcom/superwall/sdk/logger/LogLevel;->warn:Lcom/superwall/sdk/logger/LogLevel;

    .line 69
    sget-object v4, Lcom/superwall/sdk/logger/LogScope;->paywallPresentation:Lcom/superwall/sdk/logger/LogScope;

    .line 70
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Unknown or unsupported presentation style: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v13, p6

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v8, 0x18

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 67
    invoke-static/range {v2 .. v9}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 66
    check-cast v1, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;

    goto :goto_0

    :cond_0
    move-object/from16 v13, p6

    move-object/from16 v1, p7

    .line 63
    :goto_0
    new-instance v2, Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;

    move-wide/from16 v3, p8

    invoke-direct {v2, v1, v3, v4}, Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;-><init>(Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;J)V

    move-object/from16 v18, v2

    goto :goto_1

    :cond_1
    move-object/from16 v13, p6

    move-wide/from16 v3, p8

    move-object/from16 v18, p11

    :goto_1
    and-int/lit16 v1, v0, 0x800

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    move-object/from16 v20, v2

    goto :goto_2

    :cond_2
    move-object/from16 v20, p13

    :goto_2
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_3

    .line 81
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    move-object/from16 v21, v1

    goto :goto_3

    :cond_3
    move-object/from16 v21, p14

    :goto_3
    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_4

    .line 83
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    move-object/from16 v22, v1

    goto :goto_4

    :cond_4
    move-object/from16 v22, p15

    :goto_4
    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_5

    .line 85
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    move-object/from16 v23, v1

    goto :goto_5

    :cond_5
    move-object/from16 v23, p16

    :goto_5
    const v1, 0x8000

    and-int/2addr v1, v0

    if-eqz v1, :cond_9

    .line 88
    move-object/from16 v1, v23

    check-cast v1, Ljava/lang/Iterable;

    .line 332
    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v1, v6}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v5, Ljava/util/Collection;

    .line 333
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 334
    check-cast v7, Lcom/superwall/sdk/models/product/ProductItem;

    .line 88
    invoke-virtual {v7}, Lcom/superwall/sdk/models/product/ProductItem;->getCompositeId()Ljava/lang/String;

    move-result-object v7

    .line 334
    invoke-interface {v5, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 335
    :cond_6
    check-cast v5, Ljava/util/List;

    .line 332
    check-cast v5, Ljava/util/Collection;

    .line 88
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 89
    move-object/from16 v1, v22

    check-cast v1, Ljava/lang/Iterable;

    .line 336
    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v1, v6}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v5, Ljava/util/Collection;

    .line 337
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 338
    check-cast v6, Lcom/superwall/sdk/models/product/CrossplatformProduct;

    .line 89
    invoke-virtual {v6}, Lcom/superwall/sdk/models/product/CrossplatformProduct;->getFullProductId()Ljava/lang/String;

    move-result-object v6

    .line 338
    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 339
    :cond_7
    check-cast v5, Ljava/util/List;

    .line 88
    :cond_8
    move-object v1, v5

    check-cast v1, Ljava/util/List;

    move-object/from16 v24, v1

    goto :goto_8

    :cond_9
    move-object/from16 v24, p17

    :goto_8
    const/high16 v1, 0x10000

    and-int/2addr v1, v0

    if-eqz v1, :cond_a

    .line 92
    new-instance v1, Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;

    const/4 v5, 0x7

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 p13, v1

    move/from16 p17, v5

    move-object/from16 p18, v6

    move-object/from16 p14, v7

    move-object/from16 p15, v8

    move-object/from16 p16, v9

    invoke-direct/range {p13 .. p18}, Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;-><init>(Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v25, v1

    goto :goto_9

    :cond_a
    move-object/from16 v25, p18

    :goto_9
    const/high16 v1, 0x20000

    and-int/2addr v1, v0

    if-eqz v1, :cond_b

    .line 94
    new-instance v1, Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;

    const/4 v5, 0x7

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 p13, v1

    move/from16 p17, v5

    move-object/from16 p18, v6

    move-object/from16 p14, v7

    move-object/from16 p15, v8

    move-object/from16 p16, v9

    invoke-direct/range {p13 .. p18}, Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;-><init>(Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v26, v1

    goto :goto_a

    :cond_b
    move-object/from16 v26, p19

    :goto_a
    const/high16 v1, 0x40000

    and-int/2addr v1, v0

    if-eqz v1, :cond_c

    .line 96
    new-instance v1, Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;

    const/4 v5, 0x7

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 p13, v1

    move/from16 p17, v5

    move-object/from16 p18, v6

    move-object/from16 p14, v7

    move-object/from16 p15, v8

    move-object/from16 p16, v9

    invoke-direct/range {p13 .. p18}, Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;-><init>(Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v27, v1

    goto :goto_b

    :cond_c
    move-object/from16 v27, p20

    :goto_b
    const/high16 v1, 0x80000

    and-int/2addr v1, v0

    if-eqz v1, :cond_d

    .line 98
    new-instance v1, Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;

    const/4 v5, 0x7

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 p13, v1

    move/from16 p17, v5

    move-object/from16 p18, v6

    move-object/from16 p14, v7

    move-object/from16 p15, v8

    move-object/from16 p16, v9

    invoke-direct/range {p13 .. p18}, Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;-><init>(Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v28, v1

    goto :goto_c

    :cond_d
    move-object/from16 v28, p21

    :goto_c
    const/high16 v1, 0x100000

    and-int/2addr v1, v0

    if-eqz v1, :cond_e

    move-object/from16 v29, v2

    goto :goto_d

    :cond_e
    move-object/from16 v29, p22

    :goto_d
    const/high16 v1, 0x200000

    and-int/2addr v1, v0

    if-eqz v1, :cond_f

    move-object/from16 v30, v2

    goto :goto_e

    :cond_f
    move-object/from16 v30, p23

    :goto_e
    const/high16 v1, 0x400000

    and-int/2addr v1, v0

    if-eqz v1, :cond_10

    move-object/from16 v31, v2

    goto :goto_f

    :cond_10
    move-object/from16 v31, p24

    :goto_f
    const/high16 v1, 0x800000

    and-int/2addr v1, v0

    if-eqz v1, :cond_11

    const/4 v1, 0x0

    move/from16 v32, v1

    goto :goto_10

    :cond_11
    move/from16 v32, p25

    :goto_10
    const/high16 v1, 0x1000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_12

    move-object/from16 v33, v2

    goto :goto_11

    :cond_12
    move-object/from16 v33, p26

    :goto_11
    const/high16 v1, 0x2000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_13

    .line 106
    sget-object v1, Lcom/superwall/sdk/models/config/FeatureGatingBehavior$NonGated;->INSTANCE:Lcom/superwall/sdk/models/config/FeatureGatingBehavior$NonGated;

    check-cast v1, Lcom/superwall/sdk/models/config/FeatureGatingBehavior;

    move-object/from16 v34, v1

    goto :goto_12

    :cond_13
    move-object/from16 v34, p27

    :goto_12
    const/high16 v1, 0x4000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_14

    .line 108
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    move-object/from16 v35, v1

    goto :goto_13

    :cond_14
    move-object/from16 v35, p28

    :goto_13
    const/high16 v1, 0x8000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_15

    .line 110
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    move-object/from16 v36, v1

    goto :goto_14

    :cond_15
    move-object/from16 v36, p29

    :goto_14
    const/high16 v1, 0x10000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_16

    .line 115
    sget-object v1, Lcom/superwall/sdk/config/models/OnDeviceCaching$Disabled;->INSTANCE:Lcom/superwall/sdk/config/models/OnDeviceCaching$Disabled;

    check-cast v1, Lcom/superwall/sdk/config/models/OnDeviceCaching;

    move-object/from16 v37, v1

    goto :goto_15

    :cond_16
    move-object/from16 v37, p30

    :goto_15
    const/high16 v1, 0x20000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_17

    move-object/from16 v38, v2

    goto :goto_16

    :cond_17
    move-object/from16 v38, p31

    :goto_16
    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v1, v0

    if-eqz v1, :cond_18

    .line 119
    sget-object v1, Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason$None;->INSTANCE:Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason$None;

    check-cast v1, Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;

    move-object/from16 v39, v1

    goto :goto_17

    :cond_18
    move-object/from16 v39, p32

    :goto_17
    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_19

    .line 124
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    move-object/from16 v40, v0

    goto :goto_18

    :cond_19
    move-object/from16 v40, p33

    :goto_18
    and-int/lit8 v0, p42, 0x1

    if-eqz v0, :cond_1a

    move-object/from16 v41, v2

    goto :goto_19

    :cond_1a
    move-object/from16 v41, p34

    :goto_19
    and-int/lit8 v0, p42, 0x8

    if-eqz v0, :cond_1b

    .line 137
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    move-object/from16 v44, v0

    goto :goto_1a

    :cond_1b
    move-object/from16 v44, p37

    :goto_1a
    and-int/lit8 v0, p42, 0x10

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    .line 139
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    move-object/from16 v45, v0

    goto :goto_1b

    :cond_1c
    move-object/from16 v45, p38

    :goto_1b
    and-int/lit8 v0, p42, 0x20

    if-eqz v0, :cond_1d

    move-object/from16 v46, v2

    goto :goto_1c

    :cond_1d
    move-object/from16 v46, p39

    :goto_1c
    and-int/lit8 v0, p42, 0x40

    if-eqz v0, :cond_1e

    .line 143
    sget-object v0, Lcom/superwall/sdk/models/paywall/IntroOfferEligibility;->AUTOMATIC:Lcom/superwall/sdk/models/paywall/IntroOfferEligibility;

    move-object/from16 v47, v0

    goto :goto_1d

    :cond_1e
    move-object/from16 v47, p40

    :goto_1d
    const/16 v48, 0x0

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    move-object/from16 v14, p7

    move-object/from16 v17, p10

    move-object/from16 v19, p12

    move-object/from16 v42, p35

    move-object/from16 v43, p36

    move-wide v15, v3

    .line 42
    invoke-direct/range {v7 .. v48}, Lcom/superwall/sdk/models/paywall/Paywall;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;JLjava/lang/String;Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ZLjava/lang/String;Lcom/superwall/sdk/models/config/FeatureGatingBehavior;Ljava/util/List;Ljava/util/List;Lcom/superwall/sdk/config/models/OnDeviceCaching;Lcom/superwall/sdk/models/triggers/Experiment;Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;Ljava/util/Map;Lcom/superwall/sdk/models/paywall/PaywallWebviewUrl$Config;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Boolean;Lcom/superwall/sdk/models/paywall/Paywall$ToggleMode;Lcom/superwall/sdk/models/paywall/IntroOfferEligibility;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;JLjava/lang/String;Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ZLjava/lang/String;Lcom/superwall/sdk/models/config/FeatureGatingBehavior;Ljava/util/List;Ljava/util/List;Lcom/superwall/sdk/config/models/OnDeviceCaching;Lcom/superwall/sdk/models/triggers/Experiment;Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;Ljava/util/Map;Lcom/superwall/sdk/models/paywall/PaywallWebviewUrl$Config;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Boolean;Lcom/superwall/sdk/models/paywall/Paywall$ToggleMode;Lcom/superwall/sdk/models/paywall/IntroOfferEligibility;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p40}, Lcom/superwall/sdk/models/paywall/Paywall;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;JLjava/lang/String;Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ZLjava/lang/String;Lcom/superwall/sdk/models/config/FeatureGatingBehavior;Ljava/util/List;Ljava/util/List;Lcom/superwall/sdk/config/models/OnDeviceCaching;Lcom/superwall/sdk/models/triggers/Experiment;Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;Ljava/util/Map;Lcom/superwall/sdk/models/paywall/PaywallWebviewUrl$Config;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Boolean;Lcom/superwall/sdk/models/paywall/Paywall$ToggleMode;Lcom/superwall/sdk/models/paywall/IntroOfferEligibility;)V

    return-void
.end method

.method private static final _init_$lambda$18(Lcom/superwall/sdk/models/paywall/Paywall;)I
    .locals 8

    .line 193
    :try_start_0
    iget-object v0, p0, Lcom/superwall/sdk/models/paywall/Paywall;->backgroundColorHex:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    .line 195
    :catchall_0
    sget-object v0, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 196
    sget-object v1, Lcom/superwall/sdk/logger/LogLevel;->warn:Lcom/superwall/sdk/logger/LogLevel;

    .line 197
    sget-object v2, Lcom/superwall/sdk/logger/LogScope;->paywallView:Lcom/superwall/sdk/logger/LogScope;

    .line 199
    iget-object p0, p0, Lcom/superwall/sdk/models/paywall/Paywall;->backgroundColorHex:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid paywall background color: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v3, ". Defaulting to white."

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0x18

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 195
    invoke-static/range {v0 .. v7}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    const/4 p0, -0x1

    return p0
.end method

.method private static final _init_$lambda$19(Lcom/superwall/sdk/models/paywall/Paywall;)Ljava/lang/Integer;
    .locals 8

    .line 208
    :try_start_0
    iget-object v0, p0, Lcom/superwall/sdk/models/paywall/Paywall;->darkBackgroundColorHex:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 210
    :catchall_0
    sget-object v0, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 211
    sget-object v1, Lcom/superwall/sdk/logger/LogLevel;->warn:Lcom/superwall/sdk/logger/LogLevel;

    .line 212
    sget-object v2, Lcom/superwall/sdk/logger/LogScope;->paywallView:Lcom/superwall/sdk/logger/LogScope;

    .line 214
    iget-object p0, p0, Lcom/superwall/sdk/models/paywall/Paywall;->darkBackgroundColorHex:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid paywall background color: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v3, ". Defaulting to white."

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0x18

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 210
    invoke-static/range {v0 .. v7}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static final synthetic access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 40
    sget-object v0, Lcom/superwall/sdk/models/paywall/Paywall;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method private static final backgroundColor_delegate$lambda$12(Lcom/superwall/sdk/models/paywall/Paywall;)I
    .locals 8

    .line 193
    :try_start_0
    iget-object v0, p0, Lcom/superwall/sdk/models/paywall/Paywall;->backgroundColorHex:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    .line 195
    :catchall_0
    sget-object v0, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 196
    sget-object v1, Lcom/superwall/sdk/logger/LogLevel;->warn:Lcom/superwall/sdk/logger/LogLevel;

    .line 197
    sget-object v2, Lcom/superwall/sdk/logger/LogScope;->paywallView:Lcom/superwall/sdk/logger/LogScope;

    .line 199
    iget-object p0, p0, Lcom/superwall/sdk/models/paywall/Paywall;->backgroundColorHex:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid paywall background color: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v3, ". Defaulting to white."

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0x18

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 195
    invoke-static/range {v0 .. v7}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    const/4 p0, -0x1

    return p0
.end method

.method private final component13()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/product/ProductItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/superwall/sdk/models/paywall/Paywall;->_products:Ljava/util/List;

    return-object v0
.end method

.method private final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/models/paywall/Paywall;->presentationStyle:Ljava/lang/String;

    return-object v0
.end method

.method private final component7()Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/models/paywall/Paywall;->expandedPresentationStyle:Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;

    return-object v0
.end method

.method private final component8()J
    .locals 2

    iget-wide v0, p0, Lcom/superwall/sdk/models/paywall/Paywall;->presentationDelay:J

    return-wide v0
.end method

.method private final component9()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/models/paywall/Paywall;->presentationCondition:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic copy-zhR-ERg$default(Lcom/superwall/sdk/models/paywall/Paywall;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;JLjava/lang/String;Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ZLjava/lang/String;Lcom/superwall/sdk/models/config/FeatureGatingBehavior;Ljava/util/List;Ljava/util/List;Lcom/superwall/sdk/config/models/OnDeviceCaching;Lcom/superwall/sdk/models/triggers/Experiment;Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;Ljava/util/Map;Lcom/superwall/sdk/models/paywall/PaywallWebviewUrl$Config;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Boolean;Lcom/superwall/sdk/models/paywall/Paywall$ToggleMode;Lcom/superwall/sdk/models/paywall/IntroOfferEligibility;IILjava/lang/Object;)Lcom/superwall/sdk/models/paywall/Paywall;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p41

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/superwall/sdk/models/paywall/Paywall;->databaseId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/superwall/sdk/models/paywall/Paywall;->identifier:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/superwall/sdk/models/paywall/Paywall;->name:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/superwall/sdk/models/paywall/Paywall;->url:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/superwall/sdk/models/paywall/Paywall;->htmlSubstitutions:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/superwall/sdk/models/paywall/Paywall;->presentationStyle:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/superwall/sdk/models/paywall/Paywall;->expandedPresentationStyle:Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-wide v9, v0, Lcom/superwall/sdk/models/paywall/Paywall;->presentationDelay:J

    goto :goto_7

    :cond_7
    move-wide/from16 v9, p8

    :goto_7
    and-int/lit16 v11, v1, 0x100

    if-eqz v11, :cond_8

    iget-object v11, v0, Lcom/superwall/sdk/models/paywall/Paywall;->presentationCondition:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v11, p10

    :goto_8
    and-int/lit16 v12, v1, 0x200

    if-eqz v12, :cond_9

    iget-object v12, v0, Lcom/superwall/sdk/models/paywall/Paywall;->presentation:Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;

    goto :goto_9

    :cond_9
    move-object/from16 v12, p11

    :goto_9
    and-int/lit16 v13, v1, 0x400

    if-eqz v13, :cond_a

    iget-object v13, v0, Lcom/superwall/sdk/models/paywall/Paywall;->backgroundColorHex:Ljava/lang/String;

    goto :goto_a

    :cond_a
    move-object/from16 v13, p12

    :goto_a
    and-int/lit16 v14, v1, 0x800

    if-eqz v14, :cond_b

    iget-object v14, v0, Lcom/superwall/sdk/models/paywall/Paywall;->darkBackgroundColorHex:Ljava/lang/String;

    goto :goto_b

    :cond_b
    move-object/from16 v14, p13

    :goto_b
    and-int/lit16 v15, v1, 0x1000

    if-eqz v15, :cond_c

    iget-object v15, v0, Lcom/superwall/sdk/models/paywall/Paywall;->_products:Ljava/util/List;

    goto :goto_c

    :cond_c
    move-object/from16 v15, p14

    :goto_c
    move-object/from16 p1, v2

    and-int/lit16 v2, v1, 0x2000

    if-eqz v2, :cond_d

    iget-object v2, v0, Lcom/superwall/sdk/models/paywall/Paywall;->_productItemsV3:Ljava/util/List;

    goto :goto_d

    :cond_d
    move-object/from16 v2, p15

    :goto_d
    move-object/from16 p2, v2

    and-int/lit16 v2, v1, 0x4000

    if-eqz v2, :cond_e

    iget-object v2, v0, Lcom/superwall/sdk/models/paywall/Paywall;->_productItems:Ljava/util/List;

    goto :goto_e

    :cond_e
    move-object/from16 v2, p16

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    if-eqz v16, :cond_f

    iget-object v1, v0, Lcom/superwall/sdk/models/paywall/Paywall;->productIds:Ljava/util/List;

    goto :goto_f

    :cond_f
    move-object/from16 v1, p17

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, p41, v16

    move-object/from16 p3, v1

    if-eqz v16, :cond_10

    iget-object v1, v0, Lcom/superwall/sdk/models/paywall/Paywall;->responseLoadingInfo:Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;

    goto :goto_10

    :cond_10
    move-object/from16 v1, p18

    :goto_10
    const/high16 v16, 0x20000

    and-int v16, p41, v16

    move-object/from16 p4, v1

    if-eqz v16, :cond_11

    iget-object v1, v0, Lcom/superwall/sdk/models/paywall/Paywall;->webviewLoadingInfo:Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;

    goto :goto_11

    :cond_11
    move-object/from16 v1, p19

    :goto_11
    const/high16 v16, 0x40000

    and-int v16, p41, v16

    move-object/from16 p5, v1

    if-eqz v16, :cond_12

    iget-object v1, v0, Lcom/superwall/sdk/models/paywall/Paywall;->productsLoadingInfo:Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;

    goto :goto_12

    :cond_12
    move-object/from16 v1, p20

    :goto_12
    const/high16 v16, 0x80000

    and-int v16, p41, v16

    move-object/from16 p6, v1

    if-eqz v16, :cond_13

    iget-object v1, v0, Lcom/superwall/sdk/models/paywall/Paywall;->shimmerLoadingInfo:Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;

    goto :goto_13

    :cond_13
    move-object/from16 v1, p21

    :goto_13
    const/high16 v16, 0x100000

    and-int v16, p41, v16

    move-object/from16 p7, v1

    if-eqz v16, :cond_14

    iget-object v1, v0, Lcom/superwall/sdk/models/paywall/Paywall;->productVariables:Ljava/util/List;

    goto :goto_14

    :cond_14
    move-object/from16 v1, p22

    :goto_14
    const/high16 v16, 0x200000

    and-int v16, p41, v16

    move-object/from16 p8, v1

    if-eqz v16, :cond_15

    iget-object v1, v0, Lcom/superwall/sdk/models/paywall/Paywall;->swProductVariablesTemplate:Ljava/util/List;

    goto :goto_15

    :cond_15
    move-object/from16 v1, p23

    :goto_15
    const/high16 v16, 0x400000

    and-int v16, p41, v16

    move-object/from16 p9, v1

    if-eqz v16, :cond_16

    iget-object v1, v0, Lcom/superwall/sdk/models/paywall/Paywall;->paywalljsVersion:Ljava/lang/String;

    goto :goto_16

    :cond_16
    move-object/from16 v1, p24

    :goto_16
    const/high16 v16, 0x800000

    and-int v16, p41, v16

    move-object/from16 p10, v1

    if-eqz v16, :cond_17

    iget-boolean v1, v0, Lcom/superwall/sdk/models/paywall/Paywall;->isFreeTrialAvailable:Z

    goto :goto_17

    :cond_17
    move/from16 v1, p25

    :goto_17
    const/high16 v16, 0x1000000

    and-int v16, p41, v16

    move/from16 p11, v1

    if-eqz v16, :cond_18

    iget-object v1, v0, Lcom/superwall/sdk/models/paywall/Paywall;->presentationSourceType:Ljava/lang/String;

    goto :goto_18

    :cond_18
    move-object/from16 v1, p26

    :goto_18
    const/high16 v16, 0x2000000

    and-int v16, p41, v16

    move-object/from16 p12, v1

    if-eqz v16, :cond_19

    iget-object v1, v0, Lcom/superwall/sdk/models/paywall/Paywall;->featureGating:Lcom/superwall/sdk/models/config/FeatureGatingBehavior;

    goto :goto_19

    :cond_19
    move-object/from16 v1, p27

    :goto_19
    const/high16 v16, 0x4000000

    and-int v16, p41, v16

    move-object/from16 p13, v1

    if-eqz v16, :cond_1a

    iget-object v1, v0, Lcom/superwall/sdk/models/paywall/Paywall;->computedPropertyRequests:Ljava/util/List;

    goto :goto_1a

    :cond_1a
    move-object/from16 v1, p28

    :goto_1a
    const/high16 v16, 0x8000000

    and-int v16, p41, v16

    move-object/from16 p14, v1

    if-eqz v16, :cond_1b

    iget-object v1, v0, Lcom/superwall/sdk/models/paywall/Paywall;->localNotifications:Ljava/util/List;

    goto :goto_1b

    :cond_1b
    move-object/from16 v1, p29

    :goto_1b
    const/high16 v16, 0x10000000

    and-int v16, p41, v16

    move-object/from16 p15, v1

    if-eqz v16, :cond_1c

    iget-object v1, v0, Lcom/superwall/sdk/models/paywall/Paywall;->onDeviceCache:Lcom/superwall/sdk/config/models/OnDeviceCaching;

    goto :goto_1c

    :cond_1c
    move-object/from16 v1, p30

    :goto_1c
    const/high16 v16, 0x20000000

    and-int v16, p41, v16

    move-object/from16 p16, v1

    if-eqz v16, :cond_1d

    iget-object v1, v0, Lcom/superwall/sdk/models/paywall/Paywall;->experiment:Lcom/superwall/sdk/models/triggers/Experiment;

    goto :goto_1d

    :cond_1d
    move-object/from16 v1, p31

    :goto_1d
    const/high16 v16, 0x40000000    # 2.0f

    and-int v16, p41, v16

    move-object/from16 p17, v1

    if-eqz v16, :cond_1e

    iget-object v1, v0, Lcom/superwall/sdk/models/paywall/Paywall;->closeReason:Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;

    goto :goto_1e

    :cond_1e
    move-object/from16 v1, p32

    :goto_1e
    const/high16 v16, -0x80000000

    and-int v16, p41, v16

    move-object/from16 p18, v1

    if-eqz v16, :cond_1f

    iget-object v1, v0, Lcom/superwall/sdk/models/paywall/Paywall;->state:Ljava/util/Map;

    goto :goto_1f

    :cond_1f
    move-object/from16 v1, p33

    :goto_1f
    and-int/lit8 v16, p42, 0x1

    move-object/from16 p19, v1

    if-eqz v16, :cond_20

    iget-object v1, v0, Lcom/superwall/sdk/models/paywall/Paywall;->urlConfig:Lcom/superwall/sdk/models/paywall/PaywallWebviewUrl$Config;

    goto :goto_20

    :cond_20
    move-object/from16 v1, p34

    :goto_20
    and-int/lit8 v16, p42, 0x2

    move-object/from16 p20, v1

    if-eqz v16, :cond_21

    iget-object v1, v0, Lcom/superwall/sdk/models/paywall/Paywall;->cacheKey:Ljava/lang/String;

    goto :goto_21

    :cond_21
    move-object/from16 v1, p35

    :goto_21
    and-int/lit8 v16, p42, 0x4

    move-object/from16 p21, v1

    if-eqz v16, :cond_22

    iget-object v1, v0, Lcom/superwall/sdk/models/paywall/Paywall;->buildId:Ljava/lang/String;

    goto :goto_22

    :cond_22
    move-object/from16 v1, p36

    :goto_22
    and-int/lit8 v16, p42, 0x8

    move-object/from16 p22, v1

    if-eqz v16, :cond_23

    iget-object v1, v0, Lcom/superwall/sdk/models/paywall/Paywall;->surveys:Ljava/util/List;

    goto :goto_23

    :cond_23
    move-object/from16 v1, p37

    :goto_23
    and-int/lit8 v16, p42, 0x10

    move-object/from16 p23, v1

    if-eqz v16, :cond_24

    iget-object v1, v0, Lcom/superwall/sdk/models/paywall/Paywall;->isScrollEnabled:Ljava/lang/Boolean;

    goto :goto_24

    :cond_24
    move-object/from16 v1, p38

    :goto_24
    and-int/lit8 v16, p42, 0x20

    move-object/from16 p24, v1

    if-eqz v16, :cond_25

    iget-object v1, v0, Lcom/superwall/sdk/models/paywall/Paywall;->rerouteBackButton:Lcom/superwall/sdk/models/paywall/Paywall$ToggleMode;

    goto :goto_25

    :cond_25
    move-object/from16 v1, p39

    :goto_25
    and-int/lit8 v16, p42, 0x40

    if-eqz v16, :cond_26

    move-object/from16 p25, v1

    iget-object v1, v0, Lcom/superwall/sdk/models/paywall/Paywall;->introOfferEligibility:Lcom/superwall/sdk/models/paywall/IntroOfferEligibility;

    move-object/from16 p40, p25

    move-object/from16 p41, v1

    move/from16 p26, p11

    move-object/from16 p27, p12

    move-object/from16 p28, p13

    move-object/from16 p29, p14

    move-object/from16 p30, p15

    move-object/from16 p31, p16

    move-object/from16 p32, p17

    move-object/from16 p33, p18

    move-object/from16 p34, p19

    move-object/from16 p35, p20

    move-object/from16 p36, p21

    move-object/from16 p37, p22

    move-object/from16 p38, p23

    move-object/from16 p39, p24

    move-object/from16 p17, v2

    move-object/from16 p11, v11

    move-object/from16 p12, v12

    move-object/from16 p13, v13

    move-object/from16 p14, v14

    move-object/from16 p15, v15

    move-object/from16 p16, p2

    move-object/from16 p18, p3

    move-object/from16 p19, p4

    move-object/from16 p20, p5

    move-object/from16 p21, p6

    move-object/from16 p22, p7

    move-object/from16 p23, p8

    move-object/from16 p24, p9

    move-object/from16 p25, p10

    goto :goto_26

    :cond_26
    move-object/from16 p41, p40

    move-object/from16 p40, v1

    move-object/from16 p25, p10

    move/from16 p26, p11

    move-object/from16 p27, p12

    move-object/from16 p28, p13

    move-object/from16 p29, p14

    move-object/from16 p30, p15

    move-object/from16 p31, p16

    move-object/from16 p32, p17

    move-object/from16 p33, p18

    move-object/from16 p34, p19

    move-object/from16 p35, p20

    move-object/from16 p36, p21

    move-object/from16 p37, p22

    move-object/from16 p38, p23

    move-object/from16 p39, p24

    move-object/from16 p17, v2

    move-object/from16 p11, v11

    move-object/from16 p12, v12

    move-object/from16 p13, v13

    move-object/from16 p14, v14

    move-object/from16 p15, v15

    move-object/from16 p16, p2

    move-object/from16 p18, p3

    move-object/from16 p19, p4

    move-object/from16 p20, p5

    move-object/from16 p21, p6

    move-object/from16 p22, p7

    move-object/from16 p23, p8

    move-object/from16 p24, p9

    :goto_26
    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    move-wide/from16 p9, v9

    move-object/from16 p2, p1

    move-object/from16 p1, v0

    invoke-virtual/range {p1 .. p41}, Lcom/superwall/sdk/models/paywall/Paywall;->copy-zhR-ERg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;JLjava/lang/String;Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ZLjava/lang/String;Lcom/superwall/sdk/models/config/FeatureGatingBehavior;Ljava/util/List;Ljava/util/List;Lcom/superwall/sdk/config/models/OnDeviceCaching;Lcom/superwall/sdk/models/triggers/Experiment;Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;Ljava/util/Map;Lcom/superwall/sdk/models/paywall/PaywallWebviewUrl$Config;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Boolean;Lcom/superwall/sdk/models/paywall/Paywall$ToggleMode;Lcom/superwall/sdk/models/paywall/IntroOfferEligibility;)Lcom/superwall/sdk/models/paywall/Paywall;

    move-result-object v0

    return-object v0
.end method

.method private static final darkBackgroundColor_delegate$lambda$13(Lcom/superwall/sdk/models/paywall/Paywall;)Ljava/lang/Integer;
    .locals 8

    .line 208
    :try_start_0
    iget-object v0, p0, Lcom/superwall/sdk/models/paywall/Paywall;->darkBackgroundColorHex:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 210
    :catchall_0
    sget-object v0, Lcom/superwall/sdk/logger/Logger;->INSTANCE:Lcom/superwall/sdk/logger/Logger;

    .line 211
    sget-object v1, Lcom/superwall/sdk/logger/LogLevel;->warn:Lcom/superwall/sdk/logger/LogLevel;

    .line 212
    sget-object v2, Lcom/superwall/sdk/logger/LogScope;->paywallView:Lcom/superwall/sdk/logger/LogScope;

    .line 214
    iget-object p0, p0, Lcom/superwall/sdk/models/paywall/Paywall;->darkBackgroundColorHex:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid paywall background color: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v3, ". Defaulting to white."

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0x18

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 210
    invoke-static/range {v0 .. v7}, Lcom/superwall/sdk/logger/Logger;->debug$default(Lcom/superwall/sdk/logger/Logger;Lcom/superwall/sdk/logger/LogLevel;Lcom/superwall/sdk/logger/LogScope;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic getBackgroundColorHex$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "background_color_hex"
    .end annotation

    return-void
.end method

.method public static synthetic getBuildId$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "build_id"
    .end annotation

    .annotation runtime Lkotlinx/serialization/Serializable;
    .end annotation

    return-void
.end method

.method public static synthetic getCacheKey$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "cache_key"
    .end annotation

    .annotation runtime Lkotlinx/serialization/Serializable;
    .end annotation

    return-void
.end method

.method public static synthetic getCloseReason$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/Transient;
    .end annotation

    return-void
.end method

.method public static synthetic getComputedPropertyRequests$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "computed_properties"
    .end annotation

    return-void
.end method

.method public static synthetic getDarkBackgroundColorHex$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "dark_background_color_hex"
    .end annotation

    return-void
.end method

.method public static synthetic getDatabaseId$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "id"
    .end annotation

    return-void
.end method

.method private static synthetic getExpandedPresentationStyle$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "presentation_style_v3"
    .end annotation

    return-void
.end method

.method public static synthetic getExperiment$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/Transient;
    .end annotation

    return-void
.end method

.method public static synthetic getFeatureGating$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "feature_gating"
    .end annotation

    return-void
.end method

.method public static synthetic getHtmlSubstitutions$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "paywalljs_event"
    .end annotation

    return-void
.end method

.method public static synthetic getIdentifier$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "identifier"
    .end annotation

    return-void
.end method

.method public static synthetic getIntroOfferEligibility$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "intro_offer_eligibility"
    .end annotation

    return-void
.end method

.method public static synthetic getLocalNotifications$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "local_notifications"
    .end annotation

    return-void
.end method

.method public static synthetic getName$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "name"
    .end annotation

    return-void
.end method

.method public static synthetic getOnDeviceCache$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "on_device_cache"
    .end annotation

    return-void
.end method

.method public static synthetic getPresentation$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/Transient;
    .end annotation

    return-void
.end method

.method private static synthetic getPresentationCondition$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "presentation_condition"
    .end annotation

    return-void
.end method

.method private static synthetic getPresentationDelay$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "presentation_delay"
    .end annotation

    return-void
.end method

.method private static synthetic getPresentationStyle$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "presentation_style_v2"
    .end annotation

    return-void
.end method

.method public static synthetic getProductIds$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/Transient;
    .end annotation

    return-void
.end method

.method public static synthetic getProductsLoadingInfo$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/Transient;
    .end annotation

    return-void
.end method

.method public static synthetic getRerouteBackButton$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "reroute_back_button"
    .end annotation

    return-void
.end method

.method public static synthetic getResponseLoadingInfo$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/Transient;
    .end annotation

    return-void
.end method

.method public static synthetic getShimmerLoadingInfo$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/Transient;
    .end annotation

    return-void
.end method

.method public static synthetic getState$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/Transient;
    .end annotation

    return-void
.end method

.method public static synthetic getSurveys$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "surveys"
    .end annotation

    return-void
.end method

.method public static synthetic getUrl-24UBhI0$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "url"
    .end annotation

    return-void
.end method

.method public static synthetic getUrlConfig$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "url_config"
    .end annotation

    return-void
.end method

.method public static synthetic getWebviewLoadingInfo$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/Transient;
    .end annotation

    return-void
.end method

.method public static synthetic get_productItems$superwall_release$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "products_v2"
    .end annotation

    return-void
.end method

.method public static synthetic get_productItemsV3$superwall_release$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "products_v3"
    .end annotation

    return-void
.end method

.method private static synthetic get_products$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/Transient;
    .end annotation

    return-void
.end method

.method public static synthetic isScrollEnabled$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "is_scroll_enabled"
    .end annotation

    return-void
.end method

.method public static final synthetic write$Self$superwall_release(Lcom/superwall/sdk/models/paywall/Paywall;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 40
    sget-object v0, Lcom/superwall/sdk/models/paywall/Paywall;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/superwall/sdk/models/paywall/Paywall;->databaseId:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    iget-object v1, p0, Lcom/superwall/sdk/models/paywall/Paywall;->identifier:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {p1, p2, v2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/4 v1, 0x2

    iget-object v3, p0, Lcom/superwall/sdk/models/paywall/Paywall;->name:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    sget-object v1, Lcom/superwall/sdk/models/paywall/PaywallURL$$serializer;->INSTANCE:Lcom/superwall/sdk/models/paywall/PaywallURL$$serializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object v3, p0, Lcom/superwall/sdk/models/paywall/Paywall;->url:Ljava/lang/String;

    invoke-static {v3}, Lcom/superwall/sdk/models/paywall/PaywallURL;->box-impl(Ljava/lang/String;)Lcom/superwall/sdk/models/paywall/PaywallURL;

    move-result-object v3

    const/4 v4, 0x3

    invoke-interface {p1, p2, v4, v1, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v1, 0x4

    iget-object v3, p0, Lcom/superwall/sdk/models/paywall/Paywall;->htmlSubstitutions:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object v3, p0, Lcom/superwall/sdk/models/paywall/Paywall;->presentationStyle:Ljava/lang/String;

    const/4 v4, 0x5

    invoke-interface {p1, p2, v4, v1, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v1, 0x6

    aget-object v3, v0, v1

    check-cast v3, Lkotlinx/serialization/SerializationStrategy;

    iget-object v4, p0, Lcom/superwall/sdk/models/paywall/Paywall;->expandedPresentationStyle:Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;

    invoke-interface {p1, p2, v1, v3, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v1, 0x7

    iget-wide v3, p0, Lcom/superwall/sdk/models/paywall/Paywall;->presentationDelay:J

    invoke-interface {p1, p2, v1, v3, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IJ)V

    const/16 v1, 0x8

    iget-object v3, p0, Lcom/superwall/sdk/models/paywall/Paywall;->presentationCondition:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/16 v1, 0x9

    iget-object v3, p0, Lcom/superwall/sdk/models/paywall/Paywall;->backgroundColorHex:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/16 v1, 0xa

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/superwall/sdk/models/paywall/Paywall;->darkBackgroundColorHex:Ljava/lang/String;

    if-eqz v3, :cond_1

    :goto_0
    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v3, Lkotlinx/serialization/SerializationStrategy;

    iget-object v4, p0, Lcom/superwall/sdk/models/paywall/Paywall;->darkBackgroundColorHex:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v3, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_1
    const/16 v1, 0xb

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/superwall/sdk/models/paywall/Paywall;->_productItemsV3:Ljava/util/List;

    .line 83
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v4

    .line 40
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    :goto_1
    aget-object v3, v0, v1

    check-cast v3, Lkotlinx/serialization/SerializationStrategy;

    iget-object v4, p0, Lcom/superwall/sdk/models/paywall/Paywall;->_productItemsV3:Ljava/util/List;

    invoke-interface {p1, p2, v1, v3, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_3
    const/16 v1, 0xc

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    iget-object v3, p0, Lcom/superwall/sdk/models/paywall/Paywall;->_productItems:Ljava/util/List;

    .line 85
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v4

    .line 40
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    :goto_2
    aget-object v3, v0, v1

    check-cast v3, Lkotlinx/serialization/SerializationStrategy;

    iget-object v4, p0, Lcom/superwall/sdk/models/paywall/Paywall;->_productItems:Ljava/util/List;

    invoke-interface {p1, p2, v1, v3, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_5
    const/16 v1, 0xd

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_3

    :cond_6
    iget-object v3, p0, Lcom/superwall/sdk/models/paywall/Paywall;->productVariables:Ljava/util/List;

    if-eqz v3, :cond_7

    :goto_3
    aget-object v3, v0, v1

    check-cast v3, Lkotlinx/serialization/SerializationStrategy;

    iget-object v4, p0, Lcom/superwall/sdk/models/paywall/Paywall;->productVariables:Ljava/util/List;

    invoke-interface {p1, p2, v1, v3, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_7
    const/16 v1, 0xe

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_4

    :cond_8
    iget-object v3, p0, Lcom/superwall/sdk/models/paywall/Paywall;->swProductVariablesTemplate:Ljava/util/List;

    if-eqz v3, :cond_9

    :goto_4
    aget-object v3, v0, v1

    check-cast v3, Lkotlinx/serialization/SerializationStrategy;

    iget-object v4, p0, Lcom/superwall/sdk/models/paywall/Paywall;->swProductVariablesTemplate:Ljava/util/List;

    invoke-interface {p1, p2, v1, v3, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_9
    const/16 v1, 0xf

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v3

    if-eqz v3, :cond_a

    goto :goto_5

    :cond_a
    iget-object v3, p0, Lcom/superwall/sdk/models/paywall/Paywall;->paywalljsVersion:Ljava/lang/String;

    if-eqz v3, :cond_b

    :goto_5
    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v3, Lkotlinx/serialization/SerializationStrategy;

    iget-object v4, p0, Lcom/superwall/sdk/models/paywall/Paywall;->paywalljsVersion:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v3, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_b
    const/16 v1, 0x10

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v3

    if-eqz v3, :cond_c

    goto :goto_6

    :cond_c
    iget-boolean v3, p0, Lcom/superwall/sdk/models/paywall/Paywall;->isFreeTrialAvailable:Z

    if-eqz v3, :cond_d

    :goto_6
    iget-boolean v3, p0, Lcom/superwall/sdk/models/paywall/Paywall;->isFreeTrialAvailable:Z

    invoke-interface {p1, p2, v1, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    :cond_d
    const/16 v1, 0x11

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v3

    if-eqz v3, :cond_e

    goto :goto_7

    :cond_e
    iget-object v3, p0, Lcom/superwall/sdk/models/paywall/Paywall;->presentationSourceType:Ljava/lang/String;

    if-eqz v3, :cond_f

    :goto_7
    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v3, Lkotlinx/serialization/SerializationStrategy;

    iget-object v4, p0, Lcom/superwall/sdk/models/paywall/Paywall;->presentationSourceType:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v3, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_f
    const/16 v1, 0x12

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v3

    if-eqz v3, :cond_10

    goto :goto_8

    :cond_10
    iget-object v3, p0, Lcom/superwall/sdk/models/paywall/Paywall;->featureGating:Lcom/superwall/sdk/models/config/FeatureGatingBehavior;

    .line 106
    sget-object v4, Lcom/superwall/sdk/models/config/FeatureGatingBehavior$NonGated;->INSTANCE:Lcom/superwall/sdk/models/config/FeatureGatingBehavior$NonGated;

    .line 40
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    :goto_8
    sget-object v3, Lcom/superwall/sdk/models/config/FeatureGatingBehaviorSerializer;->INSTANCE:Lcom/superwall/sdk/models/config/FeatureGatingBehaviorSerializer;

    check-cast v3, Lkotlinx/serialization/SerializationStrategy;

    iget-object v4, p0, Lcom/superwall/sdk/models/paywall/Paywall;->featureGating:Lcom/superwall/sdk/models/config/FeatureGatingBehavior;

    invoke-interface {p1, p2, v1, v3, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_11
    const/16 v1, 0x13

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v3

    if-eqz v3, :cond_12

    goto :goto_9

    :cond_12
    iget-object v3, p0, Lcom/superwall/sdk/models/paywall/Paywall;->computedPropertyRequests:Ljava/util/List;

    .line 108
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v4

    .line 40
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    :goto_9
    aget-object v3, v0, v1

    check-cast v3, Lkotlinx/serialization/SerializationStrategy;

    iget-object v4, p0, Lcom/superwall/sdk/models/paywall/Paywall;->computedPropertyRequests:Ljava/util/List;

    invoke-interface {p1, p2, v1, v3, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_13
    const/16 v1, 0x14

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v3

    if-eqz v3, :cond_14

    goto :goto_a

    :cond_14
    iget-object v3, p0, Lcom/superwall/sdk/models/paywall/Paywall;->localNotifications:Ljava/util/List;

    .line 110
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v4

    .line 40
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    :goto_a
    aget-object v3, v0, v1

    check-cast v3, Lkotlinx/serialization/SerializationStrategy;

    iget-object v4, p0, Lcom/superwall/sdk/models/paywall/Paywall;->localNotifications:Ljava/util/List;

    invoke-interface {p1, p2, v1, v3, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_15
    const/16 v1, 0x15

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v3

    if-eqz v3, :cond_16

    goto :goto_b

    :cond_16
    iget-object v3, p0, Lcom/superwall/sdk/models/paywall/Paywall;->onDeviceCache:Lcom/superwall/sdk/config/models/OnDeviceCaching;

    .line 115
    sget-object v4, Lcom/superwall/sdk/config/models/OnDeviceCaching$Disabled;->INSTANCE:Lcom/superwall/sdk/config/models/OnDeviceCaching$Disabled;

    .line 40
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    :goto_b
    sget-object v3, Lcom/superwall/sdk/config/models/OnDeviceCachingSerializer;->INSTANCE:Lcom/superwall/sdk/config/models/OnDeviceCachingSerializer;

    check-cast v3, Lkotlinx/serialization/SerializationStrategy;

    iget-object v4, p0, Lcom/superwall/sdk/models/paywall/Paywall;->onDeviceCache:Lcom/superwall/sdk/config/models/OnDeviceCaching;

    invoke-interface {p1, p2, v1, v3, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_17
    const/16 v1, 0x16

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v3

    if-eqz v3, :cond_18

    goto :goto_c

    :cond_18
    iget-object v3, p0, Lcom/superwall/sdk/models/paywall/Paywall;->urlConfig:Lcom/superwall/sdk/models/paywall/PaywallWebviewUrl$Config;

    if-eqz v3, :cond_19

    :goto_c
    sget-object v3, Lcom/superwall/sdk/models/paywall/PaywallWebviewUrl$Config$$serializer;->INSTANCE:Lcom/superwall/sdk/models/paywall/PaywallWebviewUrl$Config$$serializer;

    check-cast v3, Lkotlinx/serialization/SerializationStrategy;

    iget-object v4, p0, Lcom/superwall/sdk/models/paywall/Paywall;->urlConfig:Lcom/superwall/sdk/models/paywall/PaywallWebviewUrl$Config;

    invoke-interface {p1, p2, v1, v3, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_19
    const/16 v1, 0x17

    iget-object v3, p0, Lcom/superwall/sdk/models/paywall/Paywall;->cacheKey:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/16 v1, 0x18

    iget-object v3, p0, Lcom/superwall/sdk/models/paywall/Paywall;->buildId:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/16 v1, 0x19

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v3

    if-eqz v3, :cond_1a

    goto :goto_d

    :cond_1a
    iget-object v3, p0, Lcom/superwall/sdk/models/paywall/Paywall;->surveys:Ljava/util/List;

    .line 137
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v4

    .line 40
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b

    :goto_d
    aget-object v3, v0, v1

    check-cast v3, Lkotlinx/serialization/SerializationStrategy;

    iget-object v4, p0, Lcom/superwall/sdk/models/paywall/Paywall;->surveys:Ljava/util/List;

    invoke-interface {p1, p2, v1, v3, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_1b
    const/16 v1, 0x1a

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v3

    if-eqz v3, :cond_1c

    goto :goto_e

    :cond_1c
    iget-object v3, p0, Lcom/superwall/sdk/models/paywall/Paywall;->isScrollEnabled:Ljava/lang/Boolean;

    .line 139
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 40
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    :goto_e
    sget-object v2, Lkotlinx/serialization/internal/BooleanSerializer;->INSTANCE:Lkotlinx/serialization/internal/BooleanSerializer;

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    iget-object v3, p0, Lcom/superwall/sdk/models/paywall/Paywall;->isScrollEnabled:Ljava/lang/Boolean;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_1d
    const/16 v1, 0x1b

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_1e

    goto :goto_f

    :cond_1e
    iget-object v2, p0, Lcom/superwall/sdk/models/paywall/Paywall;->rerouteBackButton:Lcom/superwall/sdk/models/paywall/Paywall$ToggleMode;

    if-eqz v2, :cond_1f

    :goto_f
    aget-object v2, v0, v1

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    iget-object v3, p0, Lcom/superwall/sdk/models/paywall/Paywall;->rerouteBackButton:Lcom/superwall/sdk/models/paywall/Paywall$ToggleMode;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_1f
    const/16 v1, 0x1c

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_20

    goto :goto_10

    :cond_20
    iget-object v2, p0, Lcom/superwall/sdk/models/paywall/Paywall;->introOfferEligibility:Lcom/superwall/sdk/models/paywall/IntroOfferEligibility;

    .line 143
    sget-object v3, Lcom/superwall/sdk/models/paywall/IntroOfferEligibility;->AUTOMATIC:Lcom/superwall/sdk/models/paywall/IntroOfferEligibility;

    if-eq v2, v3, :cond_21

    .line 40
    :goto_10
    aget-object v0, v0, v1

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object p0, p0, Lcom/superwall/sdk/models/paywall/Paywall;->introOfferEligibility:Lcom/superwall/sdk/models/paywall/IntroOfferEligibility;

    invoke-interface {p1, p2, v1, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_21
    return-void
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/models/paywall/Paywall;->databaseId:Ljava/lang/String;

    return-object v0
.end method

.method public final component10()Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/models/paywall/Paywall;->presentation:Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;

    return-object v0
.end method

.method public final component11()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/models/paywall/Paywall;->backgroundColorHex:Ljava/lang/String;

    return-object v0
.end method

.method public final component12()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/models/paywall/Paywall;->darkBackgroundColorHex:Ljava/lang/String;

    return-object v0
.end method

.method public final component14$superwall_release()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/product/CrossplatformProduct;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/superwall/sdk/models/paywall/Paywall;->_productItemsV3:Ljava/util/List;

    return-object v0
.end method

.method public final component15$superwall_release()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/product/ProductItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/superwall/sdk/models/paywall/Paywall;->_productItems:Ljava/util/List;

    return-object v0
.end method

.method public final component16()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/superwall/sdk/models/paywall/Paywall;->productIds:Ljava/util/List;

    return-object v0
.end method

.method public final component17()Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/models/paywall/Paywall;->responseLoadingInfo:Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;

    return-object v0
.end method

.method public final component18()Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/models/paywall/Paywall;->webviewLoadingInfo:Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;

    return-object v0
.end method

.method public final component19()Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/models/paywall/Paywall;->productsLoadingInfo:Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/models/paywall/Paywall;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public final component20()Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/models/paywall/Paywall;->shimmerLoadingInfo:Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;

    return-object v0
.end method

.method public final component21()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/product/ProductVariable;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/superwall/sdk/models/paywall/Paywall;->productVariables:Ljava/util/List;

    return-object v0
.end method

.method public final component22()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/product/ProductVariable;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/superwall/sdk/models/paywall/Paywall;->swProductVariablesTemplate:Ljava/util/List;

    return-object v0
.end method

.method public final component23()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/models/paywall/Paywall;->paywalljsVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final component24()Z
    .locals 1

    iget-boolean v0, p0, Lcom/superwall/sdk/models/paywall/Paywall;->isFreeTrialAvailable:Z

    return v0
.end method

.method public final component25()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/models/paywall/Paywall;->presentationSourceType:Ljava/lang/String;

    return-object v0
.end method

.method public final component26()Lcom/superwall/sdk/models/config/FeatureGatingBehavior;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/models/paywall/Paywall;->featureGating:Lcom/superwall/sdk/models/config/FeatureGatingBehavior;

    return-object v0
.end method

.method public final component27()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/config/ComputedPropertyRequest;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/superwall/sdk/models/paywall/Paywall;->computedPropertyRequests:Ljava/util/List;

    return-object v0
.end method

.method public final component28()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/paywall/LocalNotification;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/superwall/sdk/models/paywall/Paywall;->localNotifications:Ljava/util/List;

    return-object v0
.end method

.method public final component29()Lcom/superwall/sdk/config/models/OnDeviceCaching;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/models/paywall/Paywall;->onDeviceCache:Lcom/superwall/sdk/config/models/OnDeviceCaching;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/models/paywall/Paywall;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final component30()Lcom/superwall/sdk/models/triggers/Experiment;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/models/paywall/Paywall;->experiment:Lcom/superwall/sdk/models/triggers/Experiment;

    return-object v0
.end method

.method public final component31()Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/models/paywall/Paywall;->closeReason:Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;

    return-object v0
.end method

.method public final component32()Ljava/util/Map;
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

    iget-object v0, p0, Lcom/superwall/sdk/models/paywall/Paywall;->state:Ljava/util/Map;

    return-object v0
.end method

.method public final component33()Lcom/superwall/sdk/models/paywall/PaywallWebviewUrl$Config;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/models/paywall/Paywall;->urlConfig:Lcom/superwall/sdk/models/paywall/PaywallWebviewUrl$Config;

    return-object v0
.end method

.method public final component34()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/models/paywall/Paywall;->cacheKey:Ljava/lang/String;

    return-object v0
.end method

.method public final component35()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/models/paywall/Paywall;->buildId:Ljava/lang/String;

    return-object v0
.end method

.method public final component36()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/config/models/Survey;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/superwall/sdk/models/paywall/Paywall;->surveys:Ljava/util/List;

    return-object v0
.end method

.method public final component37()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/models/paywall/Paywall;->isScrollEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final component38()Lcom/superwall/sdk/models/paywall/Paywall$ToggleMode;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/models/paywall/Paywall;->rerouteBackButton:Lcom/superwall/sdk/models/paywall/Paywall$ToggleMode;

    return-object v0
.end method

.method public final component39()Lcom/superwall/sdk/models/paywall/IntroOfferEligibility;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/models/paywall/Paywall;->introOfferEligibility:Lcom/superwall/sdk/models/paywall/IntroOfferEligibility;

    return-object v0
.end method

.method public final component4-24UBhI0()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/models/paywall/Paywall;->url:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/models/paywall/Paywall;->htmlSubstitutions:Ljava/lang/String;

    return-object v0
.end method

.method public final copy-zhR-ERg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;JLjava/lang/String;Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ZLjava/lang/String;Lcom/superwall/sdk/models/config/FeatureGatingBehavior;Ljava/util/List;Ljava/util/List;Lcom/superwall/sdk/config/models/OnDeviceCaching;Lcom/superwall/sdk/models/triggers/Experiment;Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;Ljava/util/Map;Lcom/superwall/sdk/models/paywall/PaywallWebviewUrl$Config;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Boolean;Lcom/superwall/sdk/models/paywall/Paywall$ToggleMode;Lcom/superwall/sdk/models/paywall/IntroOfferEligibility;)Lcom/superwall/sdk/models/paywall/Paywall;
    .locals 43
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;",
            "J",
            "Ljava/lang/String;",
            "Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/product/ProductItem;",
            ">;",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/product/CrossplatformProduct;",
            ">;",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/product/ProductItem;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;",
            "Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;",
            "Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;",
            "Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/product/ProductVariable;",
            ">;",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/product/ProductVariable;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Lcom/superwall/sdk/models/config/FeatureGatingBehavior;",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/config/ComputedPropertyRequest;",
            ">;",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/paywall/LocalNotification;",
            ">;",
            "Lcom/superwall/sdk/config/models/OnDeviceCaching;",
            "Lcom/superwall/sdk/models/triggers/Experiment;",
            "Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/superwall/sdk/models/paywall/PaywallWebviewUrl$Config;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/config/models/Survey;",
            ">;",
            "Ljava/lang/Boolean;",
            "Lcom/superwall/sdk/models/paywall/Paywall$ToggleMode;",
            "Lcom/superwall/sdk/models/paywall/IntroOfferEligibility;",
            ")",
            "Lcom/superwall/sdk/models/paywall/Paywall;"
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

    const-string v0, "htmlSubstitutions"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "presentationCondition"

    move-object/from16 v11, p10

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "presentation"

    move-object/from16 v12, p11

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backgroundColorHex"

    move-object/from16 v13, p12

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_products"

    move-object/from16 v15, p14

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_productItemsV3"

    move-object/from16 v1, p15

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_productItems"

    move-object/from16 v7, p16

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "productIds"

    move-object/from16 v8, p17

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "responseLoadingInfo"

    move-object/from16 v9, p18

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "webviewLoadingInfo"

    move-object/from16 v10, p19

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "productsLoadingInfo"

    move-object/from16 v14, p20

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shimmerLoadingInfo"

    move-object/from16 v1, p21

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featureGating"

    move-object/from16 v1, p27

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "computedPropertyRequests"

    move-object/from16 v1, p28

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "localNotifications"

    move-object/from16 v1, p29

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onDeviceCache"

    move-object/from16 v1, p30

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "closeReason"

    move-object/from16 v1, p32

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    move-object/from16 v1, p33

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cacheKey"

    move-object/from16 v1, p35

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buildId"

    move-object/from16 v1, p36

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "surveys"

    move-object/from16 v1, p37

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "introOfferEligibility"

    move-object/from16 v1, p40

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/superwall/sdk/models/paywall/Paywall;

    const/16 v42, 0x0

    move-object/from16 v16, p15

    move-object/from16 v22, p21

    move-object/from16 v23, p22

    move-object/from16 v24, p23

    move-object/from16 v25, p24

    move/from16 v26, p25

    move-object/from16 v27, p26

    move-object/from16 v28, p27

    move-object/from16 v29, p28

    move-object/from16 v30, p29

    move-object/from16 v31, p30

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

    move-object/from16 v17, v7

    move-object/from16 v18, v8

    move-object/from16 v19, v9

    move-object/from16 v20, v10

    move-object/from16 v21, v14

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-wide/from16 v9, p8

    move-object/from16 v14, p13

    invoke-direct/range {v1 .. v42}, Lcom/superwall/sdk/models/paywall/Paywall;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;JLjava/lang/String;Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ZLjava/lang/String;Lcom/superwall/sdk/models/config/FeatureGatingBehavior;Ljava/util/List;Ljava/util/List;Lcom/superwall/sdk/config/models/OnDeviceCaching;Lcom/superwall/sdk/models/triggers/Experiment;Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;Ljava/util/Map;Lcom/superwall/sdk/models/paywall/PaywallWebviewUrl$Config;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Boolean;Lcom/superwall/sdk/models/paywall/Paywall$ToggleMode;Lcom/superwall/sdk/models/paywall/IntroOfferEligibility;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/superwall/sdk/models/paywall/Paywall;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/superwall/sdk/models/paywall/Paywall;

    iget-object v1, p0, Lcom/superwall/sdk/models/paywall/Paywall;->databaseId:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/models/paywall/Paywall;->databaseId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/superwall/sdk/models/paywall/Paywall;->identifier:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/models/paywall/Paywall;->identifier:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/superwall/sdk/models/paywall/Paywall;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/models/paywall/Paywall;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/superwall/sdk/models/paywall/Paywall;->url:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/models/paywall/Paywall;->url:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/superwall/sdk/models/paywall/PaywallURL;->equals-impl0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/superwall/sdk/models/paywall/Paywall;->htmlSubstitutions:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/models/paywall/Paywall;->htmlSubstitutions:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/superwall/sdk/models/paywall/Paywall;->presentationStyle:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/models/paywall/Paywall;->presentationStyle:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/superwall/sdk/models/paywall/Paywall;->expandedPresentationStyle:Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;

    iget-object v3, p1, Lcom/superwall/sdk/models/paywall/Paywall;->expandedPresentationStyle:Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-wide v3, p0, Lcom/superwall/sdk/models/paywall/Paywall;->presentationDelay:J

    iget-wide v5, p1, Lcom/superwall/sdk/models/paywall/Paywall;->presentationDelay:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/superwall/sdk/models/paywall/Paywall;->presentationCondition:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/models/paywall/Paywall;->presentationCondition:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/superwall/sdk/models/paywall/Paywall;->presentation:Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;

    iget-object v3, p1, Lcom/superwall/sdk/models/paywall/Paywall;->presentation:Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/superwall/sdk/models/paywall/Paywall;->backgroundColorHex:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/models/paywall/Paywall;->backgroundColorHex:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/superwall/sdk/models/paywall/Paywall;->darkBackgroundColorHex:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/models/paywall/Paywall;->darkBackgroundColorHex:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lcom/superwall/sdk/models/paywall/Paywall;->_products:Ljava/util/List;

    iget-object v3, p1, Lcom/superwall/sdk/models/paywall/Paywall;->_products:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lcom/superwall/sdk/models/paywall/Paywall;->_productItemsV3:Ljava/util/List;

    iget-object v3, p1, Lcom/superwall/sdk/models/paywall/Paywall;->_productItemsV3:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Lcom/superwall/sdk/models/paywall/Paywall;->_productItems:Ljava/util/List;

    iget-object v3, p1, Lcom/superwall/sdk/models/paywall/Paywall;->_productItems:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    :cond_10
    iget-object v1, p0, Lcom/superwall/sdk/models/paywall/Paywall;->productIds:Ljava/util/List;

    iget-object v3, p1, Lcom/superwall/sdk/models/paywall/Paywall;->productIds:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    :cond_11
    iget-object v1, p0, Lcom/superwall/sdk/models/paywall/Paywall;->responseLoadingInfo:Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;

    iget-object v3, p1, Lcom/superwall/sdk/models/paywall/Paywall;->responseLoadingInfo:Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v2

    :cond_12
    iget-object v1, p0, Lcom/superwall/sdk/models/paywall/Paywall;->webviewLoadingInfo:Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;

    iget-object v3, p1, Lcom/superwall/sdk/models/paywall/Paywall;->webviewLoadingInfo:Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lcom/superwall/sdk/models/paywall/Paywall;->productsLoadingInfo:Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;

    iget-object v3, p1, Lcom/superwall/sdk/models/paywall/Paywall;->productsLoadingInfo:Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    return v2

    :cond_14
    iget-object v1, p0, Lcom/superwall/sdk/models/paywall/Paywall;->shimmerLoadingInfo:Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;

    iget-object v3, p1, Lcom/superwall/sdk/models/paywall/Paywall;->shimmerLoadingInfo:Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    return v2

    :cond_15
    iget-object v1, p0, Lcom/superwall/sdk/models/paywall/Paywall;->productVariables:Ljava/util/List;

    iget-object v3, p1, Lcom/superwall/sdk/models/paywall/Paywall;->productVariables:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    return v2

    :cond_16
    iget-object v1, p0, Lcom/superwall/sdk/models/paywall/Paywall;->swProductVariablesTemplate:Ljava/util/List;

    iget-object v3, p1, Lcom/superwall/sdk/models/paywall/Paywall;->swProductVariablesTemplate:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/superwall/sdk/models/paywall/Paywall;->paywalljsVersion:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/models/paywall/Paywall;->paywalljsVersion:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    return v2

    :cond_18
    iget-boolean v1, p0, Lcom/superwall/sdk/models/paywall/Paywall;->isFreeTrialAvailable:Z

    iget-boolean v3, p1, Lcom/superwall/sdk/models/paywall/Paywall;->isFreeTrialAvailable:Z

    if-eq v1, v3, :cond_19

    return v2

    :cond_19
    iget-object v1, p0, Lcom/superwall/sdk/models/paywall/Paywall;->presentationSourceType:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/models/paywall/Paywall;->presentationSourceType:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    return v2

    :cond_1a
    iget-object v1, p0, Lcom/superwall/sdk/models/paywall/Paywall;->featureGating:Lcom/superwall/sdk/models/config/FeatureGatingBehavior;

    iget-object v3, p1, Lcom/superwall/sdk/models/paywall/Paywall;->featureGating:Lcom/superwall/sdk/models/config/FeatureGatingBehavior;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    return v2

    :cond_1b
    iget-object v1, p0, Lcom/superwall/sdk/models/paywall/Paywall;->computedPropertyRequests:Ljava/util/List;

    iget-object v3, p1, Lcom/superwall/sdk/models/paywall/Paywall;->computedPropertyRequests:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    return v2

    :cond_1c
    iget-object v1, p0, Lcom/superwall/sdk/models/paywall/Paywall;->localNotifications:Ljava/util/List;

    iget-object v3, p1, Lcom/superwall/sdk/models/paywall/Paywall;->localNotifications:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    return v2

    :cond_1d
    iget-object v1, p0, Lcom/superwall/sdk/models/paywall/Paywall;->onDeviceCache:Lcom/superwall/sdk/config/models/OnDeviceCaching;

    iget-object v3, p1, Lcom/superwall/sdk/models/paywall/Paywall;->onDeviceCache:Lcom/superwall/sdk/config/models/OnDeviceCaching;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    return v2

    :cond_1e
    iget-object v1, p0, Lcom/superwall/sdk/models/paywall/Paywall;->experiment:Lcom/superwall/sdk/models/triggers/Experiment;

    iget-object v3, p1, Lcom/superwall/sdk/models/paywall/Paywall;->experiment:Lcom/superwall/sdk/models/triggers/Experiment;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    return v2

    :cond_1f
    iget-object v1, p0, Lcom/superwall/sdk/models/paywall/Paywall;->closeReason:Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;

    iget-object v3, p1, Lcom/superwall/sdk/models/paywall/Paywall;->closeReason:Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    return v2

    :cond_20
    iget-object v1, p0, Lcom/superwall/sdk/models/paywall/Paywall;->state:Ljava/util/Map;

    iget-object v3, p1, Lcom/superwall/sdk/models/paywall/Paywall;->state:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    return v2

    :cond_21
    iget-object v1, p0, Lcom/superwall/sdk/models/paywall/Paywall;->urlConfig:Lcom/superwall/sdk/models/paywall/PaywallWebviewUrl$Config;

    iget-object v3, p1, Lcom/superwall/sdk/models/paywall/Paywall;->urlConfig:Lcom/superwall/sdk/models/paywall/PaywallWebviewUrl$Config;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lcom/superwall/sdk/models/paywall/Paywall;->cacheKey:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/models/paywall/Paywall;->cacheKey:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    return v2

    :cond_23
    iget-object v1, p0, Lcom/superwall/sdk/models/paywall/Paywall;->buildId:Ljava/lang/String;

    iget-object v3, p1, Lcom/superwall/sdk/models/paywall/Paywall;->buildId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    return v2

    :cond_24
    iget-object v1, p0, Lcom/superwall/sdk/models/paywall/Paywall;->surveys:Ljava/util/List;

    iget-object v3, p1, Lcom/superwall/sdk/models/paywall/Paywall;->surveys:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    return v2

    :cond_25
    iget-object v1, p0, Lcom/superwall/sdk/models/paywall/Paywall;->isScrollEnabled:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/superwall/sdk/models/paywall/Paywall;->isScrollEnabled:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    return v2

    :cond_26
    iget-object v1, p0, Lcom/superwall/sdk/models/paywall/Paywall;->rerouteBackButton:Lcom/superwall/sdk/models/paywall/Paywall$ToggleMode;

    iget-object v3, p1, Lcom/superwall/sdk/models/paywall/Paywall;->rerouteBackButton:Lcom/superwall/sdk/models/paywall/Paywall$ToggleMode;

    if-eq v1, v3, :cond_27

    return v2

    :cond_27
    iget-object v1, p0, Lcom/superwall/sdk/models/paywall/Paywall;->introOfferEligibility:Lcom/superwall/sdk/models/paywall/IntroOfferEligibility;

    iget-object p1, p1, Lcom/superwall/sdk/models/paywall/Paywall;->introOfferEligibility:Lcom/superwall/sdk/models/paywall/IntroOfferEligibility;

    if-eq v1, p1, :cond_28

    return v2

    :cond_28
    return v0
.end method

.method public final getBackgroundColor()I
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/superwall/sdk/models/paywall/Paywall;->backgroundColor$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public final getBackgroundColorHex()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/superwall/sdk/models/paywall/Paywall;->backgroundColorHex:Ljava/lang/String;

    return-object v0
.end method

.method public final getBuildId()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/superwall/sdk/models/paywall/Paywall;->buildId:Ljava/lang/String;

    return-object v0
.end method

.method public final getCacheKey()Ljava/lang/String;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/superwall/sdk/models/paywall/Paywall;->cacheKey:Ljava/lang/String;

    return-object v0
.end method

.method public final getCloseReason()Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/superwall/sdk/models/paywall/Paywall;->closeReason:Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;

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

    .line 107
    iget-object v0, p0, Lcom/superwall/sdk/models/paywall/Paywall;->computedPropertyRequests:Ljava/util/List;

    return-object v0
.end method

.method public final getDarkBackgroundColor()Ljava/lang/Integer;
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/superwall/sdk/models/paywall/Paywall;->darkBackgroundColor$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public final getDarkBackgroundColorHex()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/superwall/sdk/models/paywall/Paywall;->darkBackgroundColorHex:Ljava/lang/String;

    return-object v0
.end method

.method public final getDatabaseId()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/superwall/sdk/models/paywall/Paywall;->databaseId:Ljava/lang/String;

    return-object v0
.end method

.method public final getExperiment()Lcom/superwall/sdk/models/triggers/Experiment;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/superwall/sdk/models/paywall/Paywall;->experiment:Lcom/superwall/sdk/models/triggers/Experiment;

    return-object v0
.end method

.method public final getFeatureGating()Lcom/superwall/sdk/models/config/FeatureGatingBehavior;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/superwall/sdk/models/paywall/Paywall;->featureGating:Lcom/superwall/sdk/models/config/FeatureGatingBehavior;

    return-object v0
.end method

.method public final getHtmlSubstitutions()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/superwall/sdk/models/paywall/Paywall;->htmlSubstitutions:Ljava/lang/String;

    return-object v0
.end method

.method public final getIdentifier()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/superwall/sdk/models/paywall/Paywall;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public final getInfo(Lcom/superwall/sdk/models/events/EventData;)Lcom/superwall/sdk/paywall/presentation/PaywallInfo;
    .locals 38

    move-object/from16 v0, p0

    .line 243
    iget-object v2, v0, Lcom/superwall/sdk/models/paywall/Paywall;->databaseId:Ljava/lang/String;

    .line 244
    iget-object v3, v0, Lcom/superwall/sdk/models/paywall/Paywall;->identifier:Ljava/lang/String;

    .line 245
    iget-object v4, v0, Lcom/superwall/sdk/models/paywall/Paywall;->name:Ljava/lang/String;

    .line 246
    iget-object v5, v0, Lcom/superwall/sdk/models/paywall/Paywall;->url:Ljava/lang/String;

    .line 247
    invoke-virtual {v0}, Lcom/superwall/sdk/models/paywall/Paywall;->getProducts()Ljava/util/List;

    move-result-object v6

    .line 248
    iget-object v7, v0, Lcom/superwall/sdk/models/paywall/Paywall;->productIds:Ljava/util/List;

    .line 250
    iget-object v1, v0, Lcom/superwall/sdk/models/paywall/Paywall;->responseLoadingInfo:Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;

    invoke-virtual {v1}, Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;->getStartAt()Ljava/util/Date;

    move-result-object v9

    .line 251
    iget-object v1, v0, Lcom/superwall/sdk/models/paywall/Paywall;->responseLoadingInfo:Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;

    invoke-virtual {v1}, Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;->getEndAt()Ljava/util/Date;

    move-result-object v10

    .line 252
    iget-object v1, v0, Lcom/superwall/sdk/models/paywall/Paywall;->responseLoadingInfo:Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;

    invoke-virtual {v1}, Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;->getFailAt()Ljava/util/Date;

    move-result-object v11

    .line 253
    iget-object v1, v0, Lcom/superwall/sdk/models/paywall/Paywall;->webviewLoadingInfo:Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;

    invoke-virtual {v1}, Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;->getStartAt()Ljava/util/Date;

    move-result-object v12

    .line 254
    iget-object v1, v0, Lcom/superwall/sdk/models/paywall/Paywall;->webviewLoadingInfo:Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;

    invoke-virtual {v1}, Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;->getEndAt()Ljava/util/Date;

    move-result-object v13

    .line 255
    iget-object v1, v0, Lcom/superwall/sdk/models/paywall/Paywall;->webviewLoadingInfo:Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;

    invoke-virtual {v1}, Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;->getFailAt()Ljava/util/Date;

    move-result-object v14

    .line 256
    iget-object v1, v0, Lcom/superwall/sdk/models/paywall/Paywall;->productsLoadingInfo:Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;

    invoke-virtual {v1}, Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;->getStartAt()Ljava/util/Date;

    move-result-object v15

    .line 257
    iget-object v1, v0, Lcom/superwall/sdk/models/paywall/Paywall;->productsLoadingInfo:Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;

    invoke-virtual {v1}, Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;->getFailAt()Ljava/util/Date;

    move-result-object v16

    .line 258
    iget-object v1, v0, Lcom/superwall/sdk/models/paywall/Paywall;->productsLoadingInfo:Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;

    invoke-virtual {v1}, Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;->getEndAt()Ljava/util/Date;

    move-result-object v17

    .line 259
    iget-object v1, v0, Lcom/superwall/sdk/models/paywall/Paywall;->shimmerLoadingInfo:Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;

    invoke-virtual {v1}, Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;->getStartAt()Ljava/util/Date;

    move-result-object v18

    .line 260
    iget-object v1, v0, Lcom/superwall/sdk/models/paywall/Paywall;->shimmerLoadingInfo:Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;

    invoke-virtual {v1}, Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;->getEndAt()Ljava/util/Date;

    move-result-object v19

    .line 261
    iget-object v1, v0, Lcom/superwall/sdk/models/paywall/Paywall;->experiment:Lcom/superwall/sdk/models/triggers/Experiment;

    .line 262
    iget-object v8, v0, Lcom/superwall/sdk/models/paywall/Paywall;->paywalljsVersion:Ljava/lang/String;

    move-object/from16 v20, v1

    .line 263
    iget-boolean v1, v0, Lcom/superwall/sdk/models/paywall/Paywall;->isFreeTrialAvailable:Z

    move/from16 v22, v1

    .line 264
    iget-object v1, v0, Lcom/superwall/sdk/models/paywall/Paywall;->presentationSourceType:Ljava/lang/String;

    move-object/from16 v23, v1

    .line 265
    iget-object v1, v0, Lcom/superwall/sdk/models/paywall/Paywall;->featureGating:Lcom/superwall/sdk/models/config/FeatureGatingBehavior;

    move-object/from16 v24, v1

    .line 266
    iget-object v1, v0, Lcom/superwall/sdk/models/paywall/Paywall;->closeReason:Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;

    move-object/from16 v27, v1

    .line 267
    iget-object v1, v0, Lcom/superwall/sdk/models/paywall/Paywall;->localNotifications:Ljava/util/List;

    move-object/from16 v25, v1

    .line 268
    iget-object v1, v0, Lcom/superwall/sdk/models/paywall/Paywall;->computedPropertyRequests:Ljava/util/List;

    move-object/from16 v26, v1

    .line 269
    iget-object v1, v0, Lcom/superwall/sdk/models/paywall/Paywall;->surveys:Ljava/util/List;

    move-object/from16 v28, v1

    .line 270
    iget-object v1, v0, Lcom/superwall/sdk/models/paywall/Paywall;->presentation:Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;

    move-object/from16 v29, v1

    .line 271
    iget-object v1, v0, Lcom/superwall/sdk/models/paywall/Paywall;->cacheKey:Ljava/lang/String;

    move-object/from16 v31, v1

    .line 272
    iget-object v1, v0, Lcom/superwall/sdk/models/paywall/Paywall;->buildId:Ljava/lang/String;

    move-object/from16 v30, v1

    .line 273
    iget-object v1, v0, Lcom/superwall/sdk/models/paywall/Paywall;->isScrollEnabled:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move/from16 v32, v1

    .line 274
    iget-object v1, v0, Lcom/superwall/sdk/models/paywall/Paywall;->state:Ljava/util/Map;

    move-object/from16 v33, v1

    .line 242
    new-instance v1, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    const/16 v36, 0x1

    const/16 v37, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    move-object/from16 v21, v8

    move-object/from16 v8, p1

    invoke-direct/range {v1 .. v37}, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/superwall/sdk/models/events/EventData;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Lcom/superwall/sdk/models/triggers/Experiment;Ljava/lang/String;ZLjava/lang/String;Lcom/superwall/sdk/models/config/FeatureGatingBehavior;Ljava/util/List;Ljava/util/List;Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;Ljava/util/List;Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Lcom/superwall/sdk/models/customer/CustomerInfo;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method

.method public final getIntroOfferEligibility()Lcom/superwall/sdk/models/paywall/IntroOfferEligibility;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/superwall/sdk/models/paywall/Paywall;->introOfferEligibility:Lcom/superwall/sdk/models/paywall/IntroOfferEligibility;

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

    .line 109
    iget-object v0, p0, Lcom/superwall/sdk/models/paywall/Paywall;->localNotifications:Ljava/util/List;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/superwall/sdk/models/paywall/Paywall;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getOnDeviceCache()Lcom/superwall/sdk/config/models/OnDeviceCaching;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/superwall/sdk/models/paywall/Paywall;->onDeviceCache:Lcom/superwall/sdk/config/models/OnDeviceCaching;

    return-object v0
.end method

.method public final getPaddleProducts()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/product/CrossplatformProduct;",
            ">;"
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lcom/superwall/sdk/models/paywall/Paywall;->_productItemsV3:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 353
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 354
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/superwall/sdk/models/product/CrossplatformProduct;

    .line 169
    invoke-virtual {v3}, Lcom/superwall/sdk/models/product/CrossplatformProduct;->getStoreProduct()Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct;

    move-result-object v3

    instance-of v3, v3, Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Paddle;

    if-eqz v3, :cond_0

    .line 354
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 355
    :cond_1
    check-cast v1, Ljava/util/List;

    return-object v1
.end method

.method public final getPaywalljsVersion()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/superwall/sdk/models/paywall/Paywall;->paywalljsVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final getPlayStoreProducts()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/product/CrossplatformProduct;",
            ">;"
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lcom/superwall/sdk/models/paywall/Paywall;->_productItemsV3:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/superwall/sdk/models/paywall/Paywall;->getProductItems()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 148
    invoke-virtual {p0}, Lcom/superwall/sdk/models/paywall/Paywall;->getProductItems()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 340
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 341
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/superwall/sdk/models/product/ProductItem;

    .line 148
    invoke-virtual {v3}, Lcom/superwall/sdk/models/product/ProductItem;->getType()Lcom/superwall/sdk/models/product/ProductItem$StoreProductType;

    move-result-object v3

    instance-of v3, v3, Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$PlayStore;

    if-eqz v3, :cond_0

    .line 341
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 342
    :cond_1
    check-cast v1, Ljava/util/List;

    .line 340
    check-cast v1, Ljava/lang/Iterable;

    .line 343
    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 344
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 345
    check-cast v2, Lcom/superwall/sdk/models/product/ProductItem;

    .line 149
    invoke-virtual {v2}, Lcom/superwall/sdk/models/product/ProductItem;->getType()Lcom/superwall/sdk/models/product/ProductItem$StoreProductType;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type com.superwall.sdk.models.product.ProductItem.StoreProductType.PlayStore"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$PlayStore;

    .line 150
    new-instance v4, Lcom/superwall/sdk/models/product/CrossplatformProduct;

    .line 151
    invoke-virtual {v2}, Lcom/superwall/sdk/models/product/ProductItem;->getCompositeId()Ljava/lang/String;

    move-result-object v5

    .line 152
    new-instance v6, Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$PlayStore;

    .line 153
    invoke-virtual {v3}, Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$PlayStore;->getProduct()Lcom/superwall/sdk/models/product/PlayStoreProduct;

    move-result-object v7

    invoke-virtual {v7}, Lcom/superwall/sdk/models/product/PlayStoreProduct;->getProductIdentifier()Ljava/lang/String;

    move-result-object v7

    .line 154
    invoke-virtual {v3}, Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$PlayStore;->getProduct()Lcom/superwall/sdk/models/product/PlayStoreProduct;

    move-result-object v8

    invoke-virtual {v8}, Lcom/superwall/sdk/models/product/PlayStoreProduct;->getBasePlanIdentifier()Ljava/lang/String;

    move-result-object v8

    .line 155
    invoke-virtual {v3}, Lcom/superwall/sdk/models/product/ProductItem$StoreProductType$PlayStore;->getProduct()Lcom/superwall/sdk/models/product/PlayStoreProduct;

    move-result-object v3

    invoke-virtual {v3}, Lcom/superwall/sdk/models/product/PlayStoreProduct;->getOffer()Lcom/superwall/sdk/models/product/Offer;

    move-result-object v3

    .line 152
    invoke-direct {v6, v7, v8, v3}, Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$PlayStore;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/models/product/Offer;)V

    check-cast v6, Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct;

    .line 157
    invoke-virtual {v2}, Lcom/superwall/sdk/models/product/ProductItem;->getEntitlements()Ljava/util/Set;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v3

    .line 158
    invoke-virtual {v2}, Lcom/superwall/sdk/models/product/ProductItem;->getName()Ljava/lang/String;

    move-result-object v2

    .line 150
    invoke-direct {v4, v5, v6, v3, v2}, Lcom/superwall/sdk/models/product/CrossplatformProduct;-><init>(Ljava/lang/String;Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct;Ljava/util/List;Ljava/lang/String;)V

    .line 345
    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 346
    :cond_2
    check-cast v0, Ljava/util/List;

    return-object v0

    .line 162
    :cond_3
    iget-object v0, p0, Lcom/superwall/sdk/models/paywall/Paywall;->_productItemsV3:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 347
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 348
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/superwall/sdk/models/product/CrossplatformProduct;

    .line 162
    invoke-virtual {v3}, Lcom/superwall/sdk/models/product/CrossplatformProduct;->getStoreProduct()Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct;

    move-result-object v3

    instance-of v3, v3, Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$PlayStore;

    if-eqz v3, :cond_4

    .line 348
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 349
    :cond_5
    check-cast v1, Ljava/util/List;

    return-object v1
.end method

.method public final getPresentation()Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/superwall/sdk/models/paywall/Paywall;->presentation:Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;

    return-object v0
.end method

.method public final getPresentationSourceType()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/superwall/sdk/models/paywall/Paywall;->presentationSourceType:Ljava/lang/String;

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

    .line 86
    iget-object v0, p0, Lcom/superwall/sdk/models/paywall/Paywall;->productIds:Ljava/util/List;

    return-object v0
.end method

.method public final getProductItems()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/product/ProductItem;",
            ">;"
        }
    .end annotation

    .line 174
    iget-object v0, p0, Lcom/superwall/sdk/models/paywall/Paywall;->_productItems:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 175
    iget-object v0, p0, Lcom/superwall/sdk/models/paywall/Paywall;->_productItemsV3:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 356
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 357
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 358
    check-cast v2, Lcom/superwall/sdk/models/product/CrossplatformProduct;

    .line 177
    sget-object v3, Lcom/superwall/sdk/models/product/CrossplatformProduct;->Companion:Lcom/superwall/sdk/models/product/CrossplatformProduct$Companion;

    invoke-virtual {v3, v2}, Lcom/superwall/sdk/models/product/CrossplatformProduct$Companion;->toProductItem(Lcom/superwall/sdk/models/product/CrossplatformProduct;)Lcom/superwall/sdk/models/product/ProductItem;

    move-result-object v2

    .line 358
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 359
    :cond_0
    move-object v0, v1

    check-cast v0, Ljava/util/List;

    .line 174
    :cond_1
    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final getProductVariables()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/product/ProductVariable;",
            ">;"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/superwall/sdk/models/paywall/Paywall;->productVariables:Ljava/util/List;

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

    .line 189
    iget-object v0, p0, Lcom/superwall/sdk/models/paywall/Paywall;->_products:Ljava/util/List;

    return-object v0
.end method

.method public final getProductsLoadingInfo()Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/superwall/sdk/models/paywall/Paywall;->productsLoadingInfo:Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;

    return-object v0
.end method

.method public final getRerouteBackButton()Lcom/superwall/sdk/models/paywall/Paywall$ToggleMode;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/superwall/sdk/models/paywall/Paywall;->rerouteBackButton:Lcom/superwall/sdk/models/paywall/Paywall$ToggleMode;

    return-object v0
.end method

.method public final getResponseLoadingInfo()Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/superwall/sdk/models/paywall/Paywall;->responseLoadingInfo:Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;

    return-object v0
.end method

.method public final getShimmerLoadingInfo()Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/superwall/sdk/models/paywall/Paywall;->shimmerLoadingInfo:Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;

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

    .line 123
    iget-object v0, p0, Lcom/superwall/sdk/models/paywall/Paywall;->state:Ljava/util/Map;

    return-object v0
.end method

.method public final getStripeProducts()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/product/CrossplatformProduct;",
            ">;"
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lcom/superwall/sdk/models/paywall/Paywall;->_productItemsV3:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 350
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 351
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/superwall/sdk/models/product/CrossplatformProduct;

    .line 166
    invoke-virtual {v3}, Lcom/superwall/sdk/models/product/CrossplatformProduct;->getStoreProduct()Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct;

    move-result-object v3

    instance-of v3, v3, Lcom/superwall/sdk/models/product/CrossplatformProduct$StoreProduct$Stripe;

    if-eqz v3, :cond_0

    .line 351
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 352
    :cond_1
    check-cast v1, Ljava/util/List;

    return-object v1
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

    .line 136
    iget-object v0, p0, Lcom/superwall/sdk/models/paywall/Paywall;->surveys:Ljava/util/List;

    return-object v0
.end method

.method public final getSwProductVariablesTemplate()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/product/ProductVariable;",
            ">;"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/superwall/sdk/models/paywall/Paywall;->swProductVariablesTemplate:Ljava/util/List;

    return-object v0
.end method

.method public final getUrl-24UBhI0()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/superwall/sdk/models/paywall/Paywall;->url:Ljava/lang/String;

    return-object v0
.end method

.method public final getUrlConfig()Lcom/superwall/sdk/models/paywall/PaywallWebviewUrl$Config;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/superwall/sdk/models/paywall/Paywall;->urlConfig:Lcom/superwall/sdk/models/paywall/PaywallWebviewUrl$Config;

    return-object v0
.end method

.method public final getWebviewLoadingInfo()Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/superwall/sdk/models/paywall/Paywall;->webviewLoadingInfo:Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;

    return-object v0
.end method

.method public final get_productItems$superwall_release()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/product/ProductItem;",
            ">;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/superwall/sdk/models/paywall/Paywall;->_productItems:Ljava/util/List;

    return-object v0
.end method

.method public final get_productItemsV3$superwall_release()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/product/CrossplatformProduct;",
            ">;"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/superwall/sdk/models/paywall/Paywall;->_productItemsV3:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    iget-object v0, p0, Lcom/superwall/sdk/models/paywall/Paywall;->databaseId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/models/paywall/Paywall;->identifier:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/models/paywall/Paywall;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/models/paywall/Paywall;->url:Ljava/lang/String;

    invoke-static {v1}, Lcom/superwall/sdk/models/paywall/PaywallURL;->hashCode-impl(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/models/paywall/Paywall;->htmlSubstitutions:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/models/paywall/Paywall;->presentationStyle:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/models/paywall/Paywall;->expandedPresentationStyle:Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v3, p0, Lcom/superwall/sdk/models/paywall/Paywall;->presentationDelay:J

    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/models/paywall/Paywall;->presentationCondition:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/models/paywall/Paywall;->presentation:Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;

    invoke-virtual {v1}, Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/models/paywall/Paywall;->backgroundColorHex:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/models/paywall/Paywall;->darkBackgroundColorHex:Ljava/lang/String;

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/models/paywall/Paywall;->_products:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/models/paywall/Paywall;->_productItemsV3:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/models/paywall/Paywall;->_productItems:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/models/paywall/Paywall;->productIds:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/models/paywall/Paywall;->responseLoadingInfo:Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;

    invoke-virtual {v1}, Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/models/paywall/Paywall;->webviewLoadingInfo:Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;

    invoke-virtual {v1}, Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/models/paywall/Paywall;->productsLoadingInfo:Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;

    invoke-virtual {v1}, Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/models/paywall/Paywall;->shimmerLoadingInfo:Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;

    invoke-virtual {v1}, Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/models/paywall/Paywall;->productVariables:Ljava/util/List;

    if-nez v1, :cond_3

    move v1, v2

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/models/paywall/Paywall;->swProductVariablesTemplate:Ljava/util/List;

    if-nez v1, :cond_4

    move v1, v2

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/models/paywall/Paywall;->paywalljsVersion:Ljava/lang/String;

    if-nez v1, :cond_5

    move v1, v2

    goto :goto_5

    :cond_5
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/superwall/sdk/models/paywall/Paywall;->isFreeTrialAvailable:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/models/paywall/Paywall;->presentationSourceType:Ljava/lang/String;

    if-nez v1, :cond_6

    move v1, v2

    goto :goto_6

    :cond_6
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/models/paywall/Paywall;->featureGating:Lcom/superwall/sdk/models/config/FeatureGatingBehavior;

    invoke-virtual {v1}, Lcom/superwall/sdk/models/config/FeatureGatingBehavior;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/models/paywall/Paywall;->computedPropertyRequests:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/models/paywall/Paywall;->localNotifications:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/models/paywall/Paywall;->onDeviceCache:Lcom/superwall/sdk/config/models/OnDeviceCaching;

    invoke-virtual {v1}, Lcom/superwall/sdk/config/models/OnDeviceCaching;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/models/paywall/Paywall;->experiment:Lcom/superwall/sdk/models/triggers/Experiment;

    if-nez v1, :cond_7

    move v1, v2

    goto :goto_7

    :cond_7
    invoke-virtual {v1}, Lcom/superwall/sdk/models/triggers/Experiment;->hashCode()I

    move-result v1

    :goto_7
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/models/paywall/Paywall;->closeReason:Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;

    invoke-virtual {v1}, Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/models/paywall/Paywall;->state:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/models/paywall/Paywall;->urlConfig:Lcom/superwall/sdk/models/paywall/PaywallWebviewUrl$Config;

    if-nez v1, :cond_8

    move v1, v2

    goto :goto_8

    :cond_8
    invoke-virtual {v1}, Lcom/superwall/sdk/models/paywall/PaywallWebviewUrl$Config;->hashCode()I

    move-result v1

    :goto_8
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/models/paywall/Paywall;->cacheKey:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/models/paywall/Paywall;->buildId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/models/paywall/Paywall;->surveys:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/models/paywall/Paywall;->isScrollEnabled:Ljava/lang/Boolean;

    if-nez v1, :cond_9

    move v1, v2

    goto :goto_9

    :cond_9
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_9
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/models/paywall/Paywall;->rerouteBackButton:Lcom/superwall/sdk/models/paywall/Paywall$ToggleMode;

    if-nez v1, :cond_a

    goto :goto_a

    :cond_a
    invoke-virtual {v1}, Lcom/superwall/sdk/models/paywall/Paywall$ToggleMode;->hashCode()I

    move-result v2

    :goto_a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/models/paywall/Paywall;->introOfferEligibility:Lcom/superwall/sdk/models/paywall/IntroOfferEligibility;

    invoke-virtual {v1}, Lcom/superwall/sdk/models/paywall/IntroOfferEligibility;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final isFreeTrialAvailable()Z
    .locals 1

    .line 102
    iget-boolean v0, p0, Lcom/superwall/sdk/models/paywall/Paywall;->isFreeTrialAvailable:Z

    return v0
.end method

.method public final isScrollEnabled()Ljava/lang/Boolean;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/superwall/sdk/models/paywall/Paywall;->isScrollEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final setCloseReason(Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    iput-object p1, p0, Lcom/superwall/sdk/models/paywall/Paywall;->closeReason:Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;

    return-void
.end method

.method public final setComputedPropertyRequests(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/config/ComputedPropertyRequest;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    iput-object p1, p0, Lcom/superwall/sdk/models/paywall/Paywall;->computedPropertyRequests:Ljava/util/List;

    return-void
.end method

.method public final setExperiment(Lcom/superwall/sdk/models/triggers/Experiment;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/superwall/sdk/models/paywall/Paywall;->experiment:Lcom/superwall/sdk/models/triggers/Experiment;

    return-void
.end method

.method public final setFeatureGating(Lcom/superwall/sdk/models/config/FeatureGatingBehavior;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    iput-object p1, p0, Lcom/superwall/sdk/models/paywall/Paywall;->featureGating:Lcom/superwall/sdk/models/config/FeatureGatingBehavior;

    return-void
.end method

.method public final setFreeTrialAvailable(Z)V
    .locals 0

    .line 102
    iput-boolean p1, p0, Lcom/superwall/sdk/models/paywall/Paywall;->isFreeTrialAvailable:Z

    return-void
.end method

.method public final setIdentifier(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iput-object p1, p0, Lcom/superwall/sdk/models/paywall/Paywall;->identifier:Ljava/lang/String;

    return-void
.end method

.method public final setLocalNotifications(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/paywall/LocalNotification;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    iput-object p1, p0, Lcom/superwall/sdk/models/paywall/Paywall;->localNotifications:Ljava/util/List;

    return-void
.end method

.method public final setOnDeviceCache(Lcom/superwall/sdk/config/models/OnDeviceCaching;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    iput-object p1, p0, Lcom/superwall/sdk/models/paywall/Paywall;->onDeviceCache:Lcom/superwall/sdk/config/models/OnDeviceCaching;

    return-void
.end method

.method public final setPaywalljsVersion(Ljava/lang/String;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/superwall/sdk/models/paywall/Paywall;->paywalljsVersion:Ljava/lang/String;

    return-void
.end method

.method public final setPresentation(Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    iput-object p1, p0, Lcom/superwall/sdk/models/paywall/Paywall;->presentation:Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;

    return-void
.end method

.method public final setPresentationSourceType(Ljava/lang/String;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/superwall/sdk/models/paywall/Paywall;->presentationSourceType:Ljava/lang/String;

    return-void
.end method

.method public final setProductIds(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    iput-object p1, p0, Lcom/superwall/sdk/models/paywall/Paywall;->productIds:Ljava/util/List;

    return-void
.end method

.method public final setProductItems(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/product/ProductItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    iput-object p1, p0, Lcom/superwall/sdk/models/paywall/Paywall;->_productItems:Ljava/util/List;

    .line 183
    iput-object p1, p0, Lcom/superwall/sdk/models/paywall/Paywall;->_products:Ljava/util/List;

    .line 184
    check-cast p1, Ljava/lang/Iterable;

    .line 360
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 361
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 362
    check-cast v1, Lcom/superwall/sdk/models/product/ProductItem;

    .line 184
    invoke-virtual {v1}, Lcom/superwall/sdk/models/product/ProductItem;->getFullProductId()Ljava/lang/String;

    move-result-object v1

    .line 362
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 363
    :cond_0
    check-cast v0, Ljava/util/List;

    .line 184
    iput-object v0, p0, Lcom/superwall/sdk/models/paywall/Paywall;->productIds:Ljava/util/List;

    return-void
.end method

.method public final setProductVariables(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/product/ProductVariable;",
            ">;)V"
        }
    .end annotation

    .line 99
    iput-object p1, p0, Lcom/superwall/sdk/models/paywall/Paywall;->productVariables:Ljava/util/List;

    return-void
.end method

.method public final setProductsLoadingInfo(Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    iput-object p1, p0, Lcom/superwall/sdk/models/paywall/Paywall;->productsLoadingInfo:Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;

    return-void
.end method

.method public final setResponseLoadingInfo(Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    iput-object p1, p0, Lcom/superwall/sdk/models/paywall/Paywall;->responseLoadingInfo:Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;

    return-void
.end method

.method public final setShimmerLoadingInfo(Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    iput-object p1, p0, Lcom/superwall/sdk/models/paywall/Paywall;->shimmerLoadingInfo:Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;

    return-void
.end method

.method public final setState(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    iput-object p1, p0, Lcom/superwall/sdk/models/paywall/Paywall;->state:Ljava/util/Map;

    return-void
.end method

.method public final setSurveys(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/config/models/Survey;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    iput-object p1, p0, Lcom/superwall/sdk/models/paywall/Paywall;->surveys:Ljava/util/List;

    return-void
.end method

.method public final setSwProductVariablesTemplate(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/product/ProductVariable;",
            ">;)V"
        }
    .end annotation

    .line 100
    iput-object p1, p0, Lcom/superwall/sdk/models/paywall/Paywall;->swProductVariablesTemplate:Ljava/util/List;

    return-void
.end method

.method public final setWebviewLoadingInfo(Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    iput-object p1, p0, Lcom/superwall/sdk/models/paywall/Paywall;->webviewLoadingInfo:Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;

    return-void
.end method

.method public final set_productItems$superwall_release(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/product/ProductItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    iput-object p1, p0, Lcom/superwall/sdk/models/paywall/Paywall;->_productItems:Ljava/util/List;

    return-void
.end method

.method public final set_productItemsV3$superwall_release(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/models/product/CrossplatformProduct;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    iput-object p1, p0, Lcom/superwall/sdk/models/paywall/Paywall;->_productItemsV3:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 42

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/superwall/sdk/models/paywall/Paywall;->databaseId:Ljava/lang/String;

    iget-object v2, v0, Lcom/superwall/sdk/models/paywall/Paywall;->identifier:Ljava/lang/String;

    iget-object v3, v0, Lcom/superwall/sdk/models/paywall/Paywall;->name:Ljava/lang/String;

    iget-object v4, v0, Lcom/superwall/sdk/models/paywall/Paywall;->url:Ljava/lang/String;

    invoke-static {v4}, Lcom/superwall/sdk/models/paywall/PaywallURL;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/superwall/sdk/models/paywall/Paywall;->htmlSubstitutions:Ljava/lang/String;

    iget-object v6, v0, Lcom/superwall/sdk/models/paywall/Paywall;->presentationStyle:Ljava/lang/String;

    iget-object v7, v0, Lcom/superwall/sdk/models/paywall/Paywall;->expandedPresentationStyle:Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;

    iget-wide v8, v0, Lcom/superwall/sdk/models/paywall/Paywall;->presentationDelay:J

    iget-object v10, v0, Lcom/superwall/sdk/models/paywall/Paywall;->presentationCondition:Ljava/lang/String;

    iget-object v11, v0, Lcom/superwall/sdk/models/paywall/Paywall;->presentation:Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;

    iget-object v12, v0, Lcom/superwall/sdk/models/paywall/Paywall;->backgroundColorHex:Ljava/lang/String;

    iget-object v13, v0, Lcom/superwall/sdk/models/paywall/Paywall;->darkBackgroundColorHex:Ljava/lang/String;

    iget-object v14, v0, Lcom/superwall/sdk/models/paywall/Paywall;->_products:Ljava/util/List;

    iget-object v15, v0, Lcom/superwall/sdk/models/paywall/Paywall;->_productItemsV3:Ljava/util/List;

    move-object/from16 v16, v15

    iget-object v15, v0, Lcom/superwall/sdk/models/paywall/Paywall;->_productItems:Ljava/util/List;

    move-object/from16 v17, v15

    iget-object v15, v0, Lcom/superwall/sdk/models/paywall/Paywall;->productIds:Ljava/util/List;

    move-object/from16 v18, v15

    iget-object v15, v0, Lcom/superwall/sdk/models/paywall/Paywall;->responseLoadingInfo:Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;

    move-object/from16 v19, v15

    iget-object v15, v0, Lcom/superwall/sdk/models/paywall/Paywall;->webviewLoadingInfo:Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;

    move-object/from16 v20, v15

    iget-object v15, v0, Lcom/superwall/sdk/models/paywall/Paywall;->productsLoadingInfo:Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;

    move-object/from16 v21, v15

    iget-object v15, v0, Lcom/superwall/sdk/models/paywall/Paywall;->shimmerLoadingInfo:Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;

    move-object/from16 v22, v15

    iget-object v15, v0, Lcom/superwall/sdk/models/paywall/Paywall;->productVariables:Ljava/util/List;

    move-object/from16 v23, v15

    iget-object v15, v0, Lcom/superwall/sdk/models/paywall/Paywall;->swProductVariablesTemplate:Ljava/util/List;

    move-object/from16 v24, v15

    iget-object v15, v0, Lcom/superwall/sdk/models/paywall/Paywall;->paywalljsVersion:Ljava/lang/String;

    move-object/from16 v25, v15

    iget-boolean v15, v0, Lcom/superwall/sdk/models/paywall/Paywall;->isFreeTrialAvailable:Z

    move/from16 v26, v15

    iget-object v15, v0, Lcom/superwall/sdk/models/paywall/Paywall;->presentationSourceType:Ljava/lang/String;

    move-object/from16 v27, v15

    iget-object v15, v0, Lcom/superwall/sdk/models/paywall/Paywall;->featureGating:Lcom/superwall/sdk/models/config/FeatureGatingBehavior;

    move-object/from16 v28, v15

    iget-object v15, v0, Lcom/superwall/sdk/models/paywall/Paywall;->computedPropertyRequests:Ljava/util/List;

    move-object/from16 v29, v15

    iget-object v15, v0, Lcom/superwall/sdk/models/paywall/Paywall;->localNotifications:Ljava/util/List;

    move-object/from16 v30, v15

    iget-object v15, v0, Lcom/superwall/sdk/models/paywall/Paywall;->onDeviceCache:Lcom/superwall/sdk/config/models/OnDeviceCaching;

    move-object/from16 v31, v15

    iget-object v15, v0, Lcom/superwall/sdk/models/paywall/Paywall;->experiment:Lcom/superwall/sdk/models/triggers/Experiment;

    move-object/from16 v32, v15

    iget-object v15, v0, Lcom/superwall/sdk/models/paywall/Paywall;->closeReason:Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;

    move-object/from16 v33, v15

    iget-object v15, v0, Lcom/superwall/sdk/models/paywall/Paywall;->state:Ljava/util/Map;

    move-object/from16 v34, v15

    iget-object v15, v0, Lcom/superwall/sdk/models/paywall/Paywall;->urlConfig:Lcom/superwall/sdk/models/paywall/PaywallWebviewUrl$Config;

    move-object/from16 v35, v15

    iget-object v15, v0, Lcom/superwall/sdk/models/paywall/Paywall;->cacheKey:Ljava/lang/String;

    move-object/from16 v36, v15

    iget-object v15, v0, Lcom/superwall/sdk/models/paywall/Paywall;->buildId:Ljava/lang/String;

    move-object/from16 v37, v15

    iget-object v15, v0, Lcom/superwall/sdk/models/paywall/Paywall;->surveys:Ljava/util/List;

    move-object/from16 v38, v15

    iget-object v15, v0, Lcom/superwall/sdk/models/paywall/Paywall;->isScrollEnabled:Ljava/lang/Boolean;

    move-object/from16 v39, v15

    iget-object v15, v0, Lcom/superwall/sdk/models/paywall/Paywall;->rerouteBackButton:Lcom/superwall/sdk/models/paywall/Paywall$ToggleMode;

    move-object/from16 v40, v15

    iget-object v15, v0, Lcom/superwall/sdk/models/paywall/Paywall;->introOfferEligibility:Lcom/superwall/sdk/models/paywall/IntroOfferEligibility;

    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v41, v15

    const-string v15, "Paywall(databaseId="

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

    const-string v1, ", htmlSubstitutions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", presentationStyle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", expandedPresentationStyle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", presentationDelay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", presentationCondition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", presentation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", backgroundColorHex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", darkBackgroundColorHex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", _products="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", _productItemsV3="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", _productItems="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", productIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", responseLoadingInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", webviewLoadingInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", productsLoadingInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", shimmerLoadingInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", productVariables="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", swProductVariablesTemplate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", paywalljsVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isFreeTrialAvailable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", presentationSourceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", featureGating="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", computedPropertyRequests="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", localNotifications="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", onDeviceCache="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", experiment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", closeReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", urlConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cacheKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", buildId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", surveys="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isScrollEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rerouteBackButton="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", introOfferEligibility="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final update(Lcom/superwall/sdk/models/paywall/Paywall;)V
    .locals 1

    const-string v0, "paywall"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
    invoke-virtual {p1}, Lcom/superwall/sdk/models/paywall/Paywall;->getProductItems()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/superwall/sdk/models/paywall/Paywall;->setProductItems(Ljava/util/List;)V

    .line 233
    iget-object v0, p1, Lcom/superwall/sdk/models/paywall/Paywall;->productVariables:Ljava/util/List;

    iput-object v0, p0, Lcom/superwall/sdk/models/paywall/Paywall;->productVariables:Ljava/util/List;

    .line 234
    iget-object v0, p1, Lcom/superwall/sdk/models/paywall/Paywall;->swProductVariablesTemplate:Ljava/util/List;

    iput-object v0, p0, Lcom/superwall/sdk/models/paywall/Paywall;->swProductVariablesTemplate:Ljava/util/List;

    .line 235
    iget-boolean v0, p1, Lcom/superwall/sdk/models/paywall/Paywall;->isFreeTrialAvailable:Z

    iput-boolean v0, p0, Lcom/superwall/sdk/models/paywall/Paywall;->isFreeTrialAvailable:Z

    .line 236
    iget-object v0, p1, Lcom/superwall/sdk/models/paywall/Paywall;->productsLoadingInfo:Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;

    iput-object v0, p0, Lcom/superwall/sdk/models/paywall/Paywall;->productsLoadingInfo:Lcom/superwall/sdk/models/paywall/Paywall$LoadingInfo;

    .line 237
    iget-object v0, p1, Lcom/superwall/sdk/models/paywall/Paywall;->presentationSourceType:Ljava/lang/String;

    iput-object v0, p0, Lcom/superwall/sdk/models/paywall/Paywall;->presentationSourceType:Ljava/lang/String;

    .line 238
    iget-object p1, p1, Lcom/superwall/sdk/models/paywall/Paywall;->experiment:Lcom/superwall/sdk/models/triggers/Experiment;

    iput-object p1, p0, Lcom/superwall/sdk/models/paywall/Paywall;->experiment:Lcom/superwall/sdk/models/triggers/Experiment;

    return-void
.end method
