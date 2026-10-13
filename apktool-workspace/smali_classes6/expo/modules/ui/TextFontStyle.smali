.class public final enum Lexpo/modules/ui/TextFontStyle;
.super Ljava/lang/Enum;
.source "TextView.kt"

# interfaces
.implements Lexpo/modules/kotlin/types/Enumerable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/ui/TextFontStyle$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lexpo/modules/ui/TextFontStyle;",
        ">;",
        "Lexpo/modules/kotlin/types/Enumerable;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0081\u0002\u0018\u00002\u00020\u00012\u0008\u0012\u0004\u0012\u00020\u00000\u0002B\u0011\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\r\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008j\u0002\u0008\tj\u0002\u0008\n\u00a8\u0006\u000f"
    }
    d2 = {
        "Lexpo/modules/ui/TextFontStyle;",
        "Lexpo/modules/kotlin/types/Enumerable;",
        "",
        "value",
        "",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getValue",
        "()Ljava/lang/String;",
        "NORMAL",
        "ITALIC",
        "toComposeFontStyle",
        "Landroidx/compose/ui/text/font/FontStyle;",
        "toComposeFontStyle-_-LCdwA",
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

.field private static final synthetic $VALUES:[Lexpo/modules/ui/TextFontStyle;

.field public static final enum ITALIC:Lexpo/modules/ui/TextFontStyle;

.field public static final enum NORMAL:Lexpo/modules/ui/TextFontStyle;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lexpo/modules/ui/TextFontStyle;
    .locals 2

    sget-object v0, Lexpo/modules/ui/TextFontStyle;->NORMAL:Lexpo/modules/ui/TextFontStyle;

    sget-object v1, Lexpo/modules/ui/TextFontStyle;->ITALIC:Lexpo/modules/ui/TextFontStyle;

    filled-new-array {v0, v1}, [Lexpo/modules/ui/TextFontStyle;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 61
    new-instance v0, Lexpo/modules/ui/TextFontStyle;

    const/4 v1, 0x0

    const-string v2, "normal"

    const-string v3, "NORMAL"

    invoke-direct {v0, v3, v1, v2}, Lexpo/modules/ui/TextFontStyle;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/ui/TextFontStyle;->NORMAL:Lexpo/modules/ui/TextFontStyle;

    .line 62
    new-instance v0, Lexpo/modules/ui/TextFontStyle;

    const/4 v1, 0x1

    const-string v2, "italic"

    const-string v3, "ITALIC"

    invoke-direct {v0, v3, v1, v2}, Lexpo/modules/ui/TextFontStyle;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/ui/TextFontStyle;->ITALIC:Lexpo/modules/ui/TextFontStyle;

    invoke-static {}, Lexpo/modules/ui/TextFontStyle;->$values()[Lexpo/modules/ui/TextFontStyle;

    move-result-object v0

    sput-object v0, Lexpo/modules/ui/TextFontStyle;->$VALUES:[Lexpo/modules/ui/TextFontStyle;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lexpo/modules/ui/TextFontStyle;->$ENTRIES:Lkotlin/enums/EnumEntries;

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

    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lexpo/modules/ui/TextFontStyle;->value:Ljava/lang/String;

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lexpo/modules/ui/TextFontStyle;",
            ">;"
        }
    .end annotation

    sget-object v0, Lexpo/modules/ui/TextFontStyle;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lexpo/modules/ui/TextFontStyle;
    .locals 1

    const-class v0, Lexpo/modules/ui/TextFontStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 70
    check-cast p0, Lexpo/modules/ui/TextFontStyle;

    return-object p0
.end method

.method public static values()[Lexpo/modules/ui/TextFontStyle;
    .locals 1

    sget-object v0, Lexpo/modules/ui/TextFontStyle;->$VALUES:[Lexpo/modules/ui/TextFontStyle;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 70
    check-cast v0, [Lexpo/modules/ui/TextFontStyle;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lexpo/modules/ui/TextFontStyle;->value:Ljava/lang/String;

    return-object v0
.end method

.method public final toComposeFontStyle-_-LCdwA()I
    .locals 2

    .line 65
    sget-object v0, Lexpo/modules/ui/TextFontStyle$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Lexpo/modules/ui/TextFontStyle;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 67
    sget-object v0, Landroidx/compose/ui/text/font/FontStyle;->Companion:Landroidx/compose/ui/text/font/FontStyle$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/font/FontStyle$Companion;->getItalic-_-LCdwA()I

    move-result v0

    return v0

    .line 65
    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 66
    :cond_1
    sget-object v0, Landroidx/compose/ui/text/font/FontStyle;->Companion:Landroidx/compose/ui/text/font/FontStyle$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/font/FontStyle$Companion;->getNormal-_-LCdwA()I

    move-result v0

    return v0
.end method
