.class public final Lexpo/modules/location/taskConsumers/GeofencingTaskConsumer$Companion;
.super Ljava/lang/Object;
.source "GeofencingTaskConsumer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/location/taskConsumers/GeofencingTaskConsumer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0008H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lexpo/modules/location/taskConsumers/GeofencingTaskConsumer$Companion;",
        "",
        "<init>",
        "()V",
        "TAG",
        "",
        "getErrorString",
        "errorCode",
        "",
        "expo-location_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lexpo/modules/location/taskConsumers/GeofencingTaskConsumer$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$getErrorString(Lexpo/modules/location/taskConsumers/GeofencingTaskConsumer$Companion;I)Ljava/lang/String;
    .locals 0

    .line 233
    invoke-direct {p0, p1}, Lexpo/modules/location/taskConsumers/GeofencingTaskConsumer$Companion;->getErrorString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final getErrorString(I)Ljava/lang/String;
    .locals 0

    packed-switch p1, :pswitch_data_0

    .line 241
    const-string p1, "Unknown geofencing error."

    return-object p1

    .line 240
    :pswitch_0
    const-string p1, "Too many pending intents."

    return-object p1

    .line 239
    :pswitch_1
    const-string p1, "Too many geofences."

    return-object p1

    .line 238
    :pswitch_2
    const-string p1, "Geofencing not available."

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
