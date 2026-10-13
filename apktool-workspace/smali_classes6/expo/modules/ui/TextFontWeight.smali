.class public final enum Lexpo/modules/ui/TextFontWeight;
.super Ljava/lang/Enum;
.source "TextView.kt"

# interfaces
.implements Lexpo/modules/kotlin/types/Enumerable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/ui/TextFontWeight$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lexpo/modules/ui/TextFontWeight;",
        ">;",
        "Lexpo/modules/kotlin/types/Enumerable;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0081\u0002\u0018\u00002\u00020\u00012\u0008\u0012\u0004\u0012\u00020\u00000\u0002B\u0011\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0006\u0010\u0014\u001a\u00020\u0015R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013\u00a8\u0006\u0016"
    }
    d2 = {
        "Lexpo/modules/ui/TextFontWeight;",
        "Lexpo/modules/kotlin/types/Enumerable;",
        "",
        "value",
        "",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getValue",
        "()Ljava/lang/String;",
        "NORMAL",
        "BOLD",
        "W100",
        "W200",
        "W300",
        "W400",
        "W500",
        "W600",
        "W700",
        "W800",
        "W900",
        "toComposeFontWeight",
        "Landroidx/compose/ui/text/font/FontWeight;",
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

.field private static final synthetic $VALUES:[Lexpo/modules/ui/TextFontWeight;

.field public static final enum BOLD:Lexpo/modules/ui/TextFontWeight;

.field public static final enum NORMAL:Lexpo/modules/ui/TextFontWeight;

.field public static final enum W100:Lexpo/modules/ui/TextFontWeight;

.field public static final enum W200:Lexpo/modules/ui/TextFontWeight;

.field public static final enum W300:Lexpo/modules/ui/TextFontWeight;

.field public static final enum W400:Lexpo/modules/ui/TextFontWeight;

.field public static final enum W500:Lexpo/modules/ui/TextFontWeight;

.field public static final enum W600:Lexpo/modules/ui/TextFontWeight;

.field public static final enum W700:Lexpo/modules/ui/TextFontWeight;

.field public static final enum W800:Lexpo/modules/ui/TextFontWeight;

.field public static final enum W900:Lexpo/modules/ui/TextFontWeight;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lexpo/modules/ui/TextFontWeight;
    .locals 11

    sget-object v0, Lexpo/modules/ui/TextFontWeight;->NORMAL:Lexpo/modules/ui/TextFontWeight;

    sget-object v1, Lexpo/modules/ui/TextFontWeight;->BOLD:Lexpo/modules/ui/TextFontWeight;

    sget-object v2, Lexpo/modules/ui/TextFontWeight;->W100:Lexpo/modules/ui/TextFontWeight;

    sget-object v3, Lexpo/modules/ui/TextFontWeight;->W200:Lexpo/modules/ui/TextFontWeight;

    sget-object v4, Lexpo/modules/ui/TextFontWeight;->W300:Lexpo/modules/ui/TextFontWeight;

    sget-object v5, Lexpo/modules/ui/TextFontWeight;->W400:Lexpo/modules/ui/TextFontWeight;

    sget-object v6, Lexpo/modules/ui/TextFontWeight;->W500:Lexpo/modules/ui/TextFontWeight;

    sget-object v7, Lexpo/modules/ui/TextFontWeight;->W600:Lexpo/modules/ui/TextFontWeight;

    sget-object v8, Lexpo/modules/ui/TextFontWeight;->W700:Lexpo/modules/ui/TextFontWeight;

    sget-object v9, Lexpo/modules/ui/TextFontWeight;->W800:Lexpo/modules/ui/TextFontWeight;

    sget-object v10, Lexpo/modules/ui/TextFontWeight;->W900:Lexpo/modules/ui/TextFontWeight;

    filled-new-array/range {v0 .. v10}, [Lexpo/modules/ui/TextFontWeight;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 31
    new-instance v0, Lexpo/modules/ui/TextFontWeight;

    const/4 v1, 0x0

    const-string v2, "normal"

    const-string v3, "NORMAL"

    invoke-direct {v0, v3, v1, v2}, Lexpo/modules/ui/TextFontWeight;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/ui/TextFontWeight;->NORMAL:Lexpo/modules/ui/TextFontWeight;

    .line 32
    new-instance v0, Lexpo/modules/ui/TextFontWeight;

    const/4 v1, 0x1

    const-string v2, "bold"

    const-string v3, "BOLD"

    invoke-direct {v0, v3, v1, v2}, Lexpo/modules/ui/TextFontWeight;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/ui/TextFontWeight;->BOLD:Lexpo/modules/ui/TextFontWeight;

    .line 33
    new-instance v0, Lexpo/modules/ui/TextFontWeight;

    const/4 v1, 0x2

    const-string v2, "100"

    const-string v3, "W100"

    invoke-direct {v0, v3, v1, v2}, Lexpo/modules/ui/TextFontWeight;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/ui/TextFontWeight;->W100:Lexpo/modules/ui/TextFontWeight;

    .line 34
    new-instance v0, Lexpo/modules/ui/TextFontWeight;

    const/4 v1, 0x3

    const-string v2, "200"

    const-string v3, "W200"

    invoke-direct {v0, v3, v1, v2}, Lexpo/modules/ui/TextFontWeight;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/ui/TextFontWeight;->W200:Lexpo/modules/ui/TextFontWeight;

    .line 35
    new-instance v0, Lexpo/modules/ui/TextFontWeight;

    const/4 v1, 0x4

    const-string v2, "300"

    const-string v3, "W300"

    invoke-direct {v0, v3, v1, v2}, Lexpo/modules/ui/TextFontWeight;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/ui/TextFontWeight;->W300:Lexpo/modules/ui/TextFontWeight;

    .line 36
    new-instance v0, Lexpo/modules/ui/TextFontWeight;

    const/4 v1, 0x5

    const-string v2, "400"

    const-string v3, "W400"

    invoke-direct {v0, v3, v1, v2}, Lexpo/modules/ui/TextFontWeight;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/ui/TextFontWeight;->W400:Lexpo/modules/ui/TextFontWeight;

    .line 37
    new-instance v0, Lexpo/modules/ui/TextFontWeight;

    const/4 v1, 0x6

    const-string v2, "500"

    const-string v3, "W500"

    invoke-direct {v0, v3, v1, v2}, Lexpo/modules/ui/TextFontWeight;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/ui/TextFontWeight;->W500:Lexpo/modules/ui/TextFontWeight;

    .line 38
    new-instance v0, Lexpo/modules/ui/TextFontWeight;

    const/4 v1, 0x7

    const-string v2, "600"

    const-string v3, "W600"

    invoke-direct {v0, v3, v1, v2}, Lexpo/modules/ui/TextFontWeight;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/ui/TextFontWeight;->W600:Lexpo/modules/ui/TextFontWeight;

    .line 39
    new-instance v0, Lexpo/modules/ui/TextFontWeight;

    const/16 v1, 0x8

    const-string v2, "700"

    const-string v3, "W700"

    invoke-direct {v0, v3, v1, v2}, Lexpo/modules/ui/TextFontWeight;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/ui/TextFontWeight;->W700:Lexpo/modules/ui/TextFontWeight;

    .line 40
    new-instance v0, Lexpo/modules/ui/TextFontWeight;

    const/16 v1, 0x9

    const-string v2, "800"

    const-string v3, "W800"

    invoke-direct {v0, v3, v1, v2}, Lexpo/modules/ui/TextFontWeight;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/ui/TextFontWeight;->W800:Lexpo/modules/ui/TextFontWeight;

    .line 41
    new-instance v0, Lexpo/modules/ui/TextFontWeight;

    const/16 v1, 0xa

    const-string v2, "900"

    const-string v3, "W900"

    invoke-direct {v0, v3, v1, v2}, Lexpo/modules/ui/TextFontWeight;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/ui/TextFontWeight;->W900:Lexpo/modules/ui/TextFontWeight;

    invoke-static {}, Lexpo/modules/ui/TextFontWeight;->$values()[Lexpo/modules/ui/TextFontWeight;

    move-result-object v0

    sput-object v0, Lexpo/modules/ui/TextFontWeight;->$VALUES:[Lexpo/modules/ui/TextFontWeight;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lexpo/modules/ui/TextFontWeight;->$ENTRIES:Lkotlin/enums/EnumEntries;

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

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lexpo/modules/ui/TextFontWeight;->value:Ljava/lang/String;

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lexpo/modules/ui/TextFontWeight;",
            ">;"
        }
    .end annotation

    sget-object v0, Lexpo/modules/ui/TextFontWeight;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lexpo/modules/ui/TextFontWeight;
    .locals 1

    const-class v0, Lexpo/modules/ui/TextFontWeight;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 58
    check-cast p0, Lexpo/modules/ui/TextFontWeight;

    return-object p0
.end method

.method public static values()[Lexpo/modules/ui/TextFontWeight;
    .locals 1

    sget-object v0, Lexpo/modules/ui/TextFontWeight;->$VALUES:[Lexpo/modules/ui/TextFontWeight;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 58
    check-cast v0, [Lexpo/modules/ui/TextFontWeight;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lexpo/modules/ui/TextFontWeight;->value:Ljava/lang/String;

    return-object v0
.end method

.method public final toComposeFontWeight()Landroidx/compose/ui/text/font/FontWeight;
    .locals 2

    .line 44
    sget-object v0, Lexpo/modules/ui/TextFontWeight$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Lexpo/modules/ui/TextFontWeight;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 55
    :pswitch_0
    sget-object v0, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getW900()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v0

    return-object v0

    .line 54
    :pswitch_1
    sget-object v0, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getW800()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v0

    return-object v0

    .line 53
    :pswitch_2
    sget-object v0, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getW700()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v0

    return-object v0

    .line 52
    :pswitch_3
    sget-object v0, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getW600()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v0

    return-object v0

    .line 51
    :pswitch_4
    sget-object v0, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getW500()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v0

    return-object v0

    .line 50
    :pswitch_5
    sget-object v0, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getW400()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v0

    return-object v0

    .line 49
    :pswitch_6
    sget-object v0, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getW300()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v0

    return-object v0

    .line 48
    :pswitch_7
    sget-object v0, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getW200()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v0

    return-object v0

    .line 47
    :pswitch_8
    sget-object v0, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getW100()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v0

    return-object v0

    .line 46
    :pswitch_9
    sget-object v0, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getBold()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v0

    return-object v0

    .line 45
    :pswitch_a
    sget-object v0, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getNormal()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
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
