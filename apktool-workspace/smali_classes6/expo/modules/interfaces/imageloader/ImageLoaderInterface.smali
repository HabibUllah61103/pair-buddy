.class public interface abstract Lexpo/modules/interfaces/imageloader/ImageLoaderInterface;
.super Ljava/lang/Object;
.source "ImageLoaderInterface.kt"

# interfaces
.implements Lexpo/modules/kotlin/services/Service;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/interfaces/imageloader/ImageLoaderInterface$ResultListener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008f\u0018\u00002\u00020\u0001:\u0001\u000bJ\u0016\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0005\u001a\u00020\u0006H&J\u0018\u0010\u0002\u001a\u00020\u00072\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\tH&J\u0016\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0005\u001a\u00020\u0006H&J\u0018\u0010\n\u001a\u00020\u00072\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\tH&\u00a8\u0006\u000c"
    }
    d2 = {
        "Lexpo/modules/interfaces/imageloader/ImageLoaderInterface;",
        "Lexpo/modules/kotlin/services/Service;",
        "loadImageForDisplayFromURL",
        "Ljava/util/concurrent/Future;",
        "Landroid/graphics/Bitmap;",
        "url",
        "",
        "",
        "resultListener",
        "Lexpo/modules/interfaces/imageloader/ImageLoaderInterface$ResultListener;",
        "loadImageForManipulationFromURL",
        "ResultListener",
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


# virtual methods
.method public abstract loadImageForDisplayFromURL(Ljava/lang/String;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end method

.method public abstract loadImageForDisplayFromURL(Ljava/lang/String;Lexpo/modules/interfaces/imageloader/ImageLoaderInterface$ResultListener;)V
.end method

.method public abstract loadImageForManipulationFromURL(Ljava/lang/String;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end method

.method public abstract loadImageForManipulationFromURL(Ljava/lang/String;Lexpo/modules/interfaces/imageloader/ImageLoaderInterface$ResultListener;)V
.end method
