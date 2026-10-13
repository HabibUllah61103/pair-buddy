.class public final Lexpo/modules/superwallexpo/ExpoActivityProvider;
.super Ljava/lang/Object;
.source "ReactNativeActivityProvider.kt"

# interfaces
.implements Lcom/superwall/sdk/misc/ActivityProvider;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\n\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "Lexpo/modules/superwallexpo/ExpoActivityProvider;",
        "Lcom/superwall/sdk/misc/ActivityProvider;",
        "appContext",
        "Lexpo/modules/kotlin/AppContext;",
        "<init>",
        "(Lexpo/modules/kotlin/AppContext;)V",
        "getCurrentActivity",
        "Landroid/app/Activity;",
        "expo-superwall_release"
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
.field private final appContext:Lexpo/modules/kotlin/AppContext;


# direct methods
.method public constructor <init>(Lexpo/modules/kotlin/AppContext;)V
    .locals 1

    const-string v0, "appContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexpo/modules/superwallexpo/ExpoActivityProvider;->appContext:Lexpo/modules/kotlin/AppContext;

    return-void
.end method


# virtual methods
.method public getCurrentActivity()Landroid/app/Activity;
    .locals 1

    .line 10
    iget-object v0, p0, Lexpo/modules/superwallexpo/ExpoActivityProvider;->appContext:Lexpo/modules/kotlin/AppContext;

    invoke-virtual {v0}, Lexpo/modules/kotlin/AppContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method
