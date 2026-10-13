.class public abstract Lcom/superwall/sdk/analytics/internal/trackable/UserInitiatedEvent;
.super Ljava/lang/Object;
.source "UserIntiatedEvents.kt"

# interfaces
.implements Lcom/superwall/sdk/analytics/internal/trackable/TrackableUserInitiatedEvent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/analytics/internal/trackable/UserInitiatedEvent$Track;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010$\n\u0002\u0010\u0000\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00020\u0001:\u0001\u0014B7\u0008\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0014\u0008\u0002\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00080\u0007\u0012\u0006\u0010\t\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\n\u0010\u000bR\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR&\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00080\u0007X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u0011\u0010\t\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u000f\u0082\u0001\u0001\u0015\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/superwall/sdk/analytics/internal/trackable/UserInitiatedEvent;",
        "Lcom/superwall/sdk/analytics/internal/trackable/TrackableUserInitiatedEvent;",
        "rawName",
        "",
        "canImplicitlyTriggerPaywall",
        "",
        "audienceFilterParams",
        "",
        "",
        "isFeatureGatable",
        "<init>",
        "(Ljava/lang/String;ZLjava/util/Map;Z)V",
        "getRawName",
        "()Ljava/lang/String;",
        "getCanImplicitlyTriggerPaywall",
        "()Z",
        "getAudienceFilterParams",
        "()Ljava/util/Map;",
        "setAudienceFilterParams",
        "(Ljava/util/Map;)V",
        "Track",
        "Lcom/superwall/sdk/analytics/internal/trackable/UserInitiatedEvent$Track;",
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
.field private audienceFilterParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final canImplicitlyTriggerPaywall:Z

.field private final isFeatureGatable:Z

.field private final rawName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;ZLjava/util/Map;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/superwall/sdk/analytics/internal/trackable/UserInitiatedEvent;->rawName:Ljava/lang/String;

    .line 7
    iput-boolean p2, p0, Lcom/superwall/sdk/analytics/internal/trackable/UserInitiatedEvent;->canImplicitlyTriggerPaywall:Z

    .line 8
    iput-object p3, p0, Lcom/superwall/sdk/analytics/internal/trackable/UserInitiatedEvent;->audienceFilterParams:Ljava/util/Map;

    .line 9
    iput-boolean p4, p0, Lcom/superwall/sdk/analytics/internal/trackable/UserInitiatedEvent;->isFeatureGatable:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ZLjava/util/Map;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    .line 8
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p3

    :cond_0
    move-object v3, p3

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p4

    .line 5
    invoke-direct/range {v0 .. v5}, Lcom/superwall/sdk/analytics/internal/trackable/UserInitiatedEvent;-><init>(Ljava/lang/String;ZLjava/util/Map;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ZLjava/util/Map;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/superwall/sdk/analytics/internal/trackable/UserInitiatedEvent;-><init>(Ljava/lang/String;ZLjava/util/Map;Z)V

    return-void
.end method


# virtual methods
.method public getAudienceFilterParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/superwall/sdk/analytics/internal/trackable/UserInitiatedEvent;->audienceFilterParams:Ljava/util/Map;

    return-object v0
.end method

.method public getCanImplicitlyTriggerPaywall()Z
    .locals 1

    .line 7
    iget-boolean v0, p0, Lcom/superwall/sdk/analytics/internal/trackable/UserInitiatedEvent;->canImplicitlyTriggerPaywall:Z

    return v0
.end method

.method public getRawName()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/superwall/sdk/analytics/internal/trackable/UserInitiatedEvent;->rawName:Ljava/lang/String;

    return-object v0
.end method

.method public final isFeatureGatable()Z
    .locals 1

    .line 9
    iget-boolean v0, p0, Lcom/superwall/sdk/analytics/internal/trackable/UserInitiatedEvent;->isFeatureGatable:Z

    return v0
.end method

.method public setAudienceFilterParams(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iput-object p1, p0, Lcom/superwall/sdk/analytics/internal/trackable/UserInitiatedEvent;->audienceFilterParams:Ljava/util/Map;

    return-void
.end method
