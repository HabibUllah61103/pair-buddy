.class public final enum Lexpo/modules/ui/EnterTransitionType;
.super Ljava/lang/Enum;
.source "AnimatedVisibilityView.kt"

# interfaces
.implements Lexpo/modules/kotlin/types/Enumerable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lexpo/modules/ui/EnterTransitionType;",
        ">;",
        "Lexpo/modules/kotlin/types/Enumerable;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000c\u0008\u0086\u0081\u0002\u0018\u00002\u00020\u00012\u0008\u0012\u0004\u0012\u00020\u00000\u0002B\u0011\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lexpo/modules/ui/EnterTransitionType;",
        "Lexpo/modules/kotlin/types/Enumerable;",
        "",
        "value",
        "",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getValue",
        "()Ljava/lang/String;",
        "FADE_IN",
        "SLIDE_IN_HORIZONTALLY",
        "SLIDE_IN_VERTICALLY",
        "EXPAND_IN",
        "EXPAND_HORIZONTALLY",
        "EXPAND_VERTICALLY",
        "SCALE_IN",
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

.field private static final synthetic $VALUES:[Lexpo/modules/ui/EnterTransitionType;

.field public static final enum EXPAND_HORIZONTALLY:Lexpo/modules/ui/EnterTransitionType;

.field public static final enum EXPAND_IN:Lexpo/modules/ui/EnterTransitionType;

.field public static final enum EXPAND_VERTICALLY:Lexpo/modules/ui/EnterTransitionType;

.field public static final enum FADE_IN:Lexpo/modules/ui/EnterTransitionType;

.field public static final enum SCALE_IN:Lexpo/modules/ui/EnterTransitionType;

.field public static final enum SLIDE_IN_HORIZONTALLY:Lexpo/modules/ui/EnterTransitionType;

.field public static final enum SLIDE_IN_VERTICALLY:Lexpo/modules/ui/EnterTransitionType;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lexpo/modules/ui/EnterTransitionType;
    .locals 7

    sget-object v0, Lexpo/modules/ui/EnterTransitionType;->FADE_IN:Lexpo/modules/ui/EnterTransitionType;

    sget-object v1, Lexpo/modules/ui/EnterTransitionType;->SLIDE_IN_HORIZONTALLY:Lexpo/modules/ui/EnterTransitionType;

    sget-object v2, Lexpo/modules/ui/EnterTransitionType;->SLIDE_IN_VERTICALLY:Lexpo/modules/ui/EnterTransitionType;

    sget-object v3, Lexpo/modules/ui/EnterTransitionType;->EXPAND_IN:Lexpo/modules/ui/EnterTransitionType;

    sget-object v4, Lexpo/modules/ui/EnterTransitionType;->EXPAND_HORIZONTALLY:Lexpo/modules/ui/EnterTransitionType;

    sget-object v5, Lexpo/modules/ui/EnterTransitionType;->EXPAND_VERTICALLY:Lexpo/modules/ui/EnterTransitionType;

    sget-object v6, Lexpo/modules/ui/EnterTransitionType;->SCALE_IN:Lexpo/modules/ui/EnterTransitionType;

    filled-new-array/range {v0 .. v6}, [Lexpo/modules/ui/EnterTransitionType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 31
    new-instance v0, Lexpo/modules/ui/EnterTransitionType;

    const/4 v1, 0x0

    const-string v2, "fadeIn"

    const-string v3, "FADE_IN"

    invoke-direct {v0, v3, v1, v2}, Lexpo/modules/ui/EnterTransitionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/ui/EnterTransitionType;->FADE_IN:Lexpo/modules/ui/EnterTransitionType;

    .line 32
    new-instance v0, Lexpo/modules/ui/EnterTransitionType;

    const/4 v1, 0x1

    const-string v2, "slideInHorizontally"

    const-string v3, "SLIDE_IN_HORIZONTALLY"

    invoke-direct {v0, v3, v1, v2}, Lexpo/modules/ui/EnterTransitionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/ui/EnterTransitionType;->SLIDE_IN_HORIZONTALLY:Lexpo/modules/ui/EnterTransitionType;

    .line 33
    new-instance v0, Lexpo/modules/ui/EnterTransitionType;

    const/4 v1, 0x2

    const-string v2, "slideInVertically"

    const-string v3, "SLIDE_IN_VERTICALLY"

    invoke-direct {v0, v3, v1, v2}, Lexpo/modules/ui/EnterTransitionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/ui/EnterTransitionType;->SLIDE_IN_VERTICALLY:Lexpo/modules/ui/EnterTransitionType;

    .line 34
    new-instance v0, Lexpo/modules/ui/EnterTransitionType;

    const/4 v1, 0x3

    const-string v2, "expandIn"

    const-string v3, "EXPAND_IN"

    invoke-direct {v0, v3, v1, v2}, Lexpo/modules/ui/EnterTransitionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/ui/EnterTransitionType;->EXPAND_IN:Lexpo/modules/ui/EnterTransitionType;

    .line 35
    new-instance v0, Lexpo/modules/ui/EnterTransitionType;

    const/4 v1, 0x4

    const-string v2, "expandHorizontally"

    const-string v3, "EXPAND_HORIZONTALLY"

    invoke-direct {v0, v3, v1, v2}, Lexpo/modules/ui/EnterTransitionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/ui/EnterTransitionType;->EXPAND_HORIZONTALLY:Lexpo/modules/ui/EnterTransitionType;

    .line 36
    new-instance v0, Lexpo/modules/ui/EnterTransitionType;

    const/4 v1, 0x5

    const-string v2, "expandVertically"

    const-string v3, "EXPAND_VERTICALLY"

    invoke-direct {v0, v3, v1, v2}, Lexpo/modules/ui/EnterTransitionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/ui/EnterTransitionType;->EXPAND_VERTICALLY:Lexpo/modules/ui/EnterTransitionType;

    .line 37
    new-instance v0, Lexpo/modules/ui/EnterTransitionType;

    const/4 v1, 0x6

    const-string v2, "scaleIn"

    const-string v3, "SCALE_IN"

    invoke-direct {v0, v3, v1, v2}, Lexpo/modules/ui/EnterTransitionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/ui/EnterTransitionType;->SCALE_IN:Lexpo/modules/ui/EnterTransitionType;

    invoke-static {}, Lexpo/modules/ui/EnterTransitionType;->$values()[Lexpo/modules/ui/EnterTransitionType;

    move-result-object v0

    sput-object v0, Lexpo/modules/ui/EnterTransitionType;->$VALUES:[Lexpo/modules/ui/EnterTransitionType;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lexpo/modules/ui/EnterTransitionType;->$ENTRIES:Lkotlin/enums/EnumEntries;

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

    iput-object p3, p0, Lexpo/modules/ui/EnterTransitionType;->value:Ljava/lang/String;

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lexpo/modules/ui/EnterTransitionType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lexpo/modules/ui/EnterTransitionType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lexpo/modules/ui/EnterTransitionType;
    .locals 1

    const-class v0, Lexpo/modules/ui/EnterTransitionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 38
    check-cast p0, Lexpo/modules/ui/EnterTransitionType;

    return-object p0
.end method

.method public static values()[Lexpo/modules/ui/EnterTransitionType;
    .locals 1

    sget-object v0, Lexpo/modules/ui/EnterTransitionType;->$VALUES:[Lexpo/modules/ui/EnterTransitionType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 38
    check-cast v0, [Lexpo/modules/ui/EnterTransitionType;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lexpo/modules/ui/EnterTransitionType;->value:Ljava/lang/String;

    return-object v0
.end method
