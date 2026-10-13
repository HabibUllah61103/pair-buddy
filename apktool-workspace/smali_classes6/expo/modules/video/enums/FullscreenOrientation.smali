.class public final enum Lexpo/modules/video/enums/FullscreenOrientation;
.super Ljava/lang/Enum;
.source "FullscreenOrientation.kt"

# interfaces
.implements Lexpo/modules/kotlin/types/Enumerable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/video/enums/FullscreenOrientation$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lexpo/modules/video/enums/FullscreenOrientation;",
        ">;",
        "Lexpo/modules/kotlin/types/Enumerable;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000c\n\u0002\u0010\u0008\n\u0000\u0008\u0086\u0081\u0002\u0018\u00002\u00020\u00012\u0008\u0012\u0004\u0012\u00020\u00000\u0002B\u0011\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0006\u0010\u0010\u001a\u00020\u0011R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000f\u00a8\u0006\u0012"
    }
    d2 = {
        "Lexpo/modules/video/enums/FullscreenOrientation;",
        "Lexpo/modules/kotlin/types/Enumerable;",
        "",
        "value",
        "",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getValue",
        "()Ljava/lang/String;",
        "LANDSCAPE",
        "PORTRAIT",
        "LANDSCAPE_LEFT",
        "LANDSCAPE_RIGHT",
        "PORTRAIT_UP",
        "PORTRAIT_DOWN",
        "DEFAULT",
        "toActivityOrientation",
        "",
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
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lexpo/modules/video/enums/FullscreenOrientation;

.field public static final enum DEFAULT:Lexpo/modules/video/enums/FullscreenOrientation;

.field public static final enum LANDSCAPE:Lexpo/modules/video/enums/FullscreenOrientation;

.field public static final enum LANDSCAPE_LEFT:Lexpo/modules/video/enums/FullscreenOrientation;

.field public static final enum LANDSCAPE_RIGHT:Lexpo/modules/video/enums/FullscreenOrientation;

.field public static final enum PORTRAIT:Lexpo/modules/video/enums/FullscreenOrientation;

.field public static final enum PORTRAIT_DOWN:Lexpo/modules/video/enums/FullscreenOrientation;

.field public static final enum PORTRAIT_UP:Lexpo/modules/video/enums/FullscreenOrientation;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lexpo/modules/video/enums/FullscreenOrientation;
    .locals 7

    sget-object v0, Lexpo/modules/video/enums/FullscreenOrientation;->LANDSCAPE:Lexpo/modules/video/enums/FullscreenOrientation;

    sget-object v1, Lexpo/modules/video/enums/FullscreenOrientation;->PORTRAIT:Lexpo/modules/video/enums/FullscreenOrientation;

    sget-object v2, Lexpo/modules/video/enums/FullscreenOrientation;->LANDSCAPE_LEFT:Lexpo/modules/video/enums/FullscreenOrientation;

    sget-object v3, Lexpo/modules/video/enums/FullscreenOrientation;->LANDSCAPE_RIGHT:Lexpo/modules/video/enums/FullscreenOrientation;

    sget-object v4, Lexpo/modules/video/enums/FullscreenOrientation;->PORTRAIT_UP:Lexpo/modules/video/enums/FullscreenOrientation;

    sget-object v5, Lexpo/modules/video/enums/FullscreenOrientation;->PORTRAIT_DOWN:Lexpo/modules/video/enums/FullscreenOrientation;

    sget-object v6, Lexpo/modules/video/enums/FullscreenOrientation;->DEFAULT:Lexpo/modules/video/enums/FullscreenOrientation;

    filled-new-array/range {v0 .. v6}, [Lexpo/modules/video/enums/FullscreenOrientation;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 6
    new-instance v0, Lexpo/modules/video/enums/FullscreenOrientation;

    const/4 v1, 0x0

    const-string v2, "landscape"

    const-string v3, "LANDSCAPE"

    invoke-direct {v0, v3, v1, v2}, Lexpo/modules/video/enums/FullscreenOrientation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/video/enums/FullscreenOrientation;->LANDSCAPE:Lexpo/modules/video/enums/FullscreenOrientation;

    .line 7
    new-instance v0, Lexpo/modules/video/enums/FullscreenOrientation;

    const/4 v1, 0x1

    const-string v2, "portrait"

    const-string v3, "PORTRAIT"

    invoke-direct {v0, v3, v1, v2}, Lexpo/modules/video/enums/FullscreenOrientation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/video/enums/FullscreenOrientation;->PORTRAIT:Lexpo/modules/video/enums/FullscreenOrientation;

    .line 8
    new-instance v0, Lexpo/modules/video/enums/FullscreenOrientation;

    const/4 v1, 0x2

    const-string v2, "landscapeLeft"

    const-string v3, "LANDSCAPE_LEFT"

    invoke-direct {v0, v3, v1, v2}, Lexpo/modules/video/enums/FullscreenOrientation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/video/enums/FullscreenOrientation;->LANDSCAPE_LEFT:Lexpo/modules/video/enums/FullscreenOrientation;

    .line 9
    new-instance v0, Lexpo/modules/video/enums/FullscreenOrientation;

    const/4 v1, 0x3

    const-string v2, "landscapeRight"

    const-string v3, "LANDSCAPE_RIGHT"

    invoke-direct {v0, v3, v1, v2}, Lexpo/modules/video/enums/FullscreenOrientation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/video/enums/FullscreenOrientation;->LANDSCAPE_RIGHT:Lexpo/modules/video/enums/FullscreenOrientation;

    .line 10
    new-instance v0, Lexpo/modules/video/enums/FullscreenOrientation;

    const/4 v1, 0x4

    const-string v2, "portraitUp"

    const-string v3, "PORTRAIT_UP"

    invoke-direct {v0, v3, v1, v2}, Lexpo/modules/video/enums/FullscreenOrientation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/video/enums/FullscreenOrientation;->PORTRAIT_UP:Lexpo/modules/video/enums/FullscreenOrientation;

    .line 11
    new-instance v0, Lexpo/modules/video/enums/FullscreenOrientation;

    const/4 v1, 0x5

    const-string v2, "portraitDown"

    const-string v3, "PORTRAIT_DOWN"

    invoke-direct {v0, v3, v1, v2}, Lexpo/modules/video/enums/FullscreenOrientation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/video/enums/FullscreenOrientation;->PORTRAIT_DOWN:Lexpo/modules/video/enums/FullscreenOrientation;

    .line 12
    new-instance v0, Lexpo/modules/video/enums/FullscreenOrientation;

    const/4 v1, 0x6

    const-string v2, "default"

    const-string v3, "DEFAULT"

    invoke-direct {v0, v3, v1, v2}, Lexpo/modules/video/enums/FullscreenOrientation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/video/enums/FullscreenOrientation;->DEFAULT:Lexpo/modules/video/enums/FullscreenOrientation;

    invoke-static {}, Lexpo/modules/video/enums/FullscreenOrientation;->$values()[Lexpo/modules/video/enums/FullscreenOrientation;

    move-result-object v0

    sput-object v0, Lexpo/modules/video/enums/FullscreenOrientation;->$VALUES:[Lexpo/modules/video/enums/FullscreenOrientation;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lexpo/modules/video/enums/FullscreenOrientation;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lexpo/modules/video/enums/FullscreenOrientation;->value:Ljava/lang/String;

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lexpo/modules/video/enums/FullscreenOrientation;",
            ">;"
        }
    .end annotation

    sget-object v0, Lexpo/modules/video/enums/FullscreenOrientation;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lexpo/modules/video/enums/FullscreenOrientation;
    .locals 1

    const-class v0, Lexpo/modules/video/enums/FullscreenOrientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 25
    check-cast p0, Lexpo/modules/video/enums/FullscreenOrientation;

    return-object p0
.end method

.method public static values()[Lexpo/modules/video/enums/FullscreenOrientation;
    .locals 1

    sget-object v0, Lexpo/modules/video/enums/FullscreenOrientation;->$VALUES:[Lexpo/modules/video/enums/FullscreenOrientation;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 25
    check-cast v0, [Lexpo/modules/video/enums/FullscreenOrientation;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 5
    iget-object v0, p0, Lexpo/modules/video/enums/FullscreenOrientation;->value:Ljava/lang/String;

    return-object v0
.end method

.method public final toActivityOrientation()I
    .locals 2

    .line 15
    sget-object v0, Lexpo/modules/video/enums/FullscreenOrientation$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Lexpo/modules/video/enums/FullscreenOrientation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_0
    const/4 v0, -0x1

    return v0

    :pswitch_1
    const/16 v0, 0x9

    return v0

    :pswitch_2
    const/4 v0, 0x1

    return v0

    :pswitch_3
    const/16 v0, 0x8

    return v0

    :pswitch_4
    const/4 v0, 0x0

    return v0

    :pswitch_5
    const/16 v0, 0xc

    return v0

    :pswitch_6
    const/16 v0, 0xb

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
