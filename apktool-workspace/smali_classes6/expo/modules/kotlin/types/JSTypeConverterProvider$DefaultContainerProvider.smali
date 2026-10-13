.class public final Lexpo/modules/kotlin/types/JSTypeConverterProvider$DefaultContainerProvider;
.super Ljava/lang/Object;
.source "JSTypeConverterProvider.kt"

# interfaces
.implements Lexpo/modules/kotlin/types/JSTypeConverterProvider$ContainerProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/kotlin/types/JSTypeConverterProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultContainerProvider"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c1\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u0004\u001a\u00020\u0005H\u0016J\u0008\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "Lexpo/modules/kotlin/types/JSTypeConverterProvider$DefaultContainerProvider;",
        "Lexpo/modules/kotlin/types/JSTypeConverterProvider$ContainerProvider;",
        "<init>",
        "()V",
        "createMap",
        "Lcom/facebook/react/bridge/WritableMap;",
        "createArray",
        "Lcom/facebook/react/bridge/WritableArray;",
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

.field public static final INSTANCE:Lexpo/modules/kotlin/types/JSTypeConverterProvider$DefaultContainerProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lexpo/modules/kotlin/types/JSTypeConverterProvider$DefaultContainerProvider;

    invoke-direct {v0}, Lexpo/modules/kotlin/types/JSTypeConverterProvider$DefaultContainerProvider;-><init>()V

    sput-object v0, Lexpo/modules/kotlin/types/JSTypeConverterProvider$DefaultContainerProvider;->INSTANCE:Lexpo/modules/kotlin/types/JSTypeConverterProvider$DefaultContainerProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createArray()Lcom/facebook/react/bridge/WritableArray;
    .locals 1

    .line 26
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v0

    return-object v0
.end method

.method public createMap()Lcom/facebook/react/bridge/WritableMap;
    .locals 1

    .line 25
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    return-object v0
.end method
