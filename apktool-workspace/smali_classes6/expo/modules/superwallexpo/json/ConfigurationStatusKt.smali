.class public final Lexpo/modules/superwallexpo/json/ConfigurationStatusKt;
.super Ljava/lang/Object;
.source "ConfigurationStatus.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "asString",
        "",
        "Lcom/superwall/sdk/config/models/ConfigurationStatus;",
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
.method public static final asString(Lcom/superwall/sdk/config/models/ConfigurationStatus;)Ljava/lang/String;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    sget-object v0, Lcom/superwall/sdk/config/models/ConfigurationStatus$Pending;->INSTANCE:Lcom/superwall/sdk/config/models/ConfigurationStatus$Pending;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "PENDING"

    return-object p0

    .line 8
    :cond_0
    sget-object v0, Lcom/superwall/sdk/config/models/ConfigurationStatus$Configured;->INSTANCE:Lcom/superwall/sdk/config/models/ConfigurationStatus$Configured;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "CONFIGURED"

    return-object p0

    .line 9
    :cond_1
    sget-object v0, Lcom/superwall/sdk/config/models/ConfigurationStatus$Failed;->INSTANCE:Lcom/superwall/sdk/config/models/ConfigurationStatus$Failed;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "FAILED"

    return-object p0

    .line 6
    :cond_2
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method
