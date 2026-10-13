.class public final enum Lexpo/modules/ui/TextOverflowType;
.super Ljava/lang/Enum;
.source "TextView.kt"

# interfaces
.implements Lexpo/modules/kotlin/types/Enumerable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/ui/TextOverflowType$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lexpo/modules/ui/TextOverflowType;",
        ">;",
        "Lexpo/modules/kotlin/types/Enumerable;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0081\u0002\u0018\u00002\u00020\u00012\u0008\u0012\u0004\u0012\u00020\u00000\u0002B\u0011\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\r\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000b\u00a8\u0006\u0010"
    }
    d2 = {
        "Lexpo/modules/ui/TextOverflowType;",
        "Lexpo/modules/kotlin/types/Enumerable;",
        "",
        "value",
        "",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getValue",
        "()Ljava/lang/String;",
        "CLIP",
        "ELLIPSIS",
        "VISIBLE",
        "toComposeTextOverflow",
        "Landroidx/compose/ui/text/style/TextOverflow;",
        "toComposeTextOverflow-gIe3tQ8",
        "()I",
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

.field private static final synthetic $VALUES:[Lexpo/modules/ui/TextOverflowType;

.field public static final enum CLIP:Lexpo/modules/ui/TextOverflowType;

.field public static final enum ELLIPSIS:Lexpo/modules/ui/TextOverflowType;

.field public static final enum VISIBLE:Lexpo/modules/ui/TextOverflowType;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lexpo/modules/ui/TextOverflowType;
    .locals 3

    sget-object v0, Lexpo/modules/ui/TextOverflowType;->CLIP:Lexpo/modules/ui/TextOverflowType;

    sget-object v1, Lexpo/modules/ui/TextOverflowType;->ELLIPSIS:Lexpo/modules/ui/TextOverflowType;

    sget-object v2, Lexpo/modules/ui/TextOverflowType;->VISIBLE:Lexpo/modules/ui/TextOverflowType;

    filled-new-array {v0, v1, v2}, [Lexpo/modules/ui/TextOverflowType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 107
    new-instance v0, Lexpo/modules/ui/TextOverflowType;

    const/4 v1, 0x0

    const-string v2, "clip"

    const-string v3, "CLIP"

    invoke-direct {v0, v3, v1, v2}, Lexpo/modules/ui/TextOverflowType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/ui/TextOverflowType;->CLIP:Lexpo/modules/ui/TextOverflowType;

    .line 108
    new-instance v0, Lexpo/modules/ui/TextOverflowType;

    const/4 v1, 0x1

    const-string v2, "ellipsis"

    const-string v3, "ELLIPSIS"

    invoke-direct {v0, v3, v1, v2}, Lexpo/modules/ui/TextOverflowType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/ui/TextOverflowType;->ELLIPSIS:Lexpo/modules/ui/TextOverflowType;

    .line 109
    new-instance v0, Lexpo/modules/ui/TextOverflowType;

    const/4 v1, 0x2

    const-string v2, "visible"

    const-string v3, "VISIBLE"

    invoke-direct {v0, v3, v1, v2}, Lexpo/modules/ui/TextOverflowType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/ui/TextOverflowType;->VISIBLE:Lexpo/modules/ui/TextOverflowType;

    invoke-static {}, Lexpo/modules/ui/TextOverflowType;->$values()[Lexpo/modules/ui/TextOverflowType;

    move-result-object v0

    sput-object v0, Lexpo/modules/ui/TextOverflowType;->$VALUES:[Lexpo/modules/ui/TextOverflowType;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lexpo/modules/ui/TextOverflowType;->$ENTRIES:Lkotlin/enums/EnumEntries;

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

    .line 106
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lexpo/modules/ui/TextOverflowType;->value:Ljava/lang/String;

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lexpo/modules/ui/TextOverflowType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lexpo/modules/ui/TextOverflowType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lexpo/modules/ui/TextOverflowType;
    .locals 1

    const-class v0, Lexpo/modules/ui/TextOverflowType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 118
    check-cast p0, Lexpo/modules/ui/TextOverflowType;

    return-object p0
.end method

.method public static values()[Lexpo/modules/ui/TextOverflowType;
    .locals 1

    sget-object v0, Lexpo/modules/ui/TextOverflowType;->$VALUES:[Lexpo/modules/ui/TextOverflowType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 118
    check-cast v0, [Lexpo/modules/ui/TextOverflowType;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lexpo/modules/ui/TextOverflowType;->value:Ljava/lang/String;

    return-object v0
.end method

.method public final toComposeTextOverflow-gIe3tQ8()I
    .locals 2

    .line 112
    sget-object v0, Lexpo/modules/ui/TextOverflowType$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Lexpo/modules/ui/TextOverflowType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 115
    sget-object v0, Landroidx/compose/ui/text/style/TextOverflow;->Companion:Landroidx/compose/ui/text/style/TextOverflow$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/style/TextOverflow$Companion;->getVisible-gIe3tQ8()I

    move-result v0

    return v0

    .line 112
    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 114
    :cond_1
    sget-object v0, Landroidx/compose/ui/text/style/TextOverflow;->Companion:Landroidx/compose/ui/text/style/TextOverflow$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/style/TextOverflow$Companion;->getEllipsis-gIe3tQ8()I

    move-result v0

    return v0

    .line 113
    :cond_2
    sget-object v0, Landroidx/compose/ui/text/style/TextOverflow;->Companion:Landroidx/compose/ui/text/style/TextOverflow$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/style/TextOverflow$Companion;->getClip-gIe3tQ8()I

    move-result v0

    return v0
.end method
