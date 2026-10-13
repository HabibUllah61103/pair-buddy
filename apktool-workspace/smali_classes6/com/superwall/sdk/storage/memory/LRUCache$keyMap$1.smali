.class public final Lcom/superwall/sdk/storage/memory/LRUCache$keyMap$1;
.super Ljava/util/LinkedHashMap;
.source "LRUCache.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/superwall/sdk/storage/memory/LRUCache;-><init>(Lcom/superwall/sdk/storage/memory/GenericCache;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "TK;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\'\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u001e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00020\u0001j\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u0002`\u0003J\u001c\u0010\u0004\u001a\u00020\u00022\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00020\u0006H\u0014\u00a8\u0006\u0007"
    }
    d2 = {
        "com/superwall/sdk/storage/memory/LRUCache$keyMap$1",
        "Ljava/util/LinkedHashMap;",
        "",
        "Lkotlin/collections/LinkedHashMap;",
        "removeEldestEntry",
        "eldest",
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
.field final synthetic this$0:Lcom/superwall/sdk/storage/memory/LRUCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/superwall/sdk/storage/memory/LRUCache<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/superwall/sdk/storage/memory/LRUCache;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/storage/memory/LRUCache<",
            "TK;TV;>;I)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/superwall/sdk/storage/memory/LRUCache$keyMap$1;->this$0:Lcom/superwall/sdk/storage/memory/LRUCache;

    const/high16 p1, 0x3f400000    # 0.75f

    const/4 v0, 0x1

    .line 25
    invoke-direct {p0, p2, p1, v0}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-void
.end method


# virtual methods
.method public bridge containsValue(Ljava/lang/Boolean;)Z
    .locals 0

    .line 25
    invoke-super {p0, p1}, Ljava/util/LinkedHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final bridge containsValue(Ljava/lang/Object;)Z
    .locals 1

    .line 25
    instance-of v0, p1, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/superwall/sdk/storage/memory/LRUCache$keyMap$1;->containsValue(Ljava/lang/Boolean;)Z

    move-result p1

    return p1
.end method

.method public final bridge entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    .line 25
    invoke-virtual {p0}, Lcom/superwall/sdk/storage/memory/LRUCache$keyMap$1;->getEntries()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge getEntries()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Object;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    .line 25
    invoke-super {p0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge getKeys()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 25
    invoke-super {p0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge getSize()I
    .locals 1

    .line 25
    invoke-super {p0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    return v0
.end method

.method public bridge getValues()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 25
    invoke-super {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final bridge keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 25
    invoke-virtual {p0}, Lcom/superwall/sdk/storage/memory/LRUCache$keyMap$1;->getKeys()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge remove(Ljava/lang/Object;Ljava/lang/Boolean;)Z
    .locals 0

    .line 25
    invoke-super {p0, p1, p2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final bridge remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .line 25
    instance-of v0, p2, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lcom/superwall/sdk/storage/memory/LRUCache$keyMap$1;->remove(Ljava/lang/Object;Ljava/lang/Boolean;)Z

    move-result p1

    return p1
.end method

.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "eldest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-virtual {p0}, Lcom/superwall/sdk/storage/memory/LRUCache$keyMap$1;->size()I

    move-result v0

    iget-object v1, p0, Lcom/superwall/sdk/storage/memory/LRUCache$keyMap$1;->this$0:Lcom/superwall/sdk/storage/memory/LRUCache;

    invoke-static {v1}, Lcom/superwall/sdk/storage/memory/LRUCache;->access$getMinimalSize$p(Lcom/superwall/sdk/storage/memory/LRUCache;)I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 28
    iget-object v1, p0, Lcom/superwall/sdk/storage/memory/LRUCache$keyMap$1;->this$0:Lcom/superwall/sdk/storage/memory/LRUCache;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/superwall/sdk/storage/memory/LRUCache;->access$setEldestKeyToRemove$p(Lcom/superwall/sdk/storage/memory/LRUCache;Ljava/lang/Object;)V

    :cond_1
    return v0
.end method

.method public final bridge size()I
    .locals 1

    .line 25
    invoke-virtual {p0}, Lcom/superwall/sdk/storage/memory/LRUCache$keyMap$1;->getSize()I

    move-result v0

    return v0
.end method

.method public final bridge values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 25
    invoke-virtual {p0}, Lcom/superwall/sdk/storage/memory/LRUCache$keyMap$1;->getValues()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
