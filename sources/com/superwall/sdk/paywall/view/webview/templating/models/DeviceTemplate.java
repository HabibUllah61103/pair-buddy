package com.superwall.sdk.paywall.view.webview.templating.models;

import androidx.media3.common.C;
import com.superwall.sdk.identity.Keys;
import com.superwall.sdk.storage.core_data.ConvertersKt;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerialName;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.ArrayListSerializer;
import kotlinx.serialization.internal.IntSerializer;
import kotlinx.serialization.internal.LinkedHashMapSerializer;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonElementSerializer;

/* JADX INFO: compiled from: DeviceTemplate.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u000f\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0011\n\u0002\u0010$\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\bA\n\u0002\u0018\u0002\n\u0002\b=\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 Ë\u00012\u00020\u0001:\u0004Ê\u0001Ë\u0001Bé\u0003\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u0007\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\u0006\u0010\u000b\u001a\u00020\u0003\u0012\u0006\u0010\f\u001a\u00020\u0003\u0012\u0006\u0010\r\u001a\u00020\u0003\u0012\u0006\u0010\u000e\u001a\u00020\u0003\u0012\u0006\u0010\u000f\u001a\u00020\u0003\u0012\u0006\u0010\u0010\u001a\u00020\u0003\u0012\u0006\u0010\u0011\u001a\u00020\u0003\u0012\u0006\u0010\u0012\u001a\u00020\u0003\u0012\u0006\u0010\u0013\u001a\u00020\u0003\u0012\u0006\u0010\u0014\u001a\u00020\u0003\u0012\u0006\u0010\u0015\u001a\u00020\u0003\u0012\u0006\u0010\u0016\u001a\u00020\u0017\u0012\u0006\u0010\u0018\u001a\u00020\u0003\u0012\u0006\u0010\u0019\u001a\u00020\u0003\u0012\u0006\u0010\u001a\u001a\u00020\u001b\u0012\u0006\u0010\u001c\u001a\u00020\u0003\u0012\u0006\u0010\u001d\u001a\u00020\u0003\u0012\u0006\u0010\u001e\u001a\u00020\u001b\u0012\u0006\u0010\u001f\u001a\u00020\u0017\u0012\u0006\u0010 \u001a\u00020\u0017\u0012\b\u0010!\u001a\u0004\u0018\u00010\u0017\u0012\b\u0010\"\u001a\u0004\u0018\u00010\u0017\u0012\u0006\u0010#\u001a\u00020\u0017\u0012\u0006\u0010$\u001a\u00020\u0003\u0012\u0006\u0010%\u001a\u00020\u0003\u0012\u0006\u0010&\u001a\u00020\u0003\u0012\u0006\u0010'\u001a\u00020\u0003\u0012\u0006\u0010(\u001a\u00020\u0003\u0012\u0006\u0010)\u001a\u00020\u0003\u0012\u0006\u0010*\u001a\u00020\u0003\u0012\f\u0010+\u001a\b\u0012\u0004\u0012\u00020\u00030\u0007\u0012\u0018\u0010,\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030-0\u0007\u0012\b\u0010.\u001a\u0004\u0018\u00010\u0003\u0012\f\u0010/\u001a\b\u0012\u0004\u0012\u00020\u00030\u0007\u0012\u0006\u00100\u001a\u00020\u001b\u0012\u0006\u00101\u001a\u00020\u0003\u0012\u0006\u00102\u001a\u00020\u0003\u0012\u0006\u00103\u001a\u00020\u0003\u0012\b\u00104\u001a\u0004\u0018\u00010\u0017\u0012\u0006\u00105\u001a\u00020\u0003\u0012\f\u00106\u001a\b\u0012\u0004\u0012\u00020\u00030\u0007\u0012\u0006\u00107\u001a\u000208\u0012\u0006\u00109\u001a\u00020\u0003\u0012\u0006\u0010:\u001a\u00020\u0003\u0012\u0006\u0010;\u001a\u00020\u0003\u0012\u0006\u0010<\u001a\u00020\u0017\u0012\u0006\u0010=\u001a\u00020\u0003¢\u0006\u0004\b>\u0010?BÙ\u0004\b\u0010\u0012\u0006\u0010@\u001a\u00020\u0017\u0012\u0006\u0010A\u001a\u00020\u0017\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0007\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0014\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0015\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0016\u001a\u00020\u0017\u0012\b\u0010\u0018\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0019\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u001a\u001a\u00020\u001b\u0012\b\u0010\u001c\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u001d\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u001e\u001a\u00020\u001b\u0012\u0006\u0010\u001f\u001a\u00020\u0017\u0012\u0006\u0010 \u001a\u00020\u0017\u0012\b\u0010!\u001a\u0004\u0018\u00010\u0017\u0012\b\u0010\"\u001a\u0004\u0018\u00010\u0017\u0012\u0006\u0010#\u001a\u00020\u0017\u0012\b\u0010$\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010%\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010&\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010'\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010(\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010)\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010*\u001a\u0004\u0018\u00010\u0003\u0012\u000e\u0010+\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0007\u0012\u001a\u0010,\u001a\u0016\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030-\u0018\u00010\u0007\u0012\b\u0010.\u001a\u0004\u0018\u00010\u0003\u0012\u000e\u0010/\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0007\u0012\u0006\u00100\u001a\u00020\u001b\u0012\b\u00101\u001a\u0004\u0018\u00010\u0003\u0012\b\u00102\u001a\u0004\u0018\u00010\u0003\u0012\b\u00103\u001a\u0004\u0018\u00010\u0003\u0012\b\u00104\u001a\u0004\u0018\u00010\u0017\u0012\b\u00105\u001a\u0004\u0018\u00010\u0003\u0012\u000e\u00106\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0007\u0012\b\u00107\u001a\u0004\u0018\u000108\u0012\b\u00109\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010:\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010;\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010<\u001a\u00020\u0017\u0012\b\u0010=\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010B\u001a\u0004\u0018\u00010C¢\u0006\u0004\b>\u0010DJ\u001d\u0010\u0083\u0001\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00010-2\b\u0010\u0084\u0001\u001a\u00030\u0085\u0001J\n\u0010\u0086\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010\u0087\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010\u0088\u0001\u001a\u00020\u0003HÆ\u0003J\u0010\u0010\u0089\u0001\u001a\b\u0012\u0004\u0012\u00020\u00030\u0007HÆ\u0003J\n\u0010\u008a\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010\u008b\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010\u008c\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010\u008d\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010\u008e\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010\u008f\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010\u0090\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010\u0091\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010\u0092\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010\u0093\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010\u0094\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010\u0095\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010\u0096\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010\u0097\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010\u0098\u0001\u001a\u00020\u0017HÆ\u0003J\n\u0010\u0099\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010\u009a\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010\u009b\u0001\u001a\u00020\u001bHÆ\u0003J\n\u0010\u009c\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010\u009d\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010\u009e\u0001\u001a\u00020\u001bHÆ\u0003J\n\u0010\u009f\u0001\u001a\u00020\u0017HÆ\u0003J\n\u0010 \u0001\u001a\u00020\u0017HÆ\u0003J\u0011\u0010¡\u0001\u001a\u0004\u0018\u00010\u0017HÆ\u0003¢\u0006\u0002\u0010cJ\u0011\u0010¢\u0001\u001a\u0004\u0018\u00010\u0017HÆ\u0003¢\u0006\u0002\u0010cJ\n\u0010£\u0001\u001a\u00020\u0017HÆ\u0003J\n\u0010¤\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010¥\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010¦\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010§\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010¨\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010©\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010ª\u0001\u001a\u00020\u0003HÆ\u0003J\u0010\u0010«\u0001\u001a\b\u0012\u0004\u0012\u00020\u00030\u0007HÆ\u0003J\u001c\u0010¬\u0001\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030-0\u0007HÆ\u0003J\f\u0010\u00ad\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010®\u0001\u001a\b\u0012\u0004\u0012\u00020\u00030\u0007HÆ\u0003J\n\u0010¯\u0001\u001a\u00020\u001bHÆ\u0003J\n\u0010°\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010±\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010²\u0001\u001a\u00020\u0003HÆ\u0003J\u0011\u0010³\u0001\u001a\u0004\u0018\u00010\u0017HÆ\u0003¢\u0006\u0002\u0010cJ\n\u0010´\u0001\u001a\u00020\u0003HÆ\u0003J\u0010\u0010µ\u0001\u001a\b\u0012\u0004\u0012\u00020\u00030\u0007HÆ\u0003J\n\u0010¶\u0001\u001a\u000208HÆ\u0003J\n\u0010·\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010¸\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010¹\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010º\u0001\u001a\u00020\u0017HÆ\u0003J\n\u0010»\u0001\u001a\u00020\u0003HÆ\u0003JÞ\u0004\u0010¼\u0001\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u00072\b\b\u0002\u0010\b\u001a\u00020\u00032\b\b\u0002\u0010\t\u001a\u00020\u00032\b\b\u0002\u0010\n\u001a\u00020\u00032\b\b\u0002\u0010\u000b\u001a\u00020\u00032\b\b\u0002\u0010\f\u001a\u00020\u00032\b\b\u0002\u0010\r\u001a\u00020\u00032\b\b\u0002\u0010\u000e\u001a\u00020\u00032\b\b\u0002\u0010\u000f\u001a\u00020\u00032\b\b\u0002\u0010\u0010\u001a\u00020\u00032\b\b\u0002\u0010\u0011\u001a\u00020\u00032\b\b\u0002\u0010\u0012\u001a\u00020\u00032\b\b\u0002\u0010\u0013\u001a\u00020\u00032\b\b\u0002\u0010\u0014\u001a\u00020\u00032\b\b\u0002\u0010\u0015\u001a\u00020\u00032\b\b\u0002\u0010\u0016\u001a\u00020\u00172\b\b\u0002\u0010\u0018\u001a\u00020\u00032\b\b\u0002\u0010\u0019\u001a\u00020\u00032\b\b\u0002\u0010\u001a\u001a\u00020\u001b2\b\b\u0002\u0010\u001c\u001a\u00020\u00032\b\b\u0002\u0010\u001d\u001a\u00020\u00032\b\b\u0002\u0010\u001e\u001a\u00020\u001b2\b\b\u0002\u0010\u001f\u001a\u00020\u00172\b\b\u0002\u0010 \u001a\u00020\u00172\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\u00172\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010\u00172\b\b\u0002\u0010#\u001a\u00020\u00172\b\b\u0002\u0010$\u001a\u00020\u00032\b\b\u0002\u0010%\u001a\u00020\u00032\b\b\u0002\u0010&\u001a\u00020\u00032\b\b\u0002\u0010'\u001a\u00020\u00032\b\b\u0002\u0010(\u001a\u00020\u00032\b\b\u0002\u0010)\u001a\u00020\u00032\b\b\u0002\u0010*\u001a\u00020\u00032\u000e\b\u0002\u0010+\u001a\b\u0012\u0004\u0012\u00020\u00030\u00072\u001a\b\u0002\u0010,\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030-0\u00072\n\b\u0002\u0010.\u001a\u0004\u0018\u00010\u00032\u000e\b\u0002\u0010/\u001a\b\u0012\u0004\u0012\u00020\u00030\u00072\b\b\u0002\u00100\u001a\u00020\u001b2\b\b\u0002\u00101\u001a\u00020\u00032\b\b\u0002\u00102\u001a\u00020\u00032\b\b\u0002\u00103\u001a\u00020\u00032\n\b\u0002\u00104\u001a\u0004\u0018\u00010\u00172\b\b\u0002\u00105\u001a\u00020\u00032\u000e\b\u0002\u00106\u001a\b\u0012\u0004\u0012\u00020\u00030\u00072\b\b\u0002\u00107\u001a\u0002082\b\b\u0002\u00109\u001a\u00020\u00032\b\b\u0002\u0010:\u001a\u00020\u00032\b\b\u0002\u0010;\u001a\u00020\u00032\b\b\u0002\u0010<\u001a\u00020\u00172\b\b\u0002\u0010=\u001a\u00020\u0003HÆ\u0001¢\u0006\u0003\u0010½\u0001J\u0015\u0010¾\u0001\u001a\u00020\u001b2\t\u0010¿\u0001\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\n\u0010À\u0001\u001a\u00020\u0017HÖ\u0001J\n\u0010Á\u0001\u001a\u00020\u0003HÖ\u0001J-\u0010Â\u0001\u001a\u00030Ã\u00012\u0007\u0010Ä\u0001\u001a\u00020\u00002\b\u0010Å\u0001\u001a\u00030Æ\u00012\b\u0010Ç\u0001\u001a\u00030È\u0001H\u0001¢\u0006\u0003\bÉ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\bE\u0010FR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\bG\u0010FR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\bH\u0010FR\u0017\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u0007¢\u0006\b\n\u0000\u001a\u0004\bI\u0010JR\u0011\u0010\b\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\bK\u0010FR\u0011\u0010\t\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\bL\u0010FR\u0011\u0010\n\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\bM\u0010FR\u0011\u0010\u000b\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\bN\u0010FR\u0011\u0010\f\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\bO\u0010FR\u0011\u0010\r\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\bP\u0010FR\u0011\u0010\u000e\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\bQ\u0010FR\u0011\u0010\u000f\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\bR\u0010FR\u0011\u0010\u0010\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\bS\u0010FR\u0011\u0010\u0011\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\bT\u0010FR\u0011\u0010\u0012\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\bU\u0010FR\u0011\u0010\u0013\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\bV\u0010FR\u0011\u0010\u0014\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\bW\u0010FR\u0011\u0010\u0015\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\bX\u0010FR\u0011\u0010\u0016\u001a\u00020\u0017¢\u0006\b\n\u0000\u001a\u0004\bY\u0010ZR\u0011\u0010\u0018\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b[\u0010FR\u0011\u0010\u0019\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\\\u0010FR\u0011\u0010\u001a\u001a\u00020\u001b¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010]R\u0011\u0010\u001c\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b^\u0010FR\u0011\u0010\u001d\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b_\u0010FR\u0011\u0010\u001e\u001a\u00020\u001b¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010]R\u0011\u0010\u001f\u001a\u00020\u0017¢\u0006\b\n\u0000\u001a\u0004\b`\u0010ZR\u0011\u0010 \u001a\u00020\u0017¢\u0006\b\n\u0000\u001a\u0004\ba\u0010ZR\u0015\u0010!\u001a\u0004\u0018\u00010\u0017¢\u0006\n\n\u0002\u0010d\u001a\u0004\bb\u0010cR\u0015\u0010\"\u001a\u0004\u0018\u00010\u0017¢\u0006\n\n\u0002\u0010d\u001a\u0004\be\u0010cR\u0011\u0010#\u001a\u00020\u0017¢\u0006\b\n\u0000\u001a\u0004\bf\u0010ZR\u0011\u0010$\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\bg\u0010FR\u0011\u0010%\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\bh\u0010FR\u0011\u0010&\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\bi\u0010FR\u0011\u0010'\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\bj\u0010FR\u0011\u0010(\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\bk\u0010FR\u0011\u0010)\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\bl\u0010FR\u0011\u0010*\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b*\u0010FR\u0017\u0010+\u001a\b\u0012\u0004\u0012\u00020\u00030\u0007¢\u0006\b\n\u0000\u001a\u0004\bm\u0010JR#\u0010,\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030-0\u0007¢\u0006\b\n\u0000\u001a\u0004\bn\u0010JR\u0013\u0010.\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\bo\u0010FR\u0017\u0010/\u001a\b\u0012\u0004\u0012\u00020\u00030\u0007¢\u0006\b\n\u0000\u001a\u0004\bp\u0010JR\u0011\u00100\u001a\u00020\u001b¢\u0006\b\n\u0000\u001a\u0004\b0\u0010]R\u0011\u00101\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\bq\u0010FR\u0011\u00102\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\br\u0010FR\u0011\u00103\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\bs\u0010FR\u0015\u00104\u001a\u0004\u0018\u00010\u0017¢\u0006\n\n\u0002\u0010d\u001a\u0004\bt\u0010cR\u0011\u00105\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\bu\u0010FR\"\u00106\u001a\b\u0012\u0004\u0012\u00020\u00030\u00078\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\bv\u0010w\u001a\u0004\bx\u0010JR\u001c\u00107\u001a\u0002088\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\by\u0010w\u001a\u0004\bz\u0010{R\u001c\u00109\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b|\u0010w\u001a\u0004\b}\u0010FR\u001c\u0010:\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b~\u0010w\u001a\u0004\b\u007f\u0010FR\u0012\u0010;\u001a\u00020\u0003¢\u0006\t\n\u0000\u001a\u0005\b\u0080\u0001\u0010FR\u0012\u0010<\u001a\u00020\u0017¢\u0006\t\n\u0000\u001a\u0005\b\u0081\u0001\u0010ZR\u0012\u0010=\u001a\u00020\u0003¢\u0006\t\n\u0000\u001a\u0005\b\u0082\u0001\u0010F¨\u0006Ì\u0001"}, d2 = {"Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;", "", "publicApiKey", "", "platform", Keys.APP_USER_ID, "aliases", "", "vendorId", "deviceId", "appVersion", "appVersionPadded", "osVersion", "deviceModel", "deviceLocale", "preferredLocale", "deviceLanguageCode", "preferredLanguageCode", "regionCode", "preferredRegionCode", "deviceCurrencyCode", "deviceCurrencySymbol", "timezoneOffset", "", "radioType", "interfaceStyle", "isLowPowerModeEnabled", "", "bundleId", "appInstallDate", "isMac", "daysSinceInstall", "minutesSinceInstall", "daysSinceLastPaywallView", "minutesSinceLastPaywallView", "totalPaywallViews", "utcDate", "localDate", "utcTime", "localTime", "utcDateTime", "localDateTime", "isSandbox", "activeEntitlements", "activeEntitlementsObject", "", "subscriptionStatus", "activeProducts", "isFirstAppOpen", "sdkVersion", "sdkVersionPadded", "appBuildString", "appBuildStringNumber", "interfaceStyleMode", "capabilities", "capabilitiesConfig", "Lkotlinx/serialization/json/JsonElement;", "platformWrapper", "platformWrapperVersion", "deviceTier", "reviewRequestCount", "kotlinVersion", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZIILjava/lang/Integer;Ljava/lang/Integer;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Lkotlinx/serialization/json/JsonElement;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V", "seen0", "seen1", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZIILjava/lang/Integer;Ljava/lang/Integer;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Lkotlinx/serialization/json/JsonElement;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "getPublicApiKey", "()Ljava/lang/String;", "getPlatform", "getAppUserId", "getAliases", "()Ljava/util/List;", "getVendorId", "getDeviceId", "getAppVersion", "getAppVersionPadded", "getOsVersion", "getDeviceModel", "getDeviceLocale", "getPreferredLocale", "getDeviceLanguageCode", "getPreferredLanguageCode", "getRegionCode", "getPreferredRegionCode", "getDeviceCurrencyCode", "getDeviceCurrencySymbol", "getTimezoneOffset", "()I", "getRadioType", "getInterfaceStyle", "()Z", "getBundleId", "getAppInstallDate", "getDaysSinceInstall", "getMinutesSinceInstall", "getDaysSinceLastPaywallView", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getMinutesSinceLastPaywallView", "getTotalPaywallViews", "getUtcDate", "getLocalDate", "getUtcTime", "getLocalTime", "getUtcDateTime", "getLocalDateTime", "getActiveEntitlements", "getActiveEntitlementsObject", "getSubscriptionStatus", "getActiveProducts", "getSdkVersion", "getSdkVersionPadded", "getAppBuildString", "getAppBuildStringNumber", "getInterfaceStyleMode", "getCapabilities$annotations", "()V", "getCapabilities", "getCapabilitiesConfig$annotations", "getCapabilitiesConfig", "()Lkotlinx/serialization/json/JsonElement;", "getPlatformWrapper$annotations", "getPlatformWrapper", "getPlatformWrapperVersion$annotations", "getPlatformWrapperVersion", "getDeviceTier", "getReviewRequestCount", "getKotlinVersion", "toDictionary", "json", "Lkotlinx/serialization/json/Json;", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "component18", "component19", "component20", "component21", "component22", "component23", "component24", "component25", "component26", "component27", "component28", "component29", "component30", "component31", "component32", "component33", "component34", "component35", "component36", "component37", "component38", "component39", "component40", "component41", "component42", "component43", "component44", "component45", "component46", "component47", "component48", "component49", "component50", "component51", "component52", "component53", "component54", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZIILjava/lang/Integer;Ljava/lang/Integer;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Lkotlinx/serialization/json/JsonElement;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;", "equals", "other", "hashCode", "toString", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$superwall_release", "$serializer", "Companion", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
@Serializable
public final /* data */ class DeviceTemplate {
    private final List<String> activeEntitlements;
    private final List<Map<String, String>> activeEntitlementsObject;
    private final List<String> activeProducts;
    private final List<String> aliases;
    private final String appBuildString;
    private final Integer appBuildStringNumber;
    private final String appInstallDate;
    private final String appUserId;
    private final String appVersion;
    private final String appVersionPadded;
    private final String bundleId;
    private final List<String> capabilities;
    private final JsonElement capabilitiesConfig;
    private final int daysSinceInstall;
    private final Integer daysSinceLastPaywallView;
    private final String deviceCurrencyCode;
    private final String deviceCurrencySymbol;
    private final String deviceId;
    private final String deviceLanguageCode;
    private final String deviceLocale;
    private final String deviceModel;
    private final String deviceTier;
    private final String interfaceStyle;
    private final String interfaceStyleMode;
    private final boolean isFirstAppOpen;
    private final boolean isLowPowerModeEnabled;
    private final boolean isMac;
    private final String isSandbox;
    private final String kotlinVersion;
    private final String localDate;
    private final String localDateTime;
    private final String localTime;
    private final int minutesSinceInstall;
    private final Integer minutesSinceLastPaywallView;
    private final String osVersion;
    private final String platform;
    private final String platformWrapper;
    private final String platformWrapperVersion;
    private final String preferredLanguageCode;
    private final String preferredLocale;
    private final String preferredRegionCode;
    private final String publicApiKey;
    private final String radioType;
    private final String regionCode;
    private final int reviewRequestCount;
    private final String sdkVersion;
    private final String sdkVersionPadded;
    private final String subscriptionStatus;
    private final int timezoneOffset;
    private final int totalPaywallViews;
    private final String utcDate;
    private final String utcDateTime;
    private final String utcTime;
    private final String vendorId;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final KSerializer<Object>[] $childSerializers = {null, null, null, new ArrayListSerializer(StringSerializer.INSTANCE), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, new ArrayListSerializer(StringSerializer.INSTANCE), new ArrayListSerializer(new LinkedHashMapSerializer(StringSerializer.INSTANCE, StringSerializer.INSTANCE)), null, new ArrayListSerializer(StringSerializer.INSTANCE), null, null, null, null, null, null, new ArrayListSerializer(StringSerializer.INSTANCE), null, null, null, null, null, null};

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ DeviceTemplate copy$default(DeviceTemplate deviceTemplate, String str, String str2, String str3, List list, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, String str15, String str16, String str17, int i, String str18, String str19, boolean z, String str20, String str21, boolean z2, int i2, int i3, Integer num, Integer num2, int i4, String str22, String str23, String str24, String str25, String str26, String str27, String str28, List list2, List list3, String str29, List list4, boolean z3, String str30, String str31, String str32, Integer num3, String str33, List list5, JsonElement jsonElement, String str34, String str35, String str36, int i5, String str37, int i6, int i7, Object obj) {
        String str38 = (i6 & 1) != 0 ? deviceTemplate.publicApiKey : str;
        return deviceTemplate.copy(str38, (i6 & 2) != 0 ? deviceTemplate.platform : str2, (i6 & 4) != 0 ? deviceTemplate.appUserId : str3, (i6 & 8) != 0 ? deviceTemplate.aliases : list, (i6 & 16) != 0 ? deviceTemplate.vendorId : str4, (i6 & 32) != 0 ? deviceTemplate.deviceId : str5, (i6 & 64) != 0 ? deviceTemplate.appVersion : str6, (i6 & 128) != 0 ? deviceTemplate.appVersionPadded : str7, (i6 & 256) != 0 ? deviceTemplate.osVersion : str8, (i6 & 512) != 0 ? deviceTemplate.deviceModel : str9, (i6 & 1024) != 0 ? deviceTemplate.deviceLocale : str10, (i6 & 2048) != 0 ? deviceTemplate.preferredLocale : str11, (i6 & 4096) != 0 ? deviceTemplate.deviceLanguageCode : str12, (i6 & 8192) != 0 ? deviceTemplate.preferredLanguageCode : str13, (i6 & 16384) != 0 ? deviceTemplate.regionCode : str14, (i6 & 32768) != 0 ? deviceTemplate.preferredRegionCode : str15, (i6 & 65536) != 0 ? deviceTemplate.deviceCurrencyCode : str16, (i6 & 131072) != 0 ? deviceTemplate.deviceCurrencySymbol : str17, (i6 & 262144) != 0 ? deviceTemplate.timezoneOffset : i, (i6 & 524288) != 0 ? deviceTemplate.radioType : str18, (i6 & 1048576) != 0 ? deviceTemplate.interfaceStyle : str19, (i6 & 2097152) != 0 ? deviceTemplate.isLowPowerModeEnabled : z, (i6 & 4194304) != 0 ? deviceTemplate.bundleId : str20, (i6 & 8388608) != 0 ? deviceTemplate.appInstallDate : str21, (i6 & 16777216) != 0 ? deviceTemplate.isMac : z2, (i6 & 33554432) != 0 ? deviceTemplate.daysSinceInstall : i2, (i6 & 67108864) != 0 ? deviceTemplate.minutesSinceInstall : i3, (i6 & C.BUFFER_FLAG_FIRST_SAMPLE) != 0 ? deviceTemplate.daysSinceLastPaywallView : num, (i6 & 268435456) != 0 ? deviceTemplate.minutesSinceLastPaywallView : num2, (i6 & C.BUFFER_FLAG_LAST_SAMPLE) != 0 ? deviceTemplate.totalPaywallViews : i4, (i6 & 1073741824) != 0 ? deviceTemplate.utcDate : str22, (i6 & Integer.MIN_VALUE) != 0 ? deviceTemplate.localDate : str23, (i7 & 1) != 0 ? deviceTemplate.utcTime : str24, (i7 & 2) != 0 ? deviceTemplate.localTime : str25, (i7 & 4) != 0 ? deviceTemplate.utcDateTime : str26, (i7 & 8) != 0 ? deviceTemplate.localDateTime : str27, (i7 & 16) != 0 ? deviceTemplate.isSandbox : str28, (i7 & 32) != 0 ? deviceTemplate.activeEntitlements : list2, (i7 & 64) != 0 ? deviceTemplate.activeEntitlementsObject : list3, (i7 & 128) != 0 ? deviceTemplate.subscriptionStatus : str29, (i7 & 256) != 0 ? deviceTemplate.activeProducts : list4, (i7 & 512) != 0 ? deviceTemplate.isFirstAppOpen : z3, (i7 & 1024) != 0 ? deviceTemplate.sdkVersion : str30, (i7 & 2048) != 0 ? deviceTemplate.sdkVersionPadded : str31, (i7 & 4096) != 0 ? deviceTemplate.appBuildString : str32, (i7 & 8192) != 0 ? deviceTemplate.appBuildStringNumber : num3, (i7 & 16384) != 0 ? deviceTemplate.interfaceStyleMode : str33, (i7 & 32768) != 0 ? deviceTemplate.capabilities : list5, (i7 & 65536) != 0 ? deviceTemplate.capabilitiesConfig : jsonElement, (i7 & 131072) != 0 ? deviceTemplate.platformWrapper : str34, (i7 & 262144) != 0 ? deviceTemplate.platformWrapperVersion : str35, (i7 & 524288) != 0 ? deviceTemplate.deviceTier : str36, (i7 & 1048576) != 0 ? deviceTemplate.reviewRequestCount : i5, (i7 & 2097152) != 0 ? deviceTemplate.kotlinVersion : str37);
    }

    @SerialName("capabilities")
    public static /* synthetic */ void getCapabilities$annotations() {
    }

    @SerialName("capabilities_config")
    public static /* synthetic */ void getCapabilitiesConfig$annotations() {
    }

    @SerialName("platform_wrapper")
    public static /* synthetic */ void getPlatformWrapper$annotations() {
    }

    @SerialName("platform_wrapper_version")
    public static /* synthetic */ void getPlatformWrapperVersion$annotations() {
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getPublicApiKey() {
        return this.publicApiKey;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final String getDeviceModel() {
        return this.deviceModel;
    }

    /* JADX INFO: renamed from: component11, reason: from getter */
    public final String getDeviceLocale() {
        return this.deviceLocale;
    }

    /* JADX INFO: renamed from: component12, reason: from getter */
    public final String getPreferredLocale() {
        return this.preferredLocale;
    }

    /* JADX INFO: renamed from: component13, reason: from getter */
    public final String getDeviceLanguageCode() {
        return this.deviceLanguageCode;
    }

    /* JADX INFO: renamed from: component14, reason: from getter */
    public final String getPreferredLanguageCode() {
        return this.preferredLanguageCode;
    }

    /* JADX INFO: renamed from: component15, reason: from getter */
    public final String getRegionCode() {
        return this.regionCode;
    }

    /* JADX INFO: renamed from: component16, reason: from getter */
    public final String getPreferredRegionCode() {
        return this.preferredRegionCode;
    }

    /* JADX INFO: renamed from: component17, reason: from getter */
    public final String getDeviceCurrencyCode() {
        return this.deviceCurrencyCode;
    }

    /* JADX INFO: renamed from: component18, reason: from getter */
    public final String getDeviceCurrencySymbol() {
        return this.deviceCurrencySymbol;
    }

    /* JADX INFO: renamed from: component19, reason: from getter */
    public final int getTimezoneOffset() {
        return this.timezoneOffset;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getPlatform() {
        return this.platform;
    }

    /* JADX INFO: renamed from: component20, reason: from getter */
    public final String getRadioType() {
        return this.radioType;
    }

    /* JADX INFO: renamed from: component21, reason: from getter */
    public final String getInterfaceStyle() {
        return this.interfaceStyle;
    }

    /* JADX INFO: renamed from: component22, reason: from getter */
    public final boolean getIsLowPowerModeEnabled() {
        return this.isLowPowerModeEnabled;
    }

    /* JADX INFO: renamed from: component23, reason: from getter */
    public final String getBundleId() {
        return this.bundleId;
    }

    /* JADX INFO: renamed from: component24, reason: from getter */
    public final String getAppInstallDate() {
        return this.appInstallDate;
    }

    /* JADX INFO: renamed from: component25, reason: from getter */
    public final boolean getIsMac() {
        return this.isMac;
    }

    /* JADX INFO: renamed from: component26, reason: from getter */
    public final int getDaysSinceInstall() {
        return this.daysSinceInstall;
    }

    /* JADX INFO: renamed from: component27, reason: from getter */
    public final int getMinutesSinceInstall() {
        return this.minutesSinceInstall;
    }

    /* JADX INFO: renamed from: component28, reason: from getter */
    public final Integer getDaysSinceLastPaywallView() {
        return this.daysSinceLastPaywallView;
    }

    /* JADX INFO: renamed from: component29, reason: from getter */
    public final Integer getMinutesSinceLastPaywallView() {
        return this.minutesSinceLastPaywallView;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getAppUserId() {
        return this.appUserId;
    }

    /* JADX INFO: renamed from: component30, reason: from getter */
    public final int getTotalPaywallViews() {
        return this.totalPaywallViews;
    }

    /* JADX INFO: renamed from: component31, reason: from getter */
    public final String getUtcDate() {
        return this.utcDate;
    }

    /* JADX INFO: renamed from: component32, reason: from getter */
    public final String getLocalDate() {
        return this.localDate;
    }

    /* JADX INFO: renamed from: component33, reason: from getter */
    public final String getUtcTime() {
        return this.utcTime;
    }

    /* JADX INFO: renamed from: component34, reason: from getter */
    public final String getLocalTime() {
        return this.localTime;
    }

    /* JADX INFO: renamed from: component35, reason: from getter */
    public final String getUtcDateTime() {
        return this.utcDateTime;
    }

    /* JADX INFO: renamed from: component36, reason: from getter */
    public final String getLocalDateTime() {
        return this.localDateTime;
    }

    /* JADX INFO: renamed from: component37, reason: from getter */
    public final String getIsSandbox() {
        return this.isSandbox;
    }

    public final List<String> component38() {
        return this.activeEntitlements;
    }

    public final List<Map<String, String>> component39() {
        return this.activeEntitlementsObject;
    }

    public final List<String> component4() {
        return this.aliases;
    }

    /* JADX INFO: renamed from: component40, reason: from getter */
    public final String getSubscriptionStatus() {
        return this.subscriptionStatus;
    }

    public final List<String> component41() {
        return this.activeProducts;
    }

    /* JADX INFO: renamed from: component42, reason: from getter */
    public final boolean getIsFirstAppOpen() {
        return this.isFirstAppOpen;
    }

    /* JADX INFO: renamed from: component43, reason: from getter */
    public final String getSdkVersion() {
        return this.sdkVersion;
    }

    /* JADX INFO: renamed from: component44, reason: from getter */
    public final String getSdkVersionPadded() {
        return this.sdkVersionPadded;
    }

    /* JADX INFO: renamed from: component45, reason: from getter */
    public final String getAppBuildString() {
        return this.appBuildString;
    }

    /* JADX INFO: renamed from: component46, reason: from getter */
    public final Integer getAppBuildStringNumber() {
        return this.appBuildStringNumber;
    }

    /* JADX INFO: renamed from: component47, reason: from getter */
    public final String getInterfaceStyleMode() {
        return this.interfaceStyleMode;
    }

    public final List<String> component48() {
        return this.capabilities;
    }

    /* JADX INFO: renamed from: component49, reason: from getter */
    public final JsonElement getCapabilitiesConfig() {
        return this.capabilitiesConfig;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getVendorId() {
        return this.vendorId;
    }

    /* JADX INFO: renamed from: component50, reason: from getter */
    public final String getPlatformWrapper() {
        return this.platformWrapper;
    }

    /* JADX INFO: renamed from: component51, reason: from getter */
    public final String getPlatformWrapperVersion() {
        return this.platformWrapperVersion;
    }

    /* JADX INFO: renamed from: component52, reason: from getter */
    public final String getDeviceTier() {
        return this.deviceTier;
    }

    /* JADX INFO: renamed from: component53, reason: from getter */
    public final int getReviewRequestCount() {
        return this.reviewRequestCount;
    }

    /* JADX INFO: renamed from: component54, reason: from getter */
    public final String getKotlinVersion() {
        return this.kotlinVersion;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getDeviceId() {
        return this.deviceId;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final String getAppVersion() {
        return this.appVersion;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final String getAppVersionPadded() {
        return this.appVersionPadded;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final String getOsVersion() {
        return this.osVersion;
    }

    public final DeviceTemplate copy(String publicApiKey, String platform, String appUserId, List<String> aliases, String vendorId, String deviceId, String appVersion, String appVersionPadded, String osVersion, String deviceModel, String deviceLocale, String preferredLocale, String deviceLanguageCode, String preferredLanguageCode, String regionCode, String preferredRegionCode, String deviceCurrencyCode, String deviceCurrencySymbol, int timezoneOffset, String radioType, String interfaceStyle, boolean isLowPowerModeEnabled, String bundleId, String appInstallDate, boolean isMac, int daysSinceInstall, int minutesSinceInstall, Integer daysSinceLastPaywallView, Integer minutesSinceLastPaywallView, int totalPaywallViews, String utcDate, String localDate, String utcTime, String localTime, String utcDateTime, String localDateTime, String isSandbox, List<String> activeEntitlements, List<? extends Map<String, String>> activeEntitlementsObject, String subscriptionStatus, List<String> activeProducts, boolean isFirstAppOpen, String sdkVersion, String sdkVersionPadded, String appBuildString, Integer appBuildStringNumber, String interfaceStyleMode, List<String> capabilities, JsonElement capabilitiesConfig, String platformWrapper, String platformWrapperVersion, String deviceTier, int reviewRequestCount, String kotlinVersion) {
        Intrinsics.checkNotNullParameter(publicApiKey, "publicApiKey");
        Intrinsics.checkNotNullParameter(platform, "platform");
        Intrinsics.checkNotNullParameter(appUserId, "appUserId");
        Intrinsics.checkNotNullParameter(aliases, "aliases");
        Intrinsics.checkNotNullParameter(vendorId, "vendorId");
        Intrinsics.checkNotNullParameter(deviceId, "deviceId");
        Intrinsics.checkNotNullParameter(appVersion, "appVersion");
        Intrinsics.checkNotNullParameter(appVersionPadded, "appVersionPadded");
        Intrinsics.checkNotNullParameter(osVersion, "osVersion");
        Intrinsics.checkNotNullParameter(deviceModel, "deviceModel");
        Intrinsics.checkNotNullParameter(deviceLocale, "deviceLocale");
        Intrinsics.checkNotNullParameter(preferredLocale, "preferredLocale");
        Intrinsics.checkNotNullParameter(deviceLanguageCode, "deviceLanguageCode");
        Intrinsics.checkNotNullParameter(preferredLanguageCode, "preferredLanguageCode");
        Intrinsics.checkNotNullParameter(regionCode, "regionCode");
        Intrinsics.checkNotNullParameter(preferredRegionCode, "preferredRegionCode");
        Intrinsics.checkNotNullParameter(deviceCurrencyCode, "deviceCurrencyCode");
        Intrinsics.checkNotNullParameter(deviceCurrencySymbol, "deviceCurrencySymbol");
        Intrinsics.checkNotNullParameter(radioType, "radioType");
        Intrinsics.checkNotNullParameter(interfaceStyle, "interfaceStyle");
        Intrinsics.checkNotNullParameter(bundleId, "bundleId");
        Intrinsics.checkNotNullParameter(appInstallDate, "appInstallDate");
        Intrinsics.checkNotNullParameter(utcDate, "utcDate");
        Intrinsics.checkNotNullParameter(localDate, "localDate");
        Intrinsics.checkNotNullParameter(utcTime, "utcTime");
        Intrinsics.checkNotNullParameter(localTime, "localTime");
        Intrinsics.checkNotNullParameter(utcDateTime, "utcDateTime");
        Intrinsics.checkNotNullParameter(localDateTime, "localDateTime");
        Intrinsics.checkNotNullParameter(isSandbox, "isSandbox");
        Intrinsics.checkNotNullParameter(activeEntitlements, "activeEntitlements");
        Intrinsics.checkNotNullParameter(activeEntitlementsObject, "activeEntitlementsObject");
        Intrinsics.checkNotNullParameter(activeProducts, "activeProducts");
        Intrinsics.checkNotNullParameter(sdkVersion, "sdkVersion");
        Intrinsics.checkNotNullParameter(sdkVersionPadded, "sdkVersionPadded");
        Intrinsics.checkNotNullParameter(appBuildString, "appBuildString");
        Intrinsics.checkNotNullParameter(interfaceStyleMode, "interfaceStyleMode");
        Intrinsics.checkNotNullParameter(capabilities, "capabilities");
        Intrinsics.checkNotNullParameter(capabilitiesConfig, "capabilitiesConfig");
        Intrinsics.checkNotNullParameter(platformWrapper, "platformWrapper");
        Intrinsics.checkNotNullParameter(platformWrapperVersion, "platformWrapperVersion");
        Intrinsics.checkNotNullParameter(deviceTier, "deviceTier");
        Intrinsics.checkNotNullParameter(kotlinVersion, "kotlinVersion");
        return new DeviceTemplate(publicApiKey, platform, appUserId, aliases, vendorId, deviceId, appVersion, appVersionPadded, osVersion, deviceModel, deviceLocale, preferredLocale, deviceLanguageCode, preferredLanguageCode, regionCode, preferredRegionCode, deviceCurrencyCode, deviceCurrencySymbol, timezoneOffset, radioType, interfaceStyle, isLowPowerModeEnabled, bundleId, appInstallDate, isMac, daysSinceInstall, minutesSinceInstall, daysSinceLastPaywallView, minutesSinceLastPaywallView, totalPaywallViews, utcDate, localDate, utcTime, localTime, utcDateTime, localDateTime, isSandbox, activeEntitlements, activeEntitlementsObject, subscriptionStatus, activeProducts, isFirstAppOpen, sdkVersion, sdkVersionPadded, appBuildString, appBuildStringNumber, interfaceStyleMode, capabilities, capabilitiesConfig, platformWrapper, platformWrapperVersion, deviceTier, reviewRequestCount, kotlinVersion);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof DeviceTemplate)) {
            return false;
        }
        DeviceTemplate deviceTemplate = (DeviceTemplate) other;
        return Intrinsics.areEqual(this.publicApiKey, deviceTemplate.publicApiKey) && Intrinsics.areEqual(this.platform, deviceTemplate.platform) && Intrinsics.areEqual(this.appUserId, deviceTemplate.appUserId) && Intrinsics.areEqual(this.aliases, deviceTemplate.aliases) && Intrinsics.areEqual(this.vendorId, deviceTemplate.vendorId) && Intrinsics.areEqual(this.deviceId, deviceTemplate.deviceId) && Intrinsics.areEqual(this.appVersion, deviceTemplate.appVersion) && Intrinsics.areEqual(this.appVersionPadded, deviceTemplate.appVersionPadded) && Intrinsics.areEqual(this.osVersion, deviceTemplate.osVersion) && Intrinsics.areEqual(this.deviceModel, deviceTemplate.deviceModel) && Intrinsics.areEqual(this.deviceLocale, deviceTemplate.deviceLocale) && Intrinsics.areEqual(this.preferredLocale, deviceTemplate.preferredLocale) && Intrinsics.areEqual(this.deviceLanguageCode, deviceTemplate.deviceLanguageCode) && Intrinsics.areEqual(this.preferredLanguageCode, deviceTemplate.preferredLanguageCode) && Intrinsics.areEqual(this.regionCode, deviceTemplate.regionCode) && Intrinsics.areEqual(this.preferredRegionCode, deviceTemplate.preferredRegionCode) && Intrinsics.areEqual(this.deviceCurrencyCode, deviceTemplate.deviceCurrencyCode) && Intrinsics.areEqual(this.deviceCurrencySymbol, deviceTemplate.deviceCurrencySymbol) && this.timezoneOffset == deviceTemplate.timezoneOffset && Intrinsics.areEqual(this.radioType, deviceTemplate.radioType) && Intrinsics.areEqual(this.interfaceStyle, deviceTemplate.interfaceStyle) && this.isLowPowerModeEnabled == deviceTemplate.isLowPowerModeEnabled && Intrinsics.areEqual(this.bundleId, deviceTemplate.bundleId) && Intrinsics.areEqual(this.appInstallDate, deviceTemplate.appInstallDate) && this.isMac == deviceTemplate.isMac && this.daysSinceInstall == deviceTemplate.daysSinceInstall && this.minutesSinceInstall == deviceTemplate.minutesSinceInstall && Intrinsics.areEqual(this.daysSinceLastPaywallView, deviceTemplate.daysSinceLastPaywallView) && Intrinsics.areEqual(this.minutesSinceLastPaywallView, deviceTemplate.minutesSinceLastPaywallView) && this.totalPaywallViews == deviceTemplate.totalPaywallViews && Intrinsics.areEqual(this.utcDate, deviceTemplate.utcDate) && Intrinsics.areEqual(this.localDate, deviceTemplate.localDate) && Intrinsics.areEqual(this.utcTime, deviceTemplate.utcTime) && Intrinsics.areEqual(this.localTime, deviceTemplate.localTime) && Intrinsics.areEqual(this.utcDateTime, deviceTemplate.utcDateTime) && Intrinsics.areEqual(this.localDateTime, deviceTemplate.localDateTime) && Intrinsics.areEqual(this.isSandbox, deviceTemplate.isSandbox) && Intrinsics.areEqual(this.activeEntitlements, deviceTemplate.activeEntitlements) && Intrinsics.areEqual(this.activeEntitlementsObject, deviceTemplate.activeEntitlementsObject) && Intrinsics.areEqual(this.subscriptionStatus, deviceTemplate.subscriptionStatus) && Intrinsics.areEqual(this.activeProducts, deviceTemplate.activeProducts) && this.isFirstAppOpen == deviceTemplate.isFirstAppOpen && Intrinsics.areEqual(this.sdkVersion, deviceTemplate.sdkVersion) && Intrinsics.areEqual(this.sdkVersionPadded, deviceTemplate.sdkVersionPadded) && Intrinsics.areEqual(this.appBuildString, deviceTemplate.appBuildString) && Intrinsics.areEqual(this.appBuildStringNumber, deviceTemplate.appBuildStringNumber) && Intrinsics.areEqual(this.interfaceStyleMode, deviceTemplate.interfaceStyleMode) && Intrinsics.areEqual(this.capabilities, deviceTemplate.capabilities) && Intrinsics.areEqual(this.capabilitiesConfig, deviceTemplate.capabilitiesConfig) && Intrinsics.areEqual(this.platformWrapper, deviceTemplate.platformWrapper) && Intrinsics.areEqual(this.platformWrapperVersion, deviceTemplate.platformWrapperVersion) && Intrinsics.areEqual(this.deviceTier, deviceTemplate.deviceTier) && this.reviewRequestCount == deviceTemplate.reviewRequestCount && Intrinsics.areEqual(this.kotlinVersion, deviceTemplate.kotlinVersion);
    }

    public int hashCode() {
        int iHashCode = ((((((((((((((((((((((((((((((((((((((((((((((((((((this.publicApiKey.hashCode() * 31) + this.platform.hashCode()) * 31) + this.appUserId.hashCode()) * 31) + this.aliases.hashCode()) * 31) + this.vendorId.hashCode()) * 31) + this.deviceId.hashCode()) * 31) + this.appVersion.hashCode()) * 31) + this.appVersionPadded.hashCode()) * 31) + this.osVersion.hashCode()) * 31) + this.deviceModel.hashCode()) * 31) + this.deviceLocale.hashCode()) * 31) + this.preferredLocale.hashCode()) * 31) + this.deviceLanguageCode.hashCode()) * 31) + this.preferredLanguageCode.hashCode()) * 31) + this.regionCode.hashCode()) * 31) + this.preferredRegionCode.hashCode()) * 31) + this.deviceCurrencyCode.hashCode()) * 31) + this.deviceCurrencySymbol.hashCode()) * 31) + Integer.hashCode(this.timezoneOffset)) * 31) + this.radioType.hashCode()) * 31) + this.interfaceStyle.hashCode()) * 31) + Boolean.hashCode(this.isLowPowerModeEnabled)) * 31) + this.bundleId.hashCode()) * 31) + this.appInstallDate.hashCode()) * 31) + Boolean.hashCode(this.isMac)) * 31) + Integer.hashCode(this.daysSinceInstall)) * 31) + Integer.hashCode(this.minutesSinceInstall)) * 31;
        Integer num = this.daysSinceLastPaywallView;
        int iHashCode2 = (iHashCode + (num == null ? 0 : num.hashCode())) * 31;
        Integer num2 = this.minutesSinceLastPaywallView;
        int iHashCode3 = (((((((((((((((((((((iHashCode2 + (num2 == null ? 0 : num2.hashCode())) * 31) + Integer.hashCode(this.totalPaywallViews)) * 31) + this.utcDate.hashCode()) * 31) + this.localDate.hashCode()) * 31) + this.utcTime.hashCode()) * 31) + this.localTime.hashCode()) * 31) + this.utcDateTime.hashCode()) * 31) + this.localDateTime.hashCode()) * 31) + this.isSandbox.hashCode()) * 31) + this.activeEntitlements.hashCode()) * 31) + this.activeEntitlementsObject.hashCode()) * 31;
        String str = this.subscriptionStatus;
        int iHashCode4 = (((((((((((iHashCode3 + (str == null ? 0 : str.hashCode())) * 31) + this.activeProducts.hashCode()) * 31) + Boolean.hashCode(this.isFirstAppOpen)) * 31) + this.sdkVersion.hashCode()) * 31) + this.sdkVersionPadded.hashCode()) * 31) + this.appBuildString.hashCode()) * 31;
        Integer num3 = this.appBuildStringNumber;
        return ((((((((((((((((iHashCode4 + (num3 != null ? num3.hashCode() : 0)) * 31) + this.interfaceStyleMode.hashCode()) * 31) + this.capabilities.hashCode()) * 31) + this.capabilitiesConfig.hashCode()) * 31) + this.platformWrapper.hashCode()) * 31) + this.platformWrapperVersion.hashCode()) * 31) + this.deviceTier.hashCode()) * 31) + Integer.hashCode(this.reviewRequestCount)) * 31) + this.kotlinVersion.hashCode();
    }

    public String toString() {
        return "DeviceTemplate(publicApiKey=" + this.publicApiKey + ", platform=" + this.platform + ", appUserId=" + this.appUserId + ", aliases=" + this.aliases + ", vendorId=" + this.vendorId + ", deviceId=" + this.deviceId + ", appVersion=" + this.appVersion + ", appVersionPadded=" + this.appVersionPadded + ", osVersion=" + this.osVersion + ", deviceModel=" + this.deviceModel + ", deviceLocale=" + this.deviceLocale + ", preferredLocale=" + this.preferredLocale + ", deviceLanguageCode=" + this.deviceLanguageCode + ", preferredLanguageCode=" + this.preferredLanguageCode + ", regionCode=" + this.regionCode + ", preferredRegionCode=" + this.preferredRegionCode + ", deviceCurrencyCode=" + this.deviceCurrencyCode + ", deviceCurrencySymbol=" + this.deviceCurrencySymbol + ", timezoneOffset=" + this.timezoneOffset + ", radioType=" + this.radioType + ", interfaceStyle=" + this.interfaceStyle + ", isLowPowerModeEnabled=" + this.isLowPowerModeEnabled + ", bundleId=" + this.bundleId + ", appInstallDate=" + this.appInstallDate + ", isMac=" + this.isMac + ", daysSinceInstall=" + this.daysSinceInstall + ", minutesSinceInstall=" + this.minutesSinceInstall + ", daysSinceLastPaywallView=" + this.daysSinceLastPaywallView + ", minutesSinceLastPaywallView=" + this.minutesSinceLastPaywallView + ", totalPaywallViews=" + this.totalPaywallViews + ", utcDate=" + this.utcDate + ", localDate=" + this.localDate + ", utcTime=" + this.utcTime + ", localTime=" + this.localTime + ", utcDateTime=" + this.utcDateTime + ", localDateTime=" + this.localDateTime + ", isSandbox=" + this.isSandbox + ", activeEntitlements=" + this.activeEntitlements + ", activeEntitlementsObject=" + this.activeEntitlementsObject + ", subscriptionStatus=" + this.subscriptionStatus + ", activeProducts=" + this.activeProducts + ", isFirstAppOpen=" + this.isFirstAppOpen + ", sdkVersion=" + this.sdkVersion + ", sdkVersionPadded=" + this.sdkVersionPadded + ", appBuildString=" + this.appBuildString + ", appBuildStringNumber=" + this.appBuildStringNumber + ", interfaceStyleMode=" + this.interfaceStyleMode + ", capabilities=" + this.capabilities + ", capabilitiesConfig=" + this.capabilitiesConfig + ", platformWrapper=" + this.platformWrapper + ", platformWrapperVersion=" + this.platformWrapperVersion + ", deviceTier=" + this.deviceTier + ", reviewRequestCount=" + this.reviewRequestCount + ", kotlinVersion=" + this.kotlinVersion + ")";
    }

    /* JADX INFO: compiled from: DeviceTemplate.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¨\u0006\u0007"}, d2 = {"Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate$Companion;", "", "<init>", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/superwall/sdk/paywall/view/webview/templating/models/DeviceTemplate;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final KSerializer<DeviceTemplate> serializer() {
            return DeviceTemplate$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ DeviceTemplate(int i, int i2, String str, String str2, String str3, List list, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, String str15, String str16, String str17, int i3, String str18, String str19, boolean z, String str20, String str21, boolean z2, int i4, int i5, Integer num, Integer num2, int i6, String str22, String str23, String str24, String str25, String str26, String str27, String str28, List list2, List list3, String str29, List list4, boolean z3, String str30, String str31, String str32, Integer num3, String str33, List list5, JsonElement jsonElement, String str34, String str35, String str36, int i7, String str37, SerializationConstructorMarker serializationConstructorMarker) {
        if ((4194303 != (i2 & 4194303)) | (-1 != i)) {
            PluginExceptionsKt.throwArrayMissingFieldException(new int[]{i, i2}, new int[]{-1, 4194303}, DeviceTemplate$$serializer.INSTANCE.getDescriptor());
        }
        this.publicApiKey = str;
        this.platform = str2;
        this.appUserId = str3;
        this.aliases = list;
        this.vendorId = str4;
        this.deviceId = str5;
        this.appVersion = str6;
        this.appVersionPadded = str7;
        this.osVersion = str8;
        this.deviceModel = str9;
        this.deviceLocale = str10;
        this.preferredLocale = str11;
        this.deviceLanguageCode = str12;
        this.preferredLanguageCode = str13;
        this.regionCode = str14;
        this.preferredRegionCode = str15;
        this.deviceCurrencyCode = str16;
        this.deviceCurrencySymbol = str17;
        this.timezoneOffset = i3;
        this.radioType = str18;
        this.interfaceStyle = str19;
        this.isLowPowerModeEnabled = z;
        this.bundleId = str20;
        this.appInstallDate = str21;
        this.isMac = z2;
        this.daysSinceInstall = i4;
        this.minutesSinceInstall = i5;
        this.daysSinceLastPaywallView = num;
        this.minutesSinceLastPaywallView = num2;
        this.totalPaywallViews = i6;
        this.utcDate = str22;
        this.localDate = str23;
        this.utcTime = str24;
        this.localTime = str25;
        this.utcDateTime = str26;
        this.localDateTime = str27;
        this.isSandbox = str28;
        this.activeEntitlements = list2;
        this.activeEntitlementsObject = list3;
        this.subscriptionStatus = str29;
        this.activeProducts = list4;
        this.isFirstAppOpen = z3;
        this.sdkVersion = str30;
        this.sdkVersionPadded = str31;
        this.appBuildString = str32;
        this.appBuildStringNumber = num3;
        this.interfaceStyleMode = str33;
        this.capabilities = list5;
        this.capabilitiesConfig = jsonElement;
        this.platformWrapper = str34;
        this.platformWrapperVersion = str35;
        this.deviceTier = str36;
        this.reviewRequestCount = i7;
        this.kotlinVersion = str37;
    }

    @JvmStatic
    public static final /* synthetic */ void write$Self$superwall_release(DeviceTemplate self, CompositeEncoder output, SerialDescriptor serialDesc) {
        KSerializer<Object>[] kSerializerArr = $childSerializers;
        output.encodeStringElement(serialDesc, 0, self.publicApiKey);
        output.encodeStringElement(serialDesc, 1, self.platform);
        output.encodeStringElement(serialDesc, 2, self.appUserId);
        output.encodeSerializableElement(serialDesc, 3, kSerializerArr[3], self.aliases);
        output.encodeStringElement(serialDesc, 4, self.vendorId);
        output.encodeStringElement(serialDesc, 5, self.deviceId);
        output.encodeStringElement(serialDesc, 6, self.appVersion);
        output.encodeStringElement(serialDesc, 7, self.appVersionPadded);
        output.encodeStringElement(serialDesc, 8, self.osVersion);
        output.encodeStringElement(serialDesc, 9, self.deviceModel);
        output.encodeStringElement(serialDesc, 10, self.deviceLocale);
        output.encodeStringElement(serialDesc, 11, self.preferredLocale);
        output.encodeStringElement(serialDesc, 12, self.deviceLanguageCode);
        output.encodeStringElement(serialDesc, 13, self.preferredLanguageCode);
        output.encodeStringElement(serialDesc, 14, self.regionCode);
        output.encodeStringElement(serialDesc, 15, self.preferredRegionCode);
        output.encodeStringElement(serialDesc, 16, self.deviceCurrencyCode);
        output.encodeStringElement(serialDesc, 17, self.deviceCurrencySymbol);
        output.encodeIntElement(serialDesc, 18, self.timezoneOffset);
        output.encodeStringElement(serialDesc, 19, self.radioType);
        output.encodeStringElement(serialDesc, 20, self.interfaceStyle);
        output.encodeBooleanElement(serialDesc, 21, self.isLowPowerModeEnabled);
        output.encodeStringElement(serialDesc, 22, self.bundleId);
        output.encodeStringElement(serialDesc, 23, self.appInstallDate);
        output.encodeBooleanElement(serialDesc, 24, self.isMac);
        output.encodeIntElement(serialDesc, 25, self.daysSinceInstall);
        output.encodeIntElement(serialDesc, 26, self.minutesSinceInstall);
        output.encodeNullableSerializableElement(serialDesc, 27, IntSerializer.INSTANCE, self.daysSinceLastPaywallView);
        output.encodeNullableSerializableElement(serialDesc, 28, IntSerializer.INSTANCE, self.minutesSinceLastPaywallView);
        output.encodeIntElement(serialDesc, 29, self.totalPaywallViews);
        output.encodeStringElement(serialDesc, 30, self.utcDate);
        output.encodeStringElement(serialDesc, 31, self.localDate);
        output.encodeStringElement(serialDesc, 32, self.utcTime);
        output.encodeStringElement(serialDesc, 33, self.localTime);
        output.encodeStringElement(serialDesc, 34, self.utcDateTime);
        output.encodeStringElement(serialDesc, 35, self.localDateTime);
        output.encodeStringElement(serialDesc, 36, self.isSandbox);
        output.encodeSerializableElement(serialDesc, 37, kSerializerArr[37], self.activeEntitlements);
        output.encodeSerializableElement(serialDesc, 38, kSerializerArr[38], self.activeEntitlementsObject);
        output.encodeNullableSerializableElement(serialDesc, 39, StringSerializer.INSTANCE, self.subscriptionStatus);
        output.encodeSerializableElement(serialDesc, 40, kSerializerArr[40], self.activeProducts);
        output.encodeBooleanElement(serialDesc, 41, self.isFirstAppOpen);
        output.encodeStringElement(serialDesc, 42, self.sdkVersion);
        output.encodeStringElement(serialDesc, 43, self.sdkVersionPadded);
        output.encodeStringElement(serialDesc, 44, self.appBuildString);
        output.encodeNullableSerializableElement(serialDesc, 45, IntSerializer.INSTANCE, self.appBuildStringNumber);
        output.encodeStringElement(serialDesc, 46, self.interfaceStyleMode);
        output.encodeSerializableElement(serialDesc, 47, kSerializerArr[47], self.capabilities);
        output.encodeSerializableElement(serialDesc, 48, JsonElementSerializer.INSTANCE, self.capabilitiesConfig);
        output.encodeStringElement(serialDesc, 49, self.platformWrapper);
        output.encodeStringElement(serialDesc, 50, self.platformWrapperVersion);
        output.encodeStringElement(serialDesc, 51, self.deviceTier);
        output.encodeIntElement(serialDesc, 52, self.reviewRequestCount);
        output.encodeStringElement(serialDesc, 53, self.kotlinVersion);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public DeviceTemplate(String publicApiKey, String platform, String appUserId, List<String> aliases, String vendorId, String deviceId, String appVersion, String appVersionPadded, String osVersion, String deviceModel, String deviceLocale, String preferredLocale, String deviceLanguageCode, String preferredLanguageCode, String regionCode, String preferredRegionCode, String deviceCurrencyCode, String deviceCurrencySymbol, int i, String radioType, String interfaceStyle, boolean z, String bundleId, String appInstallDate, boolean z2, int i2, int i3, Integer num, Integer num2, int i4, String utcDate, String localDate, String utcTime, String localTime, String utcDateTime, String localDateTime, String isSandbox, List<String> activeEntitlements, List<? extends Map<String, String>> activeEntitlementsObject, String str, List<String> activeProducts, boolean z3, String sdkVersion, String sdkVersionPadded, String appBuildString, Integer num3, String interfaceStyleMode, List<String> capabilities, JsonElement capabilitiesConfig, String platformWrapper, String platformWrapperVersion, String deviceTier, int i5, String kotlinVersion) {
        Intrinsics.checkNotNullParameter(publicApiKey, "publicApiKey");
        Intrinsics.checkNotNullParameter(platform, "platform");
        Intrinsics.checkNotNullParameter(appUserId, "appUserId");
        Intrinsics.checkNotNullParameter(aliases, "aliases");
        Intrinsics.checkNotNullParameter(vendorId, "vendorId");
        Intrinsics.checkNotNullParameter(deviceId, "deviceId");
        Intrinsics.checkNotNullParameter(appVersion, "appVersion");
        Intrinsics.checkNotNullParameter(appVersionPadded, "appVersionPadded");
        Intrinsics.checkNotNullParameter(osVersion, "osVersion");
        Intrinsics.checkNotNullParameter(deviceModel, "deviceModel");
        Intrinsics.checkNotNullParameter(deviceLocale, "deviceLocale");
        Intrinsics.checkNotNullParameter(preferredLocale, "preferredLocale");
        Intrinsics.checkNotNullParameter(deviceLanguageCode, "deviceLanguageCode");
        Intrinsics.checkNotNullParameter(preferredLanguageCode, "preferredLanguageCode");
        Intrinsics.checkNotNullParameter(regionCode, "regionCode");
        Intrinsics.checkNotNullParameter(preferredRegionCode, "preferredRegionCode");
        Intrinsics.checkNotNullParameter(deviceCurrencyCode, "deviceCurrencyCode");
        Intrinsics.checkNotNullParameter(deviceCurrencySymbol, "deviceCurrencySymbol");
        Intrinsics.checkNotNullParameter(radioType, "radioType");
        Intrinsics.checkNotNullParameter(interfaceStyle, "interfaceStyle");
        Intrinsics.checkNotNullParameter(bundleId, "bundleId");
        Intrinsics.checkNotNullParameter(appInstallDate, "appInstallDate");
        Intrinsics.checkNotNullParameter(utcDate, "utcDate");
        Intrinsics.checkNotNullParameter(localDate, "localDate");
        Intrinsics.checkNotNullParameter(utcTime, "utcTime");
        Intrinsics.checkNotNullParameter(localTime, "localTime");
        Intrinsics.checkNotNullParameter(utcDateTime, "utcDateTime");
        Intrinsics.checkNotNullParameter(localDateTime, "localDateTime");
        Intrinsics.checkNotNullParameter(isSandbox, "isSandbox");
        Intrinsics.checkNotNullParameter(activeEntitlements, "activeEntitlements");
        Intrinsics.checkNotNullParameter(activeEntitlementsObject, "activeEntitlementsObject");
        Intrinsics.checkNotNullParameter(activeProducts, "activeProducts");
        Intrinsics.checkNotNullParameter(sdkVersion, "sdkVersion");
        Intrinsics.checkNotNullParameter(sdkVersionPadded, "sdkVersionPadded");
        Intrinsics.checkNotNullParameter(appBuildString, "appBuildString");
        Intrinsics.checkNotNullParameter(interfaceStyleMode, "interfaceStyleMode");
        Intrinsics.checkNotNullParameter(capabilities, "capabilities");
        Intrinsics.checkNotNullParameter(capabilitiesConfig, "capabilitiesConfig");
        Intrinsics.checkNotNullParameter(platformWrapper, "platformWrapper");
        Intrinsics.checkNotNullParameter(platformWrapperVersion, "platformWrapperVersion");
        Intrinsics.checkNotNullParameter(deviceTier, "deviceTier");
        Intrinsics.checkNotNullParameter(kotlinVersion, "kotlinVersion");
        this.publicApiKey = publicApiKey;
        this.platform = platform;
        this.appUserId = appUserId;
        this.aliases = aliases;
        this.vendorId = vendorId;
        this.deviceId = deviceId;
        this.appVersion = appVersion;
        this.appVersionPadded = appVersionPadded;
        this.osVersion = osVersion;
        this.deviceModel = deviceModel;
        this.deviceLocale = deviceLocale;
        this.preferredLocale = preferredLocale;
        this.deviceLanguageCode = deviceLanguageCode;
        this.preferredLanguageCode = preferredLanguageCode;
        this.regionCode = regionCode;
        this.preferredRegionCode = preferredRegionCode;
        this.deviceCurrencyCode = deviceCurrencyCode;
        this.deviceCurrencySymbol = deviceCurrencySymbol;
        this.timezoneOffset = i;
        this.radioType = radioType;
        this.interfaceStyle = interfaceStyle;
        this.isLowPowerModeEnabled = z;
        this.bundleId = bundleId;
        this.appInstallDate = appInstallDate;
        this.isMac = z2;
        this.daysSinceInstall = i2;
        this.minutesSinceInstall = i3;
        this.daysSinceLastPaywallView = num;
        this.minutesSinceLastPaywallView = num2;
        this.totalPaywallViews = i4;
        this.utcDate = utcDate;
        this.localDate = localDate;
        this.utcTime = utcTime;
        this.localTime = localTime;
        this.utcDateTime = utcDateTime;
        this.localDateTime = localDateTime;
        this.isSandbox = isSandbox;
        this.activeEntitlements = activeEntitlements;
        this.activeEntitlementsObject = activeEntitlementsObject;
        this.subscriptionStatus = str;
        this.activeProducts = activeProducts;
        this.isFirstAppOpen = z3;
        this.sdkVersion = sdkVersion;
        this.sdkVersionPadded = sdkVersionPadded;
        this.appBuildString = appBuildString;
        this.appBuildStringNumber = num3;
        this.interfaceStyleMode = interfaceStyleMode;
        this.capabilities = capabilities;
        this.capabilitiesConfig = capabilitiesConfig;
        this.platformWrapper = platformWrapper;
        this.platformWrapperVersion = platformWrapperVersion;
        this.deviceTier = deviceTier;
        this.reviewRequestCount = i5;
        this.kotlinVersion = kotlinVersion;
    }

    public final String getPublicApiKey() {
        return this.publicApiKey;
    }

    public final String getPlatform() {
        return this.platform;
    }

    public final String getAppUserId() {
        return this.appUserId;
    }

    public final List<String> getAliases() {
        return this.aliases;
    }

    public final String getVendorId() {
        return this.vendorId;
    }

    public final String getDeviceId() {
        return this.deviceId;
    }

    public final String getAppVersion() {
        return this.appVersion;
    }

    public final String getAppVersionPadded() {
        return this.appVersionPadded;
    }

    public final String getOsVersion() {
        return this.osVersion;
    }

    public final String getDeviceModel() {
        return this.deviceModel;
    }

    public final String getDeviceLocale() {
        return this.deviceLocale;
    }

    public final String getPreferredLocale() {
        return this.preferredLocale;
    }

    public final String getDeviceLanguageCode() {
        return this.deviceLanguageCode;
    }

    public final String getPreferredLanguageCode() {
        return this.preferredLanguageCode;
    }

    public final String getRegionCode() {
        return this.regionCode;
    }

    public final String getPreferredRegionCode() {
        return this.preferredRegionCode;
    }

    public final String getDeviceCurrencyCode() {
        return this.deviceCurrencyCode;
    }

    public final String getDeviceCurrencySymbol() {
        return this.deviceCurrencySymbol;
    }

    public final int getTimezoneOffset() {
        return this.timezoneOffset;
    }

    public final String getRadioType() {
        return this.radioType;
    }

    public final String getInterfaceStyle() {
        return this.interfaceStyle;
    }

    public final boolean isLowPowerModeEnabled() {
        return this.isLowPowerModeEnabled;
    }

    public final String getBundleId() {
        return this.bundleId;
    }

    public final String getAppInstallDate() {
        return this.appInstallDate;
    }

    public final boolean isMac() {
        return this.isMac;
    }

    public final int getDaysSinceInstall() {
        return this.daysSinceInstall;
    }

    public final int getMinutesSinceInstall() {
        return this.minutesSinceInstall;
    }

    public final Integer getDaysSinceLastPaywallView() {
        return this.daysSinceLastPaywallView;
    }

    public final Integer getMinutesSinceLastPaywallView() {
        return this.minutesSinceLastPaywallView;
    }

    public final int getTotalPaywallViews() {
        return this.totalPaywallViews;
    }

    public final String getUtcDate() {
        return this.utcDate;
    }

    public final String getLocalDate() {
        return this.localDate;
    }

    public final String getUtcTime() {
        return this.utcTime;
    }

    public final String getLocalTime() {
        return this.localTime;
    }

    public final String getUtcDateTime() {
        return this.utcDateTime;
    }

    public final String getLocalDateTime() {
        return this.localDateTime;
    }

    public final String isSandbox() {
        return this.isSandbox;
    }

    public final List<String> getActiveEntitlements() {
        return this.activeEntitlements;
    }

    public final List<Map<String, String>> getActiveEntitlementsObject() {
        return this.activeEntitlementsObject;
    }

    public final String getSubscriptionStatus() {
        return this.subscriptionStatus;
    }

    public final List<String> getActiveProducts() {
        return this.activeProducts;
    }

    public final boolean isFirstAppOpen() {
        return this.isFirstAppOpen;
    }

    public final String getSdkVersion() {
        return this.sdkVersion;
    }

    public final String getSdkVersionPadded() {
        return this.sdkVersionPadded;
    }

    public final String getAppBuildString() {
        return this.appBuildString;
    }

    public final Integer getAppBuildStringNumber() {
        return this.appBuildStringNumber;
    }

    public final String getInterfaceStyleMode() {
        return this.interfaceStyleMode;
    }

    public final List<String> getCapabilities() {
        return this.capabilities;
    }

    public final JsonElement getCapabilitiesConfig() {
        return this.capabilitiesConfig;
    }

    public final String getPlatformWrapper() {
        return this.platformWrapper;
    }

    public final String getPlatformWrapperVersion() {
        return this.platformWrapperVersion;
    }

    public final String getDeviceTier() {
        return this.deviceTier;
    }

    public final int getReviewRequestCount() {
        return this.reviewRequestCount;
    }

    public final String getKotlinVersion() {
        return this.kotlinVersion;
    }

    public final Map<String, Object> toDictionary(Json json) {
        Intrinsics.checkNotNullParameter(json, "json");
        return ConvertersKt.toNullableTypedMap(json, json.encodeToString(INSTANCE.serializer(), this));
    }
}
