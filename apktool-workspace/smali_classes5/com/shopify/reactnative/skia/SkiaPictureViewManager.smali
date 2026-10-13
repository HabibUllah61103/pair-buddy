.class public Lcom/shopify/reactnative/skia/SkiaPictureViewManager;
.super Lcom/shopify/reactnative/skia/SkiaBaseViewManager;
.source "SkiaPictureViewManager.java"

# interfaces
.implements Lcom/facebook/react/viewmanagers/SkiaPictureViewManagerInterface;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shopify/reactnative/skia/SkiaBaseViewManager<",
        "Lcom/shopify/reactnative/skia/SkiaPictureView;",
        ">;",
        "Lcom/facebook/react/viewmanagers/SkiaPictureViewManagerInterface<",
        "Lcom/shopify/reactnative/skia/SkiaPictureView;",
        ">;"
    }
.end annotation


# instance fields
.field protected mDelegate:Lcom/facebook/react/viewmanagers/SkiaPictureViewManagerDelegate;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Lcom/shopify/reactnative/skia/SkiaBaseViewManager;-><init>()V

    .line 16
    new-instance v0, Lcom/facebook/react/viewmanagers/SkiaPictureViewManagerDelegate;

    invoke-direct {v0, p0}, Lcom/facebook/react/viewmanagers/SkiaPictureViewManagerDelegate;-><init>(Lcom/facebook/react/uimanager/BaseViewManager;)V

    iput-object v0, p0, Lcom/shopify/reactnative/skia/SkiaPictureViewManager;->mDelegate:Lcom/facebook/react/viewmanagers/SkiaPictureViewManagerDelegate;

    return-void
.end method


# virtual methods
.method public bridge synthetic createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Landroid/view/View;
    .locals 0

    .line 10
    invoke-virtual {p0, p1}, Lcom/shopify/reactnative/skia/SkiaPictureViewManager;->createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/shopify/reactnative/skia/SkiaPictureView;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/facebook/react/views/view/ReactViewGroup;
    .locals 0

    .line 10
    invoke-virtual {p0, p1}, Lcom/shopify/reactnative/skia/SkiaPictureViewManager;->createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/shopify/reactnative/skia/SkiaPictureView;

    move-result-object p1

    return-object p1
.end method

.method public createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/shopify/reactnative/skia/SkiaPictureView;
    .locals 1

    .line 32
    new-instance v0, Lcom/shopify/reactnative/skia/SkiaPictureView;

    invoke-direct {v0, p1}, Lcom/shopify/reactnative/skia/SkiaPictureView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected bridge synthetic getDelegate()Lcom/facebook/react/uimanager/ViewManagerDelegate;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/shopify/reactnative/skia/SkiaPictureViewManager;->getDelegate()Lcom/facebook/react/viewmanagers/SkiaPictureViewManagerDelegate;

    move-result-object v0

    return-object v0
.end method

.method protected getDelegate()Lcom/facebook/react/viewmanagers/SkiaPictureViewManagerDelegate;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/shopify/reactnative/skia/SkiaPictureViewManager;->mDelegate:Lcom/facebook/react/viewmanagers/SkiaPictureViewManagerDelegate;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 26
    const-string v0, "SkiaPictureView"

    return-object v0
.end method

.method public bridge synthetic setAndroidWarmup(Landroid/view/View;Z)V
    .locals 0

    .line 10
    check-cast p1, Lcom/shopify/reactnative/skia/SkiaPictureView;

    invoke-virtual {p0, p1, p2}, Lcom/shopify/reactnative/skia/SkiaPictureViewManager;->setAndroidWarmup(Lcom/shopify/reactnative/skia/SkiaPictureView;Z)V

    return-void
.end method

.method public setAndroidWarmup(Lcom/shopify/reactnative/skia/SkiaPictureView;Z)V
    .locals 0

    .line 42
    invoke-virtual {p1, p2}, Lcom/shopify/reactnative/skia/SkiaPictureView;->setAndroidWarmup(Z)V

    return-void
.end method

.method public bridge synthetic setColorSpace(Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    .line 10
    check-cast p1, Lcom/shopify/reactnative/skia/SkiaPictureView;

    invoke-virtual {p0, p1, p2}, Lcom/shopify/reactnative/skia/SkiaPictureViewManager;->setColorSpace(Lcom/shopify/reactnative/skia/SkiaPictureView;Ljava/lang/String;)V

    return-void
.end method

.method public setColorSpace(Lcom/shopify/reactnative/skia/SkiaPictureView;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic setDebug(Landroid/view/View;Z)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "debug"
    .end annotation

    .line 10
    check-cast p1, Lcom/shopify/reactnative/skia/SkiaBaseView;

    invoke-super {p0, p1, p2}, Lcom/shopify/reactnative/skia/SkiaBaseViewManager;->setDebug(Lcom/shopify/reactnative/skia/SkiaBaseView;Z)V

    return-void
.end method

.method public bridge synthetic setOpaque(Landroid/view/View;Z)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "opaque"
    .end annotation

    .line 10
    check-cast p1, Lcom/shopify/reactnative/skia/SkiaBaseView;

    invoke-super {p0, p1, p2}, Lcom/shopify/reactnative/skia/SkiaBaseViewManager;->setOpaque(Lcom/shopify/reactnative/skia/SkiaBaseView;Z)V

    return-void
.end method

.method public bridge synthetic setPointerEvents(Landroid/view/View;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "pointerEvents"
    .end annotation

    .line 10
    check-cast p1, Lcom/shopify/reactnative/skia/SkiaBaseView;

    invoke-super {p0, p1, p2}, Lcom/shopify/reactnative/skia/SkiaBaseViewManager;->setPointerEvents(Lcom/shopify/reactnative/skia/SkiaBaseView;Ljava/lang/String;)V

    return-void
.end method
