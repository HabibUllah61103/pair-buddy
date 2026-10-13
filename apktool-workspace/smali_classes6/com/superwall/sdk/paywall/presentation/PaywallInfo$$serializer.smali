.class public final synthetic Lcom/superwall/sdk/paywall/presentation/PaywallInfo$$serializer;
.super Ljava/lang/Object;
.source "PaywallInfo.kt"

# interfaces
.implements Lkotlinx/serialization/internal/GeneratedSerializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/superwall/sdk/paywall/presentation/PaywallInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "$serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/internal/GeneratedSerializer<",
        "Lcom/superwall/sdk/paywall/presentation/PaywallInfo;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Deprecated;
    level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
    message = "This synthesized declaration should not be used directly"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c7\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0015\u0010\u0005\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00070\u0006\u00a2\u0006\u0002\u0010\u0008J\u000e\u0010\t\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u000bJ\u0016\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0002R\u0011\u0010\u0011\u001a\u00020\u0012\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0015"
    }
    d2 = {
        "com/superwall/sdk/paywall/presentation/PaywallInfo.$serializer",
        "Lkotlinx/serialization/internal/GeneratedSerializer;",
        "Lcom/superwall/sdk/paywall/presentation/PaywallInfo;",
        "<init>",
        "()V",
        "childSerializers",
        "",
        "Lkotlinx/serialization/KSerializer;",
        "()[Lkotlinx/serialization/KSerializer;",
        "deserialize",
        "decoder",
        "Lkotlinx/serialization/encoding/Decoder;",
        "serialize",
        "",
        "encoder",
        "Lkotlinx/serialization/encoding/Encoder;",
        "value",
        "descriptor",
        "Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "getDescriptor",
        "()Lkotlinx/serialization/descriptors/SerialDescriptor;",
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
.field public static final INSTANCE:Lcom/superwall/sdk/paywall/presentation/PaywallInfo$$serializer;

.field private static final descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo$$serializer;

    invoke-direct {v0}, Lcom/superwall/sdk/paywall/presentation/PaywallInfo$$serializer;-><init>()V

    sput-object v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo$$serializer;->INSTANCE:Lcom/superwall/sdk/paywall/presentation/PaywallInfo$$serializer;

    .line 25
    new-instance v1, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    check-cast v0, Lkotlinx/serialization/internal/GeneratedSerializer;

    const/16 v2, 0x27

    const-string v3, "com.superwall.sdk.paywall.presentation.PaywallInfo"

    invoke-direct {v1, v3, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;-><init>(Ljava/lang/String;Lkotlinx/serialization/internal/GeneratedSerializer;I)V

    const-string v0, "databaseId"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "identifier"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "name"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "url"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "experiment"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "products"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "productIds"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "presentedByEventWithName"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "presentedByEventWithId"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "presentedByEventAt"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "presentedBy"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "presentationSourceType"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "responseLoadStartTime"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "responseLoadCompleteTime"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "responseLoadFailTime"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "responseLoadDuration"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "webViewLoadStartTime"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "webViewLoadCompleteTime"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "webViewLoadFailTime"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "webViewLoadDuration"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "productsLoadStartTime"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "productsLoadCompleteTime"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "productsLoadFailTime"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "shimmerLoadStartTime"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "shimmerLoadCompleteTime"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "productsLoadDuration"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "paywalljsVersion"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "isFreeTrialAvailable"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "featureGatingBehavior"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "closeReason"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "localNotifications"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "computedPropertyRequests"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "surveys"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "presentation"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "buildId"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "cacheKey"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "isScrollEnabled"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "state"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "customerInfo"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    check-cast v1, Lkotlinx/serialization/descriptors/SerialDescriptor;

    sput-object v1, Lcom/superwall/sdk/paywall/presentation/PaywallInfo$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final childSerializers()[Lkotlinx/serialization/KSerializer;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lkotlinx/serialization/KSerializer<",
            "*>;"
        }
    .end annotation

    .line 25
    invoke-static {}, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;

    move-result-object v0

    const/16 v1, 0x27

    new-array v1, v1, [Lkotlinx/serialization/KSerializer;

    const/4 v2, 0x0

    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Lcom/superwall/sdk/models/paywall/PaywallURL$$serializer;->INSTANCE:Lcom/superwall/sdk/models/paywall/PaywallURL$$serializer;

    aput-object v3, v1, v2

    sget-object v2, Lcom/superwall/sdk/models/triggers/Experiment$$serializer;->INSTANCE:Lcom/superwall/sdk/models/triggers/Experiment$$serializer;

    check-cast v2, Lkotlinx/serialization/KSerializer;

    invoke-static {v2}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const/4 v2, 0x5

    aget-object v3, v0, v2

    aput-object v3, v1, v2

    const/4 v2, 0x6

    aget-object v3, v0, v2

    aput-object v3, v1, v2

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v2, Lkotlinx/serialization/KSerializer;

    invoke-static {v2}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    const/4 v3, 0x7

    aput-object v2, v1, v3

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v2, Lkotlinx/serialization/KSerializer;

    invoke-static {v2}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    const/16 v3, 0x8

    aput-object v2, v1, v3

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v2, Lkotlinx/serialization/KSerializer;

    invoke-static {v2}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    const/16 v3, 0x9

    aput-object v2, v1, v3

    const/16 v2, 0xa

    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    aput-object v3, v1, v2

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v2, Lkotlinx/serialization/KSerializer;

    invoke-static {v2}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    const/16 v3, 0xb

    aput-object v2, v1, v3

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v2, Lkotlinx/serialization/KSerializer;

    invoke-static {v2}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    const/16 v3, 0xc

    aput-object v2, v1, v3

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v2, Lkotlinx/serialization/KSerializer;

    invoke-static {v2}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    const/16 v3, 0xd

    aput-object v2, v1, v3

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v2, Lkotlinx/serialization/KSerializer;

    invoke-static {v2}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    const/16 v3, 0xe

    aput-object v2, v1, v3

    sget-object v2, Lkotlinx/serialization/internal/DoubleSerializer;->INSTANCE:Lkotlinx/serialization/internal/DoubleSerializer;

    check-cast v2, Lkotlinx/serialization/KSerializer;

    invoke-static {v2}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    const/16 v3, 0xf

    aput-object v2, v1, v3

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v2, Lkotlinx/serialization/KSerializer;

    invoke-static {v2}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    const/16 v3, 0x10

    aput-object v2, v1, v3

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v2, Lkotlinx/serialization/KSerializer;

    invoke-static {v2}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    const/16 v3, 0x11

    aput-object v2, v1, v3

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v2, Lkotlinx/serialization/KSerializer;

    invoke-static {v2}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    const/16 v3, 0x12

    aput-object v2, v1, v3

    sget-object v2, Lkotlinx/serialization/internal/DoubleSerializer;->INSTANCE:Lkotlinx/serialization/internal/DoubleSerializer;

    check-cast v2, Lkotlinx/serialization/KSerializer;

    invoke-static {v2}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    const/16 v3, 0x13

    aput-object v2, v1, v3

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v2, Lkotlinx/serialization/KSerializer;

    invoke-static {v2}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    const/16 v3, 0x14

    aput-object v2, v1, v3

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v2, Lkotlinx/serialization/KSerializer;

    invoke-static {v2}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    const/16 v3, 0x15

    aput-object v2, v1, v3

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v2, Lkotlinx/serialization/KSerializer;

    invoke-static {v2}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    const/16 v3, 0x16

    aput-object v2, v1, v3

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v2, Lkotlinx/serialization/KSerializer;

    invoke-static {v2}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    const/16 v3, 0x17

    aput-object v2, v1, v3

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v2, Lkotlinx/serialization/KSerializer;

    invoke-static {v2}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    const/16 v3, 0x18

    aput-object v2, v1, v3

    sget-object v2, Lkotlinx/serialization/internal/DoubleSerializer;->INSTANCE:Lkotlinx/serialization/internal/DoubleSerializer;

    check-cast v2, Lkotlinx/serialization/KSerializer;

    invoke-static {v2}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    const/16 v3, 0x19

    aput-object v2, v1, v3

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v2, Lkotlinx/serialization/KSerializer;

    invoke-static {v2}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    const/16 v3, 0x1a

    aput-object v2, v1, v3

    const/16 v2, 0x1b

    sget-object v3, Lkotlinx/serialization/internal/BooleanSerializer;->INSTANCE:Lkotlinx/serialization/internal/BooleanSerializer;

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    sget-object v3, Lcom/superwall/sdk/models/config/FeatureGatingBehaviorSerializer;->INSTANCE:Lcom/superwall/sdk/models/config/FeatureGatingBehaviorSerializer;

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    aget-object v3, v0, v2

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    aget-object v3, v0, v2

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    aget-object v3, v0, v2

    aput-object v3, v1, v2

    const/16 v2, 0x20

    aget-object v0, v0, v2

    aput-object v0, v1, v2

    const/16 v0, 0x21

    sget-object v2, Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo$$serializer;->INSTANCE:Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo$$serializer;

    aput-object v2, v1, v0

    const/16 v0, 0x22

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    aput-object v2, v1, v0

    const/16 v0, 0x23

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    aput-object v2, v1, v0

    const/16 v0, 0x24

    sget-object v2, Lkotlinx/serialization/internal/BooleanSerializer;->INSTANCE:Lkotlinx/serialization/internal/BooleanSerializer;

    aput-object v2, v1, v0

    const/16 v0, 0x25

    sget-object v2, Lcom/superwall/sdk/models/serialization/AnyMapSerializer;->INSTANCE:Lcom/superwall/sdk/models/serialization/AnyMapSerializer;

    aput-object v2, v1, v0

    const/16 v0, 0x26

    sget-object v2, Lcom/superwall/sdk/models/customer/CustomerInfo$$serializer;->INSTANCE:Lcom/superwall/sdk/models/customer/CustomerInfo$$serializer;

    aput-object v2, v1, v0

    return-object v1
.end method

.method public final deserialize(Lkotlinx/serialization/encoding/Decoder;)Lcom/superwall/sdk/paywall/presentation/PaywallInfo;
    .locals 68

    move-object/from16 v0, p1

    const-string v1, "decoder"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    sget-object v1, Lcom/superwall/sdk/paywall/presentation/PaywallInfo$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/Decoder;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeDecoder;

    move-result-object v0

    invoke-static {}, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;

    move-result-object v2

    invoke-interface {v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSequentially()Z

    move-result v3

    const/16 v8, 0xa

    const/16 v9, 0x9

    const/4 v10, 0x7

    const/4 v11, 0x3

    const/16 v15, 0x8

    const/16 p1, 0x1f

    const/4 v12, 0x6

    const/16 v16, 0x1e

    const/4 v13, 0x5

    const/16 v17, 0x1d

    const/4 v14, 0x4

    const/4 v4, 0x2

    const/16 v21, 0x20

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v3, :cond_1

    invoke-interface {v0, v1, v6}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v1, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lcom/superwall/sdk/models/paywall/PaywallURL$$serializer;->INSTANCE:Lcom/superwall/sdk/models/paywall/PaywallURL$$serializer;

    check-cast v6, Lkotlinx/serialization/DeserializationStrategy;

    invoke-interface {v0, v1, v11, v6, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/superwall/sdk/models/paywall/PaywallURL;

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/superwall/sdk/models/paywall/PaywallURL;->unbox-impl()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_0
    move-object v6, v7

    :goto_0
    sget-object v11, Lcom/superwall/sdk/models/triggers/Experiment$$serializer;->INSTANCE:Lcom/superwall/sdk/models/triggers/Experiment$$serializer;

    check-cast v11, Lkotlinx/serialization/DeserializationStrategy;

    invoke-interface {v0, v1, v14, v11, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/superwall/sdk/models/triggers/Experiment;

    aget-object v14, v2, v13

    check-cast v14, Lkotlinx/serialization/DeserializationStrategy;

    invoke-interface {v0, v1, v13, v14, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    aget-object v14, v2, v12

    check-cast v14, Lkotlinx/serialization/DeserializationStrategy;

    invoke-interface {v0, v1, v12, v14, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    sget-object v14, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v14, Lkotlinx/serialization/DeserializationStrategy;

    invoke-interface {v0, v1, v10, v14, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    sget-object v14, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v14, Lkotlinx/serialization/DeserializationStrategy;

    invoke-interface {v0, v1, v15, v14, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    sget-object v15, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v15, Lkotlinx/serialization/DeserializationStrategy;

    invoke-interface {v0, v1, v9, v15, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v0, v1, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v8

    sget-object v15, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v15, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v24, v2

    const/16 v2, 0xb

    invoke-interface {v0, v1, v2, v15, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v15, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v15, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v23, v2

    const/16 v2, 0xc

    invoke-interface {v0, v1, v2, v15, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v15, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v15, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v22, v2

    const/16 v2, 0xd

    invoke-interface {v0, v1, v2, v15, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v15, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v15, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v20, v2

    const/16 v2, 0xe

    invoke-interface {v0, v1, v2, v15, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v15, Lkotlinx/serialization/internal/DoubleSerializer;->INSTANCE:Lkotlinx/serialization/internal/DoubleSerializer;

    check-cast v15, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v19, v2

    const/16 v2, 0xf

    invoke-interface {v0, v1, v2, v15, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    sget-object v15, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v15, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v25, v2

    const/16 v2, 0x10

    invoke-interface {v0, v1, v2, v15, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v15, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v15, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v18, v2

    const/16 v2, 0x11

    invoke-interface {v0, v1, v2, v15, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v15, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v15, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v26, v2

    const/16 v2, 0x12

    invoke-interface {v0, v1, v2, v15, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v15, Lkotlinx/serialization/internal/DoubleSerializer;->INSTANCE:Lkotlinx/serialization/internal/DoubleSerializer;

    check-cast v15, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v27, v2

    const/16 v2, 0x13

    invoke-interface {v0, v1, v2, v15, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    sget-object v15, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v15, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v28, v2

    const/16 v2, 0x14

    invoke-interface {v0, v1, v2, v15, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v15, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v15, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v29, v2

    const/16 v2, 0x15

    invoke-interface {v0, v1, v2, v15, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v15, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v15, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v30, v2

    const/16 v2, 0x16

    invoke-interface {v0, v1, v2, v15, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v15, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v15, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v31, v2

    const/16 v2, 0x17

    invoke-interface {v0, v1, v2, v15, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v15, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v15, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v32, v2

    const/16 v2, 0x18

    invoke-interface {v0, v1, v2, v15, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v15, Lkotlinx/serialization/internal/DoubleSerializer;->INSTANCE:Lkotlinx/serialization/internal/DoubleSerializer;

    check-cast v15, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v33, v2

    const/16 v2, 0x19

    invoke-interface {v0, v1, v2, v15, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    sget-object v15, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v15, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v34, v2

    const/16 v2, 0x1a

    invoke-interface {v0, v1, v2, v15, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/16 v15, 0x1b

    invoke-interface {v0, v1, v15}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v15

    sget-object v35, Lcom/superwall/sdk/models/config/FeatureGatingBehaviorSerializer;->INSTANCE:Lcom/superwall/sdk/models/config/FeatureGatingBehaviorSerializer;

    move-object/from16 v36, v2

    move-object/from16 v2, v35

    check-cast v2, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v35, v3

    const/16 v3, 0x1c

    invoke-interface {v0, v1, v3, v2, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/superwall/sdk/models/config/FeatureGatingBehavior;

    aget-object v3, v24, v17

    check-cast v3, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v37, v2

    move/from16 v2, v17

    invoke-interface {v0, v1, v2, v3, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;

    aget-object v3, v24, v16

    check-cast v3, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v17, v2

    move/from16 v2, v16

    invoke-interface {v0, v1, v2, v3, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    aget-object v3, v24, p1

    check-cast v3, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v16, v2

    move/from16 v2, p1

    invoke-interface {v0, v1, v2, v3, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    aget-object v3, v24, v21

    check-cast v3, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 p1, v2

    move/from16 v2, v21

    invoke-interface {v0, v1, v2, v3, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    sget-object v3, Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo$$serializer;->INSTANCE:Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo$$serializer;

    check-cast v3, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v21, v2

    const/16 v2, 0x21

    invoke-interface {v0, v1, v2, v3, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;

    const/16 v3, 0x22

    invoke-interface {v0, v1, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v3

    const/16 v7, 0x23

    invoke-interface {v0, v1, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v24, v2

    const/16 v2, 0x24

    invoke-interface {v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    sget-object v39, Lcom/superwall/sdk/models/serialization/AnyMapSerializer;->INSTANCE:Lcom/superwall/sdk/models/serialization/AnyMapSerializer;

    move/from16 v40, v2

    move-object/from16 v2, v39

    check-cast v2, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v39, v3

    const/16 v3, 0x25

    move-object/from16 v41, v6

    const/4 v6, 0x0

    invoke-interface {v0, v1, v3, v2, v6}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    sget-object v3, Lcom/superwall/sdk/models/customer/CustomerInfo$$serializer;->INSTANCE:Lcom/superwall/sdk/models/customer/CustomerInfo$$serializer;

    check-cast v3, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v38, v2

    const/16 v2, 0x26

    invoke-interface {v0, v1, v2, v3, v6}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/superwall/sdk/models/customer/CustomerInfo;

    const/16 v3, 0x7f

    const/4 v6, -0x1

    move-object/from16 v45, p1

    move-object/from16 v52, v2

    move-object/from16 v49, v7

    move-object/from16 v44, v16

    move-object/from16 v43, v17

    move-object/from16 v46, v21

    move-object/from16 v47, v24

    move-object/from16 v42, v37

    move-object/from16 v51, v38

    move-object/from16 v48, v39

    move/from16 v50, v40

    move-object/from16 v17, v41

    move-object/from16 v16, v4

    move-object/from16 v24, v8

    move-object/from16 v21, v10

    move/from16 v41, v15

    move-object/from16 v37, v32

    move-object/from16 v38, v33

    move-object/from16 v39, v34

    move-object/from16 v40, v36

    move-object v15, v5

    move-object/from16 v32, v27

    move-object/from16 v33, v28

    move-object/from16 v34, v29

    move-object/from16 v36, v31

    move-object/from16 v28, v19

    move-object/from16 v27, v20

    move-object/from16 v29, v25

    move-object/from16 v31, v26

    move-object/from16 v20, v12

    move-object/from16 v19, v13

    move-object/from16 v26, v22

    move-object/from16 v25, v23

    move v13, v3

    move v12, v6

    move-object/from16 v23, v9

    move-object/from16 v22, v14

    move-object/from16 v14, v35

    move-object/from16 v35, v30

    move-object/from16 v30, v18

    move-object/from16 v18, v11

    goto/16 :goto_1a

    :cond_1
    move-object/from16 v24, v2

    move v2, v6

    move-object v6, v7

    move v10, v2

    move/from16 v47, v10

    move/from16 v48, v47

    move/from16 v63, v48

    move/from16 v64, v5

    move-object v2, v6

    move-object v3, v2

    move-object v4, v3

    move-object v5, v4

    move-object v7, v5

    move-object v8, v7

    move-object v9, v8

    move-object v11, v9

    move-object v14, v11

    move-object v15, v14

    move-object/from16 v36, v15

    move-object/from16 v37, v36

    move-object/from16 v39, v37

    move-object/from16 v40, v39

    move-object/from16 v41, v40

    move-object/from16 v42, v41

    move-object/from16 v43, v42

    move-object/from16 v44, v43

    move-object/from16 v45, v44

    move-object/from16 v46, v45

    move-object/from16 v49, v46

    move-object/from16 v50, v49

    move-object/from16 v51, v50

    move-object/from16 v52, v51

    move-object/from16 v53, v52

    move-object/from16 v54, v53

    move-object/from16 v55, v54

    move-object/from16 v56, v55

    move-object/from16 v57, v56

    move-object/from16 v58, v57

    move-object/from16 v59, v58

    move-object/from16 v60, v59

    move-object/from16 v61, v60

    move-object/from16 v62, v61

    move/from16 v31, v12

    move/from16 v30, v13

    move-object/from16 v12, v62

    move-object v13, v12

    :goto_1
    if-eqz v64, :cond_4

    move/from16 v65, v10

    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result v10

    packed-switch v10, :pswitch_data_0

    new-instance v0, Lkotlinx/serialization/UnknownFieldException;

    invoke-direct {v0, v10}, Lkotlinx/serialization/UnknownFieldException;-><init>(I)V

    throw v0

    :pswitch_0
    sget-object v10, Lcom/superwall/sdk/models/customer/CustomerInfo$$serializer;->INSTANCE:Lcom/superwall/sdk/models/customer/CustomerInfo$$serializer;

    check-cast v10, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v66, v15

    const/16 v15, 0x26

    invoke-interface {v0, v1, v15, v10, v12}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v12, v10

    check-cast v12, Lcom/superwall/sdk/models/customer/CustomerInfo;

    or-int/lit8 v48, v48, 0x40

    goto/16 :goto_3

    :pswitch_1
    move-object/from16 v66, v15

    sget-object v10, Lcom/superwall/sdk/models/serialization/AnyMapSerializer;->INSTANCE:Lcom/superwall/sdk/models/serialization/AnyMapSerializer;

    check-cast v10, Lkotlinx/serialization/DeserializationStrategy;

    const/16 v15, 0x25

    invoke-interface {v0, v1, v15, v10, v13}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v13, v10

    check-cast v13, Ljava/util/Map;

    or-int/lit8 v48, v48, 0x20

    goto/16 :goto_3

    :pswitch_2
    move-object/from16 v66, v15

    const/16 v10, 0x24

    invoke-interface {v0, v1, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v47

    or-int/lit8 v48, v48, 0x10

    goto :goto_2

    :pswitch_3
    move-object/from16 v66, v15

    const/16 v10, 0x23

    invoke-interface {v0, v1, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v55

    or-int/lit8 v48, v48, 0x8

    goto :goto_2

    :pswitch_4
    move-object/from16 v66, v15

    const/16 v10, 0x22

    invoke-interface {v0, v1, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v50

    or-int/lit8 v48, v48, 0x4

    :goto_2
    sget-object v10, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v67, v2

    move-object/from16 v34, v36

    move-object/from16 v23, v37

    move-object/from16 v22, v39

    move-object/from16 v18, v40

    move-object/from16 v19, v41

    move-object/from16 v20, v42

    move-object/from16 v25, v43

    move-object/from16 v33, v57

    move-object/from16 v26, v58

    move-object/from16 v28, v59

    move-object/from16 v30, v60

    move-object/from16 v32, v62

    move/from16 v10, v65

    goto/16 :goto_9

    :pswitch_5
    move-object/from16 v66, v15

    sget-object v10, Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo$$serializer;->INSTANCE:Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo$$serializer;

    check-cast v10, Lkotlinx/serialization/DeserializationStrategy;

    const/16 v15, 0x21

    invoke-interface {v0, v1, v15, v10, v14}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v14, v10

    check-cast v14, Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;

    or-int/lit8 v48, v48, 0x2

    goto :goto_3

    :pswitch_6
    move-object/from16 v66, v15

    const/16 v15, 0x20

    aget-object v10, v24, v15

    check-cast v10, Lkotlinx/serialization/DeserializationStrategy;

    invoke-interface {v0, v1, v15, v10, v11}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Ljava/util/List;

    or-int/lit8 v48, v48, 0x1

    :goto_3
    sget-object v10, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v67, v2

    move-object/from16 v34, v36

    move-object/from16 v23, v37

    move-object/from16 v22, v39

    move-object/from16 v18, v40

    move-object/from16 v19, v41

    move-object/from16 v20, v42

    move-object/from16 v25, v43

    move-object/from16 v33, v57

    move-object/from16 v26, v58

    move-object/from16 v28, v59

    move-object/from16 v30, v60

    move-object/from16 v32, v62

    move/from16 v10, v65

    goto/16 :goto_8

    :pswitch_7
    move-object/from16 v66, v15

    const/16 v10, 0x1f

    const/16 v15, 0x20

    aget-object v21, v24, v10

    move-object/from16 v15, v21

    check-cast v15, Lkotlinx/serialization/DeserializationStrategy;

    invoke-interface {v0, v1, v10, v15, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/high16 v15, -0x80000000

    or-int v15, v65, v15

    sget-object v21, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_4

    :pswitch_8
    move-object/from16 v66, v15

    const/16 v10, 0x1f

    const/16 v15, 0x1e

    aget-object v16, v24, v15

    move-object/from16 v10, v16

    check-cast v10, Lkotlinx/serialization/DeserializationStrategy;

    invoke-interface {v0, v1, v15, v10, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    const/high16 v10, 0x40000000    # 2.0f

    or-int v10, v65, v10

    sget-object v16, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_6

    :pswitch_9
    move-object/from16 v66, v15

    const/16 v10, 0x1d

    const/16 v15, 0x1e

    aget-object v16, v24, v10

    move-object/from16 v15, v16

    check-cast v15, Lkotlinx/serialization/DeserializationStrategy;

    invoke-interface {v0, v1, v10, v15, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;

    const/high16 v15, 0x20000000

    or-int v15, v65, v15

    sget-object v16, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_4
    move-object/from16 v67, v2

    move v10, v15

    goto/16 :goto_7

    :pswitch_a
    move-object/from16 v66, v15

    const/16 v10, 0x1d

    sget-object v15, Lcom/superwall/sdk/models/config/FeatureGatingBehaviorSerializer;->INSTANCE:Lcom/superwall/sdk/models/config/FeatureGatingBehaviorSerializer;

    check-cast v15, Lkotlinx/serialization/DeserializationStrategy;

    const/16 v10, 0x1c

    invoke-interface {v0, v1, v10, v15, v6}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/superwall/sdk/models/config/FeatureGatingBehavior;

    const/high16 v10, 0x10000000

    goto :goto_5

    :pswitch_b
    move-object/from16 v66, v15

    const/16 v10, 0x1b

    invoke-interface {v0, v1, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v63

    const/high16 v10, 0x8000000

    goto :goto_5

    :pswitch_c
    move-object/from16 v66, v15

    sget-object v10, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v10, Lkotlinx/serialization/DeserializationStrategy;

    const/16 v15, 0x1a

    invoke-interface {v0, v1, v15, v10, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const/high16 v10, 0x4000000

    goto :goto_5

    :pswitch_d
    move-object/from16 v66, v15

    sget-object v10, Lkotlinx/serialization/internal/DoubleSerializer;->INSTANCE:Lkotlinx/serialization/internal/DoubleSerializer;

    check-cast v10, Lkotlinx/serialization/DeserializationStrategy;

    const/16 v15, 0x19

    invoke-interface {v0, v1, v15, v10, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    const/high16 v10, 0x2000000

    goto :goto_5

    :pswitch_e
    move-object/from16 v66, v15

    sget-object v10, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v10, Lkotlinx/serialization/DeserializationStrategy;

    const/16 v15, 0x18

    invoke-interface {v0, v1, v15, v10, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const/high16 v10, 0x1000000

    goto :goto_5

    :pswitch_f
    move-object/from16 v66, v15

    sget-object v10, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v10, Lkotlinx/serialization/DeserializationStrategy;

    const/16 v15, 0x17

    invoke-interface {v0, v1, v15, v10, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const/high16 v10, 0x800000

    :goto_5
    or-int v10, v65, v10

    sget-object v15, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_6
    move-object/from16 v67, v2

    goto/16 :goto_7

    :pswitch_10
    move-object/from16 v66, v15

    sget-object v10, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v10, Lkotlinx/serialization/DeserializationStrategy;

    const/16 v15, 0x16

    move-object/from16 v67, v2

    move-object/from16 v2, v66

    invoke-interface {v0, v1, v15, v10, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Ljava/lang/String;

    const/high16 v2, 0x400000

    or-int v10, v65, v2

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v34, v36

    move-object/from16 v23, v37

    move-object/from16 v22, v39

    move-object/from16 v18, v40

    move-object/from16 v19, v41

    move-object/from16 v20, v42

    move-object/from16 v25, v43

    move-object/from16 v33, v57

    move-object/from16 v26, v58

    move-object/from16 v28, v59

    move-object/from16 v30, v60

    move-object/from16 v32, v62

    goto/16 :goto_9

    :pswitch_11
    move-object/from16 v67, v2

    move-object v2, v15

    sget-object v10, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v10, Lkotlinx/serialization/DeserializationStrategy;

    const/16 v15, 0x15

    move-object/from16 v66, v2

    move-object/from16 v2, v53

    invoke-interface {v0, v1, v15, v10, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Ljava/lang/String;

    const/high16 v2, 0x200000

    or-int v2, v65, v2

    sget-object v15, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v53, v10

    move-object/from16 v34, v36

    move-object/from16 v23, v37

    move-object/from16 v22, v39

    move-object/from16 v18, v40

    move-object/from16 v19, v41

    move-object/from16 v20, v42

    move-object/from16 v25, v43

    move-object/from16 v33, v57

    move-object/from16 v26, v58

    move-object/from16 v28, v59

    move-object/from16 v30, v60

    move-object/from16 v32, v62

    move-object/from16 v15, v66

    move v10, v2

    move-object/from16 v43, v3

    move-object/from16 v40, v4

    const/4 v2, 0x0

    goto/16 :goto_a

    :pswitch_12
    move-object/from16 v67, v2

    move-object/from16 v66, v15

    move-object/from16 v2, v53

    sget-object v10, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v10, Lkotlinx/serialization/DeserializationStrategy;

    const/16 v15, 0x14

    move-object/from16 v2, v46

    invoke-interface {v0, v1, v15, v10, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/high16 v10, 0x100000

    or-int v10, v65, v10

    sget-object v15, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v46, v2

    goto :goto_7

    :pswitch_13
    move-object/from16 v67, v2

    move-object/from16 v66, v15

    move-object/from16 v2, v46

    sget-object v10, Lkotlinx/serialization/internal/DoubleSerializer;->INSTANCE:Lkotlinx/serialization/internal/DoubleSerializer;

    check-cast v10, Lkotlinx/serialization/DeserializationStrategy;

    const/16 v15, 0x13

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v15, v10, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    const/high16 v10, 0x80000

    or-int v10, v65, v10

    sget-object v15, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v45, v2

    goto :goto_7

    :pswitch_14
    move-object/from16 v67, v2

    move-object/from16 v66, v15

    move-object/from16 v2, v45

    sget-object v10, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v10, Lkotlinx/serialization/DeserializationStrategy;

    const/16 v15, 0x12

    move-object/from16 v2, v44

    invoke-interface {v0, v1, v15, v10, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/high16 v10, 0x40000

    or-int v10, v65, v10

    sget-object v15, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v44, v2

    :goto_7
    move-object/from16 v34, v36

    move-object/from16 v23, v37

    move-object/from16 v22, v39

    move-object/from16 v18, v40

    move-object/from16 v19, v41

    move-object/from16 v20, v42

    move-object/from16 v25, v43

    move-object/from16 v33, v57

    move-object/from16 v26, v58

    move-object/from16 v28, v59

    move-object/from16 v30, v60

    move-object/from16 v32, v62

    :goto_8
    move-object/from16 v15, v66

    :goto_9
    const/4 v2, 0x0

    move-object/from16 v43, v3

    move-object/from16 v40, v4

    :goto_a
    const/4 v3, 0x1

    goto/16 :goto_c

    :pswitch_15
    move-object/from16 v67, v2

    move-object/from16 v66, v15

    move-object/from16 v2, v44

    sget-object v10, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v10, Lkotlinx/serialization/DeserializationStrategy;

    const/16 v15, 0x11

    move-object/from16 v2, v43

    invoke-interface {v0, v1, v15, v10, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/high16 v10, 0x20000

    or-int v10, v65, v10

    sget-object v15, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v25, v2

    move-object/from16 v43, v3

    move-object/from16 v34, v36

    move-object/from16 v23, v37

    move-object/from16 v22, v39

    move-object/from16 v18, v40

    move-object/from16 v19, v41

    move-object/from16 v20, v42

    goto :goto_b

    :pswitch_16
    move-object/from16 v67, v2

    move-object/from16 v66, v15

    move-object/from16 v2, v43

    sget-object v10, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v10, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v18, v2

    move-object/from16 v15, v42

    const/16 v2, 0x10

    invoke-interface {v0, v1, v2, v10, v15}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const/high16 v15, 0x10000

    or-int v15, v65, v15

    sget-object v42, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v43, v3

    move-object/from16 v20, v10

    move v10, v15

    move-object/from16 v25, v18

    move-object/from16 v34, v36

    move-object/from16 v23, v37

    move-object/from16 v22, v39

    move-object/from16 v18, v40

    move-object/from16 v19, v41

    goto :goto_b

    :pswitch_17
    move-object/from16 v67, v2

    move-object/from16 v66, v15

    move-object/from16 v15, v42

    move-object/from16 v18, v43

    const/16 v2, 0x10

    sget-object v10, Lkotlinx/serialization/internal/DoubleSerializer;->INSTANCE:Lkotlinx/serialization/internal/DoubleSerializer;

    check-cast v10, Lkotlinx/serialization/DeserializationStrategy;

    const/16 v2, 0xf

    move-object/from16 v43, v3

    move-object/from16 v3, v41

    invoke-interface {v0, v1, v2, v10, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    const v3, 0x8000

    or-int v10, v65, v3

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v19, v2

    move-object/from16 v20, v15

    move-object/from16 v25, v18

    move-object/from16 v34, v36

    move-object/from16 v23, v37

    move-object/from16 v22, v39

    move-object/from16 v18, v40

    :goto_b
    move-object/from16 v33, v57

    move-object/from16 v26, v58

    move-object/from16 v28, v59

    move-object/from16 v30, v60

    move-object/from16 v32, v62

    move-object/from16 v15, v66

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object/from16 v40, v4

    :goto_c
    const/4 v4, 0x3

    goto/16 :goto_19

    :pswitch_18
    move-object/from16 v67, v2

    move-object/from16 v66, v15

    move-object/from16 v15, v42

    move-object/from16 v18, v43

    move-object/from16 v43, v3

    move-object/from16 v3, v41

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v2, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v19, v3

    move-object/from16 v10, v40

    const/16 v3, 0xe

    invoke-interface {v0, v1, v3, v2, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move/from16 v10, v65

    or-int/lit16 v10, v10, 0x4000

    sget-object v40, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v40, v4

    move-object/from16 v20, v15

    move-object/from16 v25, v18

    move-object/from16 v34, v36

    move-object/from16 v23, v37

    move-object/from16 v22, v39

    move-object/from16 v33, v57

    move-object/from16 v26, v58

    move-object/from16 v28, v59

    move-object/from16 v30, v60

    move-object/from16 v32, v62

    move-object/from16 v15, v66

    const/4 v3, 0x1

    const/4 v4, 0x3

    move-object/from16 v18, v2

    goto/16 :goto_12

    :pswitch_19
    move-object/from16 v67, v2

    move-object/from16 v66, v15

    move-object/from16 v10, v40

    move-object/from16 v19, v41

    move-object/from16 v15, v42

    move-object/from16 v18, v43

    move/from16 v2, v65

    move-object/from16 v43, v3

    const/16 v3, 0xe

    sget-object v40, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    move-object/from16 v3, v40

    check-cast v3, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v40, v4

    move-object/from16 v20, v5

    move-object/from16 v4, v39

    const/16 v5, 0xd

    invoke-interface {v0, v1, v5, v3, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    or-int/lit16 v2, v2, 0x2000

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v22, v3

    move-object/from16 v25, v18

    move-object/from16 v5, v20

    move-object/from16 v34, v36

    move-object/from16 v23, v37

    goto/16 :goto_e

    :pswitch_1a
    move-object/from16 v67, v2

    move-object/from16 v20, v5

    move-object/from16 v66, v15

    move-object/from16 v10, v40

    move-object/from16 v19, v41

    move-object/from16 v15, v42

    move-object/from16 v18, v43

    move/from16 v2, v65

    const/16 v5, 0xd

    move-object/from16 v43, v3

    move-object/from16 v40, v4

    move-object/from16 v4, v39

    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v3, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v22, v4

    move-object/from16 v5, v37

    const/16 v4, 0xc

    invoke-interface {v0, v1, v4, v3, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    or-int/lit16 v2, v2, 0x1000

    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v23, v3

    move-object/from16 v25, v18

    move-object/from16 v5, v20

    move-object/from16 v34, v36

    goto/16 :goto_e

    :pswitch_1b
    move-object/from16 v67, v2

    move-object/from16 v20, v5

    move-object/from16 v66, v15

    move-object/from16 v5, v37

    move-object/from16 v22, v39

    move-object/from16 v10, v40

    move-object/from16 v19, v41

    move-object/from16 v15, v42

    move-object/from16 v18, v43

    move/from16 v2, v65

    move-object/from16 v43, v3

    move-object/from16 v40, v4

    const/16 v4, 0xc

    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v3, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v23, v5

    move-object/from16 v4, v36

    const/16 v5, 0xb

    invoke-interface {v0, v1, v5, v3, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    or-int/lit16 v2, v2, 0x800

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v34, v3

    goto/16 :goto_d

    :pswitch_1c
    move-object/from16 v67, v2

    move-object/from16 v20, v5

    move-object/from16 v66, v15

    move-object/from16 v23, v37

    move-object/from16 v22, v39

    move-object/from16 v10, v40

    move-object/from16 v19, v41

    move-object/from16 v15, v42

    move-object/from16 v18, v43

    move/from16 v2, v65

    const/16 v5, 0xb

    move-object/from16 v43, v3

    move-object/from16 v40, v4

    move-object/from16 v4, v36

    const/16 v3, 0xa

    invoke-interface {v0, v1, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v56

    or-int/lit16 v2, v2, 0x400

    sget-object v35, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v34, v4

    goto :goto_d

    :pswitch_1d
    move-object/from16 v67, v2

    move-object/from16 v20, v5

    move-object/from16 v66, v15

    move-object/from16 v23, v37

    move-object/from16 v22, v39

    move-object/from16 v10, v40

    move-object/from16 v19, v41

    move-object/from16 v15, v42

    move-object/from16 v18, v43

    move/from16 v2, v65

    const/16 v5, 0xb

    move-object/from16 v43, v3

    move-object/from16 v40, v4

    move-object/from16 v4, v36

    const/16 v3, 0xa

    sget-object v35, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    move-object/from16 v3, v35

    check-cast v3, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v34, v4

    move-object/from16 v5, v57

    const/16 v4, 0x9

    invoke-interface {v0, v1, v4, v3, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v57, v3

    check-cast v57, Ljava/lang/String;

    or-int/lit16 v2, v2, 0x200

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_d
    move-object/from16 v25, v18

    move-object/from16 v5, v20

    :goto_e
    move-object/from16 v33, v57

    goto :goto_f

    :pswitch_1e
    move-object/from16 v67, v2

    move-object/from16 v20, v5

    move-object/from16 v66, v15

    move-object/from16 v34, v36

    move-object/from16 v23, v37

    move-object/from16 v22, v39

    move-object/from16 v10, v40

    move-object/from16 v19, v41

    move-object/from16 v15, v42

    move-object/from16 v18, v43

    move-object/from16 v5, v57

    move/from16 v2, v65

    move-object/from16 v43, v3

    move-object/from16 v40, v4

    const/16 v4, 0x9

    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v3, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v33, v5

    move-object/from16 v4, v62

    const/16 v5, 0x8

    invoke-interface {v0, v1, v5, v3, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v62, v3

    check-cast v62, Ljava/lang/String;

    or-int/lit16 v2, v2, 0x100

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v25, v18

    move-object/from16 v5, v20

    :goto_f
    move-object/from16 v26, v58

    move-object/from16 v28, v59

    move-object/from16 v30, v60

    move-object/from16 v32, v62

    goto/16 :goto_10

    :pswitch_1f
    move-object/from16 v67, v2

    move-object/from16 v20, v5

    move-object/from16 v66, v15

    move-object/from16 v34, v36

    move-object/from16 v23, v37

    move-object/from16 v22, v39

    move-object/from16 v10, v40

    move-object/from16 v19, v41

    move-object/from16 v15, v42

    move-object/from16 v18, v43

    move-object/from16 v33, v57

    move/from16 v2, v65

    const/16 v5, 0x8

    move-object/from16 v43, v3

    move-object/from16 v40, v4

    move-object/from16 v4, v62

    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v3, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v32, v4

    move-object/from16 v5, v58

    const/4 v4, 0x7

    invoke-interface {v0, v1, v4, v3, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v58, v3

    check-cast v58, Ljava/lang/String;

    or-int/lit16 v2, v2, 0x80

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v25, v18

    move-object/from16 v5, v20

    move-object/from16 v26, v58

    move-object/from16 v28, v59

    move-object/from16 v30, v60

    goto/16 :goto_10

    :pswitch_20
    move-object/from16 v67, v2

    move-object/from16 v20, v5

    move-object/from16 v66, v15

    move-object/from16 v34, v36

    move-object/from16 v23, v37

    move-object/from16 v22, v39

    move-object/from16 v10, v40

    move-object/from16 v19, v41

    move-object/from16 v15, v42

    move-object/from16 v18, v43

    move-object/from16 v33, v57

    move-object/from16 v5, v58

    move-object/from16 v32, v62

    move/from16 v2, v65

    move-object/from16 v43, v3

    move-object/from16 v40, v4

    const/4 v4, 0x7

    aget-object v3, v24, v31

    check-cast v3, Lkotlinx/serialization/DeserializationStrategy;

    move/from16 v2, v31

    move-object/from16 v4, v60

    invoke-interface {v0, v1, v2, v3, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v60, v3

    check-cast v60, Ljava/util/List;

    or-int/lit8 v3, v65, 0x40

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v26, v5

    move-object/from16 v25, v18

    move-object/from16 v5, v20

    move-object/from16 v28, v59

    move-object/from16 v30, v60

    goto/16 :goto_13

    :pswitch_21
    move-object/from16 v67, v2

    move-object/from16 v20, v5

    move-object/from16 v66, v15

    move/from16 v2, v31

    move-object/from16 v34, v36

    move-object/from16 v23, v37

    move-object/from16 v22, v39

    move-object/from16 v10, v40

    move-object/from16 v19, v41

    move-object/from16 v15, v42

    move-object/from16 v18, v43

    move-object/from16 v33, v57

    move-object/from16 v5, v58

    move-object/from16 v32, v62

    move-object/from16 v43, v3

    move-object/from16 v40, v4

    move-object/from16 v4, v60

    aget-object v3, v24, v30

    check-cast v3, Lkotlinx/serialization/DeserializationStrategy;

    move/from16 v2, v30

    move-object/from16 v30, v4

    move v4, v2

    move-object/from16 v2, v61

    invoke-interface {v0, v1, v4, v3, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v61, v2

    check-cast v61, Ljava/util/List;

    or-int/lit8 v2, v65, 0x20

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v26, v5

    move-object/from16 v25, v18

    move-object/from16 v5, v20

    move-object/from16 v28, v59

    :goto_10
    const/4 v3, 0x1

    const/4 v4, 0x3

    :goto_11
    move-object/from16 v18, v10

    move-object/from16 v20, v15

    move-object/from16 v15, v66

    move v10, v2

    :goto_12
    const/4 v2, 0x0

    goto/16 :goto_19

    :pswitch_22
    move-object/from16 v67, v2

    move-object/from16 v20, v5

    move-object/from16 v66, v15

    move-object/from16 v34, v36

    move-object/from16 v23, v37

    move-object/from16 v22, v39

    move-object/from16 v10, v40

    move-object/from16 v19, v41

    move-object/from16 v15, v42

    move-object/from16 v18, v43

    move-object/from16 v33, v57

    move-object/from16 v5, v58

    move-object/from16 v2, v61

    move-object/from16 v32, v62

    move-object/from16 v43, v3

    move-object/from16 v40, v4

    move/from16 v4, v30

    move-object/from16 v30, v60

    sget-object v3, Lcom/superwall/sdk/models/triggers/Experiment$$serializer;->INSTANCE:Lcom/superwall/sdk/models/triggers/Experiment$$serializer;

    check-cast v3, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v29, v2

    move-object/from16 v4, v59

    const/4 v2, 0x4

    invoke-interface {v0, v1, v2, v3, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v59, v3

    check-cast v59, Lcom/superwall/sdk/models/triggers/Experiment;

    or-int/lit8 v3, v65, 0x10

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v26, v5

    move-object/from16 v25, v18

    move-object/from16 v5, v20

    move-object/from16 v61, v29

    move-object/from16 v28, v59

    :goto_13
    const/4 v2, 0x0

    const/4 v4, 0x3

    goto/16 :goto_16

    :pswitch_23
    move-object/from16 v67, v2

    move-object/from16 v20, v5

    move-object/from16 v66, v15

    move-object/from16 v34, v36

    move-object/from16 v23, v37

    move-object/from16 v22, v39

    move-object/from16 v10, v40

    move-object/from16 v19, v41

    move-object/from16 v15, v42

    move-object/from16 v18, v43

    move-object/from16 v33, v57

    move-object/from16 v5, v58

    move-object/from16 v30, v60

    move-object/from16 v29, v61

    move-object/from16 v32, v62

    const/4 v2, 0x4

    move-object/from16 v43, v3

    move-object/from16 v40, v4

    move-object/from16 v4, v59

    sget-object v3, Lcom/superwall/sdk/models/paywall/PaywallURL$$serializer;->INSTANCE:Lcom/superwall/sdk/models/paywall/PaywallURL$$serializer;

    check-cast v3, Lkotlinx/serialization/DeserializationStrategy;

    if-eqz v54, :cond_2

    invoke-static/range {v54 .. v54}, Lcom/superwall/sdk/models/paywall/PaywallURL;->box-impl(Ljava/lang/String;)Lcom/superwall/sdk/models/paywall/PaywallURL;

    move-result-object v54

    move-object/from16 v2, v54

    goto :goto_14

    :cond_2
    const/4 v2, 0x0

    :goto_14
    move-object/from16 v28, v4

    const/4 v4, 0x3

    invoke-interface {v0, v1, v4, v3, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/superwall/sdk/models/paywall/PaywallURL;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/superwall/sdk/models/paywall/PaywallURL;->unbox-impl()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v54, v2

    goto :goto_15

    :cond_3
    const/16 v54, 0x0

    :goto_15
    or-int/lit8 v2, v65, 0x8

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v26, v5

    move-object/from16 v25, v18

    move-object/from16 v5, v20

    move-object/from16 v61, v29

    const/4 v3, 0x1

    goto/16 :goto_11

    :pswitch_24
    move-object/from16 v67, v2

    move-object/from16 v20, v5

    move-object/from16 v66, v15

    move-object/from16 v34, v36

    move-object/from16 v23, v37

    move-object/from16 v22, v39

    move-object/from16 v10, v40

    move-object/from16 v19, v41

    move-object/from16 v15, v42

    move-object/from16 v18, v43

    move-object/from16 v33, v57

    move-object/from16 v5, v58

    move-object/from16 v28, v59

    move-object/from16 v30, v60

    move-object/from16 v29, v61

    move-object/from16 v32, v62

    const/4 v2, 0x2

    move-object/from16 v43, v3

    move-object/from16 v40, v4

    const/4 v4, 0x3

    invoke-interface {v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v51

    or-int/lit8 v3, v65, 0x4

    sget-object v27, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v26, v5

    move-object/from16 v25, v18

    move-object/from16 v5, v20

    const/4 v2, 0x0

    :goto_16
    move-object/from16 v18, v10

    move-object/from16 v20, v15

    move-object/from16 v15, v66

    move v10, v3

    const/4 v3, 0x1

    goto/16 :goto_19

    :pswitch_25
    move-object/from16 v67, v2

    move-object/from16 v20, v5

    move-object/from16 v66, v15

    move-object/from16 v34, v36

    move-object/from16 v23, v37

    move-object/from16 v22, v39

    move-object/from16 v10, v40

    move-object/from16 v19, v41

    move-object/from16 v15, v42

    move-object/from16 v18, v43

    move-object/from16 v33, v57

    move-object/from16 v5, v58

    move-object/from16 v28, v59

    move-object/from16 v30, v60

    move-object/from16 v29, v61

    move-object/from16 v32, v62

    const/4 v2, 0x2

    move-object/from16 v43, v3

    move-object/from16 v40, v4

    const/4 v3, 0x1

    const/4 v4, 0x3

    invoke-interface {v0, v1, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v52

    or-int/lit8 v26, v65, 0x2

    sget-object v27, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v25, v18

    const/4 v2, 0x0

    move-object/from16 v18, v10

    move/from16 v10, v26

    goto :goto_17

    :pswitch_26
    move-object/from16 v67, v2

    move-object/from16 v20, v5

    move-object/from16 v66, v15

    move-object/from16 v34, v36

    move-object/from16 v23, v37

    move-object/from16 v22, v39

    move-object/from16 v10, v40

    move-object/from16 v19, v41

    move-object/from16 v15, v42

    move-object/from16 v18, v43

    move-object/from16 v33, v57

    move-object/from16 v5, v58

    move-object/from16 v28, v59

    move-object/from16 v30, v60

    move-object/from16 v29, v61

    move-object/from16 v32, v62

    const/4 v2, 0x0

    move-object/from16 v43, v3

    move-object/from16 v40, v4

    const/4 v3, 0x1

    const/4 v4, 0x3

    invoke-interface {v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v49

    or-int/lit8 v25, v65, 0x1

    sget-object v26, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v26, v18

    move-object/from16 v18, v10

    move/from16 v10, v25

    move-object/from16 v25, v26

    :goto_17
    move-object/from16 v26, v5

    move-object/from16 v5, v20

    move-object/from16 v20, v15

    goto :goto_18

    :pswitch_27
    move-object/from16 v67, v2

    move-object/from16 v20, v5

    move-object/from16 v66, v15

    move-object/from16 v34, v36

    move-object/from16 v23, v37

    move-object/from16 v22, v39

    move-object/from16 v10, v40

    move-object/from16 v19, v41

    move-object/from16 v15, v42

    move-object/from16 v18, v43

    move-object/from16 v33, v57

    move-object/from16 v5, v58

    move-object/from16 v28, v59

    move-object/from16 v30, v60

    move-object/from16 v29, v61

    move-object/from16 v32, v62

    const/4 v2, 0x0

    move-object/from16 v43, v3

    move-object/from16 v40, v4

    const/4 v3, 0x1

    const/4 v4, 0x3

    sget-object v25, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v64, v2

    move-object/from16 v26, v5

    move-object/from16 v25, v18

    move-object/from16 v5, v20

    move-object/from16 v18, v10

    move-object/from16 v20, v15

    move/from16 v10, v65

    :goto_18
    move-object/from16 v15, v66

    :goto_19
    move-object/from16 v41, v19

    move-object/from16 v42, v20

    move-object/from16 v39, v22

    move-object/from16 v37, v23

    move-object/from16 v58, v26

    move-object/from16 v59, v28

    move-object/from16 v60, v30

    move-object/from16 v62, v32

    move-object/from16 v57, v33

    move-object/from16 v36, v34

    move-object/from16 v4, v40

    move-object/from16 v3, v43

    move-object/from16 v2, v67

    const/16 v30, 0x5

    const/16 v31, 0x6

    move-object/from16 v40, v18

    move-object/from16 v43, v25

    goto/16 :goto_1

    :cond_4
    move-object/from16 v67, v2

    move-object/from16 v20, v5

    move/from16 v65, v10

    move-object/from16 v66, v15

    move-object/from16 v34, v36

    move-object/from16 v23, v37

    move-object/from16 v22, v39

    move-object/from16 v10, v40

    move-object/from16 v19, v41

    move-object/from16 v15, v42

    move-object/from16 v18, v43

    move-object/from16 v33, v57

    move-object/from16 v5, v58

    move-object/from16 v28, v59

    move-object/from16 v30, v60

    move-object/from16 v29, v61

    move-object/from16 v32, v62

    move-object/from16 v43, v3

    move-object/from16 v40, v4

    move-object/from16 v16, v29

    move-object/from16 v29, v19

    move-object/from16 v19, v16

    move-object/from16 v21, v5

    move-object/from16 v42, v6

    move-object/from16 v38, v8

    move-object/from16 v37, v9

    move-object/from16 v31, v18

    move-object/from16 v27, v22

    move-object/from16 v26, v23

    move-object/from16 v18, v28

    move-object/from16 v22, v32

    move-object/from16 v23, v33

    move-object/from16 v25, v34

    move-object/from16 v39, v43

    move-object/from16 v32, v44

    move-object/from16 v33, v45

    move-object/from16 v34, v46

    move-object/from16 v16, v51

    move-object/from16 v35, v53

    move-object/from16 v17, v54

    move-object/from16 v24, v56

    move/from16 v41, v63

    move-object/from16 v36, v66

    move-object/from16 v43, v67

    move-object/from16 v28, v10

    move-object/from16 v46, v11

    move-object/from16 v51, v13

    move-object/from16 v44, v20

    move-object/from16 v20, v30

    move-object/from16 v45, v40

    move/from16 v13, v48

    move-object/from16 v48, v50

    move-object/from16 v40, v7

    move-object/from16 v30, v15

    move/from16 v50, v47

    move-object/from16 v15, v52

    move-object/from16 v52, v12

    move-object/from16 v47, v14

    move-object/from16 v14, v49

    move-object/from16 v49, v55

    move/from16 v12, v65

    :goto_1a
    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/CompositeDecoder;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    new-instance v11, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    const/16 v53, 0x0

    const/16 v54, 0x0

    invoke-direct/range {v11 .. v54}, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/models/triggers/Experiment;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;ZLcom/superwall/sdk/models/config/FeatureGatingBehavior;Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Lcom/superwall/sdk/models/customer/CustomerInfo;Lkotlinx/serialization/internal/SerializationConstructorMarker;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v11

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lcom/superwall/sdk/paywall/presentation/PaywallInfo$$serializer;->deserialize(Lkotlinx/serialization/encoding/Decoder;)Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    move-result-object p1

    return-object p1
.end method

.method public final getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 1

    sget-object v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-object v0
.end method

.method public final serialize(Lkotlinx/serialization/encoding/Encoder;Lcom/superwall/sdk/paywall/presentation/PaywallInfo;)V
    .locals 1

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    sget-object v0, Lcom/superwall/sdk/paywall/presentation/PaywallInfo$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/Encoder;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeEncoder;

    move-result-object p1

    invoke-static {p2, p1, v0}, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;->write$Self$superwall_release(Lcom/superwall/sdk/paywall/presentation/PaywallInfo;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    return-void
.end method

.method public bridge synthetic serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 0

    .line 25
    check-cast p2, Lcom/superwall/sdk/paywall/presentation/PaywallInfo;

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/paywall/presentation/PaywallInfo$$serializer;->serialize(Lkotlinx/serialization/encoding/Encoder;Lcom/superwall/sdk/paywall/presentation/PaywallInfo;)V

    return-void
.end method

.method public typeParametersSerializers()[Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lkotlinx/serialization/KSerializer<",
            "*>;"
        }
    .end annotation

    .line 25
    invoke-static {p0}, Lkotlinx/serialization/internal/GeneratedSerializer$DefaultImpls;->typeParametersSerializers(Lkotlinx/serialization/internal/GeneratedSerializer;)[Lkotlinx/serialization/KSerializer;

    move-result-object v0

    return-object v0
.end method
