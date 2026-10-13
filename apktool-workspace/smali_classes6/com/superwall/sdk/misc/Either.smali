.class public abstract Lcom/superwall/sdk/misc/Either;
.super Ljava/lang/Object;
.source "Either.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/misc/Either$Failure;,
        Lcom/superwall/sdk/misc/Either$Success;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Throwable;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0002\u0010\u0000\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u0000*\u0006\u0008\u0000\u0010\u0001 \u0001*\u0008\u0008\u0001\u0010\u0002*\u00020\u00032\u00020\u0004:\u0002\u000b\u000cB\t\u0008\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\r\u0010\u0007\u001a\u0004\u0018\u00018\u0000\u00a2\u0006\u0002\u0010\u0008J\r\u0010\t\u001a\u0004\u0018\u00018\u0001\u00a2\u0006\u0002\u0010\n\u0082\u0001\u0002\r\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/superwall/sdk/misc/Either;",
        "T",
        "E",
        "",
        "",
        "<init>",
        "()V",
        "getSuccess",
        "()Ljava/lang/Object;",
        "getThrowable",
        "()Ljava/lang/Throwable;",
        "Success",
        "Failure",
        "Lcom/superwall/sdk/misc/Either$Failure;",
        "Lcom/superwall/sdk/misc/Either$Success;",
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

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/superwall/sdk/misc/Either;-><init>()V

    return-void
.end method


# virtual methods
.method public final getSuccess()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 16
    instance-of v0, p0, Lcom/superwall/sdk/misc/Either$Success;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/superwall/sdk/misc/Either$Success;

    invoke-virtual {v0}, Lcom/superwall/sdk/misc/Either$Success;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getThrowable()Ljava/lang/Throwable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 22
    instance-of v0, p0, Lcom/superwall/sdk/misc/Either$Failure;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/superwall/sdk/misc/Either$Failure;

    invoke-virtual {v0}, Lcom/superwall/sdk/misc/Either$Failure;->getError()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
