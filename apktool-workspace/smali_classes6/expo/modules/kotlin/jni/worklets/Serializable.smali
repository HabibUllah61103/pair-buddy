.class public final Lexpo/modules/kotlin/jni/worklets/Serializable;
.super Ljava/lang/Object;
.source "Serializable.kt"

# interfaces
.implements Lexpo/modules/kotlin/jni/Destructible;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/kotlin/jni/worklets/Serializable$ValueType;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSerializable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Serializable.kt\nexpo/modules/kotlin/jni/worklets/Serializable\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,46:1\n230#2,2:47\n*S KotlinDebug\n*F\n+ 1 Serializable.kt\nexpo/modules/kotlin/jni/worklets/Serializable\n*L\n35#1:47,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u000eB\u0019\u0008\u0003\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0008\u0010\u000b\u001a\u00020\u000cH\u0004J\u0008\u0010\r\u001a\u00020\u0003H\u0016R\u0010\u0010\u0002\u001a\u00020\u00038\u0002X\u0083\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0004\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u000f"
    }
    d2 = {
        "Lexpo/modules/kotlin/jni/worklets/Serializable;",
        "Lexpo/modules/kotlin/jni/Destructible;",
        "mHybridData",
        "Lcom/facebook/jni/HybridData;",
        "type",
        "",
        "<init>",
        "(Lcom/facebook/jni/HybridData;I)V",
        "Lexpo/modules/kotlin/jni/worklets/Serializable$ValueType;",
        "getType",
        "()Lexpo/modules/kotlin/jni/worklets/Serializable$ValueType;",
        "finalize",
        "",
        "getHybridDataForJNIDeallocator",
        "ValueType",
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

.field private final type:Lexpo/modules/kotlin/jni/worklets/Serializable$ValueType;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lcom/facebook/jni/HybridData;I)V
    .locals 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lexpo/modules/kotlin/jni/worklets/Serializable;->mHybridData:Lcom/facebook/jni/HybridData;

    .line 35
    invoke-static {}, Lexpo/modules/kotlin/jni/worklets/Serializable$ValueType;->getEntries()Lkotlin/enums/EnumEntries;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 47
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/kotlin/jni/worklets/Serializable$ValueType;

    .line 35
    invoke-virtual {v0}, Lexpo/modules/kotlin/jni/worklets/Serializable$ValueType;->getValue()I

    move-result v1

    if-ne v1, p2, :cond_0

    iput-object v0, p0, Lexpo/modules/kotlin/jni/worklets/Serializable;->type:Lexpo/modules/kotlin/jni/worklets/Serializable$ValueType;

    return-void

    .line 48
    :cond_1
    new-instance p1, Ljava/util/NoSuchElementException;

    const-string p2, "Collection contains no element matching the predicate."

    invoke-direct {p1, p2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected final finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lexpo/modules/kotlin/jni/worklets/Serializable;->mHybridData:Lcom/facebook/jni/HybridData;

    invoke-virtual {v0}, Lcom/facebook/jni/HybridData;->resetNative()V

    return-void
.end method

.method public getHybridDataForJNIDeallocator()Lcom/facebook/jni/HybridData;
    .locals 1

    .line 43
    iget-object v0, p0, Lexpo/modules/kotlin/jni/worklets/Serializable;->mHybridData:Lcom/facebook/jni/HybridData;

    return-object v0
.end method

.method public final getType()Lexpo/modules/kotlin/jni/worklets/Serializable$ValueType;
    .locals 1

    .line 35
    iget-object v0, p0, Lexpo/modules/kotlin/jni/worklets/Serializable;->type:Lexpo/modules/kotlin/jni/worklets/Serializable$ValueType;

    return-object v0
.end method
