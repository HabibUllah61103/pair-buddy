.class public final Lcom/superwall/sdk/utilities/ErrorTracker;
.super Ljava/lang/Object;
.source "ErrorTracking.kt"

# interfaces
.implements Lcom/superwall/sdk/utilities/ErrorTracking;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nErrorTracking.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ErrorTracking.kt\ncom/superwall/sdk/utilities/ErrorTracker\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n+ 4 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,165:1\n1557#2:166\n1628#2,2:167\n1630#2:173\n975#3:169\n1046#3,3:170\n12574#4,2:174\n*S KotlinDebug\n*F\n+ 1 ErrorTracking.kt\ncom/superwall/sdk/utilities/ErrorTracker\n*L\n76#1:166\n76#1:167,2\n76#1:173\n94#1:169\n94#1:170,3\n98#1:174,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0003\n\u0002\u0010\u0003\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B=\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012$\u0008\u0002\u0010\u0006\u001a\u001e\u0008\u0001\u0012\u0004\u0012\u00020\u0008\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u0007\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\n\u0010\u000f\u001a\u00020\u0010*\u00020\u0010J#\u0010\u0011\u001a\u00020\u0012*\u00020\u00102\u0012\u0010\u0013\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00100\u0014\"\u00020\u0010\u00a2\u0006\u0002\u0010\u0015J\u0010\u0010\u0016\u001a\u00020\n2\u0006\u0010\u0017\u001a\u00020\u0018H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R,\u0010\u0006\u001a\u001e\u0008\u0001\u0012\u0004\u0012\u00020\u0008\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u0007X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u000e\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/superwall/sdk/utilities/ErrorTracker;",
        "Lcom/superwall/sdk/utilities/ErrorTracking;",
        "scope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "cache",
        "Lcom/superwall/sdk/storage/LocalStorage;",
        "track",
        "Lkotlin/Function2;",
        "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$ErrorThrown;",
        "Lkotlin/coroutines/Continuation;",
        "",
        "",
        "<init>",
        "(Lkotlinx/coroutines/CoroutineScope;Lcom/superwall/sdk/storage/LocalStorage;Lkotlin/jvm/functions/Function2;)V",
        "Lkotlin/jvm/functions/Function2;",
        "replaceNonSuperwallPackages",
        "",
        "containsAny",
        "",
        "strings",
        "",
        "(Ljava/lang/String;[Ljava/lang/String;)Z",
        "trackError",
        "throwable",
        "",
        "superwall_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final cache:Lcom/superwall/sdk/storage/LocalStorage;

.field private final track:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$ErrorThrown;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lcom/superwall/sdk/storage/LocalStorage;Lkotlin/jvm/functions/Function2;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lcom/superwall/sdk/storage/LocalStorage;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/superwall/sdk/analytics/internal/trackable/InternalSuperwallEvent$ErrorThrown;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "scope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cache"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "track"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p2, p0, Lcom/superwall/sdk/utilities/ErrorTracker;->cache:Lcom/superwall/sdk/storage/LocalStorage;

    .line 50
    iput-object p3, p0, Lcom/superwall/sdk/utilities/ErrorTracker;->track:Lkotlin/jvm/functions/Function2;

    .line 57
    sget-object p3, Lcom/superwall/sdk/storage/ErrorLog;->INSTANCE:Lcom/superwall/sdk/storage/ErrorLog;

    check-cast p3, Lcom/superwall/sdk/storage/Storable;

    invoke-virtual {p2, p3}, Lcom/superwall/sdk/storage/LocalStorage;->read(Lcom/superwall/sdk/storage/Storable;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/superwall/sdk/utilities/ErrorTracking$ErrorOccurence;

    if-eqz p2, :cond_0

    .line 59
    new-instance p3, Lcom/superwall/sdk/utilities/ErrorTracker$2;

    const/4 v0, 0x0

    invoke-direct {p3, p0, p2, v0}, Lcom/superwall/sdk/utilities/ErrorTracker$2;-><init>(Lcom/superwall/sdk/utilities/ErrorTracker;Lcom/superwall/sdk/utilities/ErrorTracking$ErrorOccurence;Lkotlin/coroutines/Continuation;)V

    move-object v4, p3

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_0
    return-void
.end method

.method public synthetic constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lcom/superwall/sdk/storage/LocalStorage;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 50
    new-instance p3, Lcom/superwall/sdk/utilities/ErrorTracker$1;

    const/4 p4, 0x0

    invoke-direct {p3, p4}, Lcom/superwall/sdk/utilities/ErrorTracker$1;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast p3, Lkotlin/jvm/functions/Function2;

    .line 47
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/superwall/sdk/utilities/ErrorTracker;-><init>(Lkotlinx/coroutines/CoroutineScope;Lcom/superwall/sdk/storage/LocalStorage;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public static final synthetic access$getCache$p(Lcom/superwall/sdk/utilities/ErrorTracker;)Lcom/superwall/sdk/storage/LocalStorage;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/superwall/sdk/utilities/ErrorTracker;->cache:Lcom/superwall/sdk/storage/LocalStorage;

    return-object p0
.end method

.method public static final synthetic access$getTrack$p(Lcom/superwall/sdk/utilities/ErrorTracker;)Lkotlin/jvm/functions/Function2;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/superwall/sdk/utilities/ErrorTracker;->track:Lkotlin/jvm/functions/Function2;

    return-object p0
.end method


# virtual methods
.method public final varargs containsAny(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 7

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "strings"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p2, v2

    .line 98
    move-object v4, p1

    check-cast v4, Ljava/lang/CharSequence;

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v4, v3, v1, v5, v6}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final replaceNonSuperwallPackages(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Lkotlin/text/StringsKt;->lines(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 167
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 168
    check-cast v2, Ljava/lang/String;

    const/16 v3, 0xc

    .line 78
    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "com.superwall.sdk"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 79
    const-string v4, "com.superwall.supercel"

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const/4 v4, 0x2

    .line 80
    const-string v6, "java.lang"

    aput-object v6, v3, v4

    const/4 v4, 0x3

    .line 81
    const-string v6, "net.java.dev.jna"

    aput-object v6, v3, v4

    const/4 v4, 0x4

    .line 82
    const-string v6, "kotlin."

    aput-object v6, v3, v4

    const/4 v4, 0x5

    .line 83
    const-string v6, "kotlinx."

    aput-object v6, v3, v4

    const/4 v4, 0x6

    .line 84
    const-string v6, "android.os"

    aput-object v6, v3, v4

    const/4 v4, 0x7

    .line 85
    const-string v6, "androidx.os"

    aput-object v6, v3, v4

    const/16 v4, 0x8

    .line 86
    const-string v6, "com.android."

    aput-object v6, v3, v4

    const/16 v4, 0x9

    .line 87
    const-string v6, "com.google."

    aput-object v6, v3, v4

    .line 88
    const-string v4, "org.threeten."

    aput-object v4, v3, v1

    const/16 v4, 0xb

    .line 89
    const-string v6, "com.revenuecat.purchases"

    aput-object v6, v3, v4

    .line 77
    invoke-virtual {p0, v2, v3}, Lcom/superwall/sdk/utilities/ErrorTracker;->containsAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_3

    .line 94
    :cond_0
    check-cast v2, Ljava/lang/CharSequence;

    .line 169
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v3, Ljava/util/Collection;

    .line 170
    :goto_1
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v5, v4, :cond_2

    invoke-interface {v2, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 94
    invoke-static {v4}, Ljava/lang/Character;->isLetter(C)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v4, "*"

    goto :goto_2

    :cond_1
    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    .line 171
    :goto_2
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 172
    :cond_2
    move-object v2, v3

    check-cast v2, Ljava/util/List;

    .line 168
    :goto_3
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 173
    :cond_3
    check-cast v0, Ljava/util/List;

    .line 166
    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    .line 96
    const-string p1, "\n"

    move-object v2, p1

    check-cast v2, Ljava/lang/CharSequence;

    const/16 v8, 0x3e

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v9}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public trackError(Ljava/lang/Throwable;)V
    .locals 8

    const-string v0, "throwable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    move-object v3, v0

    .line 104
    invoke-static {p1}, Lkotlin/ExceptionsKt;->stackTraceToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/superwall/sdk/utilities/ErrorTracker;->replaceNonSuperwallPackages(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 105
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 106
    invoke-static {p1}, Lcom/superwall/sdk/utilities/ErrorTrackingKt;->isFatal(Ljava/lang/Throwable;)Z

    move-result v7

    .line 107
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string p1, "getSimpleName(...)"

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    new-instance v1, Lcom/superwall/sdk/utilities/ErrorTracking$ErrorOccurence;

    invoke-direct/range {v1 .. v7}, Lcom/superwall/sdk/utilities/ErrorTracking$ErrorOccurence;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 109
    iget-object p1, p0, Lcom/superwall/sdk/utilities/ErrorTracker;->cache:Lcom/superwall/sdk/storage/LocalStorage;

    sget-object v0, Lcom/superwall/sdk/storage/ErrorLog;->INSTANCE:Lcom/superwall/sdk/storage/ErrorLog;

    check-cast v0, Lcom/superwall/sdk/storage/Storable;

    invoke-virtual {p1, v0, v1}, Lcom/superwall/sdk/storage/LocalStorage;->write(Lcom/superwall/sdk/storage/Storable;Ljava/lang/Object;)V

    return-void
.end method
