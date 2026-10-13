.class public Lcom/facebook/react/viewmanagers/RNCSliderManagerDelegate;
.super Lcom/facebook/react/uimanager/BaseViewManagerDelegate;
.source "RNCSliderManagerDelegate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        "U:",
        "Lcom/facebook/react/uimanager/BaseViewManager<",
        "TT;+",
        "Lcom/facebook/react/uimanager/LayoutShadowNode;",
        ">;:",
        "Lcom/facebook/react/viewmanagers/RNCSliderManagerInterface<",
        "TT;>;>",
        "Lcom/facebook/react/uimanager/BaseViewManagerDelegate<",
        "TT;TU;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/facebook/react/uimanager/BaseViewManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1}, Lcom/facebook/react/uimanager/BaseViewManagerDelegate;-><init>(Lcom/facebook/react/uimanager/BaseViewManager;)V

    return-void
.end method


# virtual methods
.method public setProperty(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 28
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string/jumbo v0, "thumbTintColor"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v2, 0x13

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "minimumTrackImage"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v2, 0x12

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "lowerLimit"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v2, 0x11

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "minimumValue"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v2, 0x10

    goto/16 :goto_0

    :sswitch_4
    const-string/jumbo v0, "tapToSeek"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v2, 0xf

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "accessibilityUnits"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v2, 0xe

    goto/16 :goto_0

    :sswitch_6
    const-string/jumbo v0, "trackImage"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v2, 0xd

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "maximumValue"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v2, 0xc

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "accessibilityIncrements"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v2, 0xb

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "inverted"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v2, 0xa

    goto/16 :goto_0

    :sswitch_a
    const-string v0, "disabled"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v2, 0x9

    goto/16 :goto_0

    :sswitch_b
    const-string/jumbo v0, "value"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v2, 0x8

    goto/16 :goto_0

    :sswitch_c
    const-string/jumbo v0, "step"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_0

    :cond_c
    const/4 v2, 0x7

    goto :goto_0

    :sswitch_d
    const-string/jumbo v0, "testID"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_0

    :cond_d
    const/4 v2, 0x6

    goto :goto_0

    :sswitch_e
    const-string v0, "maximumTrackImage"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_0

    :cond_e
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_f
    const-string v0, "minimumTrackTintColor"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_0

    :cond_f
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_10
    const-string/jumbo v0, "upperLimit"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_0

    :cond_10
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_11
    const-string/jumbo v0, "thumbImage"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_0

    :cond_11
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_12
    const-string v0, "maximumTrackTintColor"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_0

    :cond_12
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_13
    const-string/jumbo v0, "vertical"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_0

    :cond_13
    move v2, v1

    :goto_0
    const/4 v0, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    packed-switch v2, :pswitch_data_0

    .line 90
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/react/uimanager/BaseViewManagerDelegate;->setProperty(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 75
    :pswitch_0
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNCSliderManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNCSliderManagerInterface;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/facebook/react/bridge/ColorPropConverter;->getColor(Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Lcom/facebook/react/viewmanagers/RNCSliderManagerInterface;->setThumbTintColor(Landroid/view/View;Ljava/lang/Integer;)V

    return-void

    .line 57
    :pswitch_1
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNCSliderManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNCSliderManagerInterface;

    check-cast p3, Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {p2, p1, p3}, Lcom/facebook/react/viewmanagers/RNCSliderManagerInterface;->setMinimumTrackImage(Landroid/view/View;Lcom/facebook/react/bridge/ReadableMap;)V

    return-void

    .line 84
    :pswitch_2
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNCSliderManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNCSliderManagerInterface;

    if-nez p3, :cond_14

    goto :goto_1

    :cond_14
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->floatValue()F

    move-result v3

    :goto_1
    invoke-interface {p2, p1, v3}, Lcom/facebook/react/viewmanagers/RNCSliderManagerInterface;->setLowerLimit(Landroid/view/View;F)V

    return-void

    .line 63
    :pswitch_3
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNCSliderManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNCSliderManagerInterface;

    if-nez p3, :cond_15

    goto :goto_2

    :cond_15
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    :goto_2
    invoke-interface {p2, p1, v4, v5}, Lcom/facebook/react/viewmanagers/RNCSliderManagerInterface;->setMinimumValue(Landroid/view/View;D)V

    return-void

    .line 45
    :pswitch_4
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNCSliderManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNCSliderManagerInterface;

    if-nez p3, :cond_16

    goto :goto_3

    :cond_16
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_3
    invoke-interface {p2, p1, v1}, Lcom/facebook/react/viewmanagers/RNCSliderManagerInterface;->setTapToSeek(Landroid/view/View;Z)V

    return-void

    .line 30
    :pswitch_5
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNCSliderManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNCSliderManagerInterface;

    if-nez p3, :cond_17

    goto :goto_4

    :cond_17
    move-object v0, p3

    check-cast v0, Ljava/lang/String;

    :goto_4
    invoke-interface {p2, p1, v0}, Lcom/facebook/react/viewmanagers/RNCSliderManagerInterface;->setAccessibilityUnits(Landroid/view/View;Ljava/lang/String;)V

    return-void

    .line 78
    :pswitch_6
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNCSliderManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNCSliderManagerInterface;

    check-cast p3, Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {p2, p1, p3}, Lcom/facebook/react/viewmanagers/RNCSliderManagerInterface;->setTrackImage(Landroid/view/View;Lcom/facebook/react/bridge/ReadableMap;)V

    return-void

    .line 54
    :pswitch_7
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNCSliderManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNCSliderManagerInterface;

    if-nez p3, :cond_18

    goto :goto_5

    :cond_18
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    :goto_5
    invoke-interface {p2, p1, v4, v5}, Lcom/facebook/react/viewmanagers/RNCSliderManagerInterface;->setMaximumValue(Landroid/view/View;D)V

    return-void

    .line 33
    :pswitch_8
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNCSliderManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNCSliderManagerInterface;

    check-cast p3, Lcom/facebook/react/bridge/ReadableArray;

    invoke-interface {p2, p1, p3}, Lcom/facebook/react/viewmanagers/RNCSliderManagerInterface;->setAccessibilityIncrements(Landroid/view/View;Lcom/facebook/react/bridge/ReadableArray;)V

    return-void

    .line 39
    :pswitch_9
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNCSliderManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNCSliderManagerInterface;

    if-nez p3, :cond_19

    goto :goto_6

    :cond_19
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_6
    invoke-interface {p2, p1, v1}, Lcom/facebook/react/viewmanagers/RNCSliderManagerInterface;->setInverted(Landroid/view/View;Z)V

    return-void

    .line 36
    :pswitch_a
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNCSliderManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNCSliderManagerInterface;

    if-nez p3, :cond_1a

    goto :goto_7

    :cond_1a
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_7
    invoke-interface {p2, p1, v1}, Lcom/facebook/react/viewmanagers/RNCSliderManagerInterface;->setDisabled(Landroid/view/View;Z)V

    return-void

    .line 81
    :pswitch_b
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNCSliderManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNCSliderManagerInterface;

    if-nez p3, :cond_1b

    goto :goto_8

    :cond_1b
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->floatValue()F

    move-result v3

    :goto_8
    invoke-interface {p2, p1, v3}, Lcom/facebook/react/viewmanagers/RNCSliderManagerInterface;->setValue(Landroid/view/View;F)V

    return-void

    .line 66
    :pswitch_c
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNCSliderManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNCSliderManagerInterface;

    if-nez p3, :cond_1c

    goto :goto_9

    :cond_1c
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    :goto_9
    invoke-interface {p2, p1, v4, v5}, Lcom/facebook/react/viewmanagers/RNCSliderManagerInterface;->setStep(Landroid/view/View;D)V

    return-void

    .line 69
    :pswitch_d
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNCSliderManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNCSliderManagerInterface;

    if-nez p3, :cond_1d

    goto :goto_a

    :cond_1d
    move-object v0, p3

    check-cast v0, Ljava/lang/String;

    :goto_a
    invoke-interface {p2, p1, v0}, Lcom/facebook/react/viewmanagers/RNCSliderManagerInterface;->setTestID(Landroid/view/View;Ljava/lang/String;)V

    return-void

    .line 48
    :pswitch_e
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNCSliderManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNCSliderManagerInterface;

    check-cast p3, Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {p2, p1, p3}, Lcom/facebook/react/viewmanagers/RNCSliderManagerInterface;->setMaximumTrackImage(Landroid/view/View;Lcom/facebook/react/bridge/ReadableMap;)V

    return-void

    .line 60
    :pswitch_f
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNCSliderManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNCSliderManagerInterface;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/facebook/react/bridge/ColorPropConverter;->getColor(Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Lcom/facebook/react/viewmanagers/RNCSliderManagerInterface;->setMinimumTrackTintColor(Landroid/view/View;Ljava/lang/Integer;)V

    return-void

    .line 87
    :pswitch_10
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNCSliderManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNCSliderManagerInterface;

    if-nez p3, :cond_1e

    goto :goto_b

    :cond_1e
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->floatValue()F

    move-result v3

    :goto_b
    invoke-interface {p2, p1, v3}, Lcom/facebook/react/viewmanagers/RNCSliderManagerInterface;->setUpperLimit(Landroid/view/View;F)V

    return-void

    .line 72
    :pswitch_11
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNCSliderManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNCSliderManagerInterface;

    check-cast p3, Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {p2, p1, p3}, Lcom/facebook/react/viewmanagers/RNCSliderManagerInterface;->setThumbImage(Landroid/view/View;Lcom/facebook/react/bridge/ReadableMap;)V

    return-void

    .line 51
    :pswitch_12
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNCSliderManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNCSliderManagerInterface;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/facebook/react/bridge/ColorPropConverter;->getColor(Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Lcom/facebook/react/viewmanagers/RNCSliderManagerInterface;->setMaximumTrackTintColor(Landroid/view/View;Ljava/lang/Integer;)V

    return-void

    .line 42
    :pswitch_13
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/RNCSliderManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManager;

    check-cast p2, Lcom/facebook/react/viewmanagers/RNCSliderManagerInterface;

    if-nez p3, :cond_1f

    goto :goto_c

    :cond_1f
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_c
    invoke-interface {p2, p1, v1}, Lcom/facebook/react/viewmanagers/RNCSliderManagerInterface;->setVertical(Landroid/view/View;Z)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7643988a -> :sswitch_13
        -0x7149b1a3 -> :sswitch_12
        -0x678842db -> :sswitch_11
        -0x643ce7c7 -> :sswitch_10
        -0x3ce2d035 -> :sswitch_f
        -0x3a7fb6f0 -> :sswitch_e
        -0x34488ed3 -> :sswitch_d
        0x3606cc -> :sswitch_c
        0x6ac9171 -> :sswitch_b
        0x10263a7c -> :sswitch_a
        0x25698ef5 -> :sswitch_9
        0x2579b6d2 -> :sswitch_8
        0x2accbf31 -> :sswitch_7
        0x43e9ded0 -> :sswitch_6
        0x44e046c1 -> :sswitch_5
        0x45a8c116 -> :sswitch_4
        0x4713ea03 -> :sswitch_3
        0x4811e93a -> :sswitch_2
        0x4f7d117e -> :sswitch_1
        0x71fbaff2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
