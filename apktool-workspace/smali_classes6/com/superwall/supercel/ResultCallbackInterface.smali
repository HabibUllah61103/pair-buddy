.class public interface abstract Lcom/superwall/supercel/ResultCallbackInterface;
.super Ljava/lang/Object;
.source "CEL.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/supercel/ResultCallbackInterface$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008f\u0018\u0000 \u00062\u00020\u0001:\u0001\u0006J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/superwall/supercel/ResultCallbackInterface;",
        "",
        "onResult",
        "",
        "result",
        "",
        "Companion",
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
.field public static final Companion:Lcom/superwall/supercel/ResultCallbackInterface$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/superwall/supercel/ResultCallbackInterface$Companion;->$$INSTANCE:Lcom/superwall/supercel/ResultCallbackInterface$Companion;

    sput-object v0, Lcom/superwall/supercel/ResultCallbackInterface;->Companion:Lcom/superwall/supercel/ResultCallbackInterface$Companion;

    return-void
.end method


# virtual methods
.method public abstract onResult(Ljava/lang/String;)V
.end method
