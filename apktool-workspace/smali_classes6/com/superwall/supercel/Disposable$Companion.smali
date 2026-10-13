.class public final Lcom/superwall/supercel/Disposable$Companion;
.super Ljava/lang/Object;
.source "CEL.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/superwall/supercel/Disposable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J#\u0010\u0003\u001a\u00020\u00042\u0016\u0010\u0005\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00010\u0006\"\u0004\u0018\u00010\u0001\u00a2\u0006\u0002\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/superwall/supercel/Disposable$Companion;",
        "",
        "()V",
        "destroy",
        "",
        "args",
        "",
        "([Ljava/lang/Object;)V",
        "supercel_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lcom/superwall/supercel/Disposable$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/superwall/supercel/Disposable$Companion;

    invoke-direct {v0}, Lcom/superwall/supercel/Disposable$Companion;-><init>()V

    sput-object v0, Lcom/superwall/supercel/Disposable$Companion;->$$INSTANCE:Lcom/superwall/supercel/Disposable$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1052
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs destroy([Ljava/lang/Object;)V
    .locals 8

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1054
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_7

    aget-object v3, p1, v2

    .line 1056
    instance-of v4, v3, Lcom/superwall/supercel/Disposable;

    if-eqz v4, :cond_0

    check-cast v3, Lcom/superwall/supercel/Disposable;

    invoke-interface {v3}, Lcom/superwall/supercel/Disposable;->destroy()V

    goto :goto_4

    .line 1057
    :cond_0
    instance-of v4, v3, Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    .line 1058
    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_6

    .line 1059
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 1060
    instance-of v7, v6, Lcom/superwall/supercel/Disposable;

    if-eqz v7, :cond_1

    .line 1061
    check-cast v6, Lcom/superwall/supercel/Disposable;

    invoke-interface {v6}, Lcom/superwall/supercel/Disposable;->destroy()V

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1065
    :cond_2
    instance-of v4, v3, Ljava/util/Map;

    if-eqz v4, :cond_4

    .line 1066
    check-cast v3, Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 1067
    instance-of v5, v4, Lcom/superwall/supercel/Disposable;

    if-eqz v5, :cond_3

    .line 1068
    check-cast v4, Lcom/superwall/supercel/Disposable;

    invoke-interface {v4}, Lcom/superwall/supercel/Disposable;->destroy()V

    goto :goto_2

    .line 1072
    :cond_4
    instance-of v4, v3, Ljava/lang/Iterable;

    if-eqz v4, :cond_6

    .line 1073
    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 1074
    instance-of v5, v4, Lcom/superwall/supercel/Disposable;

    if-eqz v5, :cond_5

    .line 1075
    check-cast v4, Lcom/superwall/supercel/Disposable;

    invoke-interface {v4}, Lcom/superwall/supercel/Disposable;->destroy()V

    goto :goto_3

    :cond_6
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method
