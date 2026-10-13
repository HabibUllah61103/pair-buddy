.class public final Lexpo/modules/video/utils/WeakMutableSetKt;
.super Ljava/lang/Object;
.source "WeakMutableSet.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0008\u0002\u001a\u0014\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002H\u0000\u001a-\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\u0008\u0000\u0010\u00022\u0012\u0010\u0003\u001a\n\u0012\u0006\u0008\u0001\u0012\u0002H\u00020\u0004\"\u0002H\u0002H\u0000\u00a2\u0006\u0002\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "weakMutableHashSetOf",
        "Lexpo/modules/video/utils/WeakMutableSet;",
        "T",
        "elements",
        "",
        "([Ljava/lang/Object;)Lexpo/modules/video/utils/WeakMutableSet;",
        "expo-video_release"
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
.method public static final weakMutableHashSetOf()Lexpo/modules/video/utils/WeakMutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lexpo/modules/video/utils/WeakMutableSet<",
            "TT;>;"
        }
    .end annotation

    .line 8
    new-instance v0, Lexpo/modules/video/utils/WeakMutableSet;

    invoke-direct {v0}, Lexpo/modules/video/utils/WeakMutableSet;-><init>()V

    return-object v0
.end method

.method public static final varargs weakMutableHashSetOf([Ljava/lang/Object;)Lexpo/modules/video/utils/WeakMutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Lexpo/modules/video/utils/WeakMutableSet<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    new-instance v0, Lexpo/modules/video/utils/WeakMutableSet;

    invoke-direct {v0}, Lexpo/modules/video/utils/WeakMutableSet;-><init>()V

    .line 13
    invoke-static {p0}, Lkotlin/collections/ArraysKt;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-virtual {v0, p0}, Lexpo/modules/video/utils/WeakMutableSet;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method
