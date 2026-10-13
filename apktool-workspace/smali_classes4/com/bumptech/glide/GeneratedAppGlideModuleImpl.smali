.class public final Lcom/bumptech/glide/GeneratedAppGlideModuleImpl;
.super Lcom/bumptech/glide/GeneratedAppGlideModule;
.source "GeneratedAppGlideModuleImpl.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J \u0010\u0008\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0016J\u0018\u0010\u000e\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0008\u0010\u0011\u001a\u00020\u0012H\u0016R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/bumptech/glide/GeneratedAppGlideModuleImpl;",
        "Lcom/bumptech/glide/GeneratedAppGlideModule;",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "appGlideModule",
        "Lexpo/modules/image/ExpoImageAppGlideModule;",
        "registerComponents",
        "",
        "glide",
        "Lcom/bumptech/glide/Glide;",
        "registry",
        "Lcom/bumptech/glide/Registry;",
        "applyOptions",
        "builder",
        "Lcom/bumptech/glide/GlideBuilder;",
        "isManifestParsingEnabled",
        "",
        "expo-image_release"
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
.field private final appGlideModule:Lexpo/modules/image/ExpoImageAppGlideModule;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Lcom/bumptech/glide/GeneratedAppGlideModule;-><init>()V

    .line 24
    new-instance p1, Lexpo/modules/image/ExpoImageAppGlideModule;

    invoke-direct {p1}, Lexpo/modules/image/ExpoImageAppGlideModule;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/GeneratedAppGlideModuleImpl;->appGlideModule:Lexpo/modules/image/ExpoImageAppGlideModule;

    return-void
.end method


# virtual methods
.method public applyOptions(Landroid/content/Context;Lcom/bumptech/glide/GlideBuilder;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/bumptech/glide/GeneratedAppGlideModuleImpl;->appGlideModule:Lexpo/modules/image/ExpoImageAppGlideModule;

    invoke-virtual {v0, p1, p2}, Lexpo/modules/image/ExpoImageAppGlideModule;->applyOptions(Landroid/content/Context;Lcom/bumptech/glide/GlideBuilder;)V

    return-void
.end method

.method public isManifestParsingEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public registerComponents(Landroid/content/Context;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/Registry;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "glide"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "registry"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    new-instance v0, Lcom/github/penfeizhou/animation/glide/GlideAnimationModule;

    invoke-direct {v0}, Lcom/github/penfeizhou/animation/glide/GlideAnimationModule;-><init>()V

    invoke-virtual {v0, p1, p2, p3}, Lcom/github/penfeizhou/animation/glide/GlideAnimationModule;->registerComponents(Landroid/content/Context;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/Registry;)V

    .line 33
    new-instance v0, Lcom/bumptech/glide/integration/avif/AvifGlideModule;

    invoke-direct {v0}, Lcom/bumptech/glide/integration/avif/AvifGlideModule;-><init>()V

    invoke-virtual {v0, p1, p2, p3}, Lcom/bumptech/glide/integration/avif/AvifGlideModule;->registerComponents(Landroid/content/Context;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/Registry;)V

    .line 34
    new-instance v0, Lcom/bumptech/glide/integration/okhttp3/OkHttpLibraryGlideModule;

    invoke-direct {v0}, Lcom/bumptech/glide/integration/okhttp3/OkHttpLibraryGlideModule;-><init>()V

    invoke-virtual {v0, p1, p2, p3}, Lcom/bumptech/glide/integration/okhttp3/OkHttpLibraryGlideModule;->registerComponents(Landroid/content/Context;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/Registry;)V

    .line 35
    new-instance v0, Lexpo/modules/image/svg/SVGModule;

    invoke-direct {v0}, Lexpo/modules/image/svg/SVGModule;-><init>()V

    invoke-virtual {v0, p1, p2, p3}, Lexpo/modules/image/svg/SVGModule;->registerComponents(Landroid/content/Context;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/Registry;)V

    .line 36
    new-instance v0, Lexpo/modules/image/blurhash/BlurhashModule;

    invoke-direct {v0}, Lexpo/modules/image/blurhash/BlurhashModule;-><init>()V

    invoke-virtual {v0, p1, p2, p3}, Lexpo/modules/image/blurhash/BlurhashModule;->registerComponents(Landroid/content/Context;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/Registry;)V

    .line 37
    new-instance v0, Lexpo/modules/image/dataurls/Base64Module;

    invoke-direct {v0}, Lexpo/modules/image/dataurls/Base64Module;-><init>()V

    invoke-virtual {v0, p1, p2, p3}, Lexpo/modules/image/dataurls/Base64Module;->registerComponents(Landroid/content/Context;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/Registry;)V

    .line 38
    new-instance v0, Lexpo/modules/image/decodedsource/DecodedModule;

    invoke-direct {v0}, Lexpo/modules/image/decodedsource/DecodedModule;-><init>()V

    invoke-virtual {v0, p1, p2, p3}, Lexpo/modules/image/decodedsource/DecodedModule;->registerComponents(Landroid/content/Context;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/Registry;)V

    .line 39
    new-instance v0, Lexpo/modules/image/thumbhash/ThumbhashModule;

    invoke-direct {v0}, Lexpo/modules/image/thumbhash/ThumbhashModule;-><init>()V

    invoke-virtual {v0, p1, p2, p3}, Lexpo/modules/image/thumbhash/ThumbhashModule;->registerComponents(Landroid/content/Context;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/Registry;)V

    .line 40
    new-instance v0, Lexpo/modules/image/okhttp/ExpoImageOkHttpClientGlideModule;

    invoke-direct {v0}, Lexpo/modules/image/okhttp/ExpoImageOkHttpClientGlideModule;-><init>()V

    invoke-virtual {v0, p1, p2, p3}, Lexpo/modules/image/okhttp/ExpoImageOkHttpClientGlideModule;->registerComponents(Landroid/content/Context;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/Registry;)V

    .line 41
    iget-object v0, p0, Lcom/bumptech/glide/GeneratedAppGlideModuleImpl;->appGlideModule:Lexpo/modules/image/ExpoImageAppGlideModule;

    invoke-virtual {v0, p1, p2, p3}, Lexpo/modules/image/ExpoImageAppGlideModule;->registerComponents(Landroid/content/Context;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/Registry;)V

    return-void
.end method
