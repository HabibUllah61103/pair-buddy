.class public final Lcom/superwall/sdk/store/testmode/ui/TestModeModalResult;
.super Ljava/lang/Object;
.source "TestModeModal.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0080\u0008\u0018\u00002\u00020\u0001B\u001d\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\u00c6\u0003J\t\u0010\u000e\u001a\u00020\u0006H\u00c6\u0003J#\u0010\u000f\u001a\u00020\u00002\u000e\u0008\u0002\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006H\u00c6\u0001J\u0013\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0013\u001a\u00020\u0014H\u00d6\u0001J\t\u0010\u0015\u001a\u00020\u0016H\u00d6\u0001R\u0017\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/superwall/sdk/store/testmode/ui/TestModeModalResult;",
        "",
        "entitlements",
        "",
        "Lcom/superwall/sdk/store/testmode/ui/EntitlementSelection;",
        "freeTrialOverride",
        "Lcom/superwall/sdk/store/testmode/FreeTrialOverride;",
        "<init>",
        "(Ljava/util/List;Lcom/superwall/sdk/store/testmode/FreeTrialOverride;)V",
        "getEntitlements",
        "()Ljava/util/List;",
        "getFreeTrialOverride",
        "()Lcom/superwall/sdk/store/testmode/FreeTrialOverride;",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
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
.field private final entitlements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/superwall/sdk/store/testmode/ui/EntitlementSelection;",
            ">;"
        }
    .end annotation
.end field

.field private final freeTrialOverride:Lcom/superwall/sdk/store/testmode/FreeTrialOverride;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/superwall/sdk/store/testmode/FreeTrialOverride;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/store/testmode/ui/EntitlementSelection;",
            ">;",
            "Lcom/superwall/sdk/store/testmode/FreeTrialOverride;",
            ")V"
        }
    .end annotation

    const-string v0, "entitlements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "freeTrialOverride"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/superwall/sdk/store/testmode/ui/TestModeModalResult;->entitlements:Ljava/util/List;

    .line 34
    iput-object p2, p0, Lcom/superwall/sdk/store/testmode/ui/TestModeModalResult;->freeTrialOverride:Lcom/superwall/sdk/store/testmode/FreeTrialOverride;

    return-void
.end method

.method public static synthetic copy$default(Lcom/superwall/sdk/store/testmode/ui/TestModeModalResult;Ljava/util/List;Lcom/superwall/sdk/store/testmode/FreeTrialOverride;ILjava/lang/Object;)Lcom/superwall/sdk/store/testmode/ui/TestModeModalResult;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/superwall/sdk/store/testmode/ui/TestModeModalResult;->entitlements:Ljava/util/List;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/superwall/sdk/store/testmode/ui/TestModeModalResult;->freeTrialOverride:Lcom/superwall/sdk/store/testmode/FreeTrialOverride;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/store/testmode/ui/TestModeModalResult;->copy(Ljava/util/List;Lcom/superwall/sdk/store/testmode/FreeTrialOverride;)Lcom/superwall/sdk/store/testmode/ui/TestModeModalResult;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/store/testmode/ui/EntitlementSelection;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/superwall/sdk/store/testmode/ui/TestModeModalResult;->entitlements:Ljava/util/List;

    return-object v0
.end method

.method public final component2()Lcom/superwall/sdk/store/testmode/FreeTrialOverride;
    .locals 1

    iget-object v0, p0, Lcom/superwall/sdk/store/testmode/ui/TestModeModalResult;->freeTrialOverride:Lcom/superwall/sdk/store/testmode/FreeTrialOverride;

    return-object v0
.end method

.method public final copy(Ljava/util/List;Lcom/superwall/sdk/store/testmode/FreeTrialOverride;)Lcom/superwall/sdk/store/testmode/ui/TestModeModalResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/store/testmode/ui/EntitlementSelection;",
            ">;",
            "Lcom/superwall/sdk/store/testmode/FreeTrialOverride;",
            ")",
            "Lcom/superwall/sdk/store/testmode/ui/TestModeModalResult;"
        }
    .end annotation

    const-string v0, "entitlements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "freeTrialOverride"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/superwall/sdk/store/testmode/ui/TestModeModalResult;

    invoke-direct {v0, p1, p2}, Lcom/superwall/sdk/store/testmode/ui/TestModeModalResult;-><init>(Ljava/util/List;Lcom/superwall/sdk/store/testmode/FreeTrialOverride;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/superwall/sdk/store/testmode/ui/TestModeModalResult;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/superwall/sdk/store/testmode/ui/TestModeModalResult;

    iget-object v1, p0, Lcom/superwall/sdk/store/testmode/ui/TestModeModalResult;->entitlements:Ljava/util/List;

    iget-object v3, p1, Lcom/superwall/sdk/store/testmode/ui/TestModeModalResult;->entitlements:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/superwall/sdk/store/testmode/ui/TestModeModalResult;->freeTrialOverride:Lcom/superwall/sdk/store/testmode/FreeTrialOverride;

    iget-object p1, p1, Lcom/superwall/sdk/store/testmode/ui/TestModeModalResult;->freeTrialOverride:Lcom/superwall/sdk/store/testmode/FreeTrialOverride;

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getEntitlements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/superwall/sdk/store/testmode/ui/EntitlementSelection;",
            ">;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/superwall/sdk/store/testmode/ui/TestModeModalResult;->entitlements:Ljava/util/List;

    return-object v0
.end method

.method public final getFreeTrialOverride()Lcom/superwall/sdk/store/testmode/FreeTrialOverride;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/superwall/sdk/store/testmode/ui/TestModeModalResult;->freeTrialOverride:Lcom/superwall/sdk/store/testmode/FreeTrialOverride;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/superwall/sdk/store/testmode/ui/TestModeModalResult;->entitlements:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/superwall/sdk/store/testmode/ui/TestModeModalResult;->freeTrialOverride:Lcom/superwall/sdk/store/testmode/FreeTrialOverride;

    invoke-virtual {v1}, Lcom/superwall/sdk/store/testmode/FreeTrialOverride;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/superwall/sdk/store/testmode/ui/TestModeModalResult;->entitlements:Ljava/util/List;

    iget-object v1, p0, Lcom/superwall/sdk/store/testmode/ui/TestModeModalResult;->freeTrialOverride:Lcom/superwall/sdk/store/testmode/FreeTrialOverride;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "TestModeModalResult(entitlements="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", freeTrialOverride="

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
