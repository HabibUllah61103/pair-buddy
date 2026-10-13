.class public final enum Lexpo/modules/ui/convertibles/ContentAlignment;
.super Ljava/lang/Enum;
.source "Alignment.kt"

# interfaces
.implements Lexpo/modules/kotlin/types/Enumerable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/ui/convertibles/ContentAlignment$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lexpo/modules/ui/convertibles/ContentAlignment;",
        ">;",
        "Lexpo/modules/kotlin/types/Enumerable;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0081\u0002\u0018\u00002\u00020\u00012\u0008\u0012\u0004\u0012\u00020\u00000\u0002B\u0011\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0006\u0010\u0012\u001a\u00020\u0013R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011\u00a8\u0006\u0014"
    }
    d2 = {
        "Lexpo/modules/ui/convertibles/ContentAlignment;",
        "Lexpo/modules/kotlin/types/Enumerable;",
        "",
        "value",
        "",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getValue",
        "()Ljava/lang/String;",
        "TOP_START",
        "TOP_CENTER",
        "TOP_END",
        "CENTER_START",
        "CENTER",
        "CENTER_END",
        "BOTTOM_START",
        "BOTTOM_CENTER",
        "BOTTOM_END",
        "toComposeAlignment",
        "Landroidx/compose/ui/Alignment;",
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

.field private static final synthetic $VALUES:[Lexpo/modules/ui/convertibles/ContentAlignment;

.field public static final enum BOTTOM_CENTER:Lexpo/modules/ui/convertibles/ContentAlignment;

.field public static final enum BOTTOM_END:Lexpo/modules/ui/convertibles/ContentAlignment;

.field public static final enum BOTTOM_START:Lexpo/modules/ui/convertibles/ContentAlignment;

.field public static final enum CENTER:Lexpo/modules/ui/convertibles/ContentAlignment;

.field public static final enum CENTER_END:Lexpo/modules/ui/convertibles/ContentAlignment;

.field public static final enum CENTER_START:Lexpo/modules/ui/convertibles/ContentAlignment;

.field public static final enum TOP_CENTER:Lexpo/modules/ui/convertibles/ContentAlignment;

.field public static final enum TOP_END:Lexpo/modules/ui/convertibles/ContentAlignment;

.field public static final enum TOP_START:Lexpo/modules/ui/convertibles/ContentAlignment;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lexpo/modules/ui/convertibles/ContentAlignment;
    .locals 9

    sget-object v0, Lexpo/modules/ui/convertibles/ContentAlignment;->TOP_START:Lexpo/modules/ui/convertibles/ContentAlignment;

    sget-object v1, Lexpo/modules/ui/convertibles/ContentAlignment;->TOP_CENTER:Lexpo/modules/ui/convertibles/ContentAlignment;

    sget-object v2, Lexpo/modules/ui/convertibles/ContentAlignment;->TOP_END:Lexpo/modules/ui/convertibles/ContentAlignment;

    sget-object v3, Lexpo/modules/ui/convertibles/ContentAlignment;->CENTER_START:Lexpo/modules/ui/convertibles/ContentAlignment;

    sget-object v4, Lexpo/modules/ui/convertibles/ContentAlignment;->CENTER:Lexpo/modules/ui/convertibles/ContentAlignment;

    sget-object v5, Lexpo/modules/ui/convertibles/ContentAlignment;->CENTER_END:Lexpo/modules/ui/convertibles/ContentAlignment;

    sget-object v6, Lexpo/modules/ui/convertibles/ContentAlignment;->BOTTOM_START:Lexpo/modules/ui/convertibles/ContentAlignment;

    sget-object v7, Lexpo/modules/ui/convertibles/ContentAlignment;->BOTTOM_CENTER:Lexpo/modules/ui/convertibles/ContentAlignment;

    sget-object v8, Lexpo/modules/ui/convertibles/ContentAlignment;->BOTTOM_END:Lexpo/modules/ui/convertibles/ContentAlignment;

    filled-new-array/range {v0 .. v8}, [Lexpo/modules/ui/convertibles/ContentAlignment;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 89
    new-instance v0, Lexpo/modules/ui/convertibles/ContentAlignment;

    const/4 v1, 0x0

    const-string v2, "topStart"

    const-string v3, "TOP_START"

    invoke-direct {v0, v3, v1, v2}, Lexpo/modules/ui/convertibles/ContentAlignment;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/ui/convertibles/ContentAlignment;->TOP_START:Lexpo/modules/ui/convertibles/ContentAlignment;

    .line 90
    new-instance v0, Lexpo/modules/ui/convertibles/ContentAlignment;

    const/4 v1, 0x1

    const-string v2, "topCenter"

    const-string v3, "TOP_CENTER"

    invoke-direct {v0, v3, v1, v2}, Lexpo/modules/ui/convertibles/ContentAlignment;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/ui/convertibles/ContentAlignment;->TOP_CENTER:Lexpo/modules/ui/convertibles/ContentAlignment;

    .line 91
    new-instance v0, Lexpo/modules/ui/convertibles/ContentAlignment;

    const/4 v1, 0x2

    const-string v2, "topEnd"

    const-string v3, "TOP_END"

    invoke-direct {v0, v3, v1, v2}, Lexpo/modules/ui/convertibles/ContentAlignment;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/ui/convertibles/ContentAlignment;->TOP_END:Lexpo/modules/ui/convertibles/ContentAlignment;

    .line 92
    new-instance v0, Lexpo/modules/ui/convertibles/ContentAlignment;

    const/4 v1, 0x3

    const-string v2, "centerStart"

    const-string v3, "CENTER_START"

    invoke-direct {v0, v3, v1, v2}, Lexpo/modules/ui/convertibles/ContentAlignment;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/ui/convertibles/ContentAlignment;->CENTER_START:Lexpo/modules/ui/convertibles/ContentAlignment;

    .line 93
    new-instance v0, Lexpo/modules/ui/convertibles/ContentAlignment;

    const/4 v1, 0x4

    const-string v2, "center"

    const-string v3, "CENTER"

    invoke-direct {v0, v3, v1, v2}, Lexpo/modules/ui/convertibles/ContentAlignment;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/ui/convertibles/ContentAlignment;->CENTER:Lexpo/modules/ui/convertibles/ContentAlignment;

    .line 94
    new-instance v0, Lexpo/modules/ui/convertibles/ContentAlignment;

    const/4 v1, 0x5

    const-string v2, "centerEnd"

    const-string v3, "CENTER_END"

    invoke-direct {v0, v3, v1, v2}, Lexpo/modules/ui/convertibles/ContentAlignment;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/ui/convertibles/ContentAlignment;->CENTER_END:Lexpo/modules/ui/convertibles/ContentAlignment;

    .line 95
    new-instance v0, Lexpo/modules/ui/convertibles/ContentAlignment;

    const/4 v1, 0x6

    const-string v2, "bottomStart"

    const-string v3, "BOTTOM_START"

    invoke-direct {v0, v3, v1, v2}, Lexpo/modules/ui/convertibles/ContentAlignment;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/ui/convertibles/ContentAlignment;->BOTTOM_START:Lexpo/modules/ui/convertibles/ContentAlignment;

    .line 96
    new-instance v0, Lexpo/modules/ui/convertibles/ContentAlignment;

    const/4 v1, 0x7

    const-string v2, "bottomCenter"

    const-string v3, "BOTTOM_CENTER"

    invoke-direct {v0, v3, v1, v2}, Lexpo/modules/ui/convertibles/ContentAlignment;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/ui/convertibles/ContentAlignment;->BOTTOM_CENTER:Lexpo/modules/ui/convertibles/ContentAlignment;

    .line 97
    new-instance v0, Lexpo/modules/ui/convertibles/ContentAlignment;

    const/16 v1, 0x8

    const-string v2, "bottomEnd"

    const-string v3, "BOTTOM_END"

    invoke-direct {v0, v3, v1, v2}, Lexpo/modules/ui/convertibles/ContentAlignment;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/ui/convertibles/ContentAlignment;->BOTTOM_END:Lexpo/modules/ui/convertibles/ContentAlignment;

    invoke-static {}, Lexpo/modules/ui/convertibles/ContentAlignment;->$values()[Lexpo/modules/ui/convertibles/ContentAlignment;

    move-result-object v0

    sput-object v0, Lexpo/modules/ui/convertibles/ContentAlignment;->$VALUES:[Lexpo/modules/ui/convertibles/ContentAlignment;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lexpo/modules/ui/convertibles/ContentAlignment;->$ENTRIES:Lkotlin/enums/EnumEntries;

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

    .line 88
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lexpo/modules/ui/convertibles/ContentAlignment;->value:Ljava/lang/String;

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lexpo/modules/ui/convertibles/ContentAlignment;",
            ">;"
        }
    .end annotation

    sget-object v0, Lexpo/modules/ui/convertibles/ContentAlignment;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lexpo/modules/ui/convertibles/ContentAlignment;
    .locals 1

    const-class v0, Lexpo/modules/ui/convertibles/ContentAlignment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 112
    check-cast p0, Lexpo/modules/ui/convertibles/ContentAlignment;

    return-object p0
.end method

.method public static values()[Lexpo/modules/ui/convertibles/ContentAlignment;
    .locals 1

    sget-object v0, Lexpo/modules/ui/convertibles/ContentAlignment;->$VALUES:[Lexpo/modules/ui/convertibles/ContentAlignment;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 112
    check-cast v0, [Lexpo/modules/ui/convertibles/ContentAlignment;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lexpo/modules/ui/convertibles/ContentAlignment;->value:Ljava/lang/String;

    return-object v0
.end method

.method public final toComposeAlignment()Landroidx/compose/ui/Alignment;
    .locals 2

    .line 100
    sget-object v0, Lexpo/modules/ui/convertibles/ContentAlignment$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Lexpo/modules/ui/convertibles/ContentAlignment;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 109
    :pswitch_0
    sget-object v0, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/Alignment$Companion;->getBottomEnd()Landroidx/compose/ui/Alignment;

    move-result-object v0

    return-object v0

    .line 108
    :pswitch_1
    sget-object v0, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/Alignment$Companion;->getBottomCenter()Landroidx/compose/ui/Alignment;

    move-result-object v0

    return-object v0

    .line 107
    :pswitch_2
    sget-object v0, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/Alignment$Companion;->getBottomStart()Landroidx/compose/ui/Alignment;

    move-result-object v0

    return-object v0

    .line 106
    :pswitch_3
    sget-object v0, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/Alignment$Companion;->getCenterEnd()Landroidx/compose/ui/Alignment;

    move-result-object v0

    return-object v0

    .line 105
    :pswitch_4
    sget-object v0, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/Alignment$Companion;->getCenter()Landroidx/compose/ui/Alignment;

    move-result-object v0

    return-object v0

    .line 104
    :pswitch_5
    sget-object v0, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/Alignment$Companion;->getCenterStart()Landroidx/compose/ui/Alignment;

    move-result-object v0

    return-object v0

    .line 103
    :pswitch_6
    sget-object v0, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/Alignment$Companion;->getTopEnd()Landroidx/compose/ui/Alignment;

    move-result-object v0

    return-object v0

    .line 102
    :pswitch_7
    sget-object v0, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/Alignment$Companion;->getTopCenter()Landroidx/compose/ui/Alignment;

    move-result-object v0

    return-object v0

    .line 101
    :pswitch_8
    sget-object v0, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/Alignment$Companion;->getTopStart()Landroidx/compose/ui/Alignment;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
