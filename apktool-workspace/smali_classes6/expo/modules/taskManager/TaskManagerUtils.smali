.class public Lexpo/modules/taskManager/TaskManagerUtils;
.super Ljava/lang/Object;
.source "TaskManagerUtils.java"

# interfaces
.implements Lexpo/modules/interfaces/taskManager/TaskManagerUtilsInterface;


# static fields
.field private static final DEFAULT_OVERRIDE_DEADLINE:I = 0xea60

.field private static final EXTRAS_REQUIRED_KEY:Ljava/lang/String; = "expo.modules.taskManager"

.field private static final JOB_LIMIT_BUFFER:I = 0xa

.field private static final PENDING_INTENT_REQUEST_CODE:I = 0x13bf

.field private static final TAG:Ljava/lang/String; = "TaskManagerUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createExtrasForTask(Lexpo/modules/interfaces/taskManager/TaskInterface;Ljava/util/List;)Landroid/os/PersistableBundle;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/interfaces/taskManager/TaskInterface;",
            "Ljava/util/List<",
            "Landroid/os/PersistableBundle;",
            ">;)",
            "Landroid/os/PersistableBundle;"
        }
    .end annotation

    .line 228
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 231
    const-string v1, "expo.modules.taskManager"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 232
    const-string v1, "appId"

    invoke-interface {p1}, Lexpo/modules/interfaces/taskManager/TaskInterface;->getAppScopeKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const-string v1, "taskName"

    invoke-interface {p1}, Lexpo/modules/interfaces/taskManager/TaskInterface;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 235
    const-string v1, "dataSize"

    if-eqz p2, :cond_1

    .line 236
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 238
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 239
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PersistableBundle;

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    .line 242
    :cond_1
    invoke-virtual {v0, v1, p1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method private createJobInfo(ILandroid/content/ComponentName;Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo;
    .locals 2

    .line 203
    new-instance v0, Landroid/app/job/JobInfo$Builder;

    invoke-direct {v0, p1, p2}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 204
    invoke-virtual {v0, p3}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    move-result-object p1

    const/4 p2, 0x1

    .line 205
    invoke-virtual {p1, p2}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object p1

    const/4 p3, 0x0

    .line 206
    invoke-virtual {p1, p3}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object p1

    .line 208
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1c

    if-ge p3, v0, :cond_0

    const-wide/16 p2, 0x0

    .line 210
    invoke-virtual {p1, p2, p3}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object p2

    const-wide/32 v0, 0xea60

    .line 211
    invoke-virtual {p2, v0, v1}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    goto :goto_0

    .line 212
    :cond_0
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1f

    if-ge p3, v0, :cond_1

    .line 214
    invoke-virtual {p1, p2}, Landroid/app/job/JobInfo$Builder;->setImportantWhileForeground(Z)Landroid/app/job/JobInfo$Builder;

    goto :goto_0

    .line 217
    :cond_1
    invoke-virtual {p1, p2}, Landroid/app/job/JobInfo$Builder;->setExpedited(Z)Landroid/app/job/JobInfo$Builder;

    .line 220
    :goto_0
    invoke-virtual {p1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p1

    return-object p1
.end method

.method private createJobInfo(Landroid/content/Context;Lexpo/modules/interfaces/taskManager/TaskInterface;ILjava/util/List;)Landroid/app/job/JobInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lexpo/modules/interfaces/taskManager/TaskInterface;",
            "I",
            "Ljava/util/List<",
            "Landroid/os/PersistableBundle;",
            ">;)",
            "Landroid/app/job/JobInfo;"
        }
    .end annotation

    .line 224
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lexpo/modules/taskManager/TaskJobService;

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {p0, p2, p4}, Lexpo/modules/taskManager/TaskManagerUtils;->createExtrasForTask(Lexpo/modules/interfaces/taskManager/TaskInterface;Ljava/util/List;)Landroid/os/PersistableBundle;

    move-result-object p1

    invoke-direct {p0, p3, v0, p1}, Lexpo/modules/taskManager/TaskManagerUtils;->createJobInfo(ILandroid/content/ComponentName;Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo;

    move-result-object p1

    return-object p1
.end method

.method private createJobInfoByAddingData(Landroid/app/job/JobInfo;Ljava/util/List;)Landroid/app/job/JobInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/job/JobInfo;",
            "Ljava/util/List<",
            "Landroid/os/PersistableBundle;",
            ">;)",
            "Landroid/app/job/JobInfo;"
        }
    .end annotation

    .line 162
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 163
    const-string v1, "dataSize"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-eqz p2, :cond_0

    .line 166
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 168
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_0

    add-int v1, v3, v2

    .line 169
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PersistableBundle;

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 172
    :cond_0
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getId()I

    move-result p2

    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object p1

    invoke-direct {p0, p2, p1, v0}, Lexpo/modules/taskManager/TaskManagerUtils;->createJobInfo(ILandroid/content/ComponentName;Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo;

    move-result-object p1

    return-object p1
.end method

.method private createTaskIntent(Landroid/content/Context;Lexpo/modules/interfaces/taskManager/TaskInterface;I)Landroid/app/PendingIntent;
    .locals 1

    .line 196
    invoke-interface {p2}, Lexpo/modules/interfaces/taskManager/TaskInterface;->getAppScopeKey()Ljava/lang/String;

    move-result-object v0

    .line 197
    invoke-interface {p2}, Lexpo/modules/interfaces/taskManager/TaskInterface;->getName()Ljava/lang/String;

    move-result-object p2

    .line 199
    invoke-direct {p0, p1, v0, p2, p3}, Lexpo/modules/taskManager/TaskManagerUtils;->createTaskIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method private createTaskIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/app/PendingIntent;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 180
    :cond_0
    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lexpo/modules/taskManager/TaskBroadcastReceiver;->INTENT_ACTION:Ljava/lang/String;

    const-class v3, Lexpo/modules/taskManager/TaskBroadcastReceiver;

    invoke-direct {v1, v2, v0, p1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 183
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "appId"

    .line 184
    invoke-virtual {v0, v2, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    const-string v0, "taskName"

    .line 185
    invoke-virtual {p2, v0, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    .line 186
    invoke-virtual {p2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p2

    .line 188
    invoke-virtual {v1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 191
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x1f

    if-lt p2, p3, :cond_1

    const/high16 p2, 0x2000000

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    const/16 p3, 0x13bf

    or-int/2addr p2, p4

    .line 192
    invoke-static {p1, p3, v1, p2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method private static getJobLimit()I
    .locals 2

    .line 45
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    const/16 v0, 0x96

    return v0

    :cond_0
    const/16 v0, 0x64

    return v0
.end method

.method private isJobInfoRelatedToTask(Landroid/app/job/JobInfo;Lexpo/modules/interfaces/taskManager/TaskInterface;)Z
    .locals 4

    .line 249
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object p1

    .line 252
    invoke-interface {p2}, Lexpo/modules/interfaces/taskManager/TaskInterface;->getAppScopeKey()Ljava/lang/String;

    move-result-object v0

    .line 253
    invoke-interface {p2}, Lexpo/modules/interfaces/taskManager/TaskInterface;->getName()Ljava/lang/String;

    move-result-object p2

    .line 255
    const-string v1, "expo.modules.taskManager"

    invoke-virtual {p1, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 256
    const-string v1, "appId"

    const-string v3, ""

    invoke-virtual {p1, v1, v3}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "taskName"

    invoke-virtual {p1, v0, v3}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v2
.end method

.method private static listToDoubleArray(Ljava/util/List;)[D
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)[D"
        }
    .end annotation

    .line 302
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [D

    const/4 v1, 0x0

    .line 303
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 304
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static listToIntArray(Ljava/util/List;)[I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)[I"
        }
    .end annotation

    .line 311
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 312
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 313
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static listToParcelableArrayList(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation

    .line 329
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 331
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 332
    check-cast v1, Ljava/util/Map;

    .line 333
    invoke-static {v1}, Lexpo/modules/taskManager/TaskManagerUtils;->mapToBundle(Ljava/util/Map;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static listToStringArray(Ljava/util/List;)[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 320
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 321
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 322
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method static mapToBundle(Ljava/util/Map;)Landroid/os/Bundle;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .line 266
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 268
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 269
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 270
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 272
    instance-of v3, v2, Ljava/lang/Double;

    if-eqz v3, :cond_1

    .line 273
    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_0

    .line 274
    :cond_1
    instance-of v3, v2, Ljava/lang/Integer;

    if-eqz v3, :cond_2

    .line 275
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 276
    :cond_2
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 277
    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 278
    :cond_3
    instance-of v3, v2, Ljava/lang/Boolean;

    if-eqz v3, :cond_4

    .line 279
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 280
    :cond_4
    instance-of v3, v2, Ljava/util/List;

    if-eqz v3, :cond_9

    .line 281
    check-cast v2, Ljava/util/List;

    const/4 v3, 0x0

    .line 282
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 284
    instance-of v4, v3, Ljava/lang/Double;

    if-eqz v4, :cond_5

    goto :goto_1

    .line 286
    :cond_5
    instance-of v4, v3, Ljava/lang/Integer;

    if-eqz v4, :cond_6

    .line 287
    invoke-static {v2}, Lexpo/modules/taskManager/TaskManagerUtils;->listToIntArray(Ljava/util/List;)[I

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    goto :goto_0

    .line 288
    :cond_6
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_7

    .line 289
    invoke-static {v2}, Lexpo/modules/taskManager/TaskManagerUtils;->listToStringArray(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 290
    :cond_7
    instance-of v3, v3, Ljava/util/Map;

    if-eqz v3, :cond_0

    .line 291
    invoke-static {v2}, Lexpo/modules/taskManager/TaskManagerUtils;->listToParcelableArrayList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 285
    :cond_8
    :goto_1
    invoke-static {v2}, Lexpo/modules/taskManager/TaskManagerUtils;->listToDoubleArray(Ljava/util/List;)[D

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    goto/16 :goto_0

    .line 293
    :cond_9
    instance-of v3, v2, Ljava/util/Map;

    if-eqz v3, :cond_0

    .line 294
    check-cast v2, Ljava/util/Map;

    invoke-static {v2}, Lexpo/modules/taskManager/TaskManagerUtils;->mapToBundle(Ljava/util/Map;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_a
    return-object v0
.end method

.method private updateOrScheduleJob(Landroid/content/Context;Lexpo/modules/interfaces/taskManager/TaskInterface;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lexpo/modules/interfaces/taskManager/TaskInterface;",
            "Ljava/util/List<",
            "Landroid/os/PersistableBundle;",
            ">;)V"
        }
    .end annotation

    .line 109
    const-string v0, "jobscheduler"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    if-nez v0, :cond_0

    .line 112
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Job scheduler not found!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 116
    :cond_0
    invoke-virtual {v0}, Landroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    .line 120
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 127
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/job/JobInfo;

    .line 128
    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getId()I

    move-result v6

    if-lt v6, v3, :cond_3

    add-int/lit8 v3, v6, 0x1

    .line 132
    :cond_3
    invoke-direct {p0, v5, p2}, Lexpo/modules/taskManager/TaskManagerUtils;->isJobInfoRelatedToTask(Landroid/app/job/JobInfo;Lexpo/modules/interfaces/taskManager/TaskInterface;)Z

    move-result v7

    if-eqz v7, :cond_2

    if-eqz v4, :cond_4

    .line 133
    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getId()I

    move-result v7

    if-le v6, v7, :cond_2

    :cond_4
    move-object v4, v5

    goto :goto_0

    .line 140
    :cond_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {}, Lexpo/modules/taskManager/TaskManagerUtils;->getJobLimit()I

    move-result v5

    add-int/lit8 v5, v5, -0xa

    if-lt v2, v5, :cond_6

    if-eqz v4, :cond_6

    .line 141
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "Approaching job limit ("

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "). Merging data for task \'"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-interface {p2}, Lexpo/modules/interfaces/taskManager/TaskInterface;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\'."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TaskManagerUtils"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :try_start_0
    invoke-direct {p0, v4, p3}, Lexpo/modules/taskManager/TaskManagerUtils;->createJobInfoByAddingData(Landroid/app/job/JobInfo;Ljava/util/List;)Landroid/app/job/JobInfo;

    move-result-object p1

    .line 144
    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getId()I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/app/job/JobScheduler;->cancel(I)V

    .line 145
    invoke-virtual {v0, p1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 147
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Unable to merge job: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 154
    :cond_6
    :try_start_1
    invoke-direct {p0, p1, p2, v3, p3}, Lexpo/modules/taskManager/TaskManagerUtils;->createJobInfo(Landroid/content/Context;Lexpo/modules/interfaces/taskManager/TaskInterface;ILjava/util/List;)Landroid/app/job/JobInfo;

    move-result-object p1

    .line 155
    invoke-virtual {v0, p1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p1

    .line 157
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Unable to schedule job: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public cancelScheduledJob(Landroid/content/Context;I)V
    .locals 1

    .line 84
    const-string v0, "jobscheduler"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/job/JobScheduler;

    if-eqz p1, :cond_0

    .line 87
    invoke-virtual {p1, p2}, Landroid/app/job/JobScheduler;->cancel(I)V

    return-void

    .line 89
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Job scheduler not found!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public cancelTaskIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/high16 v0, 0x20000000

    .line 57
    invoke-direct {p0, p1, p2, p3, v0}, Lexpo/modules/taskManager/TaskManagerUtils;->createTaskIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 60
    invoke-virtual {p1}, Landroid/app/PendingIntent;->cancel()V

    :cond_0
    return-void
.end method

.method public createTaskIntent(Landroid/content/Context;Lexpo/modules/interfaces/taskManager/TaskInterface;)Landroid/app/PendingIntent;
    .locals 1

    const/high16 v0, 0x8000000

    .line 52
    invoke-direct {p0, p1, p2, v0}, Lexpo/modules/taskManager/TaskManagerUtils;->createTaskIntent(Landroid/content/Context;Lexpo/modules/interfaces/taskManager/TaskInterface;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method public executeTask(Lexpo/modules/interfaces/taskManager/TaskInterface;Landroid/os/Bundle;Lexpo/modules/interfaces/taskManager/TaskExecutionCallback;)V
    .locals 1

    if-nez p1, :cond_0

    .line 76
    const-string p1, "TaskManagerUtils"

    const-string p2, "Trying to execute a null task!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 78
    invoke-interface {p1, p2, v0, p3}, Lexpo/modules/interfaces/taskManager/TaskInterface;->execute(Landroid/os/Bundle;Ljava/lang/Error;Lexpo/modules/interfaces/taskManager/TaskExecutionCallback;)V

    return-void
.end method

.method public extractDataFromJobParams(Landroid/app/job/JobParameters;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/job/JobParameters;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/PersistableBundle;",
            ">;"
        }
    .end annotation

    .line 95
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object p1

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 97
    const-string v1, "dataSize"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    :goto_0
    if-ge v2, v1, :cond_0

    .line 100
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public scheduleJob(Landroid/content/Context;Lexpo/modules/interfaces/taskManager/TaskInterface;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lexpo/modules/interfaces/taskManager/TaskInterface;",
            "Ljava/util/List<",
            "Landroid/os/PersistableBundle;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 67
    const-string p1, "TaskManagerUtils"

    const-string p2, "Trying to schedule job for null task!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 69
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lexpo/modules/taskManager/TaskManagerUtils;->updateOrScheduleJob(Landroid/content/Context;Lexpo/modules/interfaces/taskManager/TaskInterface;Ljava/util/List;)V

    return-void
.end method
