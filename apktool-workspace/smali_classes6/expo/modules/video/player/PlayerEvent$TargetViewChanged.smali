.class public final Lexpo/modules/video/player/PlayerEvent$TargetViewChanged;
.super Lexpo/modules/video/player/PlayerEvent;
.source "PlayerEvent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/video/player/PlayerEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TargetViewChanged"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u001b\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J!\u0010\u0014\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u00c6\u0001J\u0013\u0010\u0015\u001a\u00020\u000f2\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u00d6\u0003J\t\u0010\u0018\u001a\u00020\u0019H\u00d6\u0001J\t\u0010\u001a\u001a\u00020\u000bH\u00d6\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0008R\u0014\u0010\n\u001a\u00020\u000bX\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0014\u0010\u000e\u001a\u00020\u000fX\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u001b"
    }
    d2 = {
        "Lexpo/modules/video/player/PlayerEvent$TargetViewChanged;",
        "Lexpo/modules/video/player/PlayerEvent;",
        "newTargetView",
        "Lexpo/modules/video/VideoView;",
        "oldTargetView",
        "<init>",
        "(Lexpo/modules/video/VideoView;Lexpo/modules/video/VideoView;)V",
        "getNewTargetView",
        "()Lexpo/modules/video/VideoView;",
        "getOldTargetView",
        "name",
        "",
        "getName",
        "()Ljava/lang/String;",
        "emitToJS",
        "",
        "getEmitToJS",
        "()Z",
        "component1",
        "component2",
        "copy",
        "equals",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "expo-video_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final emitToJS:Z

.field private final name:Ljava/lang/String;

.field private final newTargetView:Lexpo/modules/video/VideoView;

.field private final oldTargetView:Lexpo/modules/video/VideoView;


# direct methods
.method public constructor <init>(Lexpo/modules/video/VideoView;Lexpo/modules/video/VideoView;)V
    .locals 1

    const/4 v0, 0x0

    .line 146
    invoke-direct {p0, v0}, Lexpo/modules/video/player/PlayerEvent;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lexpo/modules/video/player/PlayerEvent$TargetViewChanged;->newTargetView:Lexpo/modules/video/VideoView;

    iput-object p2, p0, Lexpo/modules/video/player/PlayerEvent$TargetViewChanged;->oldTargetView:Lexpo/modules/video/VideoView;

    .line 147
    const-string p1, "targetViewChange"

    iput-object p1, p0, Lexpo/modules/video/player/PlayerEvent$TargetViewChanged;->name:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lexpo/modules/video/player/PlayerEvent$TargetViewChanged;Lexpo/modules/video/VideoView;Lexpo/modules/video/VideoView;ILjava/lang/Object;)Lexpo/modules/video/player/PlayerEvent$TargetViewChanged;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lexpo/modules/video/player/PlayerEvent$TargetViewChanged;->newTargetView:Lexpo/modules/video/VideoView;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lexpo/modules/video/player/PlayerEvent$TargetViewChanged;->oldTargetView:Lexpo/modules/video/VideoView;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lexpo/modules/video/player/PlayerEvent$TargetViewChanged;->copy(Lexpo/modules/video/VideoView;Lexpo/modules/video/VideoView;)Lexpo/modules/video/player/PlayerEvent$TargetViewChanged;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lexpo/modules/video/VideoView;
    .locals 1

    iget-object v0, p0, Lexpo/modules/video/player/PlayerEvent$TargetViewChanged;->newTargetView:Lexpo/modules/video/VideoView;

    return-object v0
.end method

.method public final component2()Lexpo/modules/video/VideoView;
    .locals 1

    iget-object v0, p0, Lexpo/modules/video/player/PlayerEvent$TargetViewChanged;->oldTargetView:Lexpo/modules/video/VideoView;

    return-object v0
.end method

.method public final copy(Lexpo/modules/video/VideoView;Lexpo/modules/video/VideoView;)Lexpo/modules/video/player/PlayerEvent$TargetViewChanged;
    .locals 1

    new-instance v0, Lexpo/modules/video/player/PlayerEvent$TargetViewChanged;

    invoke-direct {v0, p1, p2}, Lexpo/modules/video/player/PlayerEvent$TargetViewChanged;-><init>(Lexpo/modules/video/VideoView;Lexpo/modules/video/VideoView;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lexpo/modules/video/player/PlayerEvent$TargetViewChanged;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lexpo/modules/video/player/PlayerEvent$TargetViewChanged;

    iget-object v1, p0, Lexpo/modules/video/player/PlayerEvent$TargetViewChanged;->newTargetView:Lexpo/modules/video/VideoView;

    iget-object v3, p1, Lexpo/modules/video/player/PlayerEvent$TargetViewChanged;->newTargetView:Lexpo/modules/video/VideoView;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lexpo/modules/video/player/PlayerEvent$TargetViewChanged;->oldTargetView:Lexpo/modules/video/VideoView;

    iget-object p1, p1, Lexpo/modules/video/player/PlayerEvent$TargetViewChanged;->oldTargetView:Lexpo/modules/video/VideoView;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public getEmitToJS()Z
    .locals 1

    .line 148
    iget-boolean v0, p0, Lexpo/modules/video/player/PlayerEvent$TargetViewChanged;->emitToJS:Z

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 147
    iget-object v0, p0, Lexpo/modules/video/player/PlayerEvent$TargetViewChanged;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getNewTargetView()Lexpo/modules/video/VideoView;
    .locals 1

    .line 146
    iget-object v0, p0, Lexpo/modules/video/player/PlayerEvent$TargetViewChanged;->newTargetView:Lexpo/modules/video/VideoView;

    return-object v0
.end method

.method public final getOldTargetView()Lexpo/modules/video/VideoView;
    .locals 1

    .line 146
    iget-object v0, p0, Lexpo/modules/video/player/PlayerEvent$TargetViewChanged;->oldTargetView:Lexpo/modules/video/VideoView;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lexpo/modules/video/player/PlayerEvent$TargetViewChanged;->newTargetView:Lexpo/modules/video/VideoView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lexpo/modules/video/VideoView;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lexpo/modules/video/player/PlayerEvent$TargetViewChanged;->oldTargetView:Lexpo/modules/video/VideoView;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lexpo/modules/video/VideoView;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lexpo/modules/video/player/PlayerEvent$TargetViewChanged;->newTargetView:Lexpo/modules/video/VideoView;

    iget-object v1, p0, Lexpo/modules/video/player/PlayerEvent$TargetViewChanged;->oldTargetView:Lexpo/modules/video/VideoView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "TargetViewChanged(newTargetView="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", oldTargetView="

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
