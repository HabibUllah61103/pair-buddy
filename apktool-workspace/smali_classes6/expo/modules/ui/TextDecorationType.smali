.class public final enum Lexpo/modules/ui/TextDecorationType;
.super Ljava/lang/Enum;
.source "TextView.kt"

# interfaces
.implements Lexpo/modules/kotlin/types/Enumerable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/ui/TextDecorationType$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lexpo/modules/ui/TextDecorationType;",
        ">;",
        "Lexpo/modules/kotlin/types/Enumerable;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0081\u0002\u0018\u00002\u00020\u00012\u0008\u0012\u0004\u0012\u00020\u00000\u0002B\u0011\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0006\u0010\u000c\u001a\u00020\rR\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000b\u00a8\u0006\u000e"
    }
    d2 = {
        "Lexpo/modules/ui/TextDecorationType;",
        "Lexpo/modules/kotlin/types/Enumerable;",
        "",
        "value",
        "",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getValue",
        "()Ljava/lang/String;",
        "NONE",
        "UNDERLINE",
        "LINE_THROUGH",
        "toComposeTextDecoration",
        "Landroidx/compose/ui/text/style/TextDecoration;",
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

.field private static final synthetic $VALUES:[Lexpo/modules/ui/TextDecorationType;

.field public static final enum LINE_THROUGH:Lexpo/modules/ui/TextDecorationType;

.field public static final enum NONE:Lexpo/modules/ui/TextDecorationType;

.field public static final enum UNDERLINE:Lexpo/modules/ui/TextDecorationType;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lexpo/modules/ui/TextDecorationType;
    .locals 3

    sget-object v0, Lexpo/modules/ui/TextDecorationType;->NONE:Lexpo/modules/ui/TextDecorationType;

    sget-object v1, Lexpo/modules/ui/TextDecorationType;->UNDERLINE:Lexpo/modules/ui/TextDecorationType;

    sget-object v2, Lexpo/modules/ui/TextDecorationType;->LINE_THROUGH:Lexpo/modules/ui/TextDecorationType;

    filled-new-array {v0, v1, v2}, [Lexpo/modules/ui/TextDecorationType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 93
    new-instance v0, Lexpo/modules/ui/TextDecorationType;

    const/4 v1, 0x0

    const-string v2, "none"

    const-string v3, "NONE"

    invoke-direct {v0, v3, v1, v2}, Lexpo/modules/ui/TextDecorationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/ui/TextDecorationType;->NONE:Lexpo/modules/ui/TextDecorationType;

    .line 94
    new-instance v0, Lexpo/modules/ui/TextDecorationType;

    const/4 v1, 0x1

    const-string v2, "underline"

    const-string v3, "UNDERLINE"

    invoke-direct {v0, v3, v1, v2}, Lexpo/modules/ui/TextDecorationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/ui/TextDecorationType;->UNDERLINE:Lexpo/modules/ui/TextDecorationType;

    .line 95
    new-instance v0, Lexpo/modules/ui/TextDecorationType;

    const/4 v1, 0x2

    const-string v2, "lineThrough"

    const-string v3, "LINE_THROUGH"

    invoke-direct {v0, v3, v1, v2}, Lexpo/modules/ui/TextDecorationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/ui/TextDecorationType;->LINE_THROUGH:Lexpo/modules/ui/TextDecorationType;

    invoke-static {}, Lexpo/modules/ui/TextDecorationType;->$values()[Lexpo/modules/ui/TextDecorationType;

    move-result-object v0

    sput-object v0, Lexpo/modules/ui/TextDecorationType;->$VALUES:[Lexpo/modules/ui/TextDecorationType;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lexpo/modules/ui/TextDecorationType;->$ENTRIES:Lkotlin/enums/EnumEntries;

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

    .line 92
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lexpo/modules/ui/TextDecorationType;->value:Ljava/lang/String;

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lexpo/modules/ui/TextDecorationType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lexpo/modules/ui/TextDecorationType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lexpo/modules/ui/TextDecorationType;
    .locals 1

    const-class v0, Lexpo/modules/ui/TextDecorationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 104
    check-cast p0, Lexpo/modules/ui/TextDecorationType;

    return-object p0
.end method

.method public static values()[Lexpo/modules/ui/TextDecorationType;
    .locals 1

    sget-object v0, Lexpo/modules/ui/TextDecorationType;->$VALUES:[Lexpo/modules/ui/TextDecorationType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 104
    check-cast v0, [Lexpo/modules/ui/TextDecorationType;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lexpo/modules/ui/TextDecorationType;->value:Ljava/lang/String;

    return-object v0
.end method

.method public final toComposeTextDecoration()Landroidx/compose/ui/text/style/TextDecoration;
    .locals 2

    .line 98
    sget-object v0, Lexpo/modules/ui/TextDecorationType$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Lexpo/modules/ui/TextDecorationType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 101
    sget-object v0, Landroidx/compose/ui/text/style/TextDecoration;->Companion:Landroidx/compose/ui/text/style/TextDecoration$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/style/TextDecoration$Companion;->getLineThrough()Landroidx/compose/ui/text/style/TextDecoration;

    move-result-object v0

    return-object v0

    .line 98
    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 100
    :cond_1
    sget-object v0, Landroidx/compose/ui/text/style/TextDecoration;->Companion:Landroidx/compose/ui/text/style/TextDecoration$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/style/TextDecoration$Companion;->getUnderline()Landroidx/compose/ui/text/style/TextDecoration;

    move-result-object v0

    return-object v0

    .line 99
    :cond_2
    sget-object v0, Landroidx/compose/ui/text/style/TextDecoration;->Companion:Landroidx/compose/ui/text/style/TextDecoration$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/style/TextDecoration$Companion;->getNone()Landroidx/compose/ui/text/style/TextDecoration;

    move-result-object v0

    return-object v0
.end method
