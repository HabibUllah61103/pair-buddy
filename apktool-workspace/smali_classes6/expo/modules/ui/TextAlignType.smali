.class public final enum Lexpo/modules/ui/TextAlignType;
.super Ljava/lang/Enum;
.source "TextView.kt"

# interfaces
.implements Lexpo/modules/kotlin/types/Enumerable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/ui/TextAlignType$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lexpo/modules/ui/TextAlignType;",
        ">;",
        "Lexpo/modules/kotlin/types/Enumerable;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0081\u0002\u0018\u00002\u00020\u00012\u0008\u0012\u0004\u0012\u00020\u00000\u0002B\u0011\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\r\u0010\u000f\u001a\u00020\u0010\u00a2\u0006\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000e\u00a8\u0006\u0013"
    }
    d2 = {
        "Lexpo/modules/ui/TextAlignType;",
        "Lexpo/modules/kotlin/types/Enumerable;",
        "",
        "value",
        "",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getValue",
        "()Ljava/lang/String;",
        "LEFT",
        "RIGHT",
        "CENTER",
        "JUSTIFY",
        "START",
        "END",
        "toComposeTextAlign",
        "Landroidx/compose/ui/text/style/TextAlign;",
        "toComposeTextAlign-e0LSkKk",
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

.field private static final synthetic $VALUES:[Lexpo/modules/ui/TextAlignType;

.field public static final enum CENTER:Lexpo/modules/ui/TextAlignType;

.field public static final enum END:Lexpo/modules/ui/TextAlignType;

.field public static final enum JUSTIFY:Lexpo/modules/ui/TextAlignType;

.field public static final enum LEFT:Lexpo/modules/ui/TextAlignType;

.field public static final enum RIGHT:Lexpo/modules/ui/TextAlignType;

.field public static final enum START:Lexpo/modules/ui/TextAlignType;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lexpo/modules/ui/TextAlignType;
    .locals 6

    sget-object v0, Lexpo/modules/ui/TextAlignType;->LEFT:Lexpo/modules/ui/TextAlignType;

    sget-object v1, Lexpo/modules/ui/TextAlignType;->RIGHT:Lexpo/modules/ui/TextAlignType;

    sget-object v2, Lexpo/modules/ui/TextAlignType;->CENTER:Lexpo/modules/ui/TextAlignType;

    sget-object v3, Lexpo/modules/ui/TextAlignType;->JUSTIFY:Lexpo/modules/ui/TextAlignType;

    sget-object v4, Lexpo/modules/ui/TextAlignType;->START:Lexpo/modules/ui/TextAlignType;

    sget-object v5, Lexpo/modules/ui/TextAlignType;->END:Lexpo/modules/ui/TextAlignType;

    filled-new-array/range {v0 .. v5}, [Lexpo/modules/ui/TextAlignType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 73
    new-instance v0, Lexpo/modules/ui/TextAlignType;

    const/4 v1, 0x0

    const-string v2, "left"

    const-string v3, "LEFT"

    invoke-direct {v0, v3, v1, v2}, Lexpo/modules/ui/TextAlignType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/ui/TextAlignType;->LEFT:Lexpo/modules/ui/TextAlignType;

    .line 74
    new-instance v0, Lexpo/modules/ui/TextAlignType;

    const/4 v1, 0x1

    const-string v2, "right"

    const-string v3, "RIGHT"

    invoke-direct {v0, v3, v1, v2}, Lexpo/modules/ui/TextAlignType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/ui/TextAlignType;->RIGHT:Lexpo/modules/ui/TextAlignType;

    .line 75
    new-instance v0, Lexpo/modules/ui/TextAlignType;

    const/4 v1, 0x2

    const-string v2, "center"

    const-string v3, "CENTER"

    invoke-direct {v0, v3, v1, v2}, Lexpo/modules/ui/TextAlignType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/ui/TextAlignType;->CENTER:Lexpo/modules/ui/TextAlignType;

    .line 76
    new-instance v0, Lexpo/modules/ui/TextAlignType;

    const/4 v1, 0x3

    const-string v2, "justify"

    const-string v3, "JUSTIFY"

    invoke-direct {v0, v3, v1, v2}, Lexpo/modules/ui/TextAlignType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/ui/TextAlignType;->JUSTIFY:Lexpo/modules/ui/TextAlignType;

    .line 77
    new-instance v0, Lexpo/modules/ui/TextAlignType;

    const/4 v1, 0x4

    const-string v2, "start"

    const-string v3, "START"

    invoke-direct {v0, v3, v1, v2}, Lexpo/modules/ui/TextAlignType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/ui/TextAlignType;->START:Lexpo/modules/ui/TextAlignType;

    .line 78
    new-instance v0, Lexpo/modules/ui/TextAlignType;

    const/4 v1, 0x5

    const-string v2, "end"

    const-string v3, "END"

    invoke-direct {v0, v3, v1, v2}, Lexpo/modules/ui/TextAlignType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/ui/TextAlignType;->END:Lexpo/modules/ui/TextAlignType;

    invoke-static {}, Lexpo/modules/ui/TextAlignType;->$values()[Lexpo/modules/ui/TextAlignType;

    move-result-object v0

    sput-object v0, Lexpo/modules/ui/TextAlignType;->$VALUES:[Lexpo/modules/ui/TextAlignType;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lexpo/modules/ui/TextAlignType;->$ENTRIES:Lkotlin/enums/EnumEntries;

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

    .line 72
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lexpo/modules/ui/TextAlignType;->value:Ljava/lang/String;

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lexpo/modules/ui/TextAlignType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lexpo/modules/ui/TextAlignType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lexpo/modules/ui/TextAlignType;
    .locals 1

    const-class v0, Lexpo/modules/ui/TextAlignType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 90
    check-cast p0, Lexpo/modules/ui/TextAlignType;

    return-object p0
.end method

.method public static values()[Lexpo/modules/ui/TextAlignType;
    .locals 1

    sget-object v0, Lexpo/modules/ui/TextAlignType;->$VALUES:[Lexpo/modules/ui/TextAlignType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 90
    check-cast v0, [Lexpo/modules/ui/TextAlignType;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lexpo/modules/ui/TextAlignType;->value:Ljava/lang/String;

    return-object v0
.end method

.method public final toComposeTextAlign-e0LSkKk()I
    .locals 2

    .line 81
    sget-object v0, Lexpo/modules/ui/TextAlignType$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Lexpo/modules/ui/TextAlignType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 87
    :pswitch_0
    sget-object v0, Landroidx/compose/ui/text/style/TextAlign;->Companion:Landroidx/compose/ui/text/style/TextAlign$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/style/TextAlign$Companion;->getEnd-e0LSkKk()I

    move-result v0

    return v0

    .line 86
    :pswitch_1
    sget-object v0, Landroidx/compose/ui/text/style/TextAlign;->Companion:Landroidx/compose/ui/text/style/TextAlign$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/style/TextAlign$Companion;->getStart-e0LSkKk()I

    move-result v0

    return v0

    .line 85
    :pswitch_2
    sget-object v0, Landroidx/compose/ui/text/style/TextAlign;->Companion:Landroidx/compose/ui/text/style/TextAlign$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/style/TextAlign$Companion;->getJustify-e0LSkKk()I

    move-result v0

    return v0

    .line 84
    :pswitch_3
    sget-object v0, Landroidx/compose/ui/text/style/TextAlign;->Companion:Landroidx/compose/ui/text/style/TextAlign$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/style/TextAlign$Companion;->getCenter-e0LSkKk()I

    move-result v0

    return v0

    .line 83
    :pswitch_4
    sget-object v0, Landroidx/compose/ui/text/style/TextAlign;->Companion:Landroidx/compose/ui/text/style/TextAlign$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/style/TextAlign$Companion;->getRight-e0LSkKk()I

    move-result v0

    return v0

    .line 82
    :pswitch_5
    sget-object v0, Landroidx/compose/ui/text/style/TextAlign;->Companion:Landroidx/compose/ui/text/style/TextAlign$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/style/TextAlign$Companion;->getLeft-e0LSkKk()I

    move-result v0

    return v0

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
