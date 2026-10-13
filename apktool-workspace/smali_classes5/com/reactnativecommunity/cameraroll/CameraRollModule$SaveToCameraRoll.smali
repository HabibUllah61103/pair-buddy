.class Lcom/reactnativecommunity/cameraroll/CameraRollModule$SaveToCameraRoll;
.super Lcom/facebook/react/bridge/GuardedAsyncTask;
.source "CameraRollModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/reactnativecommunity/cameraroll/CameraRollModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SaveToCameraRoll"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/bridge/GuardedAsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mOptions:Lcom/facebook/react/bridge/ReadableMap;

.field private final mPromise:Lcom/facebook/react/bridge/Promise;

.field private final mUri:Landroid/net/Uri;


# direct methods
.method public static synthetic $r8$lambda$V8_w0oVIziuIMP3cm9hCfJsz334(Lcom/reactnativecommunity/cameraroll/CameraRollModule$SaveToCameraRoll;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/reactnativecommunity/cameraroll/CameraRollModule$SaveToCameraRoll;->lambda$doInBackgroundGuarded$0(Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactContext;Landroid/net/Uri;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 0

    .line 160
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/GuardedAsyncTask;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    .line 161
    iput-object p1, p0, Lcom/reactnativecommunity/cameraroll/CameraRollModule$SaveToCameraRoll;->mContext:Landroid/content/Context;

    .line 162
    iput-object p2, p0, Lcom/reactnativecommunity/cameraroll/CameraRollModule$SaveToCameraRoll;->mUri:Landroid/net/Uri;

    .line 163
    iput-object p4, p0, Lcom/reactnativecommunity/cameraroll/CameraRollModule$SaveToCameraRoll;->mPromise:Lcom/facebook/react/bridge/Promise;

    .line 164
    iput-object p3, p0, Lcom/reactnativecommunity/cameraroll/CameraRollModule$SaveToCameraRoll;->mOptions:Lcom/facebook/react/bridge/ReadableMap;

    return-void
.end method

.method private getSingleAssetInfo(Landroid/net/Uri;)Lcom/facebook/react/bridge/WritableMap;
    .locals 11

    .line 294
    iget-object v0, p0, Lcom/reactnativecommunity/cameraroll/CameraRollModule$SaveToCameraRoll;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 296
    invoke-static {}, Lcom/reactnativecommunity/cameraroll/CameraRollModule;->-$$Nest$sfgetPROJECTION()[Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 305
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 306
    const-string v9, "albums"

    const-string v10, "sourceType"

    .line 308
    const-string v2, "location"

    const-string v3, "filename"

    const-string v4, "fileSize"

    const-string v5, "fileExtension"

    const-string v6, "imageSize"

    const-string v7, "playableDuration"

    const-string v8, "orientation"

    invoke-static/range {v2 .. v10}, Lcom/reactnativecommunity/cameraroll/CameraRollModule$SaveToCameraRoll$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    .line 306
    invoke-static {v1, p1, v0}, Lcom/reactnativecommunity/cameraroll/CameraRollModule;->-$$Nest$smconvertMediaToMap(Landroid/content/ContentResolver;Landroid/database/Cursor;Ljava/util/Set;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 317
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v0

    .line 303
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Failed to find the photo that was just saved!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private synthetic lambda$doInBackgroundGuarded$0(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1

    .line 261
    const-string p1, "E_UNABLE_TO_SAVE"

    if-eqz p2, :cond_0

    .line 263
    :try_start_0
    invoke-direct {p0, p2}, Lcom/reactnativecommunity/cameraroll/CameraRollModule$SaveToCameraRoll;->getSingleAssetInfo(Landroid/net/Uri;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p2

    .line 264
    iget-object v0, p0, Lcom/reactnativecommunity/cameraroll/CameraRollModule$SaveToCameraRoll;->mPromise:Lcom/facebook/react/bridge/Promise;

    invoke-interface {v0, p2}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 266
    iget-object v0, p0, Lcom/reactnativecommunity/cameraroll/CameraRollModule$SaveToCameraRoll;->mPromise:Lcom/facebook/react/bridge/Promise;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 269
    :cond_0
    iget-object p2, p0, Lcom/reactnativecommunity/cameraroll/CameraRollModule$SaveToCameraRoll;->mPromise:Lcom/facebook/react/bridge/Promise;

    const-string v0, "Could not add image to gallery"

    invoke-interface {p2, p1, v0}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackgroundGuarded([Ljava/lang/Object;)V
    .locals 0

    .line 152
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/reactnativecommunity/cameraroll/CameraRollModule$SaveToCameraRoll;->doInBackgroundGuarded([Ljava/lang/Void;)V

    return-void
.end method

.method protected varargs doInBackgroundGuarded([Ljava/lang/Void;)V
    .locals 19

    move-object/from16 v1, p0

    .line 169
    const-string v0, "is_pending"

    const-string v2, "Could not close output channel"

    const-string v3, "Could not close input channel"

    const-string v4, "ReactNative"

    new-instance v5, Ljava/io/File;

    iget-object v6, v1, Lcom/reactnativecommunity/cameraroll/CameraRollModule$SaveToCameraRoll;->mUri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 173
    iget-object v6, v1, Lcom/reactnativecommunity/cameraroll/CameraRollModule$SaveToCameraRoll;->mUri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/reactnativecommunity/cameraroll/Utils;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 174
    const-string v7, "video"

    const/4 v9, 0x0

    if-eqz v6, :cond_0

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v10, 0x1

    goto :goto_0

    :cond_0
    move v10, v9

    :goto_0
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x0

    .line 177
    :try_start_0
    iget-object v12, v1, Lcom/reactnativecommunity/cameraroll/CameraRollModule$SaveToCameraRoll;->mOptions:Lcom/facebook/react/bridge/ReadableMap;

    const-string v13, "album"

    invoke-interface {v12, v13}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 178
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    .line 181
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/16 v15, 0x1d

    const/16 p1, 0x1

    const-string v8, "E_UNABLE_TO_LOAD"

    if-lt v14, v15, :cond_4

    .line 182
    :try_start_1
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    if-nez v13, :cond_1

    .line 184
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 185
    const-string v13, "relative_path"

    invoke-virtual {v7, v13, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    :cond_1
    const-string v12, "mime_type"

    invoke-virtual {v7, v12, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const-string v6, "_display_name"

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v6, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v7, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 190
    iget-object v6, v1, Lcom/reactnativecommunity/cameraroll/CameraRollModule$SaveToCameraRoll;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 191
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 192
    sget-object v10, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v10, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v10

    goto :goto_1

    .line 193
    :cond_2
    sget-object v10, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v10, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v10

    :goto_1
    if-nez v10, :cond_3

    .line 195
    iget-object v12, v1, Lcom/reactnativecommunity/cameraroll/CameraRollModule$SaveToCameraRoll;->mPromise:Lcom/facebook/react/bridge/Promise;

    const-string v13, "ContentResolver#insert() returns null, insert failed"

    invoke-interface {v12, v8, v13}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    :cond_3
    invoke-virtual {v6, v10}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v8
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 198
    :try_start_2
    new-instance v12, Ljava/io/FileInputStream;

    invoke-direct {v12, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 199
    :try_start_3
    invoke-static {v12, v8}, Landroid/os/FileUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 200
    invoke-virtual {v7}, Landroid/content/ContentValues;->clear()V

    .line 201
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 202
    invoke-virtual {v6, v10, v7, v11, v11}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 204
    invoke-direct {v1, v10}, Lcom/reactnativecommunity/cameraroll/CameraRollModule$SaveToCameraRoll;->getSingleAssetInfo(Landroid/net/Uri;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 205
    iget-object v5, v1, Lcom/reactnativecommunity/cameraroll/CameraRollModule$SaveToCameraRoll;->mPromise:Lcom/facebook/react/bridge/Promise;

    invoke-interface {v5, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_5

    :catchall_0
    move-exception v0

    move-object v5, v0

    goto/16 :goto_8

    :catch_0
    move-exception v0

    goto/16 :goto_9

    :catch_1
    move-exception v0

    goto/16 :goto_a

    :cond_4
    if-nez v13, :cond_6

    .line 210
    :try_start_4
    iget-object v0, v1, Lcom/reactnativecommunity/cameraroll/CameraRollModule$SaveToCameraRoll;->mOptions:Lcom/facebook/react/bridge/ReadableMap;

    const-string v6, "type"

    invoke-interface {v0, v6}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 211
    sget-object v0, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    goto :goto_2

    .line 213
    :cond_5
    sget-object v0, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    goto :goto_2

    .line 216
    :cond_6
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    :goto_2
    if-nez v13, :cond_8

    .line 220
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v0, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 221
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_7

    .line 222
    iget-object v0, v1, Lcom/reactnativecommunity/cameraroll/CameraRollModule$SaveToCameraRoll;->mPromise:Lcom/facebook/react/bridge/Promise;

    const-string v5, "Album Directory not created. Did you request WRITE_EXTERNAL_STORAGE?"

    invoke-interface {v0, v8, v5}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_7
    move-object v0, v6

    .line 229
    :cond_8
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_9

    .line 230
    iget-object v0, v1, Lcom/reactnativecommunity/cameraroll/CameraRollModule$SaveToCameraRoll;->mPromise:Lcom/facebook/react/bridge/Promise;

    const-string v5, "External media storage directory not available"

    invoke-interface {v0, v8, v5}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 234
    :cond_9
    new-instance v6, Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 236
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x2e

    .line 238
    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    if-ltz v10, :cond_a

    .line 239
    invoke-virtual {v7, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v10

    invoke-virtual {v7, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 240
    invoke-virtual {v7, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    move-object v7, v10

    goto :goto_3

    .line 243
    :cond_a
    const-string v8, ""

    :goto_3
    move v10, v9

    .line 245
    :goto_4
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    move-result v12

    if-nez v12, :cond_b

    .line 246
    new-instance v6, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    add-int/lit8 v13, v10, 0x1

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v0, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move v10, v13

    goto :goto_4

    .line 248
    :cond_b
    new-instance v12, Ljava/io/FileInputStream;

    invoke-direct {v12, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 249
    :try_start_5
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 250
    :try_start_6
    move-object v0, v8

    check-cast v0, Ljava/io/FileOutputStream;

    invoke-virtual {v8}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v13

    .line 251
    invoke-virtual {v12}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v14

    invoke-virtual {v12}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v17

    const-wide/16 v15, 0x0

    invoke-virtual/range {v13 .. v18}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    .line 252
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V

    .line 253
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    .line 256
    iget-object v0, v1, Lcom/reactnativecommunity/cameraroll/CameraRollModule$SaveToCameraRoll;->mContext:Landroid/content/Context;

    move/from16 v5, p1

    new-array v5, v5, [Ljava/lang/String;

    .line 258
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    new-instance v6, Lcom/reactnativecommunity/cameraroll/CameraRollModule$SaveToCameraRoll$$ExternalSyntheticLambda2;

    invoke-direct {v6, v1}, Lcom/reactnativecommunity/cameraroll/CameraRollModule$SaveToCameraRoll$$ExternalSyntheticLambda2;-><init>(Lcom/reactnativecommunity/cameraroll/CameraRollModule$SaveToCameraRoll;)V

    .line 256
    invoke-static {v0, v5, v11, v6}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 278
    :goto_5
    :try_start_7
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_6

    :catch_2
    move-exception v0

    .line 280
    invoke-static {v4, v3, v0}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_6
    if-eqz v8, :cond_d

    .line 285
    :goto_7
    :try_start_8
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_c

    :catchall_1
    move-exception v0

    move-object v5, v0

    move-object v8, v11

    :goto_8
    move-object v11, v12

    goto :goto_d

    :catch_3
    move-exception v0

    move-object v8, v11

    :goto_9
    move-object v11, v12

    goto :goto_a

    :catchall_2
    move-exception v0

    move-object v5, v0

    move-object v8, v11

    goto :goto_d

    :catch_4
    move-exception v0

    move-object v8, v11

    .line 274
    :goto_a
    :try_start_9
    iget-object v5, v1, Lcom/reactnativecommunity/cameraroll/CameraRollModule$SaveToCameraRoll;->mPromise:Lcom/facebook/react/bridge/Promise;

    invoke-interface {v5, v0}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    if-eqz v11, :cond_c

    .line 278
    :try_start_a
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    goto :goto_b

    :catch_5
    move-exception v0

    .line 280
    invoke-static {v4, v3, v0}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_c
    :goto_b
    if-eqz v8, :cond_d

    goto :goto_7

    :catch_6
    move-exception v0

    .line 287
    invoke-static {v4, v2, v0}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_d
    :goto_c
    return-void

    :catchall_3
    move-exception v0

    move-object v5, v0

    :goto_d
    if-eqz v11, :cond_e

    .line 278
    :try_start_b
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    goto :goto_e

    :catch_7
    move-exception v0

    .line 280
    invoke-static {v4, v3, v0}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_e
    :goto_e
    if-eqz v8, :cond_f

    .line 285
    :try_start_c
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    goto :goto_f

    :catch_8
    move-exception v0

    .line 287
    invoke-static {v4, v2, v0}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 290
    :cond_f
    :goto_f
    throw v5
.end method
