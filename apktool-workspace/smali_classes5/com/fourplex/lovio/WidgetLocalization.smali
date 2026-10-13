.class public final Lcom/fourplex/lovio/WidgetLocalization;
.super Ljava/lang/Object;
.source "WidgetSupport.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWidgetSupport.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WidgetSupport.kt\ncom/fourplex/lovio/WidgetLocalization\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,502:1\n1#2:503\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0016\u0010\u0008\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0007J\u000e\u0010\u000c\u001a\u00020\r2\u0006\u0010\t\u001a\u00020\nJ\u0016\u0010\u000e\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0007J\u0010\u0010\u000f\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\nH\u0002J\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u00062\u0006\u0010\t\u001a\u00020\nH\u0002J\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0012\u001a\u00020\u0006H\u0002R&\u0010\u0004\u001a\u001a\u0012\u0004\u0012\u00020\u0006\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00060\u00050\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/fourplex/lovio/WidgetLocalization;",
        "",
        "<init>",
        "()V",
        "strings",
        "",
        "",
        "Lcom/fourplex/lovio/WidgetStringKey;",
        "text",
        "context",
        "Landroid/content/Context;",
        "key",
        "locale",
        "Ljava/util/Locale;",
        "lowercased",
        "resolveLanguageTag",
        "readStoredLocale",
        "normalizeLanguageTag",
        "value",
        "app_release"
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
.field public static final INSTANCE:Lcom/fourplex/lovio/WidgetLocalization;

.field private static final strings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Lcom/fourplex/lovio/WidgetStringKey;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 26

    new-instance v0, Lcom/fourplex/lovio/WidgetLocalization;

    invoke-direct {v0}, Lcom/fourplex/lovio/WidgetLocalization;-><init>()V

    sput-object v0, Lcom/fourplex/lovio/WidgetLocalization;->INSTANCE:Lcom/fourplex/lovio/WidgetLocalization;

    const/4 v0, 0x5

    .line 68
    new-array v1, v0, [Lkotlin/Pair;

    const/16 v2, 0x10

    .line 69
    new-array v3, v2, [Lkotlin/Pair;

    sget-object v4, Lcom/fourplex/lovio/WidgetStringKey;->Days:Lcom/fourplex/lovio/WidgetStringKey;

    const-string v5, "Days"

    invoke-static {v4, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 70
    sget-object v4, Lcom/fourplex/lovio/WidgetStringKey;->DaysTogether:Lcom/fourplex/lovio/WidgetStringKey;

    const-string v6, "Days Together"

    invoke-static {v4, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    .line 71
    sget-object v4, Lcom/fourplex/lovio/WidgetStringKey;->Together:Lcom/fourplex/lovio/WidgetStringKey;

    const-string v7, "together"

    invoke-static {v4, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/4 v7, 0x2

    aput-object v4, v3, v7

    .line 72
    sget-object v4, Lcom/fourplex/lovio/WidgetStringKey;->TogetherFor:Lcom/fourplex/lovio/WidgetStringKey;

    const-string v8, "Together for"

    invoke-static {v4, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/4 v8, 0x3

    aput-object v4, v3, v8

    .line 73
    sget-object v4, Lcom/fourplex/lovio/WidgetStringKey;->HoursShort:Lcom/fourplex/lovio/WidgetStringKey;

    const-string v9, "HRS"

    invoke-static {v4, v9}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/4 v9, 0x4

    aput-object v4, v3, v9

    .line 74
    sget-object v4, Lcom/fourplex/lovio/WidgetStringKey;->MinutesShort:Lcom/fourplex/lovio/WidgetStringKey;

    const-string v10, "MIN"

    invoke-static {v4, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    aput-object v4, v3, v0

    .line 75
    sget-object v4, Lcom/fourplex/lovio/WidgetStringKey;->SecondsShort:Lcom/fourplex/lovio/WidgetStringKey;

    const-string v11, "SEC"

    invoke-static {v4, v11}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/4 v11, 0x6

    aput-object v4, v3, v11

    .line 76
    sget-object v4, Lcom/fourplex/lovio/WidgetStringKey;->WaitingForDrawing:Lcom/fourplex/lovio/WidgetStringKey;

    const-string v12, "Waiting for drawing..."

    invoke-static {v4, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/4 v12, 0x7

    aput-object v4, v3, v12

    .line 77
    sget-object v4, Lcom/fourplex/lovio/WidgetStringKey;->NoMemories:Lcom/fourplex/lovio/WidgetStringKey;

    const-string v13, "No memories"

    invoke-static {v4, v13}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/16 v13, 0x8

    aput-object v4, v3, v13

    .line 78
    sget-object v4, Lcom/fourplex/lovio/WidgetStringKey;->Partner:Lcom/fourplex/lovio/WidgetStringKey;

    const-string v14, "Partner"

    invoke-static {v4, v14}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/16 v15, 0x9

    aput-object v4, v3, v15

    .line 79
    sget-object v4, Lcom/fourplex/lovio/WidgetStringKey;->You:Lcom/fourplex/lovio/WidgetStringKey;

    move/from16 v16, v0

    const-string v0, "You"

    invoke-static {v4, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v4, 0xa

    aput-object v0, v3, v4

    .line 80
    sget-object v0, Lcom/fourplex/lovio/WidgetStringKey;->DistanceTogether:Lcom/fourplex/lovio/WidgetStringKey;

    move/from16 v17, v4

    const-string v4, "We\'re together"

    invoke-static {v0, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v4, 0xb

    aput-object v0, v3, v4

    .line 81
    sget-object v0, Lcom/fourplex/lovio/WidgetStringKey;->DistancePrefix:Lcom/fourplex/lovio/WidgetStringKey;

    move/from16 v18, v4

    const-string v4, "Our distance"

    invoke-static {v0, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v4, 0xc

    aput-object v0, v3, v4

    .line 82
    sget-object v0, Lcom/fourplex/lovio/WidgetStringKey;->DistanceWaiting:Lcom/fourplex/lovio/WidgetStringKey;

    move/from16 v19, v4

    const-string v4, "Waiting"

    invoke-static {v0, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v4, 0xd

    aput-object v0, v3, v4

    .line 83
    sget-object v0, Lcom/fourplex/lovio/WidgetStringKey;->DistanceTrackingOff:Lcom/fourplex/lovio/WidgetStringKey;

    move/from16 v20, v4

    const-string v4, "Tracking Off"

    invoke-static {v0, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v4, 0xe

    aput-object v0, v3, v4

    .line 84
    sget-object v0, Lcom/fourplex/lovio/WidgetStringKey;->DistancePermission:Lcom/fourplex/lovio/WidgetStringKey;

    move/from16 v21, v4

    const-string v4, "Permission"

    invoke-static {v0, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v22, 0xf

    aput-object v0, v3, v22

    .line 68
    invoke-static {v3}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    const-string v3, "en"

    invoke-static {v3, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v1, v5

    .line 87
    new-array v0, v2, [Lkotlin/Pair;

    sget-object v3, Lcom/fourplex/lovio/WidgetStringKey;->Days:Lcom/fourplex/lovio/WidgetStringKey;

    move/from16 v23, v5

    const-string v5, "Jours"

    invoke-static {v3, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v0, v23

    .line 88
    sget-object v3, Lcom/fourplex/lovio/WidgetStringKey;->DaysTogether:Lcom/fourplex/lovio/WidgetStringKey;

    const-string v5, "Jours ensemble"

    invoke-static {v3, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v0, v6

    .line 89
    sget-object v3, Lcom/fourplex/lovio/WidgetStringKey;->Together:Lcom/fourplex/lovio/WidgetStringKey;

    const-string v5, "ensemble"

    invoke-static {v3, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v0, v7

    .line 90
    sget-object v3, Lcom/fourplex/lovio/WidgetStringKey;->TogetherFor:Lcom/fourplex/lovio/WidgetStringKey;

    const-string v5, "Ensemble depuis"

    invoke-static {v3, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v0, v8

    .line 91
    sget-object v3, Lcom/fourplex/lovio/WidgetStringKey;->HoursShort:Lcom/fourplex/lovio/WidgetStringKey;

    const-string v5, "H"

    invoke-static {v3, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v0, v9

    .line 92
    sget-object v3, Lcom/fourplex/lovio/WidgetStringKey;->MinutesShort:Lcom/fourplex/lovio/WidgetStringKey;

    invoke-static {v3, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v0, v16

    .line 93
    sget-object v3, Lcom/fourplex/lovio/WidgetStringKey;->SecondsShort:Lcom/fourplex/lovio/WidgetStringKey;

    move/from16 v24, v6

    const-string v6, "S"

    invoke-static {v3, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v0, v11

    .line 94
    sget-object v3, Lcom/fourplex/lovio/WidgetStringKey;->WaitingForDrawing:Lcom/fourplex/lovio/WidgetStringKey;

    move/from16 v25, v7

    const-string v7, "En attente d\u2019un dessin..."

    invoke-static {v3, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v0, v12

    .line 95
    sget-object v3, Lcom/fourplex/lovio/WidgetStringKey;->NoMemories:Lcom/fourplex/lovio/WidgetStringKey;

    const-string v7, "Aucun souvenir"

    invoke-static {v3, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v0, v13

    .line 96
    sget-object v3, Lcom/fourplex/lovio/WidgetStringKey;->Partner:Lcom/fourplex/lovio/WidgetStringKey;

    const-string v7, "Partenaire"

    invoke-static {v3, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v0, v15

    .line 97
    sget-object v3, Lcom/fourplex/lovio/WidgetStringKey;->You:Lcom/fourplex/lovio/WidgetStringKey;

    const-string v7, "Vous"

    invoke-static {v3, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v0, v17

    .line 98
    sget-object v3, Lcom/fourplex/lovio/WidgetStringKey;->DistanceTogether:Lcom/fourplex/lovio/WidgetStringKey;

    const-string v7, "On est ensemble"

    invoke-static {v3, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v0, v18

    .line 99
    sget-object v3, Lcom/fourplex/lovio/WidgetStringKey;->DistancePrefix:Lcom/fourplex/lovio/WidgetStringKey;

    const-string v7, "Distance"

    invoke-static {v3, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v0, v19

    .line 100
    sget-object v3, Lcom/fourplex/lovio/WidgetStringKey;->DistanceWaiting:Lcom/fourplex/lovio/WidgetStringKey;

    const-string v7, "Attente"

    invoke-static {v3, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v0, v20

    .line 101
    sget-object v3, Lcom/fourplex/lovio/WidgetStringKey;->DistanceTrackingOff:Lcom/fourplex/lovio/WidgetStringKey;

    const-string v7, "Suivi coup\u00e9"

    invoke-static {v3, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v0, v21

    .line 102
    sget-object v3, Lcom/fourplex/lovio/WidgetStringKey;->DistancePermission:Lcom/fourplex/lovio/WidgetStringKey;

    invoke-static {v3, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v0, v22

    .line 86
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    const-string v3, "fr"

    invoke-static {v3, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v1, v24

    .line 105
    new-array v0, v2, [Lkotlin/Pair;

    sget-object v3, Lcom/fourplex/lovio/WidgetStringKey;->Days:Lcom/fourplex/lovio/WidgetStringKey;

    const-string v4, "\uc77c"

    invoke-static {v3, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v0, v23

    .line 106
    sget-object v3, Lcom/fourplex/lovio/WidgetStringKey;->DaysTogether:Lcom/fourplex/lovio/WidgetStringKey;

    const-string v4, "\ud568\uaed8\ud55c \ub0a0"

    invoke-static {v3, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v0, v24

    .line 107
    sget-object v3, Lcom/fourplex/lovio/WidgetStringKey;->Together:Lcom/fourplex/lovio/WidgetStringKey;

    const-string v4, "\ud568\uaed8"

    invoke-static {v3, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v0, v25

    .line 108
    sget-object v3, Lcom/fourplex/lovio/WidgetStringKey;->TogetherFor:Lcom/fourplex/lovio/WidgetStringKey;

    const-string v4, "\ud568\uaed8\ud55c \uc2dc\uac04"

    invoke-static {v3, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v0, v8

    .line 109
    sget-object v3, Lcom/fourplex/lovio/WidgetStringKey;->HoursShort:Lcom/fourplex/lovio/WidgetStringKey;

    const-string v4, "\uc2dc"

    invoke-static {v3, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v0, v9

    .line 110
    sget-object v3, Lcom/fourplex/lovio/WidgetStringKey;->MinutesShort:Lcom/fourplex/lovio/WidgetStringKey;

    const-string v4, "\ubd84"

    invoke-static {v3, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v0, v16

    .line 111
    sget-object v3, Lcom/fourplex/lovio/WidgetStringKey;->SecondsShort:Lcom/fourplex/lovio/WidgetStringKey;

    const-string v4, "\ucd08"

    invoke-static {v3, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v0, v11

    .line 112
    sget-object v3, Lcom/fourplex/lovio/WidgetStringKey;->WaitingForDrawing:Lcom/fourplex/lovio/WidgetStringKey;

    const-string v4, "\uadf8\ub9bc\uc744 \uae30\ub2e4\ub9ac\ub294 \uc911..."

    invoke-static {v3, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v0, v12

    .line 113
    sget-object v3, Lcom/fourplex/lovio/WidgetStringKey;->NoMemories:Lcom/fourplex/lovio/WidgetStringKey;

    const-string v4, "\ucd94\uc5b5 \uc5c6\uc74c"

    invoke-static {v3, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v0, v13

    .line 114
    sget-object v3, Lcom/fourplex/lovio/WidgetStringKey;->Partner:Lcom/fourplex/lovio/WidgetStringKey;

    const-string v4, "\ud30c\ud2b8\ub108"

    invoke-static {v3, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v0, v15

    .line 115
    sget-object v3, Lcom/fourplex/lovio/WidgetStringKey;->You:Lcom/fourplex/lovio/WidgetStringKey;

    const-string v4, "\ub098"

    invoke-static {v3, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v0, v17

    .line 116
    sget-object v3, Lcom/fourplex/lovio/WidgetStringKey;->DistanceTogether:Lcom/fourplex/lovio/WidgetStringKey;

    const-string v4, "\ud568\uaed8 \uc788\uc5b4\uc694"

    invoke-static {v3, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v0, v18

    .line 117
    sget-object v3, Lcom/fourplex/lovio/WidgetStringKey;->DistancePrefix:Lcom/fourplex/lovio/WidgetStringKey;

    const-string v4, "\uc6b0\ub9ac \uac70\ub9ac"

    invoke-static {v3, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v0, v19

    .line 118
    sget-object v3, Lcom/fourplex/lovio/WidgetStringKey;->DistanceWaiting:Lcom/fourplex/lovio/WidgetStringKey;

    const-string v4, "\ub300\uae30 \uc911"

    invoke-static {v3, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v0, v20

    .line 119
    sget-object v3, Lcom/fourplex/lovio/WidgetStringKey;->DistanceTrackingOff:Lcom/fourplex/lovio/WidgetStringKey;

    const-string v4, "\ucd94\uc801 \uaebc\uc9d0"

    invoke-static {v3, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v0, v21

    .line 120
    sget-object v3, Lcom/fourplex/lovio/WidgetStringKey;->DistancePermission:Lcom/fourplex/lovio/WidgetStringKey;

    const-string v4, "\uad8c\ud55c \ud544\uc694"

    invoke-static {v3, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v0, v22

    .line 104
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    const-string v3, "ko"

    invoke-static {v3, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v1, v25

    .line 123
    new-array v0, v2, [Lkotlin/Pair;

    sget-object v3, Lcom/fourplex/lovio/WidgetStringKey;->Days:Lcom/fourplex/lovio/WidgetStringKey;

    const-string v4, "Tage"

    invoke-static {v3, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v0, v23

    .line 124
    sget-object v3, Lcom/fourplex/lovio/WidgetStringKey;->DaysTogether:Lcom/fourplex/lovio/WidgetStringKey;

    const-string v4, "Tage zusammen"

    invoke-static {v3, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v0, v24

    .line 125
    sget-object v3, Lcom/fourplex/lovio/WidgetStringKey;->Together:Lcom/fourplex/lovio/WidgetStringKey;

    const-string v4, "zusammen"

    invoke-static {v3, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v0, v25

    .line 126
    sget-object v3, Lcom/fourplex/lovio/WidgetStringKey;->TogetherFor:Lcom/fourplex/lovio/WidgetStringKey;

    const-string v4, "Zusammen seit"

    invoke-static {v3, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v0, v8

    .line 127
    sget-object v3, Lcom/fourplex/lovio/WidgetStringKey;->HoursShort:Lcom/fourplex/lovio/WidgetStringKey;

    const-string v4, "STD"

    invoke-static {v3, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v0, v9

    .line 128
    sget-object v3, Lcom/fourplex/lovio/WidgetStringKey;->MinutesShort:Lcom/fourplex/lovio/WidgetStringKey;

    invoke-static {v3, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v0, v16

    .line 129
    sget-object v3, Lcom/fourplex/lovio/WidgetStringKey;->SecondsShort:Lcom/fourplex/lovio/WidgetStringKey;

    const-string v4, "SEK"

    invoke-static {v3, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v0, v11

    .line 130
    sget-object v3, Lcom/fourplex/lovio/WidgetStringKey;->WaitingForDrawing:Lcom/fourplex/lovio/WidgetStringKey;

    const-string v4, "Warte auf Zeichnung..."

    invoke-static {v3, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v0, v12

    .line 131
    sget-object v3, Lcom/fourplex/lovio/WidgetStringKey;->NoMemories:Lcom/fourplex/lovio/WidgetStringKey;

    const-string v4, "Keine Erinnerungen"

    invoke-static {v3, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v0, v13

    .line 132
    sget-object v3, Lcom/fourplex/lovio/WidgetStringKey;->Partner:Lcom/fourplex/lovio/WidgetStringKey;

    invoke-static {v3, v14}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v0, v15

    .line 133
    sget-object v3, Lcom/fourplex/lovio/WidgetStringKey;->You:Lcom/fourplex/lovio/WidgetStringKey;

    const-string v4, "Du"

    invoke-static {v3, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v0, v17

    .line 134
    sget-object v3, Lcom/fourplex/lovio/WidgetStringKey;->DistanceTogether:Lcom/fourplex/lovio/WidgetStringKey;

    const-string v4, "Wir sind zusammen"

    invoke-static {v3, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v0, v18

    .line 135
    sget-object v3, Lcom/fourplex/lovio/WidgetStringKey;->DistancePrefix:Lcom/fourplex/lovio/WidgetStringKey;

    const-string v4, "Unsere Distanz"

    invoke-static {v3, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v0, v19

    .line 136
    sget-object v3, Lcom/fourplex/lovio/WidgetStringKey;->DistanceWaiting:Lcom/fourplex/lovio/WidgetStringKey;

    const-string v4, "Warten"

    invoke-static {v3, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v0, v20

    .line 137
    sget-object v3, Lcom/fourplex/lovio/WidgetStringKey;->DistanceTrackingOff:Lcom/fourplex/lovio/WidgetStringKey;

    const-string v4, "Tracking aus"

    invoke-static {v3, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v0, v21

    .line 138
    sget-object v3, Lcom/fourplex/lovio/WidgetStringKey;->DistancePermission:Lcom/fourplex/lovio/WidgetStringKey;

    const-string v4, "Berechtigung"

    invoke-static {v3, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v0, v22

    .line 122
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    const-string v3, "de"

    invoke-static {v3, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v1, v8

    .line 141
    new-array v0, v2, [Lkotlin/Pair;

    sget-object v2, Lcom/fourplex/lovio/WidgetStringKey;->Days:Lcom/fourplex/lovio/WidgetStringKey;

    const-string v3, "d\u00edas"

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v0, v23

    .line 142
    sget-object v2, Lcom/fourplex/lovio/WidgetStringKey;->DaysTogether:Lcom/fourplex/lovio/WidgetStringKey;

    const-string v3, "D\u00edas juntos"

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v0, v24

    .line 143
    sget-object v2, Lcom/fourplex/lovio/WidgetStringKey;->Together:Lcom/fourplex/lovio/WidgetStringKey;

    const-string v3, "juntos"

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v0, v25

    .line 144
    sget-object v2, Lcom/fourplex/lovio/WidgetStringKey;->TogetherFor:Lcom/fourplex/lovio/WidgetStringKey;

    const-string v3, "Juntos desde"

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v0, v8

    .line 145
    sget-object v2, Lcom/fourplex/lovio/WidgetStringKey;->HoursShort:Lcom/fourplex/lovio/WidgetStringKey;

    invoke-static {v2, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v0, v9

    .line 146
    sget-object v2, Lcom/fourplex/lovio/WidgetStringKey;->MinutesShort:Lcom/fourplex/lovio/WidgetStringKey;

    invoke-static {v2, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v0, v16

    .line 147
    sget-object v2, Lcom/fourplex/lovio/WidgetStringKey;->SecondsShort:Lcom/fourplex/lovio/WidgetStringKey;

    invoke-static {v2, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v0, v11

    .line 148
    sget-object v2, Lcom/fourplex/lovio/WidgetStringKey;->WaitingForDrawing:Lcom/fourplex/lovio/WidgetStringKey;

    const-string v3, "Esperando dibujo..."

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v0, v12

    .line 149
    sget-object v2, Lcom/fourplex/lovio/WidgetStringKey;->NoMemories:Lcom/fourplex/lovio/WidgetStringKey;

    const-string v3, "Sin recuerdos"

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v0, v13

    .line 150
    sget-object v2, Lcom/fourplex/lovio/WidgetStringKey;->Partner:Lcom/fourplex/lovio/WidgetStringKey;

    const-string v3, "Pareja"

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v0, v15

    .line 151
    sget-object v2, Lcom/fourplex/lovio/WidgetStringKey;->You:Lcom/fourplex/lovio/WidgetStringKey;

    const-string v3, "T\u00fa"

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v0, v17

    .line 152
    sget-object v2, Lcom/fourplex/lovio/WidgetStringKey;->DistanceTogether:Lcom/fourplex/lovio/WidgetStringKey;

    const-string v3, "Estamos juntos"

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v0, v18

    .line 153
    sget-object v2, Lcom/fourplex/lovio/WidgetStringKey;->DistancePrefix:Lcom/fourplex/lovio/WidgetStringKey;

    const-string v3, "Nuestra distancia"

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v0, v19

    .line 154
    sget-object v2, Lcom/fourplex/lovio/WidgetStringKey;->DistanceWaiting:Lcom/fourplex/lovio/WidgetStringKey;

    const-string v3, "Esperando"

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v0, v20

    .line 155
    sget-object v2, Lcom/fourplex/lovio/WidgetStringKey;->DistanceTrackingOff:Lcom/fourplex/lovio/WidgetStringKey;

    const-string v3, "Sin seguimiento"

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v0, v21

    .line 156
    sget-object v2, Lcom/fourplex/lovio/WidgetStringKey;->DistancePermission:Lcom/fourplex/lovio/WidgetStringKey;

    const-string v3, "Permiso"

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v0, v22

    .line 140
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    const-string v2, "es"

    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v1, v9

    .line 67
    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/fourplex/lovio/WidgetLocalization;->strings:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final normalizeLanguageTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 203
    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 205
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v1, "ROOT"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string p1, "toLowerCase(...)"

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x4

    const/4 v7, 0x0

    .line 206
    const-string v3, "_"

    const-string v4, "-"

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    .line 207
    new-array v0, v0, [C

    const/4 v1, 0x0

    const/16 v2, 0x22

    aput-char v2, v0, v1

    invoke-static {p1, v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object p1

    .line 210
    const-string v0, "fr"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "fr-"

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {p1, v2, v1, v3, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 211
    :cond_0
    const-string v0, "ko"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "ko-"

    invoke-static {p1, v2, v1, v3, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 212
    :cond_1
    const-string v0, "de"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "de-"

    invoke-static {p1, v2, v1, v3, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 213
    :cond_2
    const-string v0, "es"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "es-"

    invoke-static {p1, v2, v1, v3, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    .line 214
    :cond_3
    const-string v0, "en"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "en-"

    invoke-static {p1, v2, v1, v3, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    return-object v4

    :cond_5
    :goto_0
    return-object v0
.end method

.method private final readStoredLocale(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 191
    sget-object v0, Lcom/fourplex/lovio/WidgetState;->INSTANCE:Lcom/fourplex/lovio/WidgetState;

    invoke-virtual {v0, p1}, Lcom/fourplex/lovio/WidgetState;->preferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 192
    const-string v0, "widget_locale"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 194
    :cond_0
    const-string v0, "widget_data"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v1

    .line 196
    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "locale"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_2

    return-object p1

    :catch_0
    :cond_2
    return-object v1
.end method

.method private final resolveLanguageTag(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 182
    invoke-direct {p0, p1}, Lcom/fourplex/lovio/WidgetLocalization;->readStoredLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 183
    sget-object v0, Lcom/fourplex/lovio/WidgetLocalization;->INSTANCE:Lcom/fourplex/lovio/WidgetLocalization;

    invoke-direct {v0, p1}, Lcom/fourplex/lovio/WidgetLocalization;->normalizeLanguageTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    .line 186
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object p1

    .line 187
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/fourplex/lovio/WidgetLocalization;->normalizeLanguageTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "en"

    :cond_1
    return-object p1
.end method


# virtual methods
.method public final locale(Landroid/content/Context;)Ljava/util/Locale;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    invoke-direct {p0, p1}, Lcom/fourplex/lovio/WidgetLocalization;->resolveLanguageTag(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0xc81

    if-eq v0, v1, :cond_6

    const/16 v1, 0xcae

    if-eq v0, v1, :cond_4

    const/16 v1, 0xccc

    if-eq v0, v1, :cond_2

    const/16 v1, 0xd64

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "ko"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 170
    :cond_1
    sget-object p1, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    const-string v0, "KOREAN"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 168
    :cond_2
    const-string v0, "fr"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    .line 169
    :cond_3
    sget-object p1, Ljava/util/Locale;->FRENCH:Ljava/util/Locale;

    const-string v0, "FRENCH"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 168
    :cond_4
    const-string v0, "es"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    .line 172
    :cond_5
    new-instance p1, Ljava/util/Locale;

    invoke-direct {p1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 168
    :cond_6
    const-string v0, "de"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 173
    :goto_0
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v0, "ENGLISH"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 171
    :cond_7
    sget-object p1, Ljava/util/Locale;->GERMAN:Ljava/util/Locale;

    const-string v0, "GERMAN"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final lowercased(Landroid/content/Context;Lcom/fourplex/lovio/WidgetStringKey;)Ljava/lang/String;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    invoke-virtual {p0, p1, p2}, Lcom/fourplex/lovio/WidgetLocalization;->text(Landroid/content/Context;Lcom/fourplex/lovio/WidgetStringKey;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1}, Lcom/fourplex/lovio/WidgetLocalization;->locale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "toLowerCase(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final text(Landroid/content/Context;Lcom/fourplex/lovio/WidgetStringKey;)Ljava/lang/String;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    invoke-direct {p0, p1}, Lcom/fourplex/lovio/WidgetLocalization;->resolveLanguageTag(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 162
    sget-object v0, Lcom/fourplex/lovio/WidgetLocalization;->strings:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_1

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    return-object p1

    .line 163
    :cond_1
    :goto_0
    const-string p1, "en"

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    if-nez p1, :cond_3

    .line 164
    const-string p1, ""

    :cond_3
    return-object p1
.end method
