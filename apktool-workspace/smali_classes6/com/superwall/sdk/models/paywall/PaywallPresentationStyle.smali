.class public abstract Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;
.super Ljava/lang/Object;
.source "PaywallPresentationStyle.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Companion;,
        Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Drawer;,
        Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Fullscreen;,
        Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$FullscreenNoAnimation;,
        Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Modal;,
        Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$None;,
        Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Popup;,
        Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Push;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPaywallPresentationStyle.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PaywallPresentationStyle.kt\ncom/superwall/sdk/models/paywall/PaywallPresentationStyle\n+ 2 SerialFormat.kt\nkotlinx/serialization/SerialFormatKt\n*L\n1#1,85:1\n113#2:86\n*S KotlinDebug\n*F\n+ 1 PaywallPresentationStyle.kt\ncom/superwall/sdk/models/paywall/PaywallPresentationStyle\n*L\n55#1:86\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00087\u0018\u0000  2\u00020\u0001:\u0008\u0019\u001a\u001b\u001c\u001d\u001e\u001f B\u0013\u0008\u0004\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005B\u001b\u0008\u0016\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0004\u0008\u0004\u0010\nJ\u000e\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u0011J \u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00002\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0007R\u001c\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000e\u0082\u0001\u0007!\"#$%&\'\u00a8\u0006("
    }
    d2 = {
        "Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;",
        "",
        "rawValue",
        "",
        "<init>",
        "(Ljava/lang/String;)V",
        "seen0",
        "",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(ILkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "getRawValue$annotations",
        "()V",
        "getRawValue",
        "()Ljava/lang/String;",
        "toIntentString",
        "json",
        "Lkotlinx/serialization/json/Json;",
        "write$Self",
        "",
        "self",
        "output",
        "Lkotlinx/serialization/encoding/CompositeEncoder;",
        "serialDesc",
        "Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "Modal",
        "Fullscreen",
        "FullscreenNoAnimation",
        "Push",
        "Drawer",
        "None",
        "Popup",
        "Companion",
        "Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Drawer;",
        "Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Fullscreen;",
        "Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$FullscreenNoAnimation;",
        "Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Modal;",
        "Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$None;",
        "Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Popup;",
        "Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Push;",
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
.field private static final $cachedSerializer$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lkotlinx/serialization/KSerializer<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Companion;

.field private static final DRAWER:Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Drawer$Companion;

.field private static final FULLSCREEN:Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Fullscreen;

.field private static final FULLSCREEN_NO_ANIMATION:Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$FullscreenNoAnimation;

.field private static final MODAL:Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Modal;

.field private static final NONE:Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$None;

.field private static final PUSH:Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Push;


# instance fields
.field private final rawValue:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$WH9u1Vx9p2S4o8fWPYDWFwpDCVk()Lkotlinx/serialization/KSerializer;
    .locals 1

    invoke-static {}, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;->_init_$_anonymous_()Lkotlinx/serialization/KSerializer;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;->Companion:Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Companion;

    .line 59
    sget-object v0, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Modal;->INSTANCE:Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Modal;

    sput-object v0, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;->MODAL:Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Modal;

    .line 62
    sget-object v0, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Fullscreen;->INSTANCE:Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Fullscreen;

    sput-object v0, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;->FULLSCREEN:Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Fullscreen;

    .line 68
    sget-object v0, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$FullscreenNoAnimation;->INSTANCE:Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$FullscreenNoAnimation;

    sput-object v0, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;->FULLSCREEN_NO_ANIMATION:Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$FullscreenNoAnimation;

    .line 71
    sget-object v0, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Push;->INSTANCE:Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Push;

    sput-object v0, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;->PUSH:Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Push;

    .line 74
    sget-object v0, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Drawer;->Companion:Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Drawer$Companion;

    sput-object v0, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;->DRAWER:Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Drawer$Companion;

    .line 77
    sget-object v0, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$None;->INSTANCE:Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$None;

    sput-object v0, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;->NONE:Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$None;

    .line 57
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;->$cachedSerializer$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(ILkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string p1, ""

    .line 9
    iput-object p1, p0, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;->rawValue:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;->rawValue:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 12
    const-string p1, ""

    :cond_0
    const/4 p2, 0x0

    .line 10
    invoke-direct {p0, p1, p2}, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private static final synthetic _init_$_anonymous_()Lkotlinx/serialization/KSerializer;
    .locals 15

    .line 57
    new-instance v0, Lkotlinx/serialization/SealedClassSerializer;

    const-class v1, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const/4 v1, 0x7

    new-array v3, v1, [Lkotlin/reflect/KClass;

    const-class v4, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Drawer;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Fullscreen;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-class v4, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$FullscreenNoAnimation;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/4 v7, 0x2

    aput-object v4, v3, v7

    const-class v4, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Modal;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/4 v8, 0x3

    aput-object v4, v3, v8

    const-class v4, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$None;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/4 v9, 0x4

    aput-object v4, v3, v9

    const-class v4, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Popup;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/4 v10, 0x5

    aput-object v4, v3, v10

    const-class v4, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Push;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/4 v11, 0x6

    aput-object v4, v3, v11

    new-array v4, v1, [Lkotlinx/serialization/KSerializer;

    sget-object v1, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Drawer$$serializer;->INSTANCE:Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Drawer$$serializer;

    aput-object v1, v4, v5

    new-instance v1, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v12, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Fullscreen;->INSTANCE:Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Fullscreen;

    new-array v13, v5, [Ljava/lang/annotation/Annotation;

    const-string v14, "FULLSCREEN"

    invoke-direct {v1, v14, v12, v13}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    aput-object v1, v4, v6

    new-instance v1, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v6, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$FullscreenNoAnimation;->INSTANCE:Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$FullscreenNoAnimation;

    new-array v12, v5, [Ljava/lang/annotation/Annotation;

    const-string v13, "NO_ANIMATION"

    invoke-direct {v1, v13, v6, v12}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    aput-object v1, v4, v7

    new-instance v1, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v6, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Modal;->INSTANCE:Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Modal;

    new-array v7, v5, [Ljava/lang/annotation/Annotation;

    const-string v12, "MODAL"

    invoke-direct {v1, v12, v6, v7}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    aput-object v1, v4, v8

    new-instance v1, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v6, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$None;->INSTANCE:Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$None;

    new-array v7, v5, [Ljava/lang/annotation/Annotation;

    const-string v8, "NONE"

    invoke-direct {v1, v8, v6, v7}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    aput-object v1, v4, v9

    sget-object v1, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Popup$$serializer;->INSTANCE:Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Popup$$serializer;

    aput-object v1, v4, v10

    new-instance v1, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v6, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Push;->INSTANCE:Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Push;

    new-array v7, v5, [Ljava/lang/annotation/Annotation;

    const-string v8, "PUSH"

    invoke-direct {v1, v8, v6, v7}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    aput-object v1, v4, v11

    new-array v5, v5, [Ljava/lang/annotation/Annotation;

    const-string v1, "com.superwall.sdk.models.paywall.PaywallPresentationStyle"

    invoke-direct/range {v0 .. v5}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;[Ljava/lang/annotation/Annotation;)V

    check-cast v0, Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method public static final synthetic access$get$cachedSerializer$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 9
    sget-object v0, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;->$cachedSerializer$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method public static final synthetic access$getDRAWER$cp()Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Drawer$Companion;
    .locals 1

    .line 9
    sget-object v0, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;->DRAWER:Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Drawer$Companion;

    return-object v0
.end method

.method public static final synthetic access$getFULLSCREEN$cp()Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Fullscreen;
    .locals 1

    .line 9
    sget-object v0, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;->FULLSCREEN:Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Fullscreen;

    return-object v0
.end method

.method public static final synthetic access$getFULLSCREEN_NO_ANIMATION$cp()Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$FullscreenNoAnimation;
    .locals 1

    .line 9
    sget-object v0, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;->FULLSCREEN_NO_ANIMATION:Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$FullscreenNoAnimation;

    return-object v0
.end method

.method public static final synthetic access$getMODAL$cp()Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Modal;
    .locals 1

    .line 9
    sget-object v0, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;->MODAL:Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Modal;

    return-object v0
.end method

.method public static final synthetic access$getNONE$cp()Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$None;
    .locals 1

    .line 9
    sget-object v0, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;->NONE:Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$None;

    return-object v0
.end method

.method public static final synthetic access$getPUSH$cp()Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Push;
    .locals 1

    .line 9
    sget-object v0, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;->PUSH:Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Push;

    return-object v0
.end method

.method public static synthetic getRawValue$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/Transient;
    .end annotation

    return-void
.end method

.method public static final synthetic write$Self(Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method


# virtual methods
.method public final getRawValue()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;->rawValue:Ljava/lang/String;

    return-object v0
.end method

.method public final toIntentString(Lkotlinx/serialization/json/Json;)Ljava/lang/String;
    .locals 1

    const-string v0, "json"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    check-cast p1, Lkotlinx/serialization/StringFormat;

    .line 86
    invoke-interface {p1}, Lkotlinx/serialization/StringFormat;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    sget-object v0, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;->Companion:Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Companion;

    invoke-virtual {v0}, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    invoke-interface {p1, v0, p0}, Lkotlinx/serialization/StringFormat;->encodeToString(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
