.class public final Lexpo/modules/ui/menu/DropdownMenuItemColors;
.super Ljava/lang/Object;
.source "DropdownMenuItem.kt"

# interfaces
.implements Lexpo/modules/kotlin/records/Record;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0013\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0006\u0010\u0003\u001a\u0004\u0008\u0007\u0010\u0008R\u001e\u0010\t\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\n\u0010\u0003\u001a\u0004\u0008\u000b\u0010\u0008R\u001e\u0010\u000c\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\r\u0010\u0003\u001a\u0004\u0008\u000e\u0010\u0008R\u001e\u0010\u000f\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0010\u0010\u0003\u001a\u0004\u0008\u0011\u0010\u0008R\u001e\u0010\u0012\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0013\u0010\u0003\u001a\u0004\u0008\u0014\u0010\u0008R\u001e\u0010\u0015\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0016\u0010\u0003\u001a\u0004\u0008\u0017\u0010\u0008\u00a8\u0006\u0018"
    }
    d2 = {
        "Lexpo/modules/ui/menu/DropdownMenuItemColors;",
        "Lexpo/modules/kotlin/records/Record;",
        "<init>",
        "()V",
        "textColor",
        "Landroid/graphics/Color;",
        "getTextColor$annotations",
        "getTextColor",
        "()Landroid/graphics/Color;",
        "leadingIconColor",
        "getLeadingIconColor$annotations",
        "getLeadingIconColor",
        "trailingIconColor",
        "getTrailingIconColor$annotations",
        "getTrailingIconColor",
        "disabledTextColor",
        "getDisabledTextColor$annotations",
        "getDisabledTextColor",
        "disabledLeadingIconColor",
        "getDisabledLeadingIconColor$annotations",
        "getDisabledLeadingIconColor",
        "disabledTrailingIconColor",
        "getDisabledTrailingIconColor$annotations",
        "getDisabledTrailingIconColor",
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
.field public static final $stable:I = 0x8


# instance fields
.field private final disabledLeadingIconColor:Landroid/graphics/Color;

.field private final disabledTextColor:Landroid/graphics/Color;

.field private final disabledTrailingIconColor:Landroid/graphics/Color;

.field private final leadingIconColor:Landroid/graphics/Color;

.field private final textColor:Landroid/graphics/Color;

.field private final trailingIconColor:Landroid/graphics/Color;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic getDisabledLeadingIconColor$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getDisabledTextColor$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getDisabledTrailingIconColor$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getLeadingIconColor$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getTextColor$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getTrailingIconColor$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method


# virtual methods
.method public final getDisabledLeadingIconColor()Landroid/graphics/Color;
    .locals 1

    .line 22
    iget-object v0, p0, Lexpo/modules/ui/menu/DropdownMenuItemColors;->disabledLeadingIconColor:Landroid/graphics/Color;

    return-object v0
.end method

.method public final getDisabledTextColor()Landroid/graphics/Color;
    .locals 1

    .line 21
    iget-object v0, p0, Lexpo/modules/ui/menu/DropdownMenuItemColors;->disabledTextColor:Landroid/graphics/Color;

    return-object v0
.end method

.method public final getDisabledTrailingIconColor()Landroid/graphics/Color;
    .locals 1

    .line 23
    iget-object v0, p0, Lexpo/modules/ui/menu/DropdownMenuItemColors;->disabledTrailingIconColor:Landroid/graphics/Color;

    return-object v0
.end method

.method public final getLeadingIconColor()Landroid/graphics/Color;
    .locals 1

    .line 19
    iget-object v0, p0, Lexpo/modules/ui/menu/DropdownMenuItemColors;->leadingIconColor:Landroid/graphics/Color;

    return-object v0
.end method

.method public final getTextColor()Landroid/graphics/Color;
    .locals 1

    .line 18
    iget-object v0, p0, Lexpo/modules/ui/menu/DropdownMenuItemColors;->textColor:Landroid/graphics/Color;

    return-object v0
.end method

.method public final getTrailingIconColor()Landroid/graphics/Color;
    .locals 1

    .line 20
    iget-object v0, p0, Lexpo/modules/ui/menu/DropdownMenuItemColors;->trailingIconColor:Landroid/graphics/Color;

    return-object v0
.end method
