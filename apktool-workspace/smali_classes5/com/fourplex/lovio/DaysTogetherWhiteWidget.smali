.class public final Lcom/fourplex/lovio/DaysTogetherWhiteWidget;
.super Lcom/fourplex/lovio/BaseDaysTogetherWidget;
.source "DaysTogetherWidget.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u0014\u0010\u0004\u001a\u00020\u0005X\u0094\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/fourplex/lovio/DaysTogetherWhiteWidget;",
        "Lcom/fourplex/lovio/BaseDaysTogetherWidget;",
        "<init>",
        "()V",
        "theme",
        "Lcom/fourplex/lovio/DaysTogetherTheme;",
        "getTheme",
        "()Lcom/fourplex/lovio/DaysTogetherTheme;",
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


# instance fields
.field private final theme:Lcom/fourplex/lovio/DaysTogetherTheme;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 60
    invoke-direct {p0}, Lcom/fourplex/lovio/BaseDaysTogetherWidget;-><init>()V

    .line 61
    new-instance v0, Lcom/fourplex/lovio/DaysTogetherTheme;

    .line 62
    sget v1, Lcom/fourplex/lovio/R$drawable;->ic_heart_white:I

    .line 63
    sget-object v2, Lcom/fourplex/lovio/WidgetColors;->INSTANCE:Lcom/fourplex/lovio/WidgetColors;

    invoke-virtual {v2}, Lcom/fourplex/lovio/WidgetColors;->getWhite()I

    move-result v2

    .line 64
    sget-object v3, Lcom/fourplex/lovio/WidgetColors;->INSTANCE:Lcom/fourplex/lovio/WidgetColors;

    invoke-virtual {v3}, Lcom/fourplex/lovio/WidgetColors;->getWhite()I

    move-result v3

    .line 61
    invoke-direct {v0, v1, v2, v3}, Lcom/fourplex/lovio/DaysTogetherTheme;-><init>(III)V

    iput-object v0, p0, Lcom/fourplex/lovio/DaysTogetherWhiteWidget;->theme:Lcom/fourplex/lovio/DaysTogetherTheme;

    return-void
.end method


# virtual methods
.method protected getTheme()Lcom/fourplex/lovio/DaysTogetherTheme;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/fourplex/lovio/DaysTogetherWhiteWidget;->theme:Lcom/fourplex/lovio/DaysTogetherTheme;

    return-object v0
.end method
