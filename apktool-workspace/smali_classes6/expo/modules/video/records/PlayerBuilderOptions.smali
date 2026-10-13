.class public final Lexpo/modules/video/records/PlayerBuilderOptions;
.super Ljava/lang/Object;
.source "PlayerBuilderOptions.kt"

# interfaces
.implements Lexpo/modules/kotlin/records/Record;
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u001f\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R&\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR&\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u000e\u0010\t\u001a\u0004\u0008\u000f\u0010\u000b\"\u0004\u0008\u0010\u0010\r\u00a8\u0006\u0011"
    }
    d2 = {
        "Lexpo/modules/video/records/PlayerBuilderOptions;",
        "Lexpo/modules/kotlin/records/Record;",
        "Ljava/io/Serializable;",
        "seekBackwardIncrement",
        "Lkotlin/time/Duration;",
        "seekForwardIncrement",
        "<init>",
        "(Lkotlin/time/Duration;Lkotlin/time/Duration;Lkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "getSeekBackwardIncrement-FghU774$annotations",
        "()V",
        "getSeekBackwardIncrement-FghU774",
        "()Lkotlin/time/Duration;",
        "setSeekBackwardIncrement-BwNAW2A",
        "(Lkotlin/time/Duration;)V",
        "getSeekForwardIncrement-FghU774$annotations",
        "getSeekForwardIncrement-FghU774",
        "setSeekForwardIncrement-BwNAW2A",
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
.field private seekBackwardIncrement:Lkotlin/time/Duration;

.field private seekForwardIncrement:Lkotlin/time/Duration;


# direct methods
.method private constructor <init>(Lkotlin/time/Duration;Lkotlin/time/Duration;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lexpo/modules/video/records/PlayerBuilderOptions;->seekBackwardIncrement:Lkotlin/time/Duration;

    .line 12
    iput-object p2, p0, Lexpo/modules/video/records/PlayerBuilderOptions;->seekForwardIncrement:Lkotlin/time/Duration;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/time/Duration;Lkotlin/time/Duration;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move-object p2, v0

    .line 10
    :cond_1
    invoke-direct {p0, p1, p2, v0}, Lexpo/modules/video/records/PlayerBuilderOptions;-><init>(Lkotlin/time/Duration;Lkotlin/time/Duration;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/time/Duration;Lkotlin/time/Duration;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lexpo/modules/video/records/PlayerBuilderOptions;-><init>(Lkotlin/time/Duration;Lkotlin/time/Duration;)V

    return-void
.end method

.method public static synthetic getSeekBackwardIncrement-FghU774$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getSeekForwardIncrement-FghU774$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method


# virtual methods
.method public final getSeekBackwardIncrement-FghU774()Lkotlin/time/Duration;
    .locals 1

    .line 11
    iget-object v0, p0, Lexpo/modules/video/records/PlayerBuilderOptions;->seekBackwardIncrement:Lkotlin/time/Duration;

    return-object v0
.end method

.method public final getSeekForwardIncrement-FghU774()Lkotlin/time/Duration;
    .locals 1

    .line 12
    iget-object v0, p0, Lexpo/modules/video/records/PlayerBuilderOptions;->seekForwardIncrement:Lkotlin/time/Duration;

    return-object v0
.end method

.method public final setSeekBackwardIncrement-BwNAW2A(Lkotlin/time/Duration;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lexpo/modules/video/records/PlayerBuilderOptions;->seekBackwardIncrement:Lkotlin/time/Duration;

    return-void
.end method

.method public final setSeekForwardIncrement-BwNAW2A(Lkotlin/time/Duration;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lexpo/modules/video/records/PlayerBuilderOptions;->seekForwardIncrement:Lkotlin/time/Duration;

    return-void
.end method
