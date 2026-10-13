.class public final Lcom/superwall/sdk/misc/ConstantsKt;
.super Ljava/lang/Object;
.source "Constants.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\"\u0014\u0010\u0000\u001a\u00020\u0001X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0002\u0010\u0003\"\u0011\u0010\u0004\u001a\u00020\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0003\u00a8\u0006\u0006"
    }
    d2 = {
        "sdkVersion",
        "",
        "getSdkVersion",
        "()Ljava/lang/String;",
        "SDK_VERSION",
        "getSDK_VERSION",
        "superwall_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final SDK_VERSION:Ljava/lang/String; = "0.0.1"

.field private static final sdkVersion:Ljava/lang/String; = "0.0.1"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final getSDK_VERSION()Ljava/lang/String;
    .locals 1

    .line 4
    sget-object v0, Lcom/superwall/sdk/misc/ConstantsKt;->SDK_VERSION:Ljava/lang/String;

    return-object v0
.end method

.method public static final getSdkVersion()Ljava/lang/String;
    .locals 1

    .line 3
    sget-object v0, Lcom/superwall/sdk/misc/ConstantsKt;->sdkVersion:Ljava/lang/String;

    return-object v0
.end method
