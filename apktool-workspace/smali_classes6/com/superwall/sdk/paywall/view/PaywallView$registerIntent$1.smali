.class public final Lcom/superwall/sdk/paywall/view/PaywallView$registerIntent$1;
.super Landroidx/activity/result/contract/ActivityResultContract;
.source "PaywallView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/superwall/sdk/paywall/view/PaywallView;->registerIntent$superwall_release(Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/result/ActivityResultRegistryOwner;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/activity/result/contract/ActivityResultContract<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPaywallView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PaywallView.kt\ncom/superwall/sdk/paywall/view/PaywallView$registerIntent$1\n+ 2 Uri.kt\nandroidx/core/net/UriKt\n*L\n1#1,1175:1\n29#2:1176\n*S KotlinDebug\n*F\n+ 1 PaywallView.kt\ncom/superwall/sdk/paywall/view/PaywallView$registerIntent$1\n*L\n1148#1:1176\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001J\u0018\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0002H\u0016J\u001f\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u00032\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0005H\u0016\u00a2\u0006\u0002\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "com/superwall/sdk/paywall/view/PaywallView$registerIntent$1",
        "Landroidx/activity/result/contract/ActivityResultContract;",
        "",
        "",
        "createIntent",
        "Landroid/content/Intent;",
        "context",
        "Landroid/content/Context;",
        "input",
        "parseResult",
        "resultCode",
        "intent",
        "(ILandroid/content/Intent;)Ljava/lang/Integer;",
        "superwall_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/superwall/sdk/paywall/view/PaywallView;


# direct methods
.method constructor <init>(Lcom/superwall/sdk/paywall/view/PaywallView;)V
    .locals 0

    iput-object p1, p0, Lcom/superwall/sdk/paywall/view/PaywallView$registerIntent$1;->this$0:Lcom/superwall/sdk/paywall/view/PaywallView;

    .line 1105
    invoke-direct {p0}, Landroidx/activity/result/contract/ActivityResultContract;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createIntent(Landroid/content/Context;Ljava/lang/Object;)Landroid/content/Intent;
    .locals 0

    .line 1105
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/paywall/view/PaywallView$registerIntent$1;->createIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public createIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 12

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "input"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1110
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v0, v0

    const-wide v2, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v0, v2

    .line 1113
    new-instance v2, Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    invoke-direct {v2}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;-><init>()V

    const/4 v3, 0x1

    .line 1114
    invoke-virtual {v2, v3}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->setColorScheme(I)Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    move-result-object v2

    const/4 v4, 0x0

    .line 1115
    invoke-virtual {v2, v4}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->setDownloadButtonEnabled(Z)Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    move-result-object v2

    .line 1116
    iget-object v5, p0, Lcom/superwall/sdk/paywall/view/PaywallView$registerIntent$1;->this$0:Lcom/superwall/sdk/paywall/view/PaywallView;

    .line 1117
    invoke-virtual {v5}, Lcom/superwall/sdk/paywall/view/PaywallView;->getState()Lcom/superwall/sdk/paywall/view/PaywallViewState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/superwall/sdk/paywall/view/PaywallViewState;->getPresentationStyle()Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle;

    move-result-object v5

    .line 1118
    instance-of v6, v5, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Drawer;

    if-eqz v6, :cond_0

    .line 1119
    check-cast v5, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Drawer;

    invoke-virtual {v5}, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Drawer;->getCornerRadius()D

    move-result-wide v5

    double-to-int v5, v5

    invoke-virtual {v2, v5}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->setToolbarCornerRadiusDp(I)Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    goto :goto_0

    .line 1122
    :cond_0
    instance-of v6, v5, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Popup;

    if-eqz v6, :cond_1

    .line 1123
    check-cast v5, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Popup;

    invoke-virtual {v5}, Lcom/superwall/sdk/models/paywall/PaywallPresentationStyle$Popup;->getCornerRadius()D

    move-result-wide v5

    double-to-int v5, v5

    invoke-virtual {v2, v5}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->setToolbarCornerRadiusDp(I)Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    goto :goto_0

    :cond_1
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1128
    :goto_0
    invoke-virtual {v2, v3}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->setShowTitle(Z)Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    move-result-object v2

    .line 1129
    invoke-virtual {v2, v4}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->setBookmarksButtonEnabled(Z)Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    move-result-object v2

    const/4 v5, 0x2

    .line 1130
    invoke-virtual {v2, v5}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->setShareState(I)Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    move-result-object v2

    .line 1131
    invoke-virtual {v2, v3}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->setInstantAppsEnabled(Z)Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    move-result-object v2

    .line 1132
    invoke-virtual {v2, v3}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->setSendToExternalDefaultHandlerEnabled(Z)Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    move-result-object v2

    .line 1135
    sget v5, Lcom/superwall/sdk/R$drawable;->none:I

    invoke-static {p1, v5}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1136
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 1138
    invoke-static {v6, v4}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 1139
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v10, 0x7

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Landroidx/core/graphics/drawable/DrawableKt;->toBitmap$default(Landroid/graphics/drawable/Drawable;IILandroid/graphics/Bitmap$Config;ILjava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1133
    invoke-virtual {v2, v4}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->setCloseButtonIcon(Landroid/graphics/Bitmap;)Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    move-result-object v2

    .line 1141
    invoke-virtual {v2, v3}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->setUrlBarHidingEnabled(Z)Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    move-result-object v2

    double-to-int v0, v0

    int-to-double v0, v0

    const-wide v4, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v0, v4

    double-to-int v0, v0

    .line 1142
    invoke-virtual {v2, v0, v3}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->setInitialActivityHeightPx(II)Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    move-result-object v0

    .line 1145
    invoke-virtual {v0}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->build()Landroidx/browser/customtabs/CustomTabsIntent;

    move-result-object v0

    iget-object v0, v0, Landroidx/browser/customtabs/CustomTabsIntent;->intent:Landroid/content/Intent;

    .line 1146
    const-string v1, "intent"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1147
    invoke-static {p1}, Lcom/superwall/sdk/paywall/view/webview/CustomTabsHelper;->getPackageNameToUse(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1176
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 1148
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    return-object v0
.end method

.method public parseResult(ILandroid/content/Intent;)Ljava/lang/Integer;
    .locals 0

    .line 1155
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parseResult(ILandroid/content/Intent;)Ljava/lang/Object;
    .locals 0

    .line 1105
    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/paywall/view/PaywallView$registerIntent$1;->parseResult(ILandroid/content/Intent;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
