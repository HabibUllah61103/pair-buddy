.class public final Lcom/fourplex/lovio/WidgetColors;
.super Ljava/lang/Object;
.source "WidgetSupport.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\t\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0008\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0007R\u0011\u0010\n\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u0007R\u0011\u0010\u000c\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u0007\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/fourplex/lovio/WidgetColors;",
        "",
        "<init>",
        "()V",
        "white",
        "",
        "getWhite",
        "()I",
        "coral",
        "getCoral",
        "orange",
        "getOrange",
        "cyan",
        "getCyan",
        "app_release"
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
.field public static final INSTANCE:Lcom/fourplex/lovio/WidgetColors;

.field private static final coral:I

.field private static final cyan:I

.field private static final orange:I

.field private static final white:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/fourplex/lovio/WidgetColors;

    invoke-direct {v0}, Lcom/fourplex/lovio/WidgetColors;-><init>()V

    sput-object v0, Lcom/fourplex/lovio/WidgetColors;->INSTANCE:Lcom/fourplex/lovio/WidgetColors;

    .line 497
    const-string v0, "#FFFFFF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/fourplex/lovio/WidgetColors;->white:I

    .line 498
    const-string v0, "#FF3B5C"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/fourplex/lovio/WidgetColors;->coral:I

    .line 499
    const-string v0, "#FF9F43"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/fourplex/lovio/WidgetColors;->orange:I

    .line 500
    const-string v0, "#00D2D3"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/fourplex/lovio/WidgetColors;->cyan:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 496
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCoral()I
    .locals 1

    .line 498
    sget v0, Lcom/fourplex/lovio/WidgetColors;->coral:I

    return v0
.end method

.method public final getCyan()I
    .locals 1

    .line 500
    sget v0, Lcom/fourplex/lovio/WidgetColors;->cyan:I

    return v0
.end method

.method public final getOrange()I
    .locals 1

    .line 499
    sget v0, Lcom/fourplex/lovio/WidgetColors;->orange:I

    return v0
.end method

.method public final getWhite()I
    .locals 1

    .line 497
    sget v0, Lcom/fourplex/lovio/WidgetColors;->white:I

    return v0
.end method
