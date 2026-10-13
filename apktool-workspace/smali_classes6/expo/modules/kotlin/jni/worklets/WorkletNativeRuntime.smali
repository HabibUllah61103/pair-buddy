.class public final Lexpo/modules/kotlin/jni/worklets/WorkletNativeRuntime;
.super Ljava/lang/Object;
.source "WorkletNativeRuntime.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0011\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0002\u001a\u00020\u0003H\u0086 R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lexpo/modules/kotlin/jni/worklets/WorkletNativeRuntime;",
        "",
        "jsRuntimePointer",
        "",
        "<init>",
        "(J)V",
        "mHybridData",
        "Lcom/facebook/jni/HybridData;",
        "initHybrid",
        "expo-modules-core_release"
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
.field private final mHybridData:Lcom/facebook/jni/HybridData;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    invoke-virtual {p0, p1, p2}, Lexpo/modules/kotlin/jni/worklets/WorkletNativeRuntime;->initHybrid(J)Lcom/facebook/jni/HybridData;

    move-result-object p1

    iput-object p1, p0, Lexpo/modules/kotlin/jni/worklets/WorkletNativeRuntime;->mHybridData:Lcom/facebook/jni/HybridData;

    return-void
.end method


# virtual methods
.method public final native initHybrid(J)Lcom/facebook/jni/HybridData;
.end method
