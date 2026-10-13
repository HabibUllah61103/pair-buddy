.class public final Lcom/facebook/react/uimanager/ReactStylesDiffMapHelperKt;
.super Ljava/lang/Object;
.source "ReactStylesDiffMapHelper.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "getBackingMap",
        "Lcom/facebook/react/bridge/ReadableMap;",
        "Lcom/facebook/react/uimanager/ReactStylesDiffMap;",
        "expo-modules-core_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final getBackingMap(Lcom/facebook/react/uimanager/ReactStylesDiffMap;)Lcom/facebook/react/bridge/ReadableMap;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-static {p0}, Lcom/facebook/react/uimanager/ReactStylesDiffMapBackingFieldAccessor;->getBackingMap(Lcom/facebook/react/uimanager/ReactStylesDiffMap;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p0

    const-string v0, "getBackingMap(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
