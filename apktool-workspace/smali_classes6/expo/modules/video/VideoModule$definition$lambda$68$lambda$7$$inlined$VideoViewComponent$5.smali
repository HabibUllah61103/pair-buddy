.class public final Lexpo/modules/video/VideoModule$definition$lambda$68$lambda$7$$inlined$VideoViewComponent$5;
.super Ljava/lang/Object;
.source "VideoModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/video/VideoModule;->definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function2<",
        "Lexpo/modules/video/TextureVideoView;",
        "Lexpo/modules/video/records/FullscreenOptions;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lexpo/modules/video/VideoModule$definition$lambda$68$lambda$7$$inlined$VideoViewComponent$5;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lexpo/modules/video/VideoModule$definition$lambda$68$lambda$7$$inlined$VideoViewComponent$5;

    invoke-direct {v0}, Lexpo/modules/video/VideoModule$definition$lambda$68$lambda$7$$inlined$VideoViewComponent$5;-><init>()V

    sput-object v0, Lexpo/modules/video/VideoModule$definition$lambda$68$lambda$7$$inlined$VideoViewComponent$5;->INSTANCE:Lexpo/modules/video/VideoModule$definition$lambda$68$lambda$7$$inlined$VideoViewComponent$5;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 406
    check-cast p1, Lexpo/modules/video/VideoView;

    check-cast p2, Lexpo/modules/video/records/FullscreenOptions;

    invoke-virtual {p0, p1, p2}, Lexpo/modules/video/VideoModule$definition$lambda$68$lambda$7$$inlined$VideoViewComponent$5;->invoke(Lexpo/modules/video/VideoView;Lexpo/modules/video/records/FullscreenOptions;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lexpo/modules/video/VideoView;Lexpo/modules/video/records/FullscreenOptions;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/video/TextureVideoView;",
            "Lexpo/modules/video/records/FullscreenOptions;",
            ")V"
        }
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 408
    invoke-virtual {p1, p2}, Lexpo/modules/video/VideoView;->setFullscreenOptions(Lexpo/modules/video/records/FullscreenOptions;)V

    :cond_0
    return-void
.end method
