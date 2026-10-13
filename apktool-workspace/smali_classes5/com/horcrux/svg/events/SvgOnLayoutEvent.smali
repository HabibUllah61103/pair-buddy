.class public Lcom/horcrux/svg/events/SvgOnLayoutEvent;
.super Lcom/facebook/react/uimanager/events/Event;
.source "SvgOnLayoutEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/uimanager/events/Event<",
        "Lcom/horcrux/svg/events/SvgOnLayoutEvent;",
        ">;"
    }
.end annotation


# static fields
.field public static final EVENT_NAME:Ljava/lang/String; = "topSvgLayout"


# instance fields
.field public height:I

.field public width:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>(IIIIII)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/facebook/react/uimanager/events/Event;-><init>(II)V

    .line 20
    iput p3, p0, Lcom/horcrux/svg/events/SvgOnLayoutEvent;->x:I

    .line 21
    iput p4, p0, Lcom/horcrux/svg/events/SvgOnLayoutEvent;->y:I

    .line 22
    iput p5, p0, Lcom/horcrux/svg/events/SvgOnLayoutEvent;->width:I

    .line 23
    iput p6, p0, Lcom/horcrux/svg/events/SvgOnLayoutEvent;->height:I

    return-void
.end method


# virtual methods
.method public getCoalescingKey()S
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getEventData()Lcom/facebook/react/bridge/WritableMap;
    .locals 4

    .line 38
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 39
    iget v1, p0, Lcom/horcrux/svg/events/SvgOnLayoutEvent;->x:I

    int-to-float v1, v1

    invoke-static {v1}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v1

    float-to-double v1, v1

    const-string v3, "x"

    invoke-interface {v0, v3, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 40
    iget v1, p0, Lcom/horcrux/svg/events/SvgOnLayoutEvent;->y:I

    int-to-float v1, v1

    invoke-static {v1}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v1

    float-to-double v1, v1

    const-string v3, "y"

    invoke-interface {v0, v3, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 41
    iget v1, p0, Lcom/horcrux/svg/events/SvgOnLayoutEvent;->width:I

    int-to-float v1, v1

    invoke-static {v1}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v1

    float-to-double v1, v1

    const-string v3, "width"

    invoke-interface {v0, v3, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 42
    iget v1, p0, Lcom/horcrux/svg/events/SvgOnLayoutEvent;->height:I

    int-to-float v1, v1

    invoke-static {v1}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v1

    float-to-double v1, v1

    const-string v3, "height"

    invoke-interface {v0, v3, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 44
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    .line 45
    const-string v2, "layout"

    invoke-interface {v1, v2, v0}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 46
    const-string v0, "target"

    invoke-virtual {p0}, Lcom/horcrux/svg/events/SvgOnLayoutEvent;->getViewTag()I

    move-result v2

    invoke-interface {v1, v0, v2}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    return-object v1
.end method

.method public getEventName()Ljava/lang/String;
    .locals 1

    .line 28
    const-string v0, "topSvgLayout"

    return-object v0
.end method
