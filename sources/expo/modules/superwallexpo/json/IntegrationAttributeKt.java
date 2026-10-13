package expo.modules.superwallexpo.json;

import com.superwall.sdk.models.attribution.AttributionProvider;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: IntegrationAttribute.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u001a\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0002\u001a\u00020\u0003¨\u0006\u0004"}, d2 = {"attributionProviderFromString", "Lcom/superwall/sdk/models/attribution/AttributionProvider;", "provider", "", "expo-superwall_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class IntegrationAttributeKt {
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static final AttributionProvider attributionProviderFromString(String provider) {
        Intrinsics.checkNotNullParameter(provider, "provider");
        switch (provider.hashCode()) {
            case -1514099991:
                if (provider.equals("appsflyerId")) {
                    return AttributionProvider.APPSFLYER_ID;
                }
                return null;
            case -1448132264:
                if (provider.equals("iterableUserId")) {
                    return AttributionProvider.ITERABLE_USER_ID;
                }
                return null;
            case -1406822537:
                if (provider.equals("clevertapId")) {
                    return AttributionProvider.CLEVERTAP_ID;
                }
                return null;
            case -1298536819:
                if (provider.equals("tenjinId")) {
                    return AttributionProvider.TENJIN_ID;
                }
                return null;
            case -1161908534:
                if (provider.equals("firebaseAppInstanceId")) {
                    return AttributionProvider.FIREBASE_APP_INSTANCE_ID;
                }
                return null;
            case -1043752694:
                if (provider.equals("adjustId")) {
                    return AttributionProvider.ADJUST_ID;
                }
                return null;
            case -1015957580:
                if (provider.equals("amplitudeDeviceId")) {
                    return AttributionProvider.AMPLITUDE_DEVICE_ID;
                }
                return null;
            case -1001157793:
                if (provider.equals("brazeAliasName")) {
                    return AttributionProvider.BRAZE_ALIAS_NAME;
                }
                return null;
            case -972978016:
                if (provider.equals("brazeAliasLabel")) {
                    return AttributionProvider.BRAZE_ALIAS_LABEL;
                }
                return null;
            case -830017409:
                if (provider.equals("mixpanelDistinctId")) {
                    return AttributionProvider.MIXPANEL_DISTINCT_ID;
                }
                return null;
            case -738600633:
                if (provider.equals("iterableTemplateId")) {
                    return AttributionProvider.ITERABLE_TEMPLATE_ID;
                }
                return null;
            case -309343848:
                if (provider.equals("airshipChannelId")) {
                    return AttributionProvider.AIRSHIP_CHANNEL_ID;
                }
                return null;
            case 407656009:
                if (provider.equals("onesignalId")) {
                    return AttributionProvider.ONESIGNAL_ID;
                }
                return null;
            case 419939555:
                if (provider.equals("fbAnonId")) {
                    return AttributionProvider.FB_ANON_ID;
                }
                return null;
            case 900974015:
                if (provider.equals("customerioId")) {
                    return AttributionProvider.CUSTOMERIO_ID;
                }
                return null;
            case 934101085:
                if (provider.equals("iterableCampaignId")) {
                    return AttributionProvider.ITERABLE_CAMPAIGN_ID;
                }
                return null;
            case 1394459796:
                if (provider.equals("kochavaDeviceId")) {
                    return AttributionProvider.KOCHAVA_DEVICE_ID;
                }
                return null;
            case 1619855529:
                if (provider.equals("amplitudeUserId")) {
                    return AttributionProvider.AMPLITUDE_USER_ID;
                }
                return null;
            case 1725631086:
                if (provider.equals("mparticleId")) {
                    return AttributionProvider.MPARTICLE_ID;
                }
                return null;
            case 1778293254:
                if (provider.equals("posthogUserId")) {
                    return AttributionProvider.POSTHOG_USER_ID;
                }
                return null;
            case 1865177218:
                if (provider.equals("appstackId")) {
                    return AttributionProvider.APPSTACK;
                }
                return null;
            default:
                return null;
        }
    }
}
