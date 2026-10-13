package com.facebook.soloader;

import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes5.dex */
public interface ExternalSoMapping {
    void invokeJniOnload(String str);

    @Nullable
    String mapLibName(String str);
}
