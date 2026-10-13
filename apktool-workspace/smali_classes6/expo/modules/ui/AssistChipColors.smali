.class public final Lexpo/modules/ui/AssistChipColors;
.super Ljava/lang/Object;
.source "ChipView.kt"

# interfaces
.implements Lexpo/modules/kotlin/records/Record;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\r\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0006\u0010\u0003\u001a\u0004\u0008\u0007\u0010\u0008R\u001e\u0010\t\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\n\u0010\u0003\u001a\u0004\u0008\u000b\u0010\u0008R\u001e\u0010\u000c\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\r\u0010\u0003\u001a\u0004\u0008\u000e\u0010\u0008R\u001e\u0010\u000f\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0010\u0010\u0003\u001a\u0004\u0008\u0011\u0010\u0008\u00a8\u0006\u0012"
    }
    d2 = {
        "Lexpo/modules/ui/AssistChipColors;",
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
        "leadingIconContentColor",
        "getLeadingIconContentColor$annotations",
        "getLeadingIconContentColor",
        "trailingIconContentColor",
        "getTrailingIconContentColor$annotations",
        "getTrailingIconContentColor",
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

.field private final labelColor:Landroid/graphics/Color;

.field private final leadingIconContentColor:Landroid/graphics/Color;

.field private final trailingIconContentColor:Landroid/graphics/Color;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic getContainerColor$annotations()V
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

.method public static synthetic getLeadingIconContentColor$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getTrailingIconContentColor$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method


# virtual methods
.method public final getContainerColor()Landroid/graphics/Color;
    .locals 1

    .line 27
    iget-object v0, p0, Lexpo/modules/ui/AssistChipColors;->containerColor:Landroid/graphics/Color;

    return-object v0
.end method

.method public final getLabelColor()Landroid/graphics/Color;
    .locals 1

    .line 28
    iget-object v0, p0, Lexpo/modules/ui/AssistChipColors;->labelColor:Landroid/graphics/Color;

    return-object v0
.end method

.method public final getLeadingIconContentColor()Landroid/graphics/Color;
    .locals 1

    .line 29
    iget-object v0, p0, Lexpo/modules/ui/AssistChipColors;->leadingIconContentColor:Landroid/graphics/Color;

    return-object v0
.end method

.method public final getTrailingIconContentColor()Landroid/graphics/Color;
    .locals 1

    .line 30
    iget-object v0, p0, Lexpo/modules/ui/AssistChipColors;->trailingIconContentColor:Landroid/graphics/Color;

    return-object v0
.end method
