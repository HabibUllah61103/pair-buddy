.class final Lcom/superwall/sdk/misc/primitives/SequentialActor$OwnerElement;
.super Lkotlin/coroutines/AbstractCoroutineContextElement;
.source "ActorTypes.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/superwall/sdk/misc/primitives/SequentialActor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OwnerElement"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/misc/primitives/SequentialActor$OwnerElement$Key;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0006\u0008\u0002\u0018\u0000 \u00082\u00020\u0001:\u0001\u0008B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/superwall/sdk/misc/primitives/SequentialActor$OwnerElement;",
        "Lkotlin/coroutines/AbstractCoroutineContextElement;",
        "actor",
        "",
        "<init>",
        "(Ljava/lang/Object;)V",
        "getActor",
        "()Ljava/lang/Object;",
        "Key",
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
.field public static final Key:Lcom/superwall/sdk/misc/primitives/SequentialActor$OwnerElement$Key;


# instance fields
.field private final actor:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/superwall/sdk/misc/primitives/SequentialActor$OwnerElement$Key;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/superwall/sdk/misc/primitives/SequentialActor$OwnerElement$Key;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/superwall/sdk/misc/primitives/SequentialActor$OwnerElement;->Key:Lcom/superwall/sdk/misc/primitives/SequentialActor$OwnerElement$Key;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    const-string v0, "actor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    sget-object v0, Lcom/superwall/sdk/misc/primitives/SequentialActor$OwnerElement;->Key:Lcom/superwall/sdk/misc/primitives/SequentialActor$OwnerElement$Key;

    check-cast v0, Lkotlin/coroutines/CoroutineContext$Key;

    invoke-direct {p0, v0}, Lkotlin/coroutines/AbstractCoroutineContextElement;-><init>(Lkotlin/coroutines/CoroutineContext$Key;)V

    iput-object p1, p0, Lcom/superwall/sdk/misc/primitives/SequentialActor$OwnerElement;->actor:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getActor()Ljava/lang/Object;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/superwall/sdk/misc/primitives/SequentialActor$OwnerElement;->actor:Ljava/lang/Object;

    return-object v0
.end method
