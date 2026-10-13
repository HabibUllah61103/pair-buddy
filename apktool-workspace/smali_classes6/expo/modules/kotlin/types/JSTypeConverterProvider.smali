.class public final Lexpo/modules/kotlin/types/JSTypeConverterProvider;
.super Ljava/lang/Object;
.source "JSTypeConverterProvider.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/kotlin/types/JSTypeConverterProvider$ContainerProvider;,
        Lexpo/modules/kotlin/types/JSTypeConverterProvider$DefaultContainerProvider;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008\u00c7\u0002\u0018\u00002\u00020\u0001:\u0002\u000b\u000cB\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u00012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007J&\u0010\u0008\u001a\u0004\u0018\u00010\u00012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u00a8\u0006\r"
    }
    d2 = {
        "Lexpo/modules/kotlin/types/JSTypeConverterProvider;",
        "",
        "<init>",
        "()V",
        "legacyConvertToJSValue",
        "value",
        "containerProvider",
        "Lexpo/modules/kotlin/types/JSTypeConverterProvider$ContainerProvider;",
        "convertToJSValue",
        "useExperimentalConverter",
        "",
        "ContainerProvider",
        "DefaultContainerProvider",
        "expo-modules-core_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I

.field public static final INSTANCE:Lexpo/modules/kotlin/types/JSTypeConverterProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lexpo/modules/kotlin/types/JSTypeConverterProvider;

    invoke-direct {v0}, Lexpo/modules/kotlin/types/JSTypeConverterProvider;-><init>()V

    sput-object v0, Lexpo/modules/kotlin/types/JSTypeConverterProvider;->INSTANCE:Lexpo/modules/kotlin/types/JSTypeConverterProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic convertToJSValue$default(Lexpo/modules/kotlin/types/JSTypeConverterProvider;Ljava/lang/Object;Lexpo/modules/kotlin/types/JSTypeConverterProvider$ContainerProvider;ZILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 65
    sget-object p2, Lexpo/modules/kotlin/types/JSTypeConverterProvider$DefaultContainerProvider;->INSTANCE:Lexpo/modules/kotlin/types/JSTypeConverterProvider$DefaultContainerProvider;

    check-cast p2, Lexpo/modules/kotlin/types/JSTypeConverterProvider$ContainerProvider;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 63
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lexpo/modules/kotlin/types/JSTypeConverterProvider;->convertToJSValue(Ljava/lang/Object;Lexpo/modules/kotlin/types/JSTypeConverterProvider$ContainerProvider;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic legacyConvertToJSValue$default(Lexpo/modules/kotlin/types/JSTypeConverterProvider;Ljava/lang/Object;Lexpo/modules/kotlin/types/JSTypeConverterProvider$ContainerProvider;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 35
    sget-object p2, Lexpo/modules/kotlin/types/JSTypeConverterProvider$DefaultContainerProvider;->INSTANCE:Lexpo/modules/kotlin/types/JSTypeConverterProvider$DefaultContainerProvider;

    check-cast p2, Lexpo/modules/kotlin/types/JSTypeConverterProvider$ContainerProvider;

    :cond_0
    invoke-virtual {p0, p1, p2}, Lexpo/modules/kotlin/types/JSTypeConverterProvider;->legacyConvertToJSValue(Ljava/lang/Object;Lexpo/modules/kotlin/types/JSTypeConverterProvider$ContainerProvider;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final convertToJSValue(Ljava/lang/Object;Lexpo/modules/kotlin/types/JSTypeConverterProvider$ContainerProvider;Z)Ljava/lang/Object;
    .locals 1

    const-string v0, "containerProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_15

    .line 69
    instance-of v0, p1, Lkotlin/Unit;

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 70
    :cond_0
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/os/Bundle;

    invoke-static {p1, p2}, Lexpo/modules/kotlin/types/JSTypeConverterHelperKt;->toJSValue(Landroid/os/Bundle;Lexpo/modules/kotlin/types/JSTypeConverterProvider$ContainerProvider;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    return-object p1

    .line 71
    :cond_1
    instance-of v0, p1, [Ljava/lang/Object;

    if-eqz v0, :cond_2

    check-cast p1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lexpo/modules/kotlin/types/JSTypeConverterHelperKt;->toJSValue([Ljava/lang/Object;Lexpo/modules/kotlin/types/JSTypeConverterProvider$ContainerProvider;)Lcom/facebook/react/bridge/WritableArray;

    move-result-object p1

    return-object p1

    .line 72
    :cond_2
    instance-of v0, p1, [I

    if-nez v0, :cond_14

    instance-of v0, p1, [F

    if-nez v0, :cond_14

    instance-of v0, p1, [D

    if-nez v0, :cond_14

    instance-of v0, p1, [Z

    if-nez v0, :cond_14

    instance-of v0, p1, [J

    if-eqz v0, :cond_3

    goto/16 :goto_0

    .line 73
    :cond_3
    instance-of v0, p1, [B

    if-eqz v0, :cond_4

    sget-object p2, Lexpo/modules/kotlin/types/folly/FollyDynamicExtensionConverter;->Companion:Lexpo/modules/kotlin/types/folly/FollyDynamicExtensionConverter$Companion;

    invoke-virtual {p2, p1}, Lexpo/modules/kotlin/types/folly/FollyDynamicExtensionConverter$Companion;->put(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 74
    :cond_4
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_6

    if-eqz p3, :cond_5

    .line 75
    check-cast p1, Ljava/util/Map;

    invoke-static {p1}, Lexpo/modules/kotlin/types/JSTypeConverterHelperKt;->toJSValueExperimental(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1

    .line 77
    :cond_5
    check-cast p1, Ljava/util/Map;

    invoke-static {p1, p2}, Lexpo/modules/kotlin/types/JSTypeConverterHelperKt;->toJSValue(Ljava/util/Map;Lexpo/modules/kotlin/types/JSTypeConverterProvider$ContainerProvider;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    return-object p1

    .line 79
    :cond_6
    instance-of v0, p1, Ljava/lang/Enum;

    if-eqz v0, :cond_7

    check-cast p1, Ljava/lang/Enum;

    invoke-static {p1}, Lexpo/modules/kotlin/types/JSTypeConverterHelperKt;->toJSValue(Ljava/lang/Enum;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 80
    :cond_7
    instance-of v0, p1, Lexpo/modules/kotlin/records/Record;

    if-eqz v0, :cond_8

    check-cast p1, Lexpo/modules/kotlin/records/Record;

    invoke-static {p1, p2}, Lexpo/modules/kotlin/types/JSTypeConverterHelperKt;->toJSValue(Lexpo/modules/kotlin/records/Record;Lexpo/modules/kotlin/types/JSTypeConverterProvider$ContainerProvider;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    return-object p1

    .line 81
    :cond_8
    instance-of v0, p1, Lexpo/modules/kotlin/records/formatters/FormattedRecord;

    if-eqz v0, :cond_a

    if-eqz p3, :cond_9

    .line 82
    check-cast p1, Lexpo/modules/kotlin/records/formatters/FormattedRecord;

    invoke-static {p1}, Lexpo/modules/kotlin/types/JSTypeConverterHelperKt;->toJSValueExperimental(Lexpo/modules/kotlin/records/formatters/FormattedRecord;)Ljava/util/Map;

    move-result-object p1

    return-object p1

    .line 84
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "FormattedRecord should be converted using the experimental converter."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 86
    :cond_a
    instance-of v0, p1, Ljava/net/URI;

    if-eqz v0, :cond_b

    check-cast p1, Ljava/net/URI;

    invoke-static {p1}, Lexpo/modules/kotlin/types/JSTypeConverterHelperKt;->toJSValue(Ljava/net/URI;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 87
    :cond_b
    instance-of v0, p1, Ljava/net/URL;

    if-eqz v0, :cond_c

    check-cast p1, Ljava/net/URL;

    invoke-static {p1}, Lexpo/modules/kotlin/types/JSTypeConverterHelperKt;->toJSValue(Ljava/net/URL;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 88
    :cond_c
    instance-of v0, p1, Landroid/net/Uri;

    if-eqz v0, :cond_d

    check-cast p1, Landroid/net/Uri;

    invoke-static {p1}, Lexpo/modules/kotlin/types/JSTypeConverterHelperKt;->toJSValue(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 89
    :cond_d
    instance-of v0, p1, Ljava/io/File;

    if-eqz v0, :cond_e

    check-cast p1, Ljava/io/File;

    invoke-static {p1}, Lexpo/modules/kotlin/types/JSTypeConverterHelperKt;->toJSValue(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 90
    :cond_e
    instance-of v0, p1, Lkotlin/Pair;

    if-eqz v0, :cond_f

    check-cast p1, Lkotlin/Pair;

    invoke-static {p1, p2}, Lexpo/modules/kotlin/types/JSTypeConverterHelperKt;->toJSValue(Lkotlin/Pair;Lexpo/modules/kotlin/types/JSTypeConverterProvider$ContainerProvider;)Lcom/facebook/react/bridge/WritableArray;

    move-result-object p1

    return-object p1

    .line 91
    :cond_f
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_10

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    long-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 92
    :cond_10
    instance-of v0, p1, Lkotlin/time/Duration;

    if-eqz v0, :cond_11

    check-cast p1, Lkotlin/time/Duration;

    invoke-virtual {p1}, Lkotlin/time/Duration;->unbox-impl()J

    move-result-wide p1

    sget-object p3, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    invoke-static {p1, p2, p3}, Lkotlin/time/Duration;->toDouble-impl(JLkotlin/time/DurationUnit;)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 93
    :cond_11
    instance-of v0, p1, Lexpo/modules/kotlin/typedarray/RawTypedArrayHolder;

    if-eqz v0, :cond_12

    check-cast p1, Lexpo/modules/kotlin/typedarray/RawTypedArrayHolder;

    invoke-interface {p1}, Lexpo/modules/kotlin/typedarray/RawTypedArrayHolder;->getRawArray()Lexpo/modules/kotlin/jni/JavaScriptTypedArray;

    move-result-object p1

    return-object p1

    .line 94
    :cond_12
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_14

    if-eqz p3, :cond_13

    .line 95
    check-cast p1, Ljava/util/Collection;

    invoke-static {p1}, Lexpo/modules/kotlin/types/JSTypeConverterHelperKt;->toJSValueExperimental(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    return-object p1

    .line 97
    :cond_13
    check-cast p1, Ljava/util/Collection;

    invoke-static {p1, p2}, Lexpo/modules/kotlin/types/JSTypeConverterHelperKt;->toJSValue(Ljava/util/Collection;Lexpo/modules/kotlin/types/JSTypeConverterProvider$ContainerProvider;)Lcom/facebook/react/bridge/WritableArray;

    move-result-object p1

    :cond_14
    :goto_0
    return-object p1

    :cond_15
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final legacyConvertToJSValue(Ljava/lang/Object;Lexpo/modules/kotlin/types/JSTypeConverterProvider$ContainerProvider;)Ljava/lang/Object;
    .locals 1

    const-string v0, "containerProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_16

    .line 37
    instance-of v0, p1, Lkotlin/Unit;

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 38
    :cond_0
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/os/Bundle;

    invoke-static {p1, p2}, Lexpo/modules/kotlin/types/JSTypeConverterHelperKt;->toJSValue(Landroid/os/Bundle;Lexpo/modules/kotlin/types/JSTypeConverterProvider$ContainerProvider;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    return-object p1

    .line 39
    :cond_1
    instance-of v0, p1, [Ljava/lang/Object;

    if-eqz v0, :cond_2

    check-cast p1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lexpo/modules/kotlin/types/JSTypeConverterHelperKt;->toJSValue([Ljava/lang/Object;Lexpo/modules/kotlin/types/JSTypeConverterProvider$ContainerProvider;)Lcom/facebook/react/bridge/WritableArray;

    move-result-object p1

    return-object p1

    .line 40
    :cond_2
    instance-of v0, p1, [I

    if-eqz v0, :cond_3

    check-cast p1, [I

    invoke-static {p1, p2}, Lexpo/modules/kotlin/types/JSTypeConverterHelperKt;->toJSValue([ILexpo/modules/kotlin/types/JSTypeConverterProvider$ContainerProvider;)Lcom/facebook/react/bridge/WritableArray;

    move-result-object p1

    return-object p1

    .line 41
    :cond_3
    instance-of v0, p1, [J

    if-eqz v0, :cond_4

    check-cast p1, [J

    invoke-static {p1, p2}, Lexpo/modules/kotlin/types/JSTypeConverterHelperKt;->toJSValue([JLexpo/modules/kotlin/types/JSTypeConverterProvider$ContainerProvider;)Lcom/facebook/react/bridge/WritableArray;

    move-result-object p1

    return-object p1

    .line 42
    :cond_4
    instance-of v0, p1, [F

    if-eqz v0, :cond_5

    check-cast p1, [F

    invoke-static {p1, p2}, Lexpo/modules/kotlin/types/JSTypeConverterHelperKt;->toJSValue([FLexpo/modules/kotlin/types/JSTypeConverterProvider$ContainerProvider;)Lcom/facebook/react/bridge/WritableArray;

    move-result-object p1

    return-object p1

    .line 43
    :cond_5
    instance-of v0, p1, [D

    if-eqz v0, :cond_6

    check-cast p1, [D

    invoke-static {p1, p2}, Lexpo/modules/kotlin/types/JSTypeConverterHelperKt;->toJSValue([DLexpo/modules/kotlin/types/JSTypeConverterProvider$ContainerProvider;)Lcom/facebook/react/bridge/WritableArray;

    move-result-object p1

    return-object p1

    .line 44
    :cond_6
    instance-of v0, p1, [Z

    if-eqz v0, :cond_7

    check-cast p1, [Z

    invoke-static {p1, p2}, Lexpo/modules/kotlin/types/JSTypeConverterHelperKt;->toJSValue([ZLexpo/modules/kotlin/types/JSTypeConverterProvider$ContainerProvider;)Lcom/facebook/react/bridge/WritableArray;

    move-result-object p1

    return-object p1

    .line 45
    :cond_7
    instance-of v0, p1, [B

    if-eqz v0, :cond_8

    sget-object p2, Lexpo/modules/kotlin/types/folly/FollyDynamicExtensionConverter;->Companion:Lexpo/modules/kotlin/types/folly/FollyDynamicExtensionConverter$Companion;

    invoke-virtual {p2, p1}, Lexpo/modules/kotlin/types/folly/FollyDynamicExtensionConverter$Companion;->put(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 46
    :cond_8
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_9

    check-cast p1, Ljava/util/Map;

    invoke-static {p1, p2}, Lexpo/modules/kotlin/types/JSTypeConverterHelperKt;->toJSValue(Ljava/util/Map;Lexpo/modules/kotlin/types/JSTypeConverterProvider$ContainerProvider;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    return-object p1

    .line 47
    :cond_9
    instance-of v0, p1, Ljava/lang/Enum;

    if-eqz v0, :cond_a

    check-cast p1, Ljava/lang/Enum;

    invoke-static {p1}, Lexpo/modules/kotlin/types/JSTypeConverterHelperKt;->toJSValue(Ljava/lang/Enum;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 48
    :cond_a
    instance-of v0, p1, Lexpo/modules/kotlin/records/Record;

    if-eqz v0, :cond_b

    check-cast p1, Lexpo/modules/kotlin/records/Record;

    invoke-static {p1, p2}, Lexpo/modules/kotlin/types/JSTypeConverterHelperKt;->toJSValue(Lexpo/modules/kotlin/records/Record;Lexpo/modules/kotlin/types/JSTypeConverterProvider$ContainerProvider;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    return-object p1

    .line 49
    :cond_b
    instance-of v0, p1, Lexpo/modules/kotlin/records/formatters/FormattedRecord;

    if-eqz v0, :cond_c

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "FormattedRecord should be converted using the experimental converter."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 50
    :cond_c
    instance-of v0, p1, Ljava/net/URI;

    if-eqz v0, :cond_d

    check-cast p1, Ljava/net/URI;

    invoke-static {p1}, Lexpo/modules/kotlin/types/JSTypeConverterHelperKt;->toJSValue(Ljava/net/URI;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 51
    :cond_d
    instance-of v0, p1, Ljava/net/URL;

    if-eqz v0, :cond_e

    check-cast p1, Ljava/net/URL;

    invoke-static {p1}, Lexpo/modules/kotlin/types/JSTypeConverterHelperKt;->toJSValue(Ljava/net/URL;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 52
    :cond_e
    instance-of v0, p1, Landroid/net/Uri;

    if-eqz v0, :cond_f

    check-cast p1, Landroid/net/Uri;

    invoke-static {p1}, Lexpo/modules/kotlin/types/JSTypeConverterHelperKt;->toJSValue(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 53
    :cond_f
    instance-of v0, p1, Ljava/io/File;

    if-eqz v0, :cond_10

    check-cast p1, Ljava/io/File;

    invoke-static {p1}, Lexpo/modules/kotlin/types/JSTypeConverterHelperKt;->toJSValue(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 54
    :cond_10
    instance-of v0, p1, Lkotlin/Pair;

    if-eqz v0, :cond_11

    check-cast p1, Lkotlin/Pair;

    invoke-static {p1, p2}, Lexpo/modules/kotlin/types/JSTypeConverterHelperKt;->toJSValue(Lkotlin/Pair;Lexpo/modules/kotlin/types/JSTypeConverterProvider$ContainerProvider;)Lcom/facebook/react/bridge/WritableArray;

    move-result-object p1

    return-object p1

    .line 55
    :cond_11
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_12

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    long-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 56
    :cond_12
    instance-of v0, p1, Lkotlin/time/Duration;

    if-eqz v0, :cond_13

    check-cast p1, Lkotlin/time/Duration;

    invoke-virtual {p1}, Lkotlin/time/Duration;->unbox-impl()J

    move-result-wide p1

    sget-object v0, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    invoke-static {p1, p2, v0}, Lkotlin/time/Duration;->toDouble-impl(JLkotlin/time/DurationUnit;)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 57
    :cond_13
    instance-of v0, p1, Lexpo/modules/kotlin/typedarray/RawTypedArrayHolder;

    if-eqz v0, :cond_14

    check-cast p1, Lexpo/modules/kotlin/typedarray/RawTypedArrayHolder;

    invoke-interface {p1}, Lexpo/modules/kotlin/typedarray/RawTypedArrayHolder;->getRawArray()Lexpo/modules/kotlin/jni/JavaScriptTypedArray;

    move-result-object p1

    return-object p1

    .line 58
    :cond_14
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_15

    check-cast p1, Ljava/util/Collection;

    invoke-static {p1, p2}, Lexpo/modules/kotlin/types/JSTypeConverterHelperKt;->toJSValue(Ljava/util/Collection;Lexpo/modules/kotlin/types/JSTypeConverterProvider$ContainerProvider;)Lcom/facebook/react/bridge/WritableArray;

    move-result-object p1

    :cond_15
    return-object p1

    :cond_16
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
