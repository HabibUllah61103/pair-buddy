package com.superwall.sdk.storage;

import android.content.Context;
import java.io.File;
import kotlin.Metadata;
import kotlin.jvm.internal.StringCompanionObject;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.builtins.BuiltinSerializersKt;

/* JADX INFO: compiled from: CacheKeys.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007R\u0014\u0010\b\u001a\u00020\t8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\u000bR\u001a\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00020\r8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"Lcom/superwall/sdk/storage/SurveyAssignmentKey;", "Lcom/superwall/sdk/storage/Storable;", "", "<init>", "()V", "key", "getKey", "()Ljava/lang/String;", "directory", "Lcom/superwall/sdk/storage/SearchPathDirectory;", "getDirectory", "()Lcom/superwall/sdk/storage/SearchPathDirectory;", "serializer", "Lkotlinx/serialization/KSerializer;", "getSerializer", "()Lkotlinx/serialization/KSerializer;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class SurveyAssignmentKey implements Storable<String> {
    public static final SurveyAssignmentKey INSTANCE = new SurveyAssignmentKey();

    private SurveyAssignmentKey() {
    }

    @Override // com.superwall.sdk.storage.Storable
    public File file(Context context) {
        return Storable.DefaultImpls.file(this, context);
    }

    @Override // com.superwall.sdk.storage.Storable
    public String getKey() {
        return "store.surveyAssignmentKey";
    }

    @Override // com.superwall.sdk.storage.Storable
    public SearchPathDirectory getDirectory() {
        return SearchPathDirectory.USER_SPECIFIC_DOCUMENTS;
    }

    @Override // com.superwall.sdk.storage.Storable
    public KSerializer<String> getSerializer() {
        return BuiltinSerializersKt.serializer(StringCompanionObject.INSTANCE);
    }
}
