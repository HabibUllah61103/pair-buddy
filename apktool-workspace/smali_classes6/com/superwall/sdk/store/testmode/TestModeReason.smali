.class public abstract Lcom/superwall/sdk/store/testmode/TestModeReason;
.super Ljava/lang/Object;
.source "TestModeReason.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/store/testmode/TestModeReason$ApplicationIdMismatch;,
        Lcom/superwall/sdk/store/testmode/TestModeReason$ConfigMatch;,
        Lcom/superwall/sdk/store/testmode/TestModeReason$TestModeOption;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00020\u0001:\u0003\u0008\t\nB\t\u0008\u0004\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u0011\u0010\u0004\u001a\u00020\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007\u0082\u0001\u0003\u000b\u000c\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/superwall/sdk/store/testmode/TestModeReason;",
        "",
        "<init>",
        "()V",
        "description",
        "",
        "getDescription",
        "()Ljava/lang/String;",
        "ConfigMatch",
        "ApplicationIdMismatch",
        "TestModeOption",
        "Lcom/superwall/sdk/store/testmode/TestModeReason$ApplicationIdMismatch;",
        "Lcom/superwall/sdk/store/testmode/TestModeReason$ConfigMatch;",
        "Lcom/superwall/sdk/store/testmode/TestModeReason$TestModeOption;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/superwall/sdk/store/testmode/TestModeReason;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDescription()Ljava/lang/String;
    .locals 4

    .line 18
    instance-of v0, p0, Lcom/superwall/sdk/store/testmode/TestModeReason$ConfigMatch;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/superwall/sdk/store/testmode/TestModeReason$ConfigMatch;

    invoke-virtual {v0}, Lcom/superwall/sdk/store/testmode/TestModeReason$ConfigMatch;->getMatchedId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "User ID \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" matched a test mode user in the dashboard config."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 19
    :cond_0
    instance-of v0, p0, Lcom/superwall/sdk/store/testmode/TestModeReason$ApplicationIdMismatch;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lcom/superwall/sdk/store/testmode/TestModeReason$ApplicationIdMismatch;

    invoke-virtual {v0}, Lcom/superwall/sdk/store/testmode/TestModeReason$ApplicationIdMismatch;->getExpected()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/superwall/sdk/store/testmode/TestModeReason$ApplicationIdMismatch;->getActual()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Application ID mismatch: expected \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\", got \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 20
    :cond_1
    instance-of v0, p0, Lcom/superwall/sdk/store/testmode/TestModeReason$TestModeOption;

    if-eqz v0, :cond_2

    const-string v0, "Test mode is always enabled via SuperwallOptions."

    return-object v0

    .line 17
    :cond_2
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method
