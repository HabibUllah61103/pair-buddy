.class public final enum Lexpo/modules/ui/convertibles/EasingType;
.super Ljava/lang/Enum;
.source "AnimationSpecParams.kt"

# interfaces
.implements Lexpo/modules/kotlin/types/Enumerable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/ui/convertibles/EasingType$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lexpo/modules/ui/convertibles/EasingType;",
        ">;",
        "Lexpo/modules/kotlin/types/Enumerable;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0000\u0008\u0080\u0081\u0002\u0018\u00002\u00020\u00012\u0008\u0012\u0004\u0012\u00020\u00000\u0002B\u0011\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0006\u0010\u000e\u001a\u00020\u000fR\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\r\u00a8\u0006\u0010"
    }
    d2 = {
        "Lexpo/modules/ui/convertibles/EasingType;",
        "Lexpo/modules/kotlin/types/Enumerable;",
        "",
        "value",
        "",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getValue",
        "()Ljava/lang/String;",
        "LINEAR",
        "FAST_OUT_SLOW_IN",
        "FAST_OUT_LINEAR_IN",
        "LINEAR_OUT_SLOW_IN",
        "EASE",
        "toEasing",
        "Landroidx/compose/animation/core/Easing;",
        "expo-ui_release"
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

.field private static final synthetic $VALUES:[Lexpo/modules/ui/convertibles/EasingType;

.field public static final enum EASE:Lexpo/modules/ui/convertibles/EasingType;

.field public static final enum FAST_OUT_LINEAR_IN:Lexpo/modules/ui/convertibles/EasingType;

.field public static final enum FAST_OUT_SLOW_IN:Lexpo/modules/ui/convertibles/EasingType;

.field public static final enum LINEAR:Lexpo/modules/ui/convertibles/EasingType;

.field public static final enum LINEAR_OUT_SLOW_IN:Lexpo/modules/ui/convertibles/EasingType;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lexpo/modules/ui/convertibles/EasingType;
    .locals 5

    sget-object v0, Lexpo/modules/ui/convertibles/EasingType;->LINEAR:Lexpo/modules/ui/convertibles/EasingType;

    sget-object v1, Lexpo/modules/ui/convertibles/EasingType;->FAST_OUT_SLOW_IN:Lexpo/modules/ui/convertibles/EasingType;

    sget-object v2, Lexpo/modules/ui/convertibles/EasingType;->FAST_OUT_LINEAR_IN:Lexpo/modules/ui/convertibles/EasingType;

    sget-object v3, Lexpo/modules/ui/convertibles/EasingType;->LINEAR_OUT_SLOW_IN:Lexpo/modules/ui/convertibles/EasingType;

    sget-object v4, Lexpo/modules/ui/convertibles/EasingType;->EASE:Lexpo/modules/ui/convertibles/EasingType;

    filled-new-array {v0, v1, v2, v3, v4}, [Lexpo/modules/ui/convertibles/EasingType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 20
    new-instance v0, Lexpo/modules/ui/convertibles/EasingType;

    const/4 v1, 0x0

    const-string v2, "linear"

    const-string v3, "LINEAR"

    invoke-direct {v0, v3, v1, v2}, Lexpo/modules/ui/convertibles/EasingType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/ui/convertibles/EasingType;->LINEAR:Lexpo/modules/ui/convertibles/EasingType;

    .line 21
    new-instance v0, Lexpo/modules/ui/convertibles/EasingType;

    const/4 v1, 0x1

    const-string v2, "fastOutSlowIn"

    const-string v3, "FAST_OUT_SLOW_IN"

    invoke-direct {v0, v3, v1, v2}, Lexpo/modules/ui/convertibles/EasingType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/ui/convertibles/EasingType;->FAST_OUT_SLOW_IN:Lexpo/modules/ui/convertibles/EasingType;

    .line 22
    new-instance v0, Lexpo/modules/ui/convertibles/EasingType;

    const/4 v1, 0x2

    const-string v2, "fastOutLinearIn"

    const-string v3, "FAST_OUT_LINEAR_IN"

    invoke-direct {v0, v3, v1, v2}, Lexpo/modules/ui/convertibles/EasingType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/ui/convertibles/EasingType;->FAST_OUT_LINEAR_IN:Lexpo/modules/ui/convertibles/EasingType;

    .line 23
    new-instance v0, Lexpo/modules/ui/convertibles/EasingType;

    const/4 v1, 0x3

    const-string v2, "linearOutSlowIn"

    const-string v3, "LINEAR_OUT_SLOW_IN"

    invoke-direct {v0, v3, v1, v2}, Lexpo/modules/ui/convertibles/EasingType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/ui/convertibles/EasingType;->LINEAR_OUT_SLOW_IN:Lexpo/modules/ui/convertibles/EasingType;

    .line 24
    new-instance v0, Lexpo/modules/ui/convertibles/EasingType;

    const/4 v1, 0x4

    const-string v2, "ease"

    const-string v3, "EASE"

    invoke-direct {v0, v3, v1, v2}, Lexpo/modules/ui/convertibles/EasingType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/ui/convertibles/EasingType;->EASE:Lexpo/modules/ui/convertibles/EasingType;

    invoke-static {}, Lexpo/modules/ui/convertibles/EasingType;->$values()[Lexpo/modules/ui/convertibles/EasingType;

    move-result-object v0

    sput-object v0, Lexpo/modules/ui/convertibles/EasingType;->$VALUES:[Lexpo/modules/ui/convertibles/EasingType;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lexpo/modules/ui/convertibles/EasingType;->$ENTRIES:Lkotlin/enums/EnumEntries;

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

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lexpo/modules/ui/convertibles/EasingType;->value:Ljava/lang/String;

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lexpo/modules/ui/convertibles/EasingType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lexpo/modules/ui/convertibles/EasingType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lexpo/modules/ui/convertibles/EasingType;
    .locals 1

    const-class v0, Lexpo/modules/ui/convertibles/EasingType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 33
    check-cast p0, Lexpo/modules/ui/convertibles/EasingType;

    return-object p0
.end method

.method public static values()[Lexpo/modules/ui/convertibles/EasingType;
    .locals 1

    sget-object v0, Lexpo/modules/ui/convertibles/EasingType;->$VALUES:[Lexpo/modules/ui/convertibles/EasingType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 33
    check-cast v0, [Lexpo/modules/ui/convertibles/EasingType;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lexpo/modules/ui/convertibles/EasingType;->value:Ljava/lang/String;

    return-object v0
.end method

.method public final toEasing()Landroidx/compose/animation/core/Easing;
    .locals 2

    .line 26
    sget-object v0, Lexpo/modules/ui/convertibles/EasingType$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Lexpo/modules/ui/convertibles/EasingType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 31
    invoke-static {}, Landroidx/compose/animation/core/EasingFunctionsKt;->getEaseInOut()Landroidx/compose/animation/core/Easing;

    move-result-object v0

    return-object v0

    .line 26
    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 30
    :cond_1
    invoke-static {}, Landroidx/compose/animation/core/EasingKt;->getLinearOutSlowInEasing()Landroidx/compose/animation/core/Easing;

    move-result-object v0

    return-object v0

    .line 29
    :cond_2
    invoke-static {}, Landroidx/compose/animation/core/EasingKt;->getFastOutLinearInEasing()Landroidx/compose/animation/core/Easing;

    move-result-object v0

    return-object v0

    .line 28
    :cond_3
    invoke-static {}, Landroidx/compose/animation/core/EasingKt;->getFastOutSlowInEasing()Landroidx/compose/animation/core/Easing;

    move-result-object v0

    return-object v0

    .line 27
    :cond_4
    invoke-static {}, Landroidx/compose/animation/core/EasingKt;->getLinearEasing()Landroidx/compose/animation/core/Easing;

    move-result-object v0

    return-object v0
.end method
