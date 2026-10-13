.class public final Lcom/superwall/sdk/store/testmode/TestModeState$Active;
.super Lcom/superwall/sdk/store/testmode/TestModeState;
.source "TestModeState.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/superwall/sdk/store/testmode/TestModeState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Active"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\t\u0010\u000c\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\r\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010\u000e\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u00d6\u0003J\t\u0010\u0013\u001a\u00020\u0014H\u00d6\u0001J\t\u0010\u0015\u001a\u00020\u0016H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/superwall/sdk/store/testmode/TestModeState$Active;",
        "Lcom/superwall/sdk/store/testmode/TestModeState;",
        "reason",
        "Lcom/superwall/sdk/store/testmode/TestModeReason;",
        "session",
        "Lcom/superwall/sdk/store/testmode/TestModeSessionData;",
        "<init>",
        "(Lcom/superwall/sdk/store/testmode/TestModeReason;Lcom/superwall/sdk/store/testmode/TestModeSessionData;)V",
        "getReason",
        "()Lcom/superwall/sdk/store/testmode/TestModeReason;",
        "getSession",
        "()Lcom/superwall/sdk/store/testmode/TestModeSessionData;",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "",
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


# instance fields
.field private final reason:Lcom/superwall/sdk/store/testmode/TestModeReason;

.field private final session:Lcom/superwall/sdk/store/testmode/TestModeSessionData;


# direct methods
.method public constructor <init>(Lcom/superwall/sdk/store/testmode/TestModeReason;Lcom/superwall/sdk/store/testmode/TestModeSessionData;)V
    .locals 1

    const-string v0, "reason"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "session"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 14
    invoke-direct {p0, v0}, Lcom/superwall/sdk/store/testmode/TestModeState;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 12
    iput-object p1, p0, Lcom/superwall/sdk/store/testmode/TestModeState$Active;->reason:Lcom/superwall/sdk/store/testmode/TestModeReason;

    .line 13
    iput-object p2, p0, Lcom/superwall/sdk/store/testmode/TestModeState$Active;->session:Lcom/superwall/sdk/store/testmode/TestModeSessionData;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/superwall/sdk/store/testmode/TestModeReason;Lcom/superwall/sdk/store/testmode/TestModeSessionData;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 13
    new-instance p2, Lcom/superwall/sdk/store/testmode/TestModeSessionData;

    invoke-direct {p2}, Lcom/superwall/sdk/store/testmode/TestModeSessionData;-><init>()V

    .line 11
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/superwall/sdk/store/testmode/TestModeState$Active;-><init>(Lcom/superwall/sdk/store/testmode/TestModeReason;Lcom/superwall/sdk/store/testmode/TestModeSessionData;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/superwall/sdk/store/testmode/TestModeState$Active;Lcom/superwall/sdk/store/testmode/TestModeReason;Lcom/superwall/sdk/store/testmode/TestModeSessionData;ILjava/lang/Object;)Lcom/superwall/sdk/store/testmode/TestModeState$Active;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/superwall/sdk/store/testmode/TestModeState$Active;->reason:Lcom/superwall/sdk/store/testmode/TestModeReason;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/superwall/sdk/store/testmode/TestModeState$Active;->session:Lcom/superwall/sdk/store/testmode/TestModeSessionData;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/store/testmode/TestModeState$Active;->copy(Lcom/superwall/sdk/store/testmode/TestModeReason;Lcom/superwall/sdk/store/testmode/TestModeSessionData;)Lcom/superwall/sdk/store/testmode/TestModeState$Active;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/superwall/sdk/store/testmode/TestModeReason;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/store/testmode/TestModeState$Active;->reason:Lcom/superwall/sdk/store/testmode/TestModeReason;

    return-object v0
.end method

.method public final component2()Lcom/superwall/sdk/store/testmode/TestModeSessionData;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/store/testmode/TestModeState$Active;->session:Lcom/superwall/sdk/store/testmode/TestModeSessionData;

    return-object v0
.end method

.method public final copy(Lcom/superwall/sdk/store/testmode/TestModeReason;Lcom/superwall/sdk/store/testmode/TestModeSessionData;)Lcom/superwall/sdk/store/testmode/TestModeState$Active;
    .locals 1

    const-string v0, "reason"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "session"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/superwall/sdk/store/testmode/TestModeState$Active;

    invoke-direct {v0, p1, p2}, Lcom/superwall/sdk/store/testmode/TestModeState$Active;-><init>(Lcom/superwall/sdk/store/testmode/TestModeReason;Lcom/superwall/sdk/store/testmode/TestModeSessionData;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/superwall/sdk/store/testmode/TestModeState$Active;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/superwall/sdk/store/testmode/TestModeState$Active;

    iget-object v1, p0, Lcom/superwall/sdk/store/testmode/TestModeState$Active;->reason:Lcom/superwall/sdk/store/testmode/TestModeReason;

    iget-object v3, p1, Lcom/superwall/sdk/store/testmode/TestModeState$Active;->reason:Lcom/superwall/sdk/store/testmode/TestModeReason;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/superwall/sdk/store/testmode/TestModeState$Active;->session:Lcom/superwall/sdk/store/testmode/TestModeSessionData;

    iget-object p1, p1, Lcom/superwall/sdk/store/testmode/TestModeState$Active;->session:Lcom/superwall/sdk/store/testmode/TestModeSessionData;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getReason()Lcom/superwall/sdk/store/testmode/TestModeReason;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/superwall/sdk/store/testmode/TestModeState$Active;->reason:Lcom/superwall/sdk/store/testmode/TestModeReason;

    return-object v0
.end method

.method public final getSession()Lcom/superwall/sdk/store/testmode/TestModeSessionData;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/superwall/sdk/store/testmode/TestModeState$Active;->session:Lcom/superwall/sdk/store/testmode/TestModeSessionData;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/superwall/sdk/store/testmode/TestModeState$Active;->reason:Lcom/superwall/sdk/store/testmode/TestModeReason;

    invoke-virtual {v0}, Lcom/superwall/sdk/store/testmode/TestModeReason;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/store/testmode/TestModeState$Active;->session:Lcom/superwall/sdk/store/testmode/TestModeSessionData;

    invoke-virtual {v1}, Lcom/superwall/sdk/store/testmode/TestModeSessionData;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/superwall/sdk/store/testmode/TestModeState$Active;->reason:Lcom/superwall/sdk/store/testmode/TestModeReason;

    iget-object v1, p0, Lcom/superwall/sdk/store/testmode/TestModeState$Active;->session:Lcom/superwall/sdk/store/testmode/TestModeSessionData;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Active(reason="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", session="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
