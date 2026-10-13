.class public final Lexpo/modules/ui/button/ButtonColors;
.super Ljava/lang/Object;
.source "Button.kt"

# interfaces
.implements Lexpo/modules/kotlin/records/Record;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\r\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0006\u0010\u0003\u001a\u0004\u0008\u0007\u0010\u0008R\u001e\u0010\t\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\n\u0010\u0003\u001a\u0004\u0008\u000b\u0010\u0008R\u001e\u0010\u000c\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\r\u0010\u0003\u001a\u0004\u0008\u000e\u0010\u0008R\u001e\u0010\u000f\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0010\u0010\u0003\u001a\u0004\u0008\u0011\u0010\u0008\u00a8\u0006\u0012"
    }
    d2 = {
        "Lexpo/modules/ui/button/ButtonColors;",
        "Lexpo/modules/kotlin/records/Record;",
        "<init>",
        "()V",
        "containerColor",
        "Landroid/graphics/Color;",
        "getContainerColor$annotations",
        "getContainerColor",
        "()Landroid/graphics/Color;",
        "contentColor",
        "getContentColor$annotations",
        "getContentColor",
        "disabledContainerColor",
        "getDisabledContainerColor$annotations",
        "getDisabledContainerColor",
        "disabledContentColor",
        "getDisabledContentColor$annotations",
        "getDisabledContentColor",
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

.field private final contentColor:Landroid/graphics/Color;

.field private final disabledContainerColor:Landroid/graphics/Color;

.field private final disabledContentColor:Landroid/graphics/Color;


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

.method public static synthetic getContentColor$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getDisabledContainerColor$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getDisabledContentColor$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method


# virtual methods
.method public final getContainerColor()Landroid/graphics/Color;
    .locals 1

    .line 27
    iget-object v0, p0, Lexpo/modules/ui/button/ButtonColors;->containerColor:Landroid/graphics/Color;

    return-object v0
.end method

.method public final getContentColor()Landroid/graphics/Color;
    .locals 1

    .line 28
    iget-object v0, p0, Lexpo/modules/ui/button/ButtonColors;->contentColor:Landroid/graphics/Color;

    return-object v0
.end method

.method public final getDisabledContainerColor()Landroid/graphics/Color;
    .locals 1

    .line 29
    iget-object v0, p0, Lexpo/modules/ui/button/ButtonColors;->disabledContainerColor:Landroid/graphics/Color;

    return-object v0
.end method

.method public final getDisabledContentColor()Landroid/graphics/Color;
    .locals 1

    .line 30
    iget-object v0, p0, Lexpo/modules/ui/button/ButtonColors;->disabledContentColor:Landroid/graphics/Color;

    return-object v0
.end method
