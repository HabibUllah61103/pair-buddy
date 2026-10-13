.class public final enum Lexpo/modules/ui/convertibles/CompositingStrategyType;
.super Ljava/lang/Enum;
.source "GraphicsLayerParams.kt"

# interfaces
.implements Lexpo/modules/kotlin/types/Enumerable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lexpo/modules/ui/convertibles/CompositingStrategyType;",
        ">;",
        "Lexpo/modules/kotlin/types/Enumerable;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0008\u0008\u0086\u0081\u0002\u0018\u00002\u00020\u00012\u0008\u0012\u0004\u0012\u00020\u00000\u0002B\u0011\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lexpo/modules/ui/convertibles/CompositingStrategyType;",
        "Lexpo/modules/kotlin/types/Enumerable;",
        "",
        "value",
        "",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getValue",
        "()Ljava/lang/String;",
        "AUTO",
        "OFFSCREEN",
        "MODULATE",
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

.field private static final synthetic $VALUES:[Lexpo/modules/ui/convertibles/CompositingStrategyType;

.field public static final enum AUTO:Lexpo/modules/ui/convertibles/CompositingStrategyType;

.field public static final enum MODULATE:Lexpo/modules/ui/convertibles/CompositingStrategyType;

.field public static final enum OFFSCREEN:Lexpo/modules/ui/convertibles/CompositingStrategyType;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lexpo/modules/ui/convertibles/CompositingStrategyType;
    .locals 3

    sget-object v0, Lexpo/modules/ui/convertibles/CompositingStrategyType;->AUTO:Lexpo/modules/ui/convertibles/CompositingStrategyType;

    sget-object v1, Lexpo/modules/ui/convertibles/CompositingStrategyType;->OFFSCREEN:Lexpo/modules/ui/convertibles/CompositingStrategyType;

    sget-object v2, Lexpo/modules/ui/convertibles/CompositingStrategyType;->MODULATE:Lexpo/modules/ui/convertibles/CompositingStrategyType;

    filled-new-array {v0, v1, v2}, [Lexpo/modules/ui/convertibles/CompositingStrategyType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 10
    new-instance v0, Lexpo/modules/ui/convertibles/CompositingStrategyType;

    const/4 v1, 0x0

    const-string v2, "auto"

    const-string v3, "AUTO"

    invoke-direct {v0, v3, v1, v2}, Lexpo/modules/ui/convertibles/CompositingStrategyType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/ui/convertibles/CompositingStrategyType;->AUTO:Lexpo/modules/ui/convertibles/CompositingStrategyType;

    .line 11
    new-instance v0, Lexpo/modules/ui/convertibles/CompositingStrategyType;

    const/4 v1, 0x1

    const-string v2, "offscreen"

    const-string v3, "OFFSCREEN"

    invoke-direct {v0, v3, v1, v2}, Lexpo/modules/ui/convertibles/CompositingStrategyType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/ui/convertibles/CompositingStrategyType;->OFFSCREEN:Lexpo/modules/ui/convertibles/CompositingStrategyType;

    .line 12
    new-instance v0, Lexpo/modules/ui/convertibles/CompositingStrategyType;

    const/4 v1, 0x2

    const-string v2, "modulate"

    const-string v3, "MODULATE"

    invoke-direct {v0, v3, v1, v2}, Lexpo/modules/ui/convertibles/CompositingStrategyType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/ui/convertibles/CompositingStrategyType;->MODULATE:Lexpo/modules/ui/convertibles/CompositingStrategyType;

    invoke-static {}, Lexpo/modules/ui/convertibles/CompositingStrategyType;->$values()[Lexpo/modules/ui/convertibles/CompositingStrategyType;

    move-result-object v0

    sput-object v0, Lexpo/modules/ui/convertibles/CompositingStrategyType;->$VALUES:[Lexpo/modules/ui/convertibles/CompositingStrategyType;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lexpo/modules/ui/convertibles/CompositingStrategyType;->$ENTRIES:Lkotlin/enums/EnumEntries;

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

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lexpo/modules/ui/convertibles/CompositingStrategyType;->value:Ljava/lang/String;

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lexpo/modules/ui/convertibles/CompositingStrategyType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lexpo/modules/ui/convertibles/CompositingStrategyType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lexpo/modules/ui/convertibles/CompositingStrategyType;
    .locals 1

    const-class v0, Lexpo/modules/ui/convertibles/CompositingStrategyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 13
    check-cast p0, Lexpo/modules/ui/convertibles/CompositingStrategyType;

    return-object p0
.end method

.method public static values()[Lexpo/modules/ui/convertibles/CompositingStrategyType;
    .locals 1

    sget-object v0, Lexpo/modules/ui/convertibles/CompositingStrategyType;->$VALUES:[Lexpo/modules/ui/convertibles/CompositingStrategyType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 13
    check-cast v0, [Lexpo/modules/ui/convertibles/CompositingStrategyType;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lexpo/modules/ui/convertibles/CompositingStrategyType;->value:Ljava/lang/String;

    return-object v0
.end method
