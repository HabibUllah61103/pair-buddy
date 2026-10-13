.class public final enum Lexpo/modules/ui/convertibles/VerticalArrangementDefault;
.super Ljava/lang/Enum;
.source "Arrangement.kt"

# interfaces
.implements Lexpo/modules/kotlin/types/Enumerable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/ui/convertibles/VerticalArrangementDefault$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lexpo/modules/ui/convertibles/VerticalArrangementDefault;",
        ">;",
        "Lexpo/modules/kotlin/types/Enumerable;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0081\u0002\u0018\u00002\u00020\u00012\u0008\u0012\u0004\u0012\u00020\u00000\u0002B\u0011\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0006\u0010\u000f\u001a\u00020\u0010R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000e\u00a8\u0006\u0011"
    }
    d2 = {
        "Lexpo/modules/ui/convertibles/VerticalArrangementDefault;",
        "Lexpo/modules/kotlin/types/Enumerable;",
        "",
        "value",
        "",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getValue",
        "()Ljava/lang/String;",
        "TOP",
        "BOTTOM",
        "CENTER",
        "SPACE_BETWEEN",
        "SPACE_AROUND",
        "SPACE_EVENLY",
        "toComposeArrangement",
        "Landroidx/compose/foundation/layout/Arrangement$Vertical;",
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

.field private static final synthetic $VALUES:[Lexpo/modules/ui/convertibles/VerticalArrangementDefault;

.field public static final enum BOTTOM:Lexpo/modules/ui/convertibles/VerticalArrangementDefault;

.field public static final enum CENTER:Lexpo/modules/ui/convertibles/VerticalArrangementDefault;

.field public static final enum SPACE_AROUND:Lexpo/modules/ui/convertibles/VerticalArrangementDefault;

.field public static final enum SPACE_BETWEEN:Lexpo/modules/ui/convertibles/VerticalArrangementDefault;

.field public static final enum SPACE_EVENLY:Lexpo/modules/ui/convertibles/VerticalArrangementDefault;

.field public static final enum TOP:Lexpo/modules/ui/convertibles/VerticalArrangementDefault;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lexpo/modules/ui/convertibles/VerticalArrangementDefault;
    .locals 6

    sget-object v0, Lexpo/modules/ui/convertibles/VerticalArrangementDefault;->TOP:Lexpo/modules/ui/convertibles/VerticalArrangementDefault;

    sget-object v1, Lexpo/modules/ui/convertibles/VerticalArrangementDefault;->BOTTOM:Lexpo/modules/ui/convertibles/VerticalArrangementDefault;

    sget-object v2, Lexpo/modules/ui/convertibles/VerticalArrangementDefault;->CENTER:Lexpo/modules/ui/convertibles/VerticalArrangementDefault;

    sget-object v3, Lexpo/modules/ui/convertibles/VerticalArrangementDefault;->SPACE_BETWEEN:Lexpo/modules/ui/convertibles/VerticalArrangementDefault;

    sget-object v4, Lexpo/modules/ui/convertibles/VerticalArrangementDefault;->SPACE_AROUND:Lexpo/modules/ui/convertibles/VerticalArrangementDefault;

    sget-object v5, Lexpo/modules/ui/convertibles/VerticalArrangementDefault;->SPACE_EVENLY:Lexpo/modules/ui/convertibles/VerticalArrangementDefault;

    filled-new-array/range {v0 .. v5}, [Lexpo/modules/ui/convertibles/VerticalArrangementDefault;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 45
    new-instance v0, Lexpo/modules/ui/convertibles/VerticalArrangementDefault;

    const/4 v1, 0x0

    const-string v2, "top"

    const-string v3, "TOP"

    invoke-direct {v0, v3, v1, v2}, Lexpo/modules/ui/convertibles/VerticalArrangementDefault;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/ui/convertibles/VerticalArrangementDefault;->TOP:Lexpo/modules/ui/convertibles/VerticalArrangementDefault;

    .line 46
    new-instance v0, Lexpo/modules/ui/convertibles/VerticalArrangementDefault;

    const/4 v1, 0x1

    const-string v2, "bottom"

    const-string v3, "BOTTOM"

    invoke-direct {v0, v3, v1, v2}, Lexpo/modules/ui/convertibles/VerticalArrangementDefault;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/ui/convertibles/VerticalArrangementDefault;->BOTTOM:Lexpo/modules/ui/convertibles/VerticalArrangementDefault;

    .line 47
    new-instance v0, Lexpo/modules/ui/convertibles/VerticalArrangementDefault;

    const/4 v1, 0x2

    const-string v2, "center"

    const-string v3, "CENTER"

    invoke-direct {v0, v3, v1, v2}, Lexpo/modules/ui/convertibles/VerticalArrangementDefault;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/ui/convertibles/VerticalArrangementDefault;->CENTER:Lexpo/modules/ui/convertibles/VerticalArrangementDefault;

    .line 48
    new-instance v0, Lexpo/modules/ui/convertibles/VerticalArrangementDefault;

    const/4 v1, 0x3

    const-string v2, "spaceBetween"

    const-string v3, "SPACE_BETWEEN"

    invoke-direct {v0, v3, v1, v2}, Lexpo/modules/ui/convertibles/VerticalArrangementDefault;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/ui/convertibles/VerticalArrangementDefault;->SPACE_BETWEEN:Lexpo/modules/ui/convertibles/VerticalArrangementDefault;

    .line 49
    new-instance v0, Lexpo/modules/ui/convertibles/VerticalArrangementDefault;

    const/4 v1, 0x4

    const-string v2, "spaceAround"

    const-string v3, "SPACE_AROUND"

    invoke-direct {v0, v3, v1, v2}, Lexpo/modules/ui/convertibles/VerticalArrangementDefault;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/ui/convertibles/VerticalArrangementDefault;->SPACE_AROUND:Lexpo/modules/ui/convertibles/VerticalArrangementDefault;

    .line 50
    new-instance v0, Lexpo/modules/ui/convertibles/VerticalArrangementDefault;

    const/4 v1, 0x5

    const-string v2, "spaceEvenly"

    const-string v3, "SPACE_EVENLY"

    invoke-direct {v0, v3, v1, v2}, Lexpo/modules/ui/convertibles/VerticalArrangementDefault;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/ui/convertibles/VerticalArrangementDefault;->SPACE_EVENLY:Lexpo/modules/ui/convertibles/VerticalArrangementDefault;

    invoke-static {}, Lexpo/modules/ui/convertibles/VerticalArrangementDefault;->$values()[Lexpo/modules/ui/convertibles/VerticalArrangementDefault;

    move-result-object v0

    sput-object v0, Lexpo/modules/ui/convertibles/VerticalArrangementDefault;->$VALUES:[Lexpo/modules/ui/convertibles/VerticalArrangementDefault;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lexpo/modules/ui/convertibles/VerticalArrangementDefault;->$ENTRIES:Lkotlin/enums/EnumEntries;

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

    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lexpo/modules/ui/convertibles/VerticalArrangementDefault;->value:Ljava/lang/String;

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lexpo/modules/ui/convertibles/VerticalArrangementDefault;",
            ">;"
        }
    .end annotation

    sget-object v0, Lexpo/modules/ui/convertibles/VerticalArrangementDefault;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lexpo/modules/ui/convertibles/VerticalArrangementDefault;
    .locals 1

    const-class v0, Lexpo/modules/ui/convertibles/VerticalArrangementDefault;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 62
    check-cast p0, Lexpo/modules/ui/convertibles/VerticalArrangementDefault;

    return-object p0
.end method

.method public static values()[Lexpo/modules/ui/convertibles/VerticalArrangementDefault;
    .locals 1

    sget-object v0, Lexpo/modules/ui/convertibles/VerticalArrangementDefault;->$VALUES:[Lexpo/modules/ui/convertibles/VerticalArrangementDefault;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 62
    check-cast v0, [Lexpo/modules/ui/convertibles/VerticalArrangementDefault;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lexpo/modules/ui/convertibles/VerticalArrangementDefault;->value:Ljava/lang/String;

    return-object v0
.end method

.method public final toComposeArrangement()Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .locals 2

    .line 53
    sget-object v0, Lexpo/modules/ui/convertibles/VerticalArrangementDefault$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Lexpo/modules/ui/convertibles/VerticalArrangementDefault;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 59
    :pswitch_0
    sget-object v0, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v0}, Landroidx/compose/foundation/layout/Arrangement;->getSpaceEvenly()Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/layout/Arrangement$Vertical;

    return-object v0

    .line 58
    :pswitch_1
    sget-object v0, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v0}, Landroidx/compose/foundation/layout/Arrangement;->getSpaceAround()Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/layout/Arrangement$Vertical;

    return-object v0

    .line 57
    :pswitch_2
    sget-object v0, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v0}, Landroidx/compose/foundation/layout/Arrangement;->getSpaceBetween()Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/layout/Arrangement$Vertical;

    return-object v0

    .line 56
    :pswitch_3
    sget-object v0, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v0}, Landroidx/compose/foundation/layout/Arrangement;->getCenter()Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/layout/Arrangement$Vertical;

    return-object v0

    .line 55
    :pswitch_4
    sget-object v0, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v0}, Landroidx/compose/foundation/layout/Arrangement;->getBottom()Landroidx/compose/foundation/layout/Arrangement$Vertical;

    move-result-object v0

    return-object v0

    .line 54
    :pswitch_5
    sget-object v0, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v0}, Landroidx/compose/foundation/layout/Arrangement;->getTop()Landroidx/compose/foundation/layout/Arrangement$Vertical;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
