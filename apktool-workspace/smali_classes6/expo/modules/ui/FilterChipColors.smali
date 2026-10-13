.class public final Lexpo/modules/ui/FilterChipColors;
.super Ljava/lang/Object;
.source "ChipView.kt"

# interfaces
.implements Lexpo/modules/kotlin/records/Record;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0016\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0006\u0010\u0003\u001a\u0004\u0008\u0007\u0010\u0008R\u001e\u0010\t\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\n\u0010\u0003\u001a\u0004\u0008\u000b\u0010\u0008R\u001e\u0010\u000c\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\r\u0010\u0003\u001a\u0004\u0008\u000e\u0010\u0008R\u001e\u0010\u000f\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0010\u0010\u0003\u001a\u0004\u0008\u0011\u0010\u0008R\u001e\u0010\u0012\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0013\u0010\u0003\u001a\u0004\u0008\u0014\u0010\u0008R\u001e\u0010\u0015\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0016\u0010\u0003\u001a\u0004\u0008\u0017\u0010\u0008R\u001e\u0010\u0018\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0019\u0010\u0003\u001a\u0004\u0008\u001a\u0010\u0008\u00a8\u0006\u001b"
    }
    d2 = {
        "Lexpo/modules/ui/FilterChipColors;",
        "Lexpo/modules/kotlin/records/Record;",
        "<init>",
        "()V",
        "containerColor",
        "Landroid/graphics/Color;",
        "getContainerColor$annotations",
        "getContainerColor",
        "()Landroid/graphics/Color;",
        "labelColor",
        "getLabelColor$annotations",
        "getLabelColor",
        "iconColor",
        "getIconColor$annotations",
        "getIconColor",
        "selectedContainerColor",
        "getSelectedContainerColor$annotations",
        "getSelectedContainerColor",
        "selectedLabelColor",
        "getSelectedLabelColor$annotations",
        "getSelectedLabelColor",
        "selectedLeadingIconColor",
        "getSelectedLeadingIconColor$annotations",
        "getSelectedLeadingIconColor",
        "selectedTrailingIconColor",
        "getSelectedTrailingIconColor$annotations",
        "getSelectedTrailingIconColor",
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
.field private final containerColor:Landroid/graphics/Color;

.field private final iconColor:Landroid/graphics/Color;

.field private final labelColor:Landroid/graphics/Color;

.field private final selectedContainerColor:Landroid/graphics/Color;

.field private final selectedLabelColor:Landroid/graphics/Color;

.field private final selectedLeadingIconColor:Landroid/graphics/Color;

.field private final selectedTrailingIconColor:Landroid/graphics/Color;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic getContainerColor$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getIconColor$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getLabelColor$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getSelectedContainerColor$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getSelectedLabelColor$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getSelectedLeadingIconColor$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getSelectedTrailingIconColor$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method


# virtual methods
.method public final getContainerColor()Landroid/graphics/Color;
    .locals 1

    .line 34
    iget-object v0, p0, Lexpo/modules/ui/FilterChipColors;->containerColor:Landroid/graphics/Color;

    return-object v0
.end method

.method public final getIconColor()Landroid/graphics/Color;
    .locals 1

    .line 36
    iget-object v0, p0, Lexpo/modules/ui/FilterChipColors;->iconColor:Landroid/graphics/Color;

    return-object v0
.end method

.method public final getLabelColor()Landroid/graphics/Color;
    .locals 1

    .line 35
    iget-object v0, p0, Lexpo/modules/ui/FilterChipColors;->labelColor:Landroid/graphics/Color;

    return-object v0
.end method

.method public final getSelectedContainerColor()Landroid/graphics/Color;
    .locals 1

    .line 37
    iget-object v0, p0, Lexpo/modules/ui/FilterChipColors;->selectedContainerColor:Landroid/graphics/Color;

    return-object v0
.end method

.method public final getSelectedLabelColor()Landroid/graphics/Color;
    .locals 1

    .line 38
    iget-object v0, p0, Lexpo/modules/ui/FilterChipColors;->selectedLabelColor:Landroid/graphics/Color;

    return-object v0
.end method

.method public final getSelectedLeadingIconColor()Landroid/graphics/Color;
    .locals 1

    .line 39
    iget-object v0, p0, Lexpo/modules/ui/FilterChipColors;->selectedLeadingIconColor:Landroid/graphics/Color;

    return-object v0
.end method

.method public final getSelectedTrailingIconColor()Landroid/graphics/Color;
    .locals 1

    .line 40
    iget-object v0, p0, Lexpo/modules/ui/FilterChipColors;->selectedTrailingIconColor:Landroid/graphics/Color;

    return-object v0
.end method
