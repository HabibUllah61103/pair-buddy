.class public final Lexpo/modules/kotlin/classcomponent/ClassDefinitionData;
.super Ljava/lang/Object;
.source "ClassDefinitionData.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001BO\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00050\u0007\u0012\u0012\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\t0\u0007\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u001d\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00050\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u001d\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\t0\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0015R\u0011\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u0011\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u0019R\u0017\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u001c0\u001b8F\u00a2\u0006\u0006\u001a\u0004\u0008\u001d\u0010\u001e\u00a8\u0006\u001f"
    }
    d2 = {
        "Lexpo/modules/kotlin/classcomponent/ClassDefinitionData;",
        "",
        "name",
        "",
        "constructor",
        "Lexpo/modules/kotlin/functions/SyncFunctionComponent;",
        "staticSyncFunctions",
        "",
        "staticAsyncFunctions",
        "Lexpo/modules/kotlin/functions/BaseAsyncFunctionComponent;",
        "objectDefinition",
        "Lexpo/modules/kotlin/objects/ObjectDefinitionData;",
        "isSharedRef",
        "",
        "<init>",
        "(Ljava/lang/String;Lexpo/modules/kotlin/functions/SyncFunctionComponent;Ljava/util/Map;Ljava/util/Map;Lexpo/modules/kotlin/objects/ObjectDefinitionData;Z)V",
        "getName",
        "()Ljava/lang/String;",
        "getConstructor",
        "()Lexpo/modules/kotlin/functions/SyncFunctionComponent;",
        "getStaticSyncFunctions",
        "()Ljava/util/Map;",
        "getStaticAsyncFunctions",
        "getObjectDefinition",
        "()Lexpo/modules/kotlin/objects/ObjectDefinitionData;",
        "()Z",
        "staticFunctions",
        "Lexpo/modules/kotlin/ConcatIterator;",
        "Lexpo/modules/kotlin/functions/AnyFunction;",
        "getStaticFunctions",
        "()Lexpo/modules/kotlin/ConcatIterator;",
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
.field private final constructor:Lexpo/modules/kotlin/functions/SyncFunctionComponent;

.field private final isSharedRef:Z

.field private final name:Ljava/lang/String;

.field private final objectDefinition:Lexpo/modules/kotlin/objects/ObjectDefinitionData;

.field private final staticAsyncFunctions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lexpo/modules/kotlin/functions/BaseAsyncFunctionComponent;",
            ">;"
        }
    .end annotation
.end field

.field private final staticSyncFunctions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lexpo/modules/kotlin/functions/SyncFunctionComponent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lexpo/modules/kotlin/functions/SyncFunctionComponent;Ljava/util/Map;Ljava/util/Map;Lexpo/modules/kotlin/objects/ObjectDefinitionData;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lexpo/modules/kotlin/functions/SyncFunctionComponent;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lexpo/modules/kotlin/functions/SyncFunctionComponent;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lexpo/modules/kotlin/functions/BaseAsyncFunctionComponent;",
            ">;",
            "Lexpo/modules/kotlin/objects/ObjectDefinitionData;",
            "Z)V"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "constructor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "staticSyncFunctions"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "staticAsyncFunctions"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "objectDefinition"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lexpo/modules/kotlin/classcomponent/ClassDefinitionData;->name:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Lexpo/modules/kotlin/classcomponent/ClassDefinitionData;->constructor:Lexpo/modules/kotlin/functions/SyncFunctionComponent;

    .line 11
    iput-object p3, p0, Lexpo/modules/kotlin/classcomponent/ClassDefinitionData;->staticSyncFunctions:Ljava/util/Map;

    .line 12
    iput-object p4, p0, Lexpo/modules/kotlin/classcomponent/ClassDefinitionData;->staticAsyncFunctions:Ljava/util/Map;

    .line 13
    iput-object p5, p0, Lexpo/modules/kotlin/classcomponent/ClassDefinitionData;->objectDefinition:Lexpo/modules/kotlin/objects/ObjectDefinitionData;

    .line 14
    iput-boolean p6, p0, Lexpo/modules/kotlin/classcomponent/ClassDefinitionData;->isSharedRef:Z

    return-void
.end method


# virtual methods
.method public final getConstructor()Lexpo/modules/kotlin/functions/SyncFunctionComponent;
    .locals 1

    .line 10
    iget-object v0, p0, Lexpo/modules/kotlin/classcomponent/ClassDefinitionData;->constructor:Lexpo/modules/kotlin/functions/SyncFunctionComponent;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lexpo/modules/kotlin/classcomponent/ClassDefinitionData;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getObjectDefinition()Lexpo/modules/kotlin/objects/ObjectDefinitionData;
    .locals 1

    .line 13
    iget-object v0, p0, Lexpo/modules/kotlin/classcomponent/ClassDefinitionData;->objectDefinition:Lexpo/modules/kotlin/objects/ObjectDefinitionData;

    return-object v0
.end method

.method public final getStaticAsyncFunctions()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lexpo/modules/kotlin/functions/BaseAsyncFunctionComponent;",
            ">;"
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lexpo/modules/kotlin/classcomponent/ClassDefinitionData;->staticAsyncFunctions:Ljava/util/Map;

    return-object v0
.end method

.method public final getStaticFunctions()Lexpo/modules/kotlin/ConcatIterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lexpo/modules/kotlin/ConcatIterator<",
            "Lexpo/modules/kotlin/functions/AnyFunction;",
            ">;"
        }
    .end annotation

    .line 17
    new-instance v0, Lexpo/modules/kotlin/ConcatIterator;

    iget-object v1, p0, Lexpo/modules/kotlin/classcomponent/ClassDefinitionData;->staticSyncFunctions:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iget-object v2, p0, Lexpo/modules/kotlin/classcomponent/ClassDefinitionData;->staticAsyncFunctions:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lexpo/modules/kotlin/ConcatIterator;-><init>(Ljava/util/Iterator;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public final getStaticSyncFunctions()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lexpo/modules/kotlin/functions/SyncFunctionComponent;",
            ">;"
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lexpo/modules/kotlin/classcomponent/ClassDefinitionData;->staticSyncFunctions:Ljava/util/Map;

    return-object v0
.end method

.method public final isSharedRef()Z
    .locals 1

    .line 14
    iget-boolean v0, p0, Lexpo/modules/kotlin/classcomponent/ClassDefinitionData;->isSharedRef:Z

    return v0
.end method
