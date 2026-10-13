.class public final Lexpo/modules/kotlin/types/JSTypeConverterHelperKt;
.super Ljava/lang/Object;
.source "JSTypeConverterHelper.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nJSTypeConverterHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JSTypeConverterHelper.kt\nexpo/modules/kotlin/types/JSTypeConverterHelperKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 KAnnotatedElements.kt\nkotlin/reflect/full/KAnnotatedElements\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,276:1\n1563#2:277\n1634#2,2:278\n295#2,2:281\n1636#2:284\n1563#2:285\n1634#2,2:286\n295#2,2:289\n1636#2:291\n1563#2:292\n1634#2,2:293\n295#2,2:296\n1636#2:298\n1563#2:303\n1634#2,3:304\n20#3:280\n20#3:288\n20#3:295\n1#4:283\n126#5:299\n153#5,3:300\n*S KotlinDebug\n*F\n+ 1 JSTypeConverterHelper.kt\nexpo/modules/kotlin/types/JSTypeConverterHelperKt\n*L\n28#1:277\n28#1:278,2\n29#1:281,2\n28#1:284\n49#1:285\n49#1:286,2\n50#1:289,2\n49#1:291\n81#1:292\n81#1:293,2\n82#1:296,2\n81#1:298\n139#1:303\n139#1:304,3\n29#1:280\n50#1:288\n82#1:295\n122#1:299\n122#1:300,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000p\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u001e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0015\n\u0002\u0010\u0016\n\u0002\u0010\u0014\n\u0002\u0010\u0013\n\u0002\u0010\u0018\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u001a\u0018\u0010\u0000\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0001*\u00020\u0004\u001a\u001c\u0010\u0000\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0001*\u0006\u0012\u0002\u0008\u00030\u0005\u001a\u0012\u0010\u0006\u001a\u00020\u0007*\u00020\u00042\u0006\u0010\u0008\u001a\u00020\t\u001a\u0018\u0010\u0000\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0001*\u00020\n\u001a\u0012\u0010\u0006\u001a\u00020\u0007*\u00020\n2\u0006\u0010\u0008\u001a\u00020\t\u001a0\u0010\u0000\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0001\"\u0004\u0008\u0000\u0010\u000b\"\u0004\u0008\u0001\u0010\u000c*\u000e\u0012\u0004\u0012\u0002H\u000b\u0012\u0004\u0012\u0002H\u000c0\u0001\u001a*\u0010\u0006\u001a\u00020\u0007\"\u0004\u0008\u0000\u0010\u000b\"\u0004\u0008\u0001\u0010\u000c*\u000e\u0012\u0004\u0012\u0002H\u000b\u0012\u0004\u0012\u0002H\u000c0\u00012\u0006\u0010\u0008\u001a\u00020\t\u001a\u001e\u0010\u0000\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\r\"\u0004\u0008\u0000\u0010\u000e*\u0008\u0012\u0004\u0012\u0002H\u000e0\r\u001a\u001e\u0010\u0006\u001a\u00020\u000f\"\u0004\u0008\u0000\u0010\u000e*\u0008\u0012\u0004\u0012\u0002H\u000e0\r2\u0006\u0010\u0008\u001a\u00020\t\u001a#\u0010\u0006\u001a\u00020\u000f\"\u0004\u0008\u0000\u0010\u000e*\u0008\u0012\u0004\u0012\u0002H\u000e0\u00102\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\u0011\u001a\u0012\u0010\u0006\u001a\u00020\u000f*\u00020\u00122\u0006\u0010\u0008\u001a\u00020\t\u001a\u0012\u0010\u0006\u001a\u00020\u000f*\u00020\u00132\u0006\u0010\u0008\u001a\u00020\t\u001a\u0012\u0010\u0006\u001a\u00020\u000f*\u00020\u00142\u0006\u0010\u0008\u001a\u00020\t\u001a\u0012\u0010\u0006\u001a\u00020\u000f*\u00020\u00152\u0006\u0010\u0008\u001a\u00020\t\u001a\u0012\u0010\u0006\u001a\u00020\u000f*\u00020\u00162\u0006\u0010\u0008\u001a\u00020\t\u001a\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0003*\u0006\u0012\u0002\u0008\u00030\u0017\u001a\n\u0010\u0006\u001a\u00020\u0002*\u00020\u0018\u001a\n\u0010\u0006\u001a\u00020\u0002*\u00020\u0019\u001a\n\u0010\u0006\u001a\u00020\u0002*\u00020\u001a\u001a\n\u0010\u0006\u001a\u00020\u0002*\u00020\u001b\u001a\u001a\u0010\u0006\u001a\u00020\u000f*\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u001c2\u0006\u0010\u0008\u001a\u00020\t\u001a\u001e\u0010\u001d\u001a\u00020\u001e*\u00020\u00072\u0006\u0010\u001f\u001a\u00020\u00022\u0008\u0010 \u001a\u0004\u0018\u00010\u0003H\u0000\u001a\u0016\u0010\u001d\u001a\u00020\u001e*\u00020\u000f2\u0008\u0010 \u001a\u0004\u0018\u00010\u0003H\u0000\u00a8\u0006!"
    }
    d2 = {
        "toJSValueExperimental",
        "",
        "",
        "",
        "Lexpo/modules/kotlin/records/Record;",
        "Lexpo/modules/kotlin/records/formatters/FormattedRecord;",
        "toJSValue",
        "Lcom/facebook/react/bridge/WritableMap;",
        "containerProvider",
        "Lexpo/modules/kotlin/types/JSTypeConverterProvider$ContainerProvider;",
        "Landroid/os/Bundle;",
        "K",
        "V",
        "",
        "T",
        "Lcom/facebook/react/bridge/WritableArray;",
        "",
        "([Ljava/lang/Object;Lexpo/modules/kotlin/types/JSTypeConverterProvider$ContainerProvider;)Lcom/facebook/react/bridge/WritableArray;",
        "",
        "",
        "",
        "",
        "",
        "",
        "Ljava/net/URL;",
        "Landroid/net/Uri;",
        "Ljava/net/URI;",
        "Ljava/io/File;",
        "Lkotlin/Pair;",
        "putGeneric",
        "",
        "key",
        "value",
        "expo-modules-core_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final putGeneric(Lcom/facebook/react/bridge/WritableArray;Ljava/lang/Object;)V
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_8

    .line 265
    instance-of v0, p1, Lkotlin/Unit;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 266
    :cond_0
    instance-of v0, p1, Lcom/facebook/react/bridge/ReadableArray;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/facebook/react/bridge/ReadableArray;

    invoke-interface {p0, p1}, Lcom/facebook/react/bridge/WritableArray;->pushArray(Lcom/facebook/react/bridge/ReadableArray;)V

    return-void

    .line 267
    :cond_1
    instance-of v0, p1, Lcom/facebook/react/bridge/ReadableMap;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {p0, p1}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V

    return-void

    .line 268
    :cond_2
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_3

    check-cast p1, Ljava/lang/String;

    invoke-interface {p0, p1}, Lcom/facebook/react/bridge/WritableArray;->pushString(Ljava/lang/String;)V

    return-void

    .line 269
    :cond_3
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_4

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/facebook/react/bridge/WritableArray;->pushInt(I)V

    return-void

    .line 270
    :cond_4
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_5

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Lcom/facebook/react/bridge/WritableArray;->pushLong(J)V

    return-void

    .line 271
    :cond_5
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_6

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Lcom/facebook/react/bridge/WritableArray;->pushDouble(D)V

    return-void

    .line 272
    :cond_6
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_7

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {p0, p1}, Lcom/facebook/react/bridge/WritableArray;->pushBoolean(Z)V

    return-void

    .line 273
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Could not put \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\' to WritableArray"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 265
    :cond_8
    :goto_0
    invoke-interface {p0}, Lcom/facebook/react/bridge/WritableArray;->pushNull()V

    return-void
.end method

.method public static final putGeneric(Lcom/facebook/react/bridge/WritableMap;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_8

    .line 251
    instance-of v0, p2, Lkotlin/Unit;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 252
    :cond_0
    instance-of v0, p2, Lcom/facebook/react/bridge/ReadableArray;

    if-eqz v0, :cond_1

    check-cast p2, Lcom/facebook/react/bridge/ReadableArray;

    invoke-interface {p0, p1, p2}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    return-void

    .line 253
    :cond_1
    instance-of v0, p2, Lcom/facebook/react/bridge/ReadableMap;

    if-eqz v0, :cond_2

    check-cast p2, Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {p0, p1, p2}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    return-void

    .line 254
    :cond_2
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_3

    check-cast p2, Ljava/lang/String;

    invoke-interface {p0, p1, p2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 255
    :cond_3
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_4

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    return-void

    .line 256
    :cond_4
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_5

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-interface {p0, p1, v0, v1}, Lcom/facebook/react/bridge/WritableMap;->putLong(Ljava/lang/String;J)V

    return-void

    .line 257
    :cond_5
    instance-of v0, p2, Ljava/lang/Number;

    if-eqz v0, :cond_6

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-interface {p0, p1, v0, v1}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    return-void

    .line 258
    :cond_6
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_7

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    return-void

    .line 259
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Could not put \'"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\' to WritableMap"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 251
    :cond_8
    :goto_0
    invoke-interface {p0, p1}, Lcom/facebook/react/bridge/WritableMap;->putNull(Ljava/lang/String;)V

    return-void
.end method

.method public static final toJSValue(Ljava/util/Collection;Lexpo/modules/kotlin/types/JSTypeConverterProvider$ContainerProvider;)Lcom/facebook/react/bridge/WritableArray;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+TT;>;",
            "Lexpo/modules/kotlin/types/JSTypeConverterProvider$ContainerProvider;",
            ")",
            "Lcom/facebook/react/bridge/WritableArray;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "containerProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    invoke-interface {p1}, Lexpo/modules/kotlin/types/JSTypeConverterProvider$ContainerProvider;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v0

    .line 145
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 146
    sget-object v2, Lexpo/modules/kotlin/types/JSTypeConverterProvider;->INSTANCE:Lexpo/modules/kotlin/types/JSTypeConverterProvider;

    invoke-virtual {v2, v1, p1}, Lexpo/modules/kotlin/types/JSTypeConverterProvider;->legacyConvertToJSValue(Ljava/lang/Object;Lexpo/modules/kotlin/types/JSTypeConverterProvider$ContainerProvider;)Ljava/lang/Object;

    move-result-object v1

    .line 147
    invoke-static {v0, v1}, Lexpo/modules/kotlin/types/JSTypeConverterHelperKt;->putGeneric(Lcom/facebook/react/bridge/WritableArray;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static final toJSValue(Lkotlin/Pair;Lexpo/modules/kotlin/types/JSTypeConverterProvider$ContainerProvider;)Lcom/facebook/react/bridge/WritableArray;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Pair<",
            "**>;",
            "Lexpo/modules/kotlin/types/JSTypeConverterProvider$ContainerProvider;",
            ")",
            "Lcom/facebook/react/bridge/WritableArray;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "containerProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 241
    invoke-interface {p1}, Lexpo/modules/kotlin/types/JSTypeConverterProvider$ContainerProvider;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v0

    .line 242
    sget-object v1, Lexpo/modules/kotlin/types/JSTypeConverterProvider;->INSTANCE:Lexpo/modules/kotlin/types/JSTypeConverterProvider;

    invoke-virtual {p0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lexpo/modules/kotlin/types/JSTypeConverterProvider;->legacyConvertToJSValue(Ljava/lang/Object;Lexpo/modules/kotlin/types/JSTypeConverterProvider$ContainerProvider;)Ljava/lang/Object;

    move-result-object v1

    .line 243
    sget-object v2, Lexpo/modules/kotlin/types/JSTypeConverterProvider;->INSTANCE:Lexpo/modules/kotlin/types/JSTypeConverterProvider;

    invoke-virtual {p0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v2, p0, p1}, Lexpo/modules/kotlin/types/JSTypeConverterProvider;->legacyConvertToJSValue(Ljava/lang/Object;Lexpo/modules/kotlin/types/JSTypeConverterProvider$ContainerProvider;)Ljava/lang/Object;

    move-result-object p0

    .line 244
    invoke-static {v0, v1}, Lexpo/modules/kotlin/types/JSTypeConverterHelperKt;->putGeneric(Lcom/facebook/react/bridge/WritableArray;Ljava/lang/Object;)V

    .line 245
    invoke-static {v0, p0}, Lexpo/modules/kotlin/types/JSTypeConverterHelperKt;->putGeneric(Lcom/facebook/react/bridge/WritableArray;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static final toJSValue([DLexpo/modules/kotlin/types/JSTypeConverterProvider$ContainerProvider;)Lcom/facebook/react/bridge/WritableArray;
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "containerProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    invoke-interface {p1}, Lexpo/modules/kotlin/types/JSTypeConverterProvider$ContainerProvider;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object p1

    .line 190
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-wide v2, p0, v1

    .line 191
    invoke-interface {p1, v2, v3}, Lcom/facebook/react/bridge/WritableArray;->pushDouble(D)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public static final toJSValue([FLexpo/modules/kotlin/types/JSTypeConverterProvider$ContainerProvider;)Lcom/facebook/react/bridge/WritableArray;
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "containerProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    invoke-interface {p1}, Lexpo/modules/kotlin/types/JSTypeConverterProvider$ContainerProvider;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object p1

    .line 182
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p0, v1

    float-to-double v2, v2

    .line 183
    invoke-interface {p1, v2, v3}, Lcom/facebook/react/bridge/WritableArray;->pushDouble(D)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public static final toJSValue([ILexpo/modules/kotlin/types/JSTypeConverterProvider$ContainerProvider;)Lcom/facebook/react/bridge/WritableArray;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "containerProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    invoke-interface {p1}, Lexpo/modules/kotlin/types/JSTypeConverterProvider$ContainerProvider;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object p1

    .line 166
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p0, v1

    .line 167
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/WritableArray;->pushInt(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public static final toJSValue([JLexpo/modules/kotlin/types/JSTypeConverterProvider$ContainerProvider;)Lcom/facebook/react/bridge/WritableArray;
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "containerProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    invoke-interface {p1}, Lexpo/modules/kotlin/types/JSTypeConverterProvider$ContainerProvider;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object p1

    .line 174
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-wide v2, p0, v1

    .line 175
    invoke-interface {p1, v2, v3}, Lcom/facebook/react/bridge/WritableArray;->pushLong(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public static final toJSValue([Ljava/lang/Object;Lexpo/modules/kotlin/types/JSTypeConverterProvider$ContainerProvider;)Lcom/facebook/react/bridge/WritableArray;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Lexpo/modules/kotlin/types/JSTypeConverterProvider$ContainerProvider;",
            ")",
            "Lcom/facebook/react/bridge/WritableArray;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "containerProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    invoke-interface {p1}, Lexpo/modules/kotlin/types/JSTypeConverterProvider$ContainerProvider;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v0

    .line 156
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 157
    sget-object v4, Lexpo/modules/kotlin/types/JSTypeConverterProvider;->INSTANCE:Lexpo/modules/kotlin/types/JSTypeConverterProvider;

    invoke-virtual {v4, v3, p1}, Lexpo/modules/kotlin/types/JSTypeConverterProvider;->legacyConvertToJSValue(Ljava/lang/Object;Lexpo/modules/kotlin/types/JSTypeConverterProvider$ContainerProvider;)Ljava/lang/Object;

    move-result-object v3

    .line 158
    invoke-static {v0, v3}, Lexpo/modules/kotlin/types/JSTypeConverterHelperKt;->putGeneric(Lcom/facebook/react/bridge/WritableArray;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static final toJSValue([ZLexpo/modules/kotlin/types/JSTypeConverterProvider$ContainerProvider;)Lcom/facebook/react/bridge/WritableArray;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "containerProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    invoke-interface {p1}, Lexpo/modules/kotlin/types/JSTypeConverterProvider$ContainerProvider;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object p1

    .line 198
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-boolean v2, p0, v1

    .line 199
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/WritableArray;->pushBoolean(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public static final toJSValue(Landroid/os/Bundle;Lexpo/modules/kotlin/types/JSTypeConverterProvider$ContainerProvider;)Lcom/facebook/react/bridge/WritableMap;
    .locals 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "containerProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    invoke-interface {p1}, Lexpo/modules/kotlin/types/JSTypeConverterProvider$ContainerProvider;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 111
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 113
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 114
    sget-object v4, Lexpo/modules/kotlin/types/JSTypeConverterProvider;->INSTANCE:Lexpo/modules/kotlin/types/JSTypeConverterProvider;

    invoke-virtual {v4, v3, p1}, Lexpo/modules/kotlin/types/JSTypeConverterProvider;->legacyConvertToJSValue(Ljava/lang/Object;Lexpo/modules/kotlin/types/JSTypeConverterProvider$ContainerProvider;)Ljava/lang/Object;

    move-result-object v3

    .line 115
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v0, v2, v3}, Lexpo/modules/kotlin/types/JSTypeConverterHelperKt;->putGeneric(Lcom/facebook/react/bridge/WritableMap;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static final toJSValue(Lexpo/modules/kotlin/records/Record;Lexpo/modules/kotlin/types/JSTypeConverterProvider$ContainerProvider;)Lcom/facebook/react/bridge/WritableMap;
    .locals 8

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "containerProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-interface {p1}, Lexpo/modules/kotlin/types/JSTypeConverterProvider$ContainerProvider;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 79
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 80
    invoke-static {v1}, Lkotlin/jvm/JvmClassMappingKt;->getKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 81
    invoke-static {v1}, Lkotlin/reflect/full/KClasses;->getMemberProperties(Lkotlin/reflect/KClass;)Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 292
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .line 293
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 294
    check-cast v3, Lkotlin/reflect/KProperty1;

    .line 82
    move-object v4, v3

    check-cast v4, Lkotlin/reflect/KAnnotatedElement;

    .line 295
    invoke-interface {v4}, Lkotlin/reflect/KAnnotatedElement;->getAnnotations()Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    .line 296
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Ljava/lang/annotation/Annotation;

    .line 295
    instance-of v7, v7, Lexpo/modules/kotlin/records/Field;

    if-eqz v7, :cond_0

    goto :goto_1

    :cond_1
    move-object v5, v6

    .line 297
    :goto_1
    check-cast v5, Lexpo/modules/kotlin/records/Field;

    check-cast v5, Ljava/lang/annotation/Annotation;

    .line 82
    check-cast v5, Lexpo/modules/kotlin/records/Field;

    if-nez v5, :cond_2

    goto :goto_2

    .line 83
    :cond_2
    invoke-interface {v5}, Lexpo/modules/kotlin/records/Field;->key()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    move-object v6, v4

    :cond_3
    if-nez v6, :cond_4

    invoke-interface {v3}, Lkotlin/reflect/KProperty1;->getName()Ljava/lang/String;

    move-result-object v6

    .line 85
    :cond_4
    move-object v4, v3

    check-cast v4, Lkotlin/reflect/KCallable;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lkotlin/reflect/jvm/KCallablesJvm;->setAccessible(Lkotlin/reflect/KCallable;Z)V

    .line 87
    invoke-interface {v3, p0}, Lkotlin/reflect/KProperty1;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 88
    sget-object v4, Lexpo/modules/kotlin/types/JSTypeConverterProvider;->INSTANCE:Lexpo/modules/kotlin/types/JSTypeConverterProvider;

    invoke-virtual {v4, v3, p1}, Lexpo/modules/kotlin/types/JSTypeConverterProvider;->legacyConvertToJSValue(Ljava/lang/Object;Lexpo/modules/kotlin/types/JSTypeConverterProvider$ContainerProvider;)Ljava/lang/Object;

    move-result-object v3

    .line 89
    invoke-static {v0, v6, v3}, Lexpo/modules/kotlin/types/JSTypeConverterHelperKt;->putGeneric(Lcom/facebook/react/bridge/WritableMap;Ljava/lang/String;Ljava/lang/Object;)V

    .line 90
    :goto_2
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 294
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 298
    :cond_5
    check-cast v2, Ljava/util/List;

    return-object v0
.end method

.method public static final toJSValue(Ljava/util/Map;Lexpo/modules/kotlin/types/JSTypeConverterProvider$ContainerProvider;)Lcom/facebook/react/bridge/WritableMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;+TV;>;",
            "Lexpo/modules/kotlin/types/JSTypeConverterProvider$ContainerProvider;",
            ")",
            "Lcom/facebook/react/bridge/WritableMap;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "containerProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    invoke-interface {p1}, Lexpo/modules/kotlin/types/JSTypeConverterProvider$ContainerProvider;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 130
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 131
    sget-object v3, Lexpo/modules/kotlin/types/JSTypeConverterProvider;->INSTANCE:Lexpo/modules/kotlin/types/JSTypeConverterProvider;

    invoke-virtual {v3, v1, p1}, Lexpo/modules/kotlin/types/JSTypeConverterProvider;->legacyConvertToJSValue(Ljava/lang/Object;Lexpo/modules/kotlin/types/JSTypeConverterProvider$ContainerProvider;)Ljava/lang/Object;

    move-result-object v1

    .line 132
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lexpo/modules/kotlin/types/JSTypeConverterHelperKt;->putGeneric(Lcom/facebook/react/bridge/WritableMap;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static final toJSValue(Ljava/lang/Enum;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-static {v0}, Lkotlin/reflect/full/KClasses;->getPrimaryConstructor(Lkotlin/reflect/KClass;)Lkotlin/reflect/KFunction;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 209
    invoke-interface {v0}, Lkotlin/reflect/KFunction;->getParameters()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 210
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 211
    :cond_0
    invoke-interface {v0}, Lkotlin/reflect/KFunction;->getParameters()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 212
    invoke-interface {v0}, Lkotlin/reflect/KFunction;->getParameters()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/KParameter;

    invoke-interface {v0}, Lkotlin/reflect/KParameter;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 215
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-static {v1}, Lkotlin/reflect/full/KClasses;->getDeclaredMemberProperties(Lkotlin/reflect/KClass;)Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 216
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lkotlin/reflect/KProperty1;

    invoke-interface {v3}, Lkotlin/reflect/KProperty1;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 215
    :goto_0
    const-string v0, "null cannot be cast to non-null type kotlin.reflect.KProperty1<kotlin.Enum<*>, *>"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lkotlin/reflect/KProperty1;

    .line 218
    invoke-interface {v2, p0}, Lkotlin/reflect/KProperty1;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 221
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Enum \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "\' cannot be used as return type (incompatible with JS)"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot convert enum without the primary constructor to js value"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final toJSValue(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "toString(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final toJSValue(Ljava/io/File;)Ljava/lang/String;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 237
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "getAbsolutePath(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final toJSValue(Ljava/net/URI;)Ljava/lang/String;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 233
    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "toString(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final toJSValue(Ljava/net/URL;)Ljava/lang/String;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    invoke-virtual {p0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "toString(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final toJSValueExperimental(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+TT;>;)",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    check-cast p0, Ljava/lang/Iterable;

    .line 303
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 304
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 139
    sget-object v2, Lexpo/modules/kotlin/types/JSTypeConverterProvider;->INSTANCE:Lexpo/modules/kotlin/types/JSTypeConverterProvider;

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static/range {v2 .. v7}, Lexpo/modules/kotlin/types/JSTypeConverterProvider;->convertToJSValue$default(Lexpo/modules/kotlin/types/JSTypeConverterProvider;Ljava/lang/Object;Lexpo/modules/kotlin/types/JSTypeConverterProvider$ContainerProvider;ZILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 305
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 306
    :cond_0
    check-cast v0, Ljava/util/List;

    .line 303
    check-cast v0, Ljava/util/Collection;

    return-object v0
.end method

.method public static final toJSValueExperimental(Landroid/os/Bundle;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    .line 98
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 100
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 101
    sget-object v3, Lexpo/modules/kotlin/types/JSTypeConverterProvider;->INSTANCE:Lexpo/modules/kotlin/types/JSTypeConverterProvider;

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static/range {v3 .. v8}, Lexpo/modules/kotlin/types/JSTypeConverterProvider;->convertToJSValue$default(Lexpo/modules/kotlin/types/JSTypeConverterProvider;Ljava/lang/Object;Lexpo/modules/kotlin/types/JSTypeConverterProvider$ContainerProvider;ZILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 102
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static final toJSValueExperimental(Lexpo/modules/kotlin/records/Record;)Ljava/util/Map;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/kotlin/records/Record;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 27
    invoke-static {v1}, Lkotlin/jvm/JvmClassMappingKt;->getKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 28
    invoke-static {v1}, Lkotlin/reflect/full/KClasses;->getMemberProperties(Lkotlin/reflect/KClass;)Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 277
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .line 278
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 279
    check-cast v3, Lkotlin/reflect/KProperty1;

    .line 29
    move-object v4, v3

    check-cast v4, Lkotlin/reflect/KAnnotatedElement;

    .line 280
    invoke-interface {v4}, Lkotlin/reflect/KAnnotatedElement;->getAnnotations()Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    .line 281
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Ljava/lang/annotation/Annotation;

    .line 280
    instance-of v7, v7, Lexpo/modules/kotlin/records/Field;

    if-eqz v7, :cond_0

    goto :goto_1

    :cond_1
    move-object v5, v6

    .line 282
    :goto_1
    check-cast v5, Lexpo/modules/kotlin/records/Field;

    check-cast v5, Ljava/lang/annotation/Annotation;

    .line 29
    check-cast v5, Lexpo/modules/kotlin/records/Field;

    if-nez v5, :cond_2

    goto :goto_2

    .line 30
    :cond_2
    invoke-interface {v5}, Lexpo/modules/kotlin/records/Field;->key()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    move-object v6, v4

    :cond_3
    if-nez v6, :cond_4

    invoke-interface {v3}, Lkotlin/reflect/KProperty1;->getName()Ljava/lang/String;

    move-result-object v6

    .line 32
    :cond_4
    move-object v4, v3

    check-cast v4, Lkotlin/reflect/KCallable;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lkotlin/reflect/jvm/KCallablesJvm;->setAccessible(Lkotlin/reflect/KCallable;Z)V

    .line 34
    invoke-interface {v3, p0}, Lkotlin/reflect/KProperty1;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 35
    sget-object v7, Lexpo/modules/kotlin/types/JSTypeConverterProvider;->INSTANCE:Lexpo/modules/kotlin/types/JSTypeConverterProvider;

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-static/range {v7 .. v12}, Lexpo/modules/kotlin/types/JSTypeConverterProvider;->convertToJSValue$default(Lexpo/modules/kotlin/types/JSTypeConverterProvider;Ljava/lang/Object;Lexpo/modules/kotlin/types/JSTypeConverterProvider$ContainerProvider;ZILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 36
    invoke-interface {v0, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    :goto_2
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 279
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 284
    :cond_5
    check-cast v2, Ljava/util/List;

    return-object v0
.end method

.method public static final toJSValueExperimental(Lexpo/modules/kotlin/records/formatters/FormattedRecord;)Ljava/util/Map;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/kotlin/records/formatters/FormattedRecord<",
            "*>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    .line 45
    invoke-virtual {p0}, Lexpo/modules/kotlin/records/formatters/FormattedRecord;->getRecord$expo_modules_core_release()Lexpo/modules/kotlin/records/Record;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 47
    invoke-static {v1}, Lkotlin/jvm/JvmClassMappingKt;->getKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 48
    invoke-static {v1}, Lkotlin/reflect/full/KClasses;->getMemberProperties(Lkotlin/reflect/KClass;)Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 285
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .line 286
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 287
    check-cast v3, Lkotlin/reflect/KProperty1;

    .line 50
    move-object v4, v3

    check-cast v4, Lkotlin/reflect/KAnnotatedElement;

    .line 288
    invoke-interface {v4}, Lkotlin/reflect/KAnnotatedElement;->getAnnotations()Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    .line 289
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Ljava/lang/annotation/Annotation;

    .line 288
    instance-of v7, v7, Lexpo/modules/kotlin/records/Field;

    if-eqz v7, :cond_0

    goto :goto_1

    :cond_1
    move-object v5, v6

    .line 290
    :goto_1
    check-cast v5, Lexpo/modules/kotlin/records/Field;

    check-cast v5, Ljava/lang/annotation/Annotation;

    .line 50
    check-cast v5, Lexpo/modules/kotlin/records/Field;

    if-nez v5, :cond_2

    goto :goto_4

    .line 51
    :cond_2
    invoke-interface {v5}, Lexpo/modules/kotlin/records/Field;->key()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    move-object v6, v4

    :cond_3
    if-nez v6, :cond_4

    invoke-interface {v3}, Lkotlin/reflect/KProperty1;->getName()Ljava/lang/String;

    move-result-object v6

    .line 53
    :cond_4
    move-object v4, v3

    check-cast v4, Lkotlin/reflect/KCallable;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lkotlin/reflect/jvm/KCallablesJvm;->setAccessible(Lkotlin/reflect/KCallable;Z)V

    .line 55
    invoke-virtual {p0}, Lexpo/modules/kotlin/records/formatters/FormattedRecord;->getFormatter$expo_modules_core_release()Lexpo/modules/kotlin/records/formatters/Formatter;

    move-result-object v4

    invoke-virtual {v4, v3}, Lexpo/modules/kotlin/records/formatters/Formatter;->getAction$expo_modules_core_release(Lkotlin/reflect/KProperty1;)Lkotlin/jvm/functions/Function2;

    move-result-object v4

    .line 57
    invoke-virtual {p0}, Lexpo/modules/kotlin/records/formatters/FormattedRecord;->getRecord$expo_modules_core_release()Lexpo/modules/kotlin/records/Record;

    move-result-object v5

    invoke-interface {v3, v5}, Lkotlin/reflect/KProperty1;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v4, :cond_6

    .line 58
    invoke-virtual {p0}, Lexpo/modules/kotlin/records/formatters/FormattedRecord;->getRecord$expo_modules_core_release()Lexpo/modules/kotlin/records/Record;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_5

    goto :goto_2

    :cond_5
    move-object v3, v4

    .line 60
    :cond_6
    :goto_2
    nop

    instance-of v4, v3, Lexpo/modules/kotlin/records/formatters/ValueOrSkip;

    if-eqz v4, :cond_9

    .line 61
    move-object v4, v3

    check-cast v4, Lexpo/modules/kotlin/records/formatters/ValueOrSkip;

    .line 62
    instance-of v5, v4, Lexpo/modules/kotlin/records/formatters/ValueOrSkip$Value;

    if-eqz v5, :cond_7

    check-cast v3, Lexpo/modules/kotlin/records/formatters/ValueOrSkip$Value;

    invoke-virtual {v3}, Lexpo/modules/kotlin/records/formatters/ValueOrSkip$Value;->getValue()Ljava/lang/Object;

    move-result-object v3

    goto :goto_3

    .line 63
    :cond_7
    sget-object v3, Lexpo/modules/kotlin/records/formatters/ValueOrSkip$Skip;->INSTANCE:Lexpo/modules/kotlin/records/formatters/ValueOrSkip$Skip;

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_4

    .line 61
    :cond_8
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_9
    :goto_3
    move-object v8, v3

    .line 69
    sget-object v7, Lexpo/modules/kotlin/types/JSTypeConverterProvider;->INSTANCE:Lexpo/modules/kotlin/types/JSTypeConverterProvider;

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-static/range {v7 .. v12}, Lexpo/modules/kotlin/types/JSTypeConverterProvider;->convertToJSValue$default(Lexpo/modules/kotlin/types/JSTypeConverterProvider;Ljava/lang/Object;Lexpo/modules/kotlin/types/JSTypeConverterProvider$ContainerProvider;ZILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 70
    invoke-interface {v0, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    :goto_4
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 287
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 291
    :cond_a
    check-cast v2, Ljava/util/List;

    return-object v0
.end method

.method public static final toJSValueExperimental(Ljava/util/Map;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;+TV;>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 299
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 300
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 301
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 123
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lexpo/modules/kotlin/types/JSTypeConverterProvider;->INSTANCE:Lexpo/modules/kotlin/types/JSTypeConverterProvider;

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static/range {v3 .. v8}, Lexpo/modules/kotlin/types/JSTypeConverterProvider;->convertToJSValue$default(Lexpo/modules/kotlin/types/JSTypeConverterProvider;Ljava/lang/Object;Lexpo/modules/kotlin/types/JSTypeConverterProvider$ContainerProvider;ZILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    .line 301
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 302
    :cond_0
    check-cast v0, Ljava/util/List;

    .line 299
    check-cast v0, Ljava/lang/Iterable;

    .line 124
    invoke-static {v0}, Lkotlin/collections/MapsKt;->toMap(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method
