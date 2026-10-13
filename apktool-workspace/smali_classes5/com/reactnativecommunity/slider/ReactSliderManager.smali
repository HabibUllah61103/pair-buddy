.class public Lcom/reactnativecommunity/slider/ReactSliderManager;
.super Lcom/facebook/react/uimanager/SimpleViewManager;
.source "ReactSliderManager.java"

# interfaces
.implements Lcom/facebook/react/viewmanagers/RNCSliderManagerInterface;


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    name = "RNCSlider"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/uimanager/SimpleViewManager<",
        "Lcom/reactnativecommunity/slider/ReactSlider;",
        ">;",
        "Lcom/facebook/react/viewmanagers/RNCSliderManagerInterface<",
        "Lcom/reactnativecommunity/slider/ReactSlider;",
        ">;"
    }
.end annotation


# static fields
.field private static final ON_CHANGE_LISTENER:Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field private final mDelegate:Lcom/facebook/react/uimanager/ViewManagerDelegate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/react/uimanager/ViewManagerDelegate<",
            "Lcom/reactnativecommunity/slider/ReactSlider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    new-instance v0, Lcom/reactnativecommunity/slider/ReactSliderManager$1;

    invoke-direct {v0}, Lcom/reactnativecommunity/slider/ReactSliderManager$1;-><init>()V

    sput-object v0, Lcom/reactnativecommunity/slider/ReactSliderManager;->ON_CHANGE_LISTENER:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/facebook/react/uimanager/SimpleViewManager;-><init>()V

    .line 36
    new-instance v0, Lcom/facebook/react/viewmanagers/RNCSliderManagerDelegate;

    invoke-direct {v0, p0}, Lcom/facebook/react/viewmanagers/RNCSliderManagerDelegate;-><init>(Lcom/facebook/react/uimanager/BaseViewManager;)V

    iput-object v0, p0, Lcom/reactnativecommunity/slider/ReactSliderManager;->mDelegate:Lcom/facebook/react/uimanager/ViewManagerDelegate;

    return-void
.end method


# virtual methods
.method protected bridge synthetic addEventEmitters(Lcom/facebook/react/uimanager/ThemedReactContext;Landroid/view/View;)V
    .locals 0

    .line 30
    check-cast p2, Lcom/reactnativecommunity/slider/ReactSlider;

    invoke-virtual {p0, p1, p2}, Lcom/reactnativecommunity/slider/ReactSliderManager;->addEventEmitters(Lcom/facebook/react/uimanager/ThemedReactContext;Lcom/reactnativecommunity/slider/ReactSlider;)V

    return-void
.end method

.method protected addEventEmitters(Lcom/facebook/react/uimanager/ThemedReactContext;Lcom/reactnativecommunity/slider/ReactSlider;)V
    .locals 0

    .line 188
    sget-object p1, Lcom/reactnativecommunity/slider/ReactSliderManager;->ON_CHANGE_LISTENER:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {p2, p1}, Lcom/reactnativecommunity/slider/ReactSlider;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method protected bridge synthetic createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Landroid/view/View;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lcom/reactnativecommunity/slider/ReactSliderManager;->createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/reactnativecommunity/slider/ReactSlider;

    move-result-object p1

    return-object p1
.end method

.method protected createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/reactnativecommunity/slider/ReactSlider;
    .locals 0

    .line 96
    invoke-static {p1}, Lcom/reactnativecommunity/slider/ReactSliderManagerImpl;->createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/reactnativecommunity/slider/ReactSlider;

    move-result-object p1

    return-object p1
.end method

.method protected getDelegate()Lcom/facebook/react/uimanager/ViewManagerDelegate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/react/uimanager/ViewManagerDelegate<",
            "Lcom/reactnativecommunity/slider/ReactSlider;",
            ">;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/reactnativecommunity/slider/ReactSliderManager;->mDelegate:Lcom/facebook/react/uimanager/ViewManagerDelegate;

    return-object v0
.end method

.method public getExportedCustomBubblingEventTypeConstants()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 229
    invoke-static {}, Lcom/reactnativecommunity/slider/ReactSliderManagerImpl;->getExportedCustomBubblingEventTypeConstants()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getExportedCustomDirectEventTypeConstants()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 235
    invoke-static {}, Lcom/reactnativecommunity/slider/ReactSliderManagerImpl;->getExportedCustomDirectEventTypeConstants()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 91
    const-string v0, "RNCSlider"

    return-object v0
.end method

.method public measure(Landroid/content/Context;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/ReadableMap;FLcom/facebook/yoga/YogaMeasureMode;FLcom/facebook/yoga/YogaMeasureMode;[F)J
    .locals 0

    .line 218
    new-instance p2, Lcom/reactnativecommunity/slider/ReactSlider;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3}, Lcom/reactnativecommunity/slider/ReactSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 219
    invoke-static {p1, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 220
    invoke-virtual {p2, p1, p1}, Lcom/reactnativecommunity/slider/ReactSlider;->measure(II)V

    .line 222
    invoke-virtual {p2}, Lcom/reactnativecommunity/slider/ReactSlider;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    invoke-static {p1}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result p1

    .line 223
    invoke-virtual {p2}, Lcom/reactnativecommunity/slider/ReactSlider;->getMeasuredHeight()I

    move-result p2

    int-to-float p2, p2

    invoke-static {p2}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result p2

    .line 221
    invoke-static {p1, p2}, Lcom/facebook/yoga/YogaMeasureOutput;->make(FF)J

    move-result-wide p1

    return-wide p1
.end method

.method public bridge synthetic setAccessibilityIncrements(Landroid/view/View;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "accessibilityIncrements"
    .end annotation

    .line 30
    check-cast p1, Lcom/reactnativecommunity/slider/ReactSlider;

    invoke-virtual {p0, p1, p2}, Lcom/reactnativecommunity/slider/ReactSliderManager;->setAccessibilityIncrements(Lcom/reactnativecommunity/slider/ReactSlider;Lcom/facebook/react/bridge/ReadableArray;)V

    return-void
.end method

.method public setAccessibilityIncrements(Lcom/reactnativecommunity/slider/ReactSlider;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "accessibilityIncrements"
    .end annotation

    .line 162
    invoke-static {p1, p2}, Lcom/reactnativecommunity/slider/ReactSliderManagerImpl;->setAccessibilityIncrements(Lcom/reactnativecommunity/slider/ReactSlider;Lcom/facebook/react/bridge/ReadableArray;)V

    return-void
.end method

.method public bridge synthetic setAccessibilityUnits(Landroid/view/View;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "accessibilityUnits"
    .end annotation

    .line 30
    check-cast p1, Lcom/reactnativecommunity/slider/ReactSlider;

    invoke-virtual {p0, p1, p2}, Lcom/reactnativecommunity/slider/ReactSliderManager;->setAccessibilityUnits(Lcom/reactnativecommunity/slider/ReactSlider;Ljava/lang/String;)V

    return-void
.end method

.method public setAccessibilityUnits(Lcom/reactnativecommunity/slider/ReactSlider;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "accessibilityUnits"
    .end annotation

    .line 156
    invoke-static {p1, p2}, Lcom/reactnativecommunity/slider/ReactSliderManagerImpl;->setAccessibilityUnits(Lcom/reactnativecommunity/slider/ReactSlider;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setDisabled(Landroid/view/View;Z)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultBoolean = false
        name = "disabled"
    .end annotation

    .line 30
    check-cast p1, Lcom/reactnativecommunity/slider/ReactSlider;

    invoke-virtual {p0, p1, p2}, Lcom/reactnativecommunity/slider/ReactSliderManager;->setDisabled(Lcom/reactnativecommunity/slider/ReactSlider;Z)V

    return-void
.end method

.method public setDisabled(Lcom/reactnativecommunity/slider/ReactSlider;Z)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultBoolean = false
        name = "disabled"
    .end annotation

    .line 102
    invoke-static {p1, p2}, Lcom/reactnativecommunity/slider/ReactSliderManagerImpl;->setDisabled(Lcom/reactnativecommunity/slider/ReactSlider;Z)V

    return-void
.end method

.method public bridge synthetic setInverted(Landroid/view/View;Z)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultBoolean = false
        name = "inverted"
    .end annotation

    .line 30
    check-cast p1, Lcom/reactnativecommunity/slider/ReactSlider;

    invoke-virtual {p0, p1, p2}, Lcom/reactnativecommunity/slider/ReactSliderManager;->setInverted(Lcom/reactnativecommunity/slider/ReactSlider;Z)V

    return-void
.end method

.method public setInverted(Lcom/reactnativecommunity/slider/ReactSlider;Z)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultBoolean = false
        name = "inverted"
    .end annotation

    .line 150
    invoke-static {p1, p2}, Lcom/reactnativecommunity/slider/ReactSliderManagerImpl;->setInverted(Lcom/reactnativecommunity/slider/ReactSlider;Z)V

    return-void
.end method

.method public bridge synthetic setLowerLimit(Landroid/view/View;F)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "lowerLimit"
    .end annotation

    .line 30
    check-cast p1, Lcom/reactnativecommunity/slider/ReactSlider;

    invoke-virtual {p0, p1, p2}, Lcom/reactnativecommunity/slider/ReactSliderManager;->setLowerLimit(Lcom/reactnativecommunity/slider/ReactSlider;F)V

    return-void
.end method

.method public setLowerLimit(Lcom/reactnativecommunity/slider/ReactSlider;F)V
    .locals 2
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "lowerLimit"
    .end annotation

    float-to-double v0, p2

    .line 167
    invoke-static {p1, v0, v1}, Lcom/reactnativecommunity/slider/ReactSliderManagerImpl;->setLowerLimit(Lcom/reactnativecommunity/slider/ReactSlider;D)V

    return-void
.end method

.method public bridge synthetic setMaximumTrackImage(Landroid/view/View;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 0

    .line 30
    check-cast p1, Lcom/reactnativecommunity/slider/ReactSlider;

    invoke-virtual {p0, p1, p2}, Lcom/reactnativecommunity/slider/ReactSliderManager;->setMaximumTrackImage(Lcom/reactnativecommunity/slider/ReactSlider;Lcom/facebook/react/bridge/ReadableMap;)V

    return-void
.end method

.method public setMaximumTrackImage(Lcom/reactnativecommunity/slider/ReactSlider;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic setMaximumTrackTintColor(Landroid/view/View;Ljava/lang/Integer;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        customType = "Color"
        name = "maximumTrackTintColor"
    .end annotation

    .line 30
    check-cast p1, Lcom/reactnativecommunity/slider/ReactSlider;

    invoke-virtual {p0, p1, p2}, Lcom/reactnativecommunity/slider/ReactSliderManager;->setMaximumTrackTintColor(Lcom/reactnativecommunity/slider/ReactSlider;Ljava/lang/Integer;)V

    return-void
.end method

.method public setMaximumTrackTintColor(Lcom/reactnativecommunity/slider/ReactSlider;Ljava/lang/Integer;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        customType = "Color"
        name = "maximumTrackTintColor"
    .end annotation

    .line 144
    invoke-static {p1, p2}, Lcom/reactnativecommunity/slider/ReactSliderManagerImpl;->setMaximumTrackTintColor(Lcom/reactnativecommunity/slider/ReactSlider;Ljava/lang/Integer;)V

    return-void
.end method

.method public bridge synthetic setMaximumValue(Landroid/view/View;D)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultFloat = 0.0f
        name = "maximumValue"
    .end annotation

    .line 30
    check-cast p1, Lcom/reactnativecommunity/slider/ReactSlider;

    invoke-virtual {p0, p1, p2, p3}, Lcom/reactnativecommunity/slider/ReactSliderManager;->setMaximumValue(Lcom/reactnativecommunity/slider/ReactSlider;D)V

    return-void
.end method

.method public setMaximumValue(Lcom/reactnativecommunity/slider/ReactSlider;D)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultFloat = 0.0f
        name = "maximumValue"
    .end annotation

    .line 120
    invoke-static {p1, p2, p3}, Lcom/reactnativecommunity/slider/ReactSliderManagerImpl;->setMaximumValue(Lcom/reactnativecommunity/slider/ReactSlider;D)V

    return-void
.end method

.method public bridge synthetic setMinimumTrackImage(Landroid/view/View;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 0

    .line 30
    check-cast p1, Lcom/reactnativecommunity/slider/ReactSlider;

    invoke-virtual {p0, p1, p2}, Lcom/reactnativecommunity/slider/ReactSliderManager;->setMinimumTrackImage(Lcom/reactnativecommunity/slider/ReactSlider;Lcom/facebook/react/bridge/ReadableMap;)V

    return-void
.end method

.method public setMinimumTrackImage(Lcom/reactnativecommunity/slider/ReactSlider;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic setMinimumTrackTintColor(Landroid/view/View;Ljava/lang/Integer;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        customType = "Color"
        name = "minimumTrackTintColor"
    .end annotation

    .line 30
    check-cast p1, Lcom/reactnativecommunity/slider/ReactSlider;

    invoke-virtual {p0, p1, p2}, Lcom/reactnativecommunity/slider/ReactSliderManager;->setMinimumTrackTintColor(Lcom/reactnativecommunity/slider/ReactSlider;Ljava/lang/Integer;)V

    return-void
.end method

.method public setMinimumTrackTintColor(Lcom/reactnativecommunity/slider/ReactSlider;Ljava/lang/Integer;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        customType = "Color"
        name = "minimumTrackTintColor"
    .end annotation

    .line 138
    invoke-static {p1, p2}, Lcom/reactnativecommunity/slider/ReactSliderManagerImpl;->setMinimumTrackTintColor(Lcom/reactnativecommunity/slider/ReactSlider;Ljava/lang/Integer;)V

    return-void
.end method

.method public bridge synthetic setMinimumValue(Landroid/view/View;D)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultFloat = 0.0f
        name = "minimumValue"
    .end annotation

    .line 30
    check-cast p1, Lcom/reactnativecommunity/slider/ReactSlider;

    invoke-virtual {p0, p1, p2, p3}, Lcom/reactnativecommunity/slider/ReactSliderManager;->setMinimumValue(Lcom/reactnativecommunity/slider/ReactSlider;D)V

    return-void
.end method

.method public setMinimumValue(Lcom/reactnativecommunity/slider/ReactSlider;D)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultFloat = 0.0f
        name = "minimumValue"
    .end annotation

    .line 114
    invoke-static {p1, p2, p3}, Lcom/reactnativecommunity/slider/ReactSliderManagerImpl;->setMinimumValue(Lcom/reactnativecommunity/slider/ReactSlider;D)V

    return-void
.end method

.method public bridge synthetic setStep(Landroid/view/View;D)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultFloat = 0.0f
        name = "step"
    .end annotation

    .line 30
    check-cast p1, Lcom/reactnativecommunity/slider/ReactSlider;

    invoke-virtual {p0, p1, p2, p3}, Lcom/reactnativecommunity/slider/ReactSliderManager;->setStep(Lcom/reactnativecommunity/slider/ReactSlider;D)V

    return-void
.end method

.method public setStep(Lcom/reactnativecommunity/slider/ReactSlider;D)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultFloat = 0.0f
        name = "step"
    .end annotation

    .line 126
    invoke-static {p1, p2, p3}, Lcom/reactnativecommunity/slider/ReactSliderManagerImpl;->setStep(Lcom/reactnativecommunity/slider/ReactSlider;D)V

    return-void
.end method

.method public bridge synthetic setTapToSeek(Landroid/view/View;Z)V
    .locals 0

    .line 30
    check-cast p1, Lcom/reactnativecommunity/slider/ReactSlider;

    invoke-virtual {p0, p1, p2}, Lcom/reactnativecommunity/slider/ReactSliderManager;->setTapToSeek(Lcom/reactnativecommunity/slider/ReactSlider;Z)V

    return-void
.end method

.method public setTapToSeek(Lcom/reactnativecommunity/slider/ReactSlider;Z)V
    .locals 0

    return-void
.end method

.method public bridge synthetic setTestID(Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    .line 30
    check-cast p1, Lcom/reactnativecommunity/slider/ReactSlider;

    invoke-virtual {p0, p1, p2}, Lcom/reactnativecommunity/slider/ReactSliderManager;->setTestID(Lcom/reactnativecommunity/slider/ReactSlider;Ljava/lang/String;)V

    return-void
.end method

.method public setTestID(Lcom/reactnativecommunity/slider/ReactSlider;Ljava/lang/String;)V
    .locals 0

    .line 183
    invoke-super {p0, p1, p2}, Lcom/facebook/react/uimanager/SimpleViewManager;->setTestId(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setThumbImage(Landroid/view/View;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "thumbImage"
    .end annotation

    .line 30
    check-cast p1, Lcom/reactnativecommunity/slider/ReactSlider;

    invoke-virtual {p0, p1, p2}, Lcom/reactnativecommunity/slider/ReactSliderManager;->setThumbImage(Lcom/reactnativecommunity/slider/ReactSlider;Lcom/facebook/react/bridge/ReadableMap;)V

    return-void
.end method

.method public setThumbImage(Lcom/reactnativecommunity/slider/ReactSlider;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "thumbImage"
    .end annotation

    .line 178
    invoke-static {p1, p2}, Lcom/reactnativecommunity/slider/ReactSliderManagerImpl;->setThumbImage(Lcom/reactnativecommunity/slider/ReactSlider;Lcom/facebook/react/bridge/ReadableMap;)V

    return-void
.end method

.method public bridge synthetic setThumbTintColor(Landroid/view/View;Ljava/lang/Integer;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        customType = "Color"
        name = "thumbTintColor"
    .end annotation

    .line 30
    check-cast p1, Lcom/reactnativecommunity/slider/ReactSlider;

    invoke-virtual {p0, p1, p2}, Lcom/reactnativecommunity/slider/ReactSliderManager;->setThumbTintColor(Lcom/reactnativecommunity/slider/ReactSlider;Ljava/lang/Integer;)V

    return-void
.end method

.method public setThumbTintColor(Lcom/reactnativecommunity/slider/ReactSlider;Ljava/lang/Integer;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        customType = "Color"
        name = "thumbTintColor"
    .end annotation

    .line 132
    invoke-static {p1, p2}, Lcom/reactnativecommunity/slider/ReactSliderManagerImpl;->setThumbTintColor(Lcom/reactnativecommunity/slider/ReactSlider;Ljava/lang/Integer;)V

    return-void
.end method

.method public bridge synthetic setTrackImage(Landroid/view/View;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 0

    .line 30
    check-cast p1, Lcom/reactnativecommunity/slider/ReactSlider;

    invoke-virtual {p0, p1, p2}, Lcom/reactnativecommunity/slider/ReactSliderManager;->setTrackImage(Lcom/reactnativecommunity/slider/ReactSlider;Lcom/facebook/react/bridge/ReadableMap;)V

    return-void
.end method

.method public setTrackImage(Lcom/reactnativecommunity/slider/ReactSlider;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic setUpperLimit(Landroid/view/View;F)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "upperLimit"
    .end annotation

    .line 30
    check-cast p1, Lcom/reactnativecommunity/slider/ReactSlider;

    invoke-virtual {p0, p1, p2}, Lcom/reactnativecommunity/slider/ReactSliderManager;->setUpperLimit(Lcom/reactnativecommunity/slider/ReactSlider;F)V

    return-void
.end method

.method public setUpperLimit(Lcom/reactnativecommunity/slider/ReactSlider;F)V
    .locals 2
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "upperLimit"
    .end annotation

    float-to-double v0, p2

    .line 172
    invoke-static {p1, v0, v1}, Lcom/reactnativecommunity/slider/ReactSliderManagerImpl;->setUpperLimit(Lcom/reactnativecommunity/slider/ReactSlider;D)V

    return-void
.end method

.method public bridge synthetic setValue(Landroid/view/View;F)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultFloat = 0.0f
        name = "value"
    .end annotation

    .line 30
    check-cast p1, Lcom/reactnativecommunity/slider/ReactSlider;

    invoke-virtual {p0, p1, p2}, Lcom/reactnativecommunity/slider/ReactSliderManager;->setValue(Lcom/reactnativecommunity/slider/ReactSlider;F)V

    return-void
.end method

.method public setValue(Lcom/reactnativecommunity/slider/ReactSlider;F)V
    .locals 2
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultFloat = 0.0f
        name = "value"
    .end annotation

    float-to-double v0, p2

    .line 108
    invoke-static {p1, v0, v1}, Lcom/reactnativecommunity/slider/ReactSliderManagerImpl;->setValue(Lcom/reactnativecommunity/slider/ReactSlider;D)V

    return-void
.end method

.method public bridge synthetic setVertical(Landroid/view/View;Z)V
    .locals 0

    .line 30
    check-cast p1, Lcom/reactnativecommunity/slider/ReactSlider;

    invoke-virtual {p0, p1, p2}, Lcom/reactnativecommunity/slider/ReactSliderManager;->setVertical(Lcom/reactnativecommunity/slider/ReactSlider;Z)V

    return-void
.end method

.method public setVertical(Lcom/reactnativecommunity/slider/ReactSlider;Z)V
    .locals 0

    return-void
.end method
