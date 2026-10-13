.class public final Lexpo/modules/video/VideoModuleKt$VideoViewComponent$7;
.super Ljava/lang/Object;
.source "VideoModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/video/VideoModuleKt;->VideoViewComponent(Lexpo/modules/kotlin/views/ViewDefinitionBuilder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function2<",
        "TT;",
        "Lexpo/modules/video/records/ButtonOptions;",
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
.field public static final INSTANCE:Lexpo/modules/video/VideoModuleKt$VideoViewComponent$7;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v0, Lexpo/modules/video/VideoModuleKt$VideoViewComponent$7;

    invoke-direct {v0}, Lexpo/modules/video/VideoModuleKt$VideoViewComponent$7;-><init>()V

    sput-object v0, Lexpo/modules/video/VideoModuleKt$VideoViewComponent$7;->INSTANCE:Lexpo/modules/video/VideoModuleKt$VideoViewComponent$7;

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

    .line 414
    check-cast p1, Lexpo/modules/video/VideoView;

    check-cast p2, Lexpo/modules/video/records/ButtonOptions;

    invoke-virtual {p0, p1, p2}, Lexpo/modules/video/VideoModuleKt$VideoViewComponent$7;->invoke(Lexpo/modules/video/VideoView;Lexpo/modules/video/records/ButtonOptions;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lexpo/modules/video/VideoView;Lexpo/modules/video/records/ButtonOptions;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lexpo/modules/video/records/ButtonOptions;",
            ")V"
        }
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 415
    new-instance v1, Lexpo/modules/video/records/ButtonOptions;

    const/16 v10, 0xff

    const/4 v11, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v11}, Lexpo/modules/video/records/ButtonOptions;-><init>(ZZZZLjava/lang/Boolean;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object p2, v1

    :cond_0
    invoke-virtual {p1, p2}, Lexpo/modules/video/VideoView;->setButtonOptions(Lexpo/modules/video/records/ButtonOptions;)V

    return-void
.end method
