package com.superwall.sdk.identity;

import com.superwall.sdk.storage.AliasId;
import com.superwall.sdk.storage.AppUserId;
import com.superwall.sdk.storage.Seed;
import com.superwall.sdk.storage.Storage;
import com.superwall.sdk.storage.UserAttributes;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: IdentityManagerActor.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u001a\u0018\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0000¨\u0006\u0006"}, d2 = {"createInitialIdentityState", "Lcom/superwall/sdk/identity/IdentityState;", "storage", "Lcom/superwall/sdk/storage/Storage;", "appInstalledAtString", "", "superwall_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class IdentityManagerActorKt {
    public static final IdentityState createInitialIdentityState(Storage storage, String appInstalledAtString) {
        String str;
        int iGenerateSeed;
        Map<String, Object> map;
        Intrinsics.checkNotNullParameter(storage, "storage");
        Intrinsics.checkNotNullParameter(appInstalledAtString, "appInstalledAtString");
        String str2 = (String) storage.read(AliasId.INSTANCE);
        Integer num = (Integer) storage.read(Seed.INSTANCE);
        if (str2 == null) {
            String strGenerateAlias = IdentityLogic.INSTANCE.generateAlias();
            storage.write(AliasId.INSTANCE, strGenerateAlias);
            str = strGenerateAlias;
        } else {
            str = str2;
        }
        if (num != null) {
            iGenerateSeed = num.intValue();
        } else {
            iGenerateSeed = IdentityLogic.INSTANCE.generateSeed();
            storage.write(Seed.INSTANCE, Integer.valueOf(iGenerateSeed));
        }
        int i = iGenerateSeed;
        String str3 = (String) storage.read(AppUserId.INSTANCE);
        Map<String, Object> mapEmptyMap = (Map) storage.read(UserAttributes.INSTANCE);
        if (mapEmptyMap == null) {
            mapEmptyMap = MapsKt.emptyMap();
        }
        if (str2 == null || num == null || mapEmptyMap.isEmpty()) {
            IdentityLogic identityLogic = IdentityLogic.INSTANCE;
            Map mapCreateMapBuilder = MapsKt.createMapBuilder();
            mapCreateMapBuilder.put(Keys.ALIAS_ID, str);
            mapCreateMapBuilder.put(Keys.SEED, Integer.valueOf(i));
            if (str3 != null) {
                mapCreateMapBuilder.put(Keys.APP_USER_ID, str3);
            }
            Map<String, Object> mapMergeAttributes = identityLogic.mergeAttributes(MapsKt.build(mapCreateMapBuilder), mapEmptyMap, appInstalledAtString);
            if (!Intrinsics.areEqual(mapMergeAttributes, mapEmptyMap)) {
                storage.write(UserAttributes.INSTANCE, mapMergeAttributes);
            }
            map = mapMergeAttributes;
        } else {
            map = mapEmptyMap;
        }
        return new IdentityState(str3, str, i, map, null, appInstalledAtString, 16, null);
    }
}
