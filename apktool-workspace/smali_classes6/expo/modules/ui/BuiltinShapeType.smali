.class public final enum Lexpo/modules/ui/BuiltinShapeType;
.super Ljava/lang/Enum;
.source "ModifierRegistry.kt"

# interfaces
.implements Lexpo/modules/kotlin/types/Enumerable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lexpo/modules/ui/BuiltinShapeType;",
        ">;",
        "Lexpo/modules/kotlin/types/Enumerable;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\n\u0008\u0080\u0081\u0002\u0018\u00002\u00020\u00012\u0008\u0012\u0004\u0012\u00020\u00000\u0002B\u0011\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lexpo/modules/ui/BuiltinShapeType;",
        "Lexpo/modules/kotlin/types/Enumerable;",
        "",
        "value",
        "",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getValue",
        "()Ljava/lang/String;",
        "RECTANGLE",
        "CIRCLE",
        "ROUNDED_CORNER",
        "CUT_CORNER",
        "MATERIAL",
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

.field private static final synthetic $VALUES:[Lexpo/modules/ui/BuiltinShapeType;

.field public static final enum CIRCLE:Lexpo/modules/ui/BuiltinShapeType;

.field public static final enum CUT_CORNER:Lexpo/modules/ui/BuiltinShapeType;

.field public static final enum MATERIAL:Lexpo/modules/ui/BuiltinShapeType;

.field public static final enum RECTANGLE:Lexpo/modules/ui/BuiltinShapeType;

.field public static final enum ROUNDED_CORNER:Lexpo/modules/ui/BuiltinShapeType;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lexpo/modules/ui/BuiltinShapeType;
    .locals 5

    sget-object v0, Lexpo/modules/ui/BuiltinShapeType;->RECTANGLE:Lexpo/modules/ui/BuiltinShapeType;

    sget-object v1, Lexpo/modules/ui/BuiltinShapeType;->CIRCLE:Lexpo/modules/ui/BuiltinShapeType;

    sget-object v2, Lexpo/modules/ui/BuiltinShapeType;->ROUNDED_CORNER:Lexpo/modules/ui/BuiltinShapeType;

    sget-object v3, Lexpo/modules/ui/BuiltinShapeType;->CUT_CORNER:Lexpo/modules/ui/BuiltinShapeType;

    sget-object v4, Lexpo/modules/ui/BuiltinShapeType;->MATERIAL:Lexpo/modules/ui/BuiltinShapeType;

    filled-new-array {v0, v1, v2, v3, v4}, [Lexpo/modules/ui/BuiltinShapeType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 164
    new-instance v0, Lexpo/modules/ui/BuiltinShapeType;

    const/4 v1, 0x0

    const-string v2, "rectangle"

    const-string v3, "RECTANGLE"

    invoke-direct {v0, v3, v1, v2}, Lexpo/modules/ui/BuiltinShapeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/ui/BuiltinShapeType;->RECTANGLE:Lexpo/modules/ui/BuiltinShapeType;

    .line 165
    new-instance v0, Lexpo/modules/ui/BuiltinShapeType;

    const/4 v1, 0x1

    const-string v2, "circle"

    const-string v3, "CIRCLE"

    invoke-direct {v0, v3, v1, v2}, Lexpo/modules/ui/BuiltinShapeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/ui/BuiltinShapeType;->CIRCLE:Lexpo/modules/ui/BuiltinShapeType;

    .line 166
    new-instance v0, Lexpo/modules/ui/BuiltinShapeType;

    const/4 v1, 0x2

    const-string v2, "roundedCorner"

    const-string v3, "ROUNDED_CORNER"

    invoke-direct {v0, v3, v1, v2}, Lexpo/modules/ui/BuiltinShapeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/ui/BuiltinShapeType;->ROUNDED_CORNER:Lexpo/modules/ui/BuiltinShapeType;

    .line 167
    new-instance v0, Lexpo/modules/ui/BuiltinShapeType;

    const/4 v1, 0x3

    const-string v2, "cutCorner"

    const-string v3, "CUT_CORNER"

    invoke-direct {v0, v3, v1, v2}, Lexpo/modules/ui/BuiltinShapeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/ui/BuiltinShapeType;->CUT_CORNER:Lexpo/modules/ui/BuiltinShapeType;

    .line 168
    new-instance v0, Lexpo/modules/ui/BuiltinShapeType;

    const/4 v1, 0x4

    const-string v2, "material"

    const-string v3, "MATERIAL"

    invoke-direct {v0, v3, v1, v2}, Lexpo/modules/ui/BuiltinShapeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/ui/BuiltinShapeType;->MATERIAL:Lexpo/modules/ui/BuiltinShapeType;

    invoke-static {}, Lexpo/modules/ui/BuiltinShapeType;->$values()[Lexpo/modules/ui/BuiltinShapeType;

    move-result-object v0

    sput-object v0, Lexpo/modules/ui/BuiltinShapeType;->$VALUES:[Lexpo/modules/ui/BuiltinShapeType;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lexpo/modules/ui/BuiltinShapeType;->$ENTRIES:Lkotlin/enums/EnumEntries;

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

    .line 163
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lexpo/modules/ui/BuiltinShapeType;->value:Ljava/lang/String;

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lexpo/modules/ui/BuiltinShapeType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lexpo/modules/ui/BuiltinShapeType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lexpo/modules/ui/BuiltinShapeType;
    .locals 1

    const-class v0, Lexpo/modules/ui/BuiltinShapeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 169
    check-cast p0, Lexpo/modules/ui/BuiltinShapeType;

    return-object p0
.end method

.method public static values()[Lexpo/modules/ui/BuiltinShapeType;
    .locals 1

    sget-object v0, Lexpo/modules/ui/BuiltinShapeType;->$VALUES:[Lexpo/modules/ui/BuiltinShapeType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 169
    check-cast v0, [Lexpo/modules/ui/BuiltinShapeType;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 163
    iget-object v0, p0, Lexpo/modules/ui/BuiltinShapeType;->value:Ljava/lang/String;

    return-object v0
.end method
