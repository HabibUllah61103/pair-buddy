.class public final Lcom/superwall/sdk/storage/SurveyAssignmentKey;
.super Ljava/lang/Object;
.source "CacheKeys.kt"

# interfaces
.implements Lcom/superwall/sdk/storage/Storable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/superwall/sdk/storage/Storable<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007R\u0014\u0010\u0008\u001a\u00020\t8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000bR\u001a\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00020\r8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/superwall/sdk/storage/SurveyAssignmentKey;",
        "Lcom/superwall/sdk/storage/Storable;",
        "",
        "<init>",
        "()V",
        "key",
        "getKey",
        "()Ljava/lang/String;",
        "directory",
        "Lcom/superwall/sdk/storage/SearchPathDirectory;",
        "getDirectory",
        "()Lcom/superwall/sdk/storage/SearchPathDirectory;",
        "serializer",
        "Lkotlinx/serialization/KSerializer;",
        "getSerializer",
        "()Lkotlinx/serialization/KSerializer;",
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


# static fields
.field public static final INSTANCE:Lcom/superwall/sdk/storage/SurveyAssignmentKey;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/superwall/sdk/storage/SurveyAssignmentKey;

    invoke-direct {v0}, Lcom/superwall/sdk/storage/SurveyAssignmentKey;-><init>()V

    sput-object v0, Lcom/superwall/sdk/storage/SurveyAssignmentKey;->INSTANCE:Lcom/superwall/sdk/storage/SurveyAssignmentKey;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public file(Landroid/content/Context;)Ljava/io/File;
    .locals 0

    .line 267
    invoke-static {p0, p1}, Lcom/superwall/sdk/storage/Storable$DefaultImpls;->file(Lcom/superwall/sdk/storage/Storable;Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public getDirectory()Lcom/superwall/sdk/storage/SearchPathDirectory;
    .locals 1

    .line 272
    sget-object v0, Lcom/superwall/sdk/storage/SearchPathDirectory;->USER_SPECIFIC_DOCUMENTS:Lcom/superwall/sdk/storage/SearchPathDirectory;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 269
    const-string v0, "store.surveyAssignmentKey"

    return-object v0
.end method

.method public getSerializer()Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 275
    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-static {v0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->serializer(Lkotlin/jvm/internal/StringCompanionObject;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    return-object v0
.end method
