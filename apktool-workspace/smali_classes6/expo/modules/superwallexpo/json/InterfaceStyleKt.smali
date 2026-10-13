.class public final Lexpo/modules/superwallexpo/json/InterfaceStyleKt;
.super Ljava/lang/Object;
.source "InterfaceStyle.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u001a\u000e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "interfaceStyleFromString",
        "Lcom/superwall/sdk/network/device/InterfaceStyle;",
        "interfaceStyle",
        "",
        "expo-superwall_release"
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
.method public static final interfaceStyleFromString(Ljava/lang/String;)Lcom/superwall/sdk/network/device/InterfaceStyle;
    .locals 1

    const-string v0, "interfaceStyle"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    const-string v0, "LIGHT"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/superwall/sdk/network/device/InterfaceStyle;->LIGHT:Lcom/superwall/sdk/network/device/InterfaceStyle;

    return-object p0

    .line 9
    :cond_0
    const-string v0, "DARK"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/superwall/sdk/network/device/InterfaceStyle;->DARK:Lcom/superwall/sdk/network/device/InterfaceStyle;

    return-object p0

    .line 10
    :cond_1
    sget-object p0, Lcom/superwall/sdk/network/device/InterfaceStyle;->LIGHT:Lcom/superwall/sdk/network/device/InterfaceStyle;

    return-object p0
.end method
