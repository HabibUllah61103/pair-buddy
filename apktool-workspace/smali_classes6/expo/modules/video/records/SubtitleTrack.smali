.class public final Lexpo/modules/video/records/SubtitleTrack;
.super Ljava/lang/Object;
.source "Tracks.kt"

# interfaces
.implements Lexpo/modules/kotlin/records/Record;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/video/records/SubtitleTrack$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0013\u0018\u0000 \u001b2\u00020\u00012\u00020\u0002:\u0001\u001bB=\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\u001c\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010R\u001e\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0011\u0010\u000e\u001a\u0004\u0008\u0012\u0010\u0010R\u001e\u0010\u0006\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0013\u0010\u000e\u001a\u0004\u0008\u0014\u0010\u0010R\u001e\u0010\u0007\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0015\u0010\u000e\u001a\u0004\u0008\u0016\u0010\u0010R\u001c\u0010\u0008\u001a\u00020\t8\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0017\u0010\u000e\u001a\u0004\u0008\u0008\u0010\u0018R\u001c\u0010\n\u001a\u00020\t8\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0019\u0010\u000e\u001a\u0004\u0008\u001a\u0010\u0018\u00a8\u0006\u001c"
    }
    d2 = {
        "Lexpo/modules/video/records/SubtitleTrack;",
        "Lexpo/modules/kotlin/records/Record;",
        "Ljava/io/Serializable;",
        "id",
        "",
        "language",
        "label",
        "name",
        "isDefault",
        "",
        "autoSelect",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V",
        "getId$annotations",
        "()V",
        "getId",
        "()Ljava/lang/String;",
        "getLanguage$annotations",
        "getLanguage",
        "getLabel$annotations",
        "getLabel",
        "getName$annotations",
        "getName",
        "isDefault$annotations",
        "()Z",
        "getAutoSelect$annotations",
        "getAutoSelect",
        "Companion",
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


# static fields
.field public static final Companion:Lexpo/modules/video/records/SubtitleTrack$Companion;


# instance fields
.field private final autoSelect:Z

.field private final id:Ljava/lang/String;

.field private final isDefault:Z

.field private final label:Ljava/lang/String;

.field private final language:Ljava/lang/String;

.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lexpo/modules/video/records/SubtitleTrack$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lexpo/modules/video/records/SubtitleTrack$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lexpo/modules/video/records/SubtitleTrack;->Companion:Lexpo/modules/video/records/SubtitleTrack$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lexpo/modules/video/records/SubtitleTrack;->id:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lexpo/modules/video/records/SubtitleTrack;->language:Ljava/lang/String;

    .line 15
    iput-object p3, p0, Lexpo/modules/video/records/SubtitleTrack;->label:Ljava/lang/String;

    .line 16
    iput-object p4, p0, Lexpo/modules/video/records/SubtitleTrack;->name:Ljava/lang/String;

    .line 17
    iput-boolean p5, p0, Lexpo/modules/video/records/SubtitleTrack;->isDefault:Z

    .line 18
    iput-boolean p6, p0, Lexpo/modules/video/records/SubtitleTrack;->autoSelect:Z

    return-void
.end method

.method public static synthetic getAutoSelect$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getId$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getLabel$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getLanguage$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getName$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic isDefault$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method


# virtual methods
.method public final getAutoSelect()Z
    .locals 1

    .line 18
    iget-boolean v0, p0, Lexpo/modules/video/records/SubtitleTrack;->autoSelect:Z

    return v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lexpo/modules/video/records/SubtitleTrack;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getLabel()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lexpo/modules/video/records/SubtitleTrack;->label:Ljava/lang/String;

    return-object v0
.end method

.method public final getLanguage()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lexpo/modules/video/records/SubtitleTrack;->language:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lexpo/modules/video/records/SubtitleTrack;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final isDefault()Z
    .locals 1

    .line 17
    iget-boolean v0, p0, Lexpo/modules/video/records/SubtitleTrack;->isDefault:Z

    return v0
.end method
