.class public interface abstract Lcom/superwall/sdk/misc/primitives/BaseContext;
.super Ljava/lang/Object;
.source "BaseContext.kt"

# interfaces
.implements Lcom/superwall/sdk/misc/primitives/StoreContext;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/misc/primitives/BaseContext$DefaultImpls;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "Self::",
        "Lcom/superwall/sdk/misc/primitives/BaseContext<",
        "TS;TSelf;>;>",
        "Ljava/lang/Object;",
        "Lcom/superwall/sdk/misc/primitives/StoreContext<",
        "TS;TSelf;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008f\u0018\u0000*\u0004\u0008\u0000\u0010\u0001*\u0014\u0008\u0001\u0010\u0002*\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u00002\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u0003J-\u0010\u0010\u001a\u00020\u000c\"\u0008\u0008\u0002\u0010\u0011*\u00020\r2\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u0002H\u00110\u00132\u0006\u0010\u0014\u001a\u0002H\u0011H\u0016\u00a2\u0006\u0002\u0010\u0015J-\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u0002H\u00110\u0017\"\u0008\u0008\u0002\u0010\u0011*\u00020\r2\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u0002H\u00110\u0013H\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0014\u0010\u001a\u001a\u00020\u000c2\n\u0010\u0012\u001a\u0006\u0012\u0002\u0008\u00030\u0013H\u0016J\u0010\u0010\u001b\u001a\u00020\u000c2\u0006\u0010\u001c\u001a\u00020\nH\u0016R\u0012\u0010\u0004\u001a\u00020\u0005X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007R.\u0010\u0008\u001a\u001e\u0008\u0001\u0012\u0004\u0012\u00020\n\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u000b\u0012\u0006\u0012\u0004\u0018\u00010\r0\tX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/superwall/sdk/misc/primitives/BaseContext;",
        "S",
        "Self",
        "Lcom/superwall/sdk/misc/primitives/StoreContext;",
        "storage",
        "Lcom/superwall/sdk/storage/Storage;",
        "getStorage",
        "()Lcom/superwall/sdk/storage/Storage;",
        "tracker",
        "Lkotlin/Function2;",
        "Lcom/superwall/sdk/analytics/internal/trackable/TrackableSuperwallEvent;",
        "Lkotlin/coroutines/Continuation;",
        "",
        "",
        "getTracker",
        "()Lkotlin/jvm/functions/Function2;",
        "persist",
        "T",
        "storable",
        "Lcom/superwall/sdk/storage/Storable;",
        "value",
        "(Lcom/superwall/sdk/storage/Storable;Ljava/lang/Object;)V",
        "read",
        "Lkotlin/Result;",
        "read-IoAF18A",
        "(Lcom/superwall/sdk/storage/Storable;)Ljava/lang/Object;",
        "delete",
        "track",
        "event",
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


# virtual methods
.method public abstract delete(Lcom/superwall/sdk/storage/Storable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/storage/Storable<",
            "*>;)V"
        }
    .end annotation
.end method

.method public abstract getStorage()Lcom/superwall/sdk/storage/Storage;
.end method

.method public abstract getTracker()Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Lcom/superwall/sdk/analytics/internal/trackable/TrackableSuperwallEvent;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract persist(Lcom/superwall/sdk/storage/Storable;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/superwall/sdk/storage/Storable<",
            "TT;>;TT;)V"
        }
    .end annotation
.end method

.method public abstract read-IoAF18A(Lcom/superwall/sdk/storage/Storable;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/superwall/sdk/storage/Storable<",
            "TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract track(Lcom/superwall/sdk/analytics/internal/trackable/TrackableSuperwallEvent;)V
.end method
