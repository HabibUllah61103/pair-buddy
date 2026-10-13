.class public Lexpo/modules/video/player/DefaultLoadControl$PlayerLoadingState;
.super Ljava/lang/Object;
.source "DefaultLoadControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/video/player/DefaultLoadControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "PlayerLoadingState"
.end annotation


# instance fields
.field public isLoading:Z

.field public targetBufferBytes:I


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 548
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
