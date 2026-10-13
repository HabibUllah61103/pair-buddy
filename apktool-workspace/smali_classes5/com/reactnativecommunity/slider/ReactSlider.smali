.class public Lcom/reactnativecommunity/slider/ReactSlider;
.super Landroidx/appcompat/widget/AppCompatSeekBar;
.source "ReactSlider.java"


# static fields
.field private static DEFAULT_TOTAL_STEPS:I = 0x80


# instance fields
.field private isSliding:Z

.field private mAccessibilityIncrements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAccessibilityUnits:Ljava/lang/String;

.field private mLowerLimit:I

.field private mMaxValue:D

.field private mMinValue:D

.field private mRealLowerLimit:D

.field private mRealUpperLimit:D

.field private mStep:D

.field private mStepCalculated:D

.field private mUpperLimit:I

.field private mValue:D


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p2    # Landroid/util/AttributeSet;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 78
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-wide/16 v0, 0x0

    .line 44
    iput-wide v0, p0, Lcom/reactnativecommunity/slider/ReactSlider;->mMinValue:D

    .line 46
    iput-wide v0, p0, Lcom/reactnativecommunity/slider/ReactSlider;->mMaxValue:D

    .line 52
    iput-wide v0, p0, Lcom/reactnativecommunity/slider/ReactSlider;->mValue:D

    const/4 p2, 0x0

    .line 54
    iput-boolean p2, p0, Lcom/reactnativecommunity/slider/ReactSlider;->isSliding:Z

    .line 57
    iput-wide v0, p0, Lcom/reactnativecommunity/slider/ReactSlider;->mStep:D

    .line 59
    iput-wide v0, p0, Lcom/reactnativecommunity/slider/ReactSlider;->mStepCalculated:D

    const-wide/high16 v0, -0x3c20000000000000L    # -9.223372036854776E18

    .line 66
    iput-wide v0, p0, Lcom/reactnativecommunity/slider/ReactSlider;->mRealLowerLimit:D

    const-wide/high16 v0, 0x43e0000000000000L    # 9.223372036854776E18

    .line 72
    iput-wide v0, p0, Lcom/reactnativecommunity/slider/ReactSlider;->mRealUpperLimit:D

    .line 79
    invoke-static {}, Lcom/facebook/react/modules/i18nmanager/I18nUtil;->getInstance()Lcom/facebook/react/modules/i18nmanager/I18nUtil;

    move-result-object p2

    .line 80
    invoke-virtual {p2, p1}, Lcom/facebook/react/modules/i18nmanager/I18nUtil;->isRTL(Landroid/content/Context;)Z

    move-result p1

    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatSeekBar;->setLayoutDirection(I)V

    .line 81
    invoke-direct {p0}, Lcom/reactnativecommunity/slider/ReactSlider;->disableStateListAnimatorIfNeeded()V

    return-void
.end method

.method private disableStateListAnimatorIfNeeded()V
    .locals 0

    return-void
.end method

.method private getBitmapDrawable(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 2

    .line 270
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 271
    new-instance v1, Lcom/reactnativecommunity/slider/ReactSlider$2;

    invoke-direct {v1, p0, p1}, Lcom/reactnativecommunity/slider/ReactSlider$2;-><init>(Lcom/reactnativecommunity/slider/ReactSlider;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 295
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 297
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method private getStepValue()D
    .locals 4

    .line 265
    iget-wide v0, p0, Lcom/reactnativecommunity/slider/ReactSlider;->mStep:D

    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-lez v2, :cond_0

    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/reactnativecommunity/slider/ReactSlider;->mStepCalculated:D

    return-wide v0
.end method

.method private getTotalSteps()I
    .locals 4

    .line 261
    iget-wide v0, p0, Lcom/reactnativecommunity/slider/ReactSlider;->mMaxValue:D

    iget-wide v2, p0, Lcom/reactnativecommunity/slider/ReactSlider;->mMinValue:D

    sub-double/2addr v0, v2

    invoke-direct {p0}, Lcom/reactnativecommunity/slider/ReactSlider;->getStepValue()D

    move-result-wide v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method private updateAll()V
    .locals 4

    .line 220
    iget-wide v0, p0, Lcom/reactnativecommunity/slider/ReactSlider;->mStep:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 221
    iget-wide v0, p0, Lcom/reactnativecommunity/slider/ReactSlider;->mMaxValue:D

    iget-wide v2, p0, Lcom/reactnativecommunity/slider/ReactSlider;->mMinValue:D

    sub-double/2addr v0, v2

    sget v2, Lcom/reactnativecommunity/slider/ReactSlider;->DEFAULT_TOTAL_STEPS:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/reactnativecommunity/slider/ReactSlider;->mStepCalculated:D

    .line 223
    :cond_0
    invoke-direct {p0}, Lcom/reactnativecommunity/slider/ReactSlider;->getTotalSteps()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/reactnativecommunity/slider/ReactSlider;->setMax(I)V

    const/4 v0, 0x1

    .line 224
    invoke-virtual {p0, v0}, Lcom/reactnativecommunity/slider/ReactSlider;->setKeyProgressIncrement(I)V

    .line 225
    invoke-direct {p0}, Lcom/reactnativecommunity/slider/ReactSlider;->updateLowerLimit()V

    .line 226
    invoke-direct {p0}, Lcom/reactnativecommunity/slider/ReactSlider;->updateUpperLimit()V

    .line 227
    invoke-direct {p0}, Lcom/reactnativecommunity/slider/ReactSlider;->updateValue()V

    return-void
.end method

.method private updateLowerLimit()V
    .locals 6

    .line 234
    iget-wide v0, p0, Lcom/reactnativecommunity/slider/ReactSlider;->mRealLowerLimit:D

    iget-wide v2, p0, Lcom/reactnativecommunity/slider/ReactSlider;->mMinValue:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    .line 235
    iget-wide v2, p0, Lcom/reactnativecommunity/slider/ReactSlider;->mMinValue:D

    sub-double/2addr v0, v2

    iget-wide v4, p0, Lcom/reactnativecommunity/slider/ReactSlider;->mMaxValue:D

    sub-double/2addr v4, v2

    div-double/2addr v0, v4

    invoke-direct {p0}, Lcom/reactnativecommunity/slider/ReactSlider;->getTotalSteps()I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    .line 236
    iget v1, p0, Lcom/reactnativecommunity/slider/ReactSlider;->mUpperLimit:I

    if-le v0, v1, :cond_0

    .line 237
    const-string v0, "Invalid configuration"

    const-string v1, "upperLimit < lowerLimit; lowerLimit not set"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 239
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/reactnativecommunity/slider/ReactSlider;->mLowerLimit:I

    return-void
.end method

.method private updateUpperLimit()V
    .locals 6

    .line 246
    iget-wide v0, p0, Lcom/reactnativecommunity/slider/ReactSlider;->mRealUpperLimit:D

    iget-wide v2, p0, Lcom/reactnativecommunity/slider/ReactSlider;->mMaxValue:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    .line 247
    iget-wide v2, p0, Lcom/reactnativecommunity/slider/ReactSlider;->mMinValue:D

    sub-double/2addr v0, v2

    iget-wide v4, p0, Lcom/reactnativecommunity/slider/ReactSlider;->mMaxValue:D

    sub-double/2addr v4, v2

    div-double/2addr v0, v4

    invoke-direct {p0}, Lcom/reactnativecommunity/slider/ReactSlider;->getTotalSteps()I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    .line 248
    iget v1, p0, Lcom/reactnativecommunity/slider/ReactSlider;->mLowerLimit:I

    if-le v1, v0, :cond_0

    .line 249
    const-string v0, "Invalid configuration"

    const-string v1, "upperLimit < lowerLimit; upperLimit not set"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 251
    :cond_0
    iput v0, p0, Lcom/reactnativecommunity/slider/ReactSlider;->mUpperLimit:I

    return-void
.end method

.method private updateValue()V
    .locals 6

    .line 257
    iget-wide v0, p0, Lcom/reactnativecommunity/slider/ReactSlider;->mValue:D

    iget-wide v2, p0, Lcom/reactnativecommunity/slider/ReactSlider;->mMinValue:D

    sub-double/2addr v0, v2

    iget-wide v4, p0, Lcom/reactnativecommunity/slider/ReactSlider;->mMaxValue:D

    sub-double/2addr v4, v2

    div-double/2addr v0, v4

    invoke-direct {p0}, Lcom/reactnativecommunity/slider/ReactSlider;->getTotalSteps()I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/reactnativecommunity/slider/ReactSlider;->setProgress(I)V

    return-void
.end method


# virtual methods
.method public announceForAccessibility(Ljava/lang/CharSequence;)V
    .locals 4

    .line 170
    invoke-virtual {p0}, Lcom/reactnativecommunity/slider/ReactSlider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 171
    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    .line 173
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 174
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v2

    const/16 v3, 0x4000

    .line 175
    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 176
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 177
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 178
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    new-instance p1, Lcom/reactnativecommunity/slider/ReactSlider$1;

    invoke-direct {p1, p0, v1, v2}, Lcom/reactnativecommunity/slider/ReactSlider$1;-><init>(Lcom/reactnativecommunity/slider/ReactSlider;Landroid/view/accessibility/AccessibilityManager;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 187
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    const-wide/16 v1, 0x3e8

    .line 188
    invoke-virtual {v0, p1, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_0
    return-void
.end method

.method getLowerLimit()I
    .locals 1

    .line 133
    iget v0, p0, Lcom/reactnativecommunity/slider/ReactSlider;->mLowerLimit:I

    return v0
.end method

.method getUpperLimit()I
    .locals 1

    .line 137
    iget v0, p0, Lcom/reactnativecommunity/slider/ReactSlider;->mUpperLimit:I

    return v0
.end method

.method getValidProgressValue(I)I
    .locals 1

    .line 104
    invoke-virtual {p0}, Lcom/reactnativecommunity/slider/ReactSlider;->getLowerLimit()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 105
    invoke-virtual {p0}, Lcom/reactnativecommunity/slider/ReactSlider;->getLowerLimit()I

    move-result p1

    return p1

    .line 106
    :cond_0
    invoke-virtual {p0}, Lcom/reactnativecommunity/slider/ReactSlider;->getUpperLimit()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 107
    invoke-virtual {p0}, Lcom/reactnativecommunity/slider/ReactSlider;->getUpperLimit()I

    move-result p1

    :cond_1
    return p1
.end method

.method isSliding(Z)V
    .locals 0

    .line 145
    iput-boolean p1, p0, Lcom/reactnativecommunity/slider/ReactSlider;->isSliding:Z

    return-void
.end method

.method isSliding()Z
    .locals 1

    .line 141
    iget-boolean v0, p0, Lcom/reactnativecommunity/slider/ReactSlider;->isSliding:Z

    return v0
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 158
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatSeekBar;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 161
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const v1, 0x8000

    if-eq v0, v1, :cond_1

    .line 162
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/reactnativecommunity/slider/ReactSlider;->isAccessibilityFocused()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 163
    :cond_1
    :goto_0
    iget-wide v0, p0, Lcom/reactnativecommunity/slider/ReactSlider;->mValue:D

    double-to-int p1, v0

    invoke-virtual {p0, p1}, Lcom/reactnativecommunity/slider/ReactSlider;->setupAccessibility(I)V

    return-void
.end method

.method setAccessibilityIncrements(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 153
    iput-object p1, p0, Lcom/reactnativecommunity/slider/ReactSlider;->mAccessibilityIncrements:Ljava/util/List;

    return-void
.end method

.method setAccessibilityUnits(Ljava/lang/String;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/reactnativecommunity/slider/ReactSlider;->mAccessibilityUnits:Ljava/lang/String;

    return-void
.end method

.method setLowerLimit(D)V
    .locals 0

    .line 123
    iput-wide p1, p0, Lcom/reactnativecommunity/slider/ReactSlider;->mRealLowerLimit:D

    .line 124
    invoke-direct {p0}, Lcom/reactnativecommunity/slider/ReactSlider;->updateLowerLimit()V

    return-void
.end method

.method setMaxValue(D)V
    .locals 0

    .line 94
    iput-wide p1, p0, Lcom/reactnativecommunity/slider/ReactSlider;->mMaxValue:D

    .line 95
    invoke-direct {p0}, Lcom/reactnativecommunity/slider/ReactSlider;->updateAll()V

    return-void
.end method

.method setMinValue(D)V
    .locals 0

    .line 99
    iput-wide p1, p0, Lcom/reactnativecommunity/slider/ReactSlider;->mMinValue:D

    .line 100
    invoke-direct {p0}, Lcom/reactnativecommunity/slider/ReactSlider;->updateAll()V

    return-void
.end method

.method setStep(D)V
    .locals 0

    .line 118
    iput-wide p1, p0, Lcom/reactnativecommunity/slider/ReactSlider;->mStep:D

    .line 119
    invoke-direct {p0}, Lcom/reactnativecommunity/slider/ReactSlider;->updateAll()V

    return-void
.end method

.method public setThumbImage(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 304
    invoke-direct {p0, p1}, Lcom/reactnativecommunity/slider/ReactSlider;->getBitmapDrawable(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/reactnativecommunity/slider/ReactSlider;->setThumb(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x0

    .line 307
    invoke-virtual {p0, p1}, Lcom/reactnativecommunity/slider/ReactSlider;->setSplitTrack(Z)V

    return-void

    .line 310
    :cond_0
    invoke-virtual {p0}, Lcom/reactnativecommunity/slider/ReactSlider;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/reactnativecommunity/slider/ReactSlider;->setThumb(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method setUpperLimit(D)V
    .locals 0

    .line 128
    iput-wide p1, p0, Lcom/reactnativecommunity/slider/ReactSlider;->mRealUpperLimit:D

    .line 129
    invoke-direct {p0}, Lcom/reactnativecommunity/slider/ReactSlider;->updateUpperLimit()V

    return-void
.end method

.method setValue(D)V
    .locals 0

    .line 113
    iput-wide p1, p0, Lcom/reactnativecommunity/slider/ReactSlider;->mValue:D

    .line 114
    invoke-direct {p0}, Lcom/reactnativecommunity/slider/ReactSlider;->updateValue()V

    return-void
.end method

.method public setupAccessibility(I)V
    .locals 4

    .line 193
    iget-object v0, p0, Lcom/reactnativecommunity/slider/ReactSlider;->mAccessibilityUnits:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/reactnativecommunity/slider/ReactSlider;->mAccessibilityIncrements:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iget-wide v2, p0, Lcom/reactnativecommunity/slider/ReactSlider;->mMaxValue:D

    double-to-int v2, v2

    if-ne v0, v2, :cond_1

    .line 194
    iget-object v0, p0, Lcom/reactnativecommunity/slider/ReactSlider;->mAccessibilityIncrements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 195
    iget-object v0, p0, Lcom/reactnativecommunity/slider/ReactSlider;->mAccessibilityUnits:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 197
    iget-object v2, p0, Lcom/reactnativecommunity/slider/ReactSlider;->mAccessibilityUnits:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 198
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v1, :cond_0

    const/4 v3, 0x0

    sub-int/2addr v0, v1

    .line 199
    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 202
    :cond_0
    const-string v0, "%s %s"

    filled-new-array {p1, v2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/reactnativecommunity/slider/ReactSlider;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public toRealProgress(I)D
    .locals 4

    .line 212
    invoke-virtual {p0}, Lcom/reactnativecommunity/slider/ReactSlider;->getMax()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 213
    iget-wide v0, p0, Lcom/reactnativecommunity/slider/ReactSlider;->mMaxValue:D

    return-wide v0

    :cond_0
    int-to-double v0, p1

    .line 215
    invoke-direct {p0}, Lcom/reactnativecommunity/slider/ReactSlider;->getStepValue()D

    move-result-wide v2

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lcom/reactnativecommunity/slider/ReactSlider;->mMinValue:D

    add-double/2addr v0, v2

    return-wide v0
.end method
