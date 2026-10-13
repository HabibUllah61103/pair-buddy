.class public final Lcom/superwall/sdk/network/JsonFactory$Companion;
.super Ljava/lang/Object;
.source "JsonFactory.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/superwall/sdk/network/JsonFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nJsonFactory.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JsonFactory.kt\ncom/superwall/sdk/network/JsonFactory$Companion\n+ 2 SerializersModuleBuilders.kt\nkotlinx/serialization/modules/SerializersModuleBuildersKt\n*L\n1#1,33:1\n31#2,3:34\n*S KotlinDebug\n*F\n+ 1 JsonFactory.kt\ncom/superwall/sdk/network/JsonFactory$Companion\n*L\n19#1:34,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0008\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0007\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/superwall/sdk/network/JsonFactory$Companion;",
        "",
        "<init>",
        "()V",
        "JSON",
        "Lkotlinx/serialization/json/Json;",
        "getJSON",
        "()Lkotlinx/serialization/json/Json;",
        "JSON_POLYMORPHIC",
        "getJSON_POLYMORPHIC",
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
.field static final synthetic $$INSTANCE:Lcom/superwall/sdk/network/JsonFactory$Companion;

.field private static final JSON:Lkotlinx/serialization/json/Json;

.field private static final JSON_POLYMORPHIC:Lkotlinx/serialization/json/Json;


# direct methods
.method public static synthetic $r8$lambda$RH_JpzCwqHS2koCwKqNN1CDBNBA(Lkotlinx/serialization/json/JsonBuilder;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/network/JsonFactory$Companion;->JSON$lambda$1(Lkotlinx/serialization/json/JsonBuilder;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$w1VK-BJU2JziS94j0v4WKPUViNA(Lkotlinx/serialization/json/JsonBuilder;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/network/JsonFactory$Companion;->JSON_POLYMORPHIC$lambda$2(Lkotlinx/serialization/json/JsonBuilder;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/superwall/sdk/network/JsonFactory$Companion;

    invoke-direct {v0}, Lcom/superwall/sdk/network/JsonFactory$Companion;-><init>()V

    sput-object v0, Lcom/superwall/sdk/network/JsonFactory$Companion;->$$INSTANCE:Lcom/superwall/sdk/network/JsonFactory$Companion;

    .line 14
    new-instance v0, Lcom/superwall/sdk/network/JsonFactory$Companion$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/superwall/sdk/network/JsonFactory$Companion$$ExternalSyntheticLambda0;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v2, v0, v1, v2}, Lkotlinx/serialization/json/JsonKt;->Json$default(Lkotlinx/serialization/json/Json;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/serialization/json/Json;

    move-result-object v0

    sput-object v0, Lcom/superwall/sdk/network/JsonFactory$Companion;->JSON:Lkotlinx/serialization/json/Json;

    .line 25
    new-instance v1, Lcom/superwall/sdk/network/JsonFactory$Companion$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/superwall/sdk/network/JsonFactory$Companion$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0, v1}, Lkotlinx/serialization/json/JsonKt;->Json(Lkotlinx/serialization/json/Json;Lkotlin/jvm/functions/Function1;)Lkotlinx/serialization/json/Json;

    move-result-object v0

    sput-object v0, Lcom/superwall/sdk/network/JsonFactory$Companion;->JSON_POLYMORPHIC:Lkotlinx/serialization/json/Json;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final JSON$lambda$1(Lkotlinx/serialization/json/JsonBuilder;)Lkotlin/Unit;
    .locals 3

    const-string v0, "$this$Json"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 15
    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/JsonBuilder;->setIgnoreUnknownKeys(Z)V

    .line 16
    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/JsonBuilder;->setEncodeDefaults(Z)V

    .line 17
    sget-object v0, Lkotlinx/serialization/json/JsonNamingStrategy;->Builtins:Lkotlinx/serialization/json/JsonNamingStrategy$Builtins;

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonNamingStrategy$Builtins;->getSnakeCase()Lkotlinx/serialization/json/JsonNamingStrategy;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/JsonBuilder;->setNamingStrategy(Lkotlinx/serialization/json/JsonNamingStrategy;)V

    .line 34
    new-instance v0, Lkotlinx/serialization/modules/SerializersModuleBuilder;

    invoke-direct {v0}, Lkotlinx/serialization/modules/SerializersModuleBuilder;-><init>()V

    .line 20
    const-class v1, Ljava/util/Date;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    sget-object v2, Lcom/superwall/sdk/models/serialization/DateSerializer;->INSTANCE:Lcom/superwall/sdk/models/serialization/DateSerializer;

    check-cast v2, Lkotlinx/serialization/KSerializer;

    invoke-virtual {v0, v1, v2}, Lkotlinx/serialization/modules/SerializersModuleBuilder;->contextual(Lkotlin/reflect/KClass;Lkotlinx/serialization/KSerializer;)V

    .line 36
    invoke-virtual {v0}, Lkotlinx/serialization/modules/SerializersModuleBuilder;->build()Lkotlinx/serialization/modules/SerializersModule;

    move-result-object v0

    .line 18
    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/JsonBuilder;->setSerializersModule(Lkotlinx/serialization/modules/SerializersModule;)V

    .line 22
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final JSON_POLYMORPHIC$lambda$2(Lkotlinx/serialization/json/JsonBuilder;)Lkotlin/Unit;
    .locals 1

    const-string v0, "$this$Json"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    sget-object v0, Lkotlinx/serialization/json/ClassDiscriminatorMode;->POLYMORPHIC:Lkotlinx/serialization/json/ClassDiscriminatorMode;

    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/JsonBuilder;->setClassDiscriminatorMode(Lkotlinx/serialization/json/ClassDiscriminatorMode;)V

    .line 27
    const-string v0, "type"

    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/JsonBuilder;->setClassDiscriminator(Ljava/lang/String;)V

    .line 28
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final getJSON()Lkotlinx/serialization/json/Json;
    .locals 1

    .line 13
    sget-object v0, Lcom/superwall/sdk/network/JsonFactory$Companion;->JSON:Lkotlinx/serialization/json/Json;

    return-object v0
.end method

.method public final getJSON_POLYMORPHIC()Lkotlinx/serialization/json/Json;
    .locals 1

    .line 24
    sget-object v0, Lcom/superwall/sdk/network/JsonFactory$Companion;->JSON_POLYMORPHIC:Lkotlinx/serialization/json/Json;

    return-object v0
.end method
