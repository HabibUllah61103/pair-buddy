package com.superwall.sdk.storage;

import android.content.Context;
import androidx.exifinterface.media.ExifInterface;
import java.io.File;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;

/* JADX INFO: compiled from: CacheKeys.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bf\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002J\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0016R\u0012\u0010\u0003\u001a\u00020\u0004X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006R\u0012\u0010\u0007\u001a\u00020\bX¦\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\nR\u0018\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00000\fX¦\u0004¢\u0006\u0006\u001a\u0004\b\r\u0010\u000e¨\u0006\u0013"}, d2 = {"Lcom/superwall/sdk/storage/Storable;", ExifInterface.GPS_DIRECTION_TRUE, "", "key", "", "getKey", "()Ljava/lang/String;", "directory", "Lcom/superwall/sdk/storage/SearchPathDirectory;", "getDirectory", "()Lcom/superwall/sdk/storage/SearchPathDirectory;", "serializer", "Lkotlinx/serialization/KSerializer;", "getSerializer", "()Lkotlinx/serialization/KSerializer;", "file", "Ljava/io/File;", "context", "Landroid/content/Context;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public interface Storable<T> {
    File file(Context context);

    SearchPathDirectory getDirectory();

    String getKey();

    KSerializer<T> getSerializer();

    /* JADX INFO: compiled from: CacheKeys.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    public static final class DefaultImpls {
        public static <T> File file(Storable<T> storable, Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            File fileFileDirectory = storable.getDirectory().fileDirectory(context);
            if (!fileFileDirectory.exists()) {
                fileFileDirectory.mkdir();
            }
            return new File(fileFileDirectory, CacheKeysKt.toMD5(storable.getKey()));
        }
    }
}
