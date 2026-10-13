package com.superwall.sdk.paywall.presentation;

import androidx.core.app.NotificationCompat;
import androidx.media3.common.C;
import com.google.android.gms.common.internal.ImagesContract;
import com.superwall.sdk.config.models.Survey;
import com.superwall.sdk.config.models.Survey$$serializer;
import com.superwall.sdk.logger.LogLevel;
import com.superwall.sdk.logger.LogScope;
import com.superwall.sdk.logger.Logger;
import com.superwall.sdk.misc.String_Helpers_ktKt;
import com.superwall.sdk.models.config.ComputedPropertyRequest;
import com.superwall.sdk.models.config.ComputedPropertyRequest$$serializer;
import com.superwall.sdk.models.config.FeatureGatingBehavior;
import com.superwall.sdk.models.config.FeatureGatingBehaviorSerializer;
import com.superwall.sdk.models.customer.CustomerInfo;
import com.superwall.sdk.models.customer.CustomerInfo$$serializer;
import com.superwall.sdk.models.events.EventData;
import com.superwall.sdk.models.paywall.LocalNotification;
import com.superwall.sdk.models.paywall.LocalNotification$$serializer;
import com.superwall.sdk.models.paywall.PaywallPresentationInfo;
import com.superwall.sdk.models.paywall.PaywallPresentationInfo$$serializer;
import com.superwall.sdk.models.paywall.PaywallPresentationStyle;
import com.superwall.sdk.models.paywall.PaywallURL;
import com.superwall.sdk.models.paywall.PaywallURL$$serializer;
import com.superwall.sdk.models.product.ProductItem;
import com.superwall.sdk.models.product.ProductItemSerializer;
import com.superwall.sdk.models.serialization.AnyMapSerializer;
import com.superwall.sdk.models.triggers.Experiment;
import com.superwall.sdk.models.triggers.Experiment$$serializer;
import com.superwall.sdk.store.abstractions.product.StoreProductType;
import com.superwall.sdk.utilities.DateUtilsKt;
import expo.modules.notifications.service.NotificationsService;
import java.util.Date;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.text.StringsKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.ArrayListSerializer;
import kotlinx.serialization.internal.DoubleSerializer;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonBuilder;
import kotlinx.serialization.json.JsonKt;

/* JADX INFO: compiled from: PaywallInfo.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000®\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u0006\n\u0002\b\f\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b6\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\b0\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 ´\u00012\u00020\u0001:\u0004´\u0001µ\u0001B\u0095\u0003\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\b\u0010\b\u001a\u0004\u0018\u00010\t\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000b\u0012\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00030\u000b\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0011\u001a\u00020\u0003\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0014\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0015\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017\u0012\b\u0010\u0018\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0019\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u001a\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u001b\u001a\u0004\u0018\u00010\u0017\u0012\b\u0010\u001c\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u001d\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u001e\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u001f\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010 \u001a\u0004\u0018\u00010\u0003\u0012\b\u0010!\u001a\u0004\u0018\u00010\u0017\u0012\b\u0010\"\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010#\u001a\u00020$\u0012\u0006\u0010%\u001a\u00020&\u0012\u0006\u0010'\u001a\u00020(\u0012\f\u0010)\u001a\b\u0012\u0004\u0012\u00020*0\u000b\u0012\f\u0010+\u001a\b\u0012\u0004\u0012\u00020,0\u000b\u0012\f\u0010-\u001a\b\u0012\u0004\u0012\u00020.0\u000b\u0012\u0006\u0010/\u001a\u000200\u0012\u0006\u00101\u001a\u00020\u0003\u0012\u0006\u00102\u001a\u00020\u0003\u0012\u0006\u00103\u001a\u00020$\u0012\u0014\b\u0002\u00104\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u000105\u0012\b\b\u0002\u00106\u001a\u000207¢\u0006\u0004\b8\u00109Bå\u0002\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000b\u0012\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00030\u000b\u0012\b\u0010:\u001a\u0004\u0018\u00010;\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010<\u0012\b\u0010\u0014\u001a\u0004\u0018\u00010<\u0012\b\u0010\u0015\u001a\u0004\u0018\u00010<\u0012\b\u0010\u0018\u001a\u0004\u0018\u00010<\u0012\b\u0010\u0019\u001a\u0004\u0018\u00010<\u0012\b\u0010\u001a\u001a\u0004\u0018\u00010<\u0012\b\u0010\u001c\u001a\u0004\u0018\u00010<\u0012\b\u0010\u001e\u001a\u0004\u0018\u00010<\u0012\b\u0010\u001d\u001a\u0004\u0018\u00010<\u0012\b\u0010\u001f\u001a\u0004\u0018\u00010<\u0012\b\u0010 \u001a\u0004\u0018\u00010<\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010#\u001a\u00020$\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010%\u001a\u00020&\u0012\f\u0010)\u001a\b\u0012\u0004\u0012\u00020*0\u000b\u0012\f\u0010+\u001a\b\u0012\u0004\u0012\u00020,0\u000b\u0012\u0006\u0010'\u001a\u00020(\u0012\f\u0010-\u001a\b\u0012\u0004\u0012\u00020.0\u000b\u0012\u0006\u0010/\u001a\u000200\u0012\u0006\u00101\u001a\u00020\u0003\u0012\u0006\u00102\u001a\u00020\u0003\u0012\u0006\u00103\u001a\u00020$\u0012\u0014\b\u0002\u00104\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u000105\u0012\b\b\u0002\u00106\u001a\u000207¢\u0006\u0004\b8\u0010=BÏ\u0003\b\u0010\u0012\u0006\u0010>\u001a\u00020?\u0012\u0006\u0010@\u001a\u00020?\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\b\u001a\u0004\u0018\u00010\t\u0012\u000e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000b\u0012\u000e\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u000b\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0014\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0015\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017\u0012\b\u0010\u0018\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0019\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u001a\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u001b\u001a\u0004\u0018\u00010\u0017\u0012\b\u0010\u001c\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u001d\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u001e\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u001f\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010 \u001a\u0004\u0018\u00010\u0003\u0012\b\u0010!\u001a\u0004\u0018\u00010\u0017\u0012\b\u0010\"\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010#\u001a\u00020$\u0012\b\u0010%\u001a\u0004\u0018\u00010&\u0012\b\u0010'\u001a\u0004\u0018\u00010(\u0012\u000e\u0010)\u001a\n\u0012\u0004\u0012\u00020*\u0018\u00010\u000b\u0012\u000e\u0010+\u001a\n\u0012\u0004\u0012\u00020,\u0018\u00010\u000b\u0012\u000e\u0010-\u001a\n\u0012\u0004\u0012\u00020.\u0018\u00010\u000b\u0012\b\u0010/\u001a\u0004\u0018\u000100\u0012\b\u00101\u001a\u0004\u0018\u00010\u0003\u0012\b\u00102\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u00103\u001a\u00020$\u0012\u0014\u00104\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0001\u0018\u000105\u0012\b\u00106\u001a\u0004\u0018\u000107\u0012\b\u0010A\u001a\u0004\u0018\u00010B¢\u0006\u0004\b8\u0010CJ8\u0010w\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0001052\n\b\u0002\u0010x\u001a\u0004\u0018\u00010y2\u0018\b\u0002\u0010z\u001a\u0012\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u000105J\u0012\u0010{\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00010|J\t\u0010}\u001a\u00020\u0003HÆ\u0003J\t\u0010~\u001a\u00020\u0003HÆ\u0003J\t\u0010\u007f\u001a\u00020\u0003HÆ\u0003J\u0012\u0010\u0080\u0001\u001a\u00020\u0007HÆ\u0003¢\u0006\u0005\b\u0081\u0001\u0010EJ\f\u0010\u0082\u0001\u001a\u0004\u0018\u00010\tHÆ\u0003J\u0010\u0010\u0083\u0001\u001a\b\u0012\u0004\u0012\u00020\f0\u000bHÆ\u0003J\u0010\u0010\u0084\u0001\u001a\b\u0012\u0004\u0012\u00020\u00030\u000bHÆ\u0003J\f\u0010\u0085\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010\u0086\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010\u0087\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\n\u0010\u0088\u0001\u001a\u00020\u0003HÆ\u0003J\f\u0010\u0089\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010\u008a\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010\u008b\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010\u008c\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0011\u0010\u008d\u0001\u001a\u0004\u0018\u00010\u0017HÆ\u0003¢\u0006\u0002\u0010XJ\f\u0010\u008e\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010\u008f\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010\u0090\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0011\u0010\u0091\u0001\u001a\u0004\u0018\u00010\u0017HÆ\u0003¢\u0006\u0002\u0010XJ\f\u0010\u0092\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010\u0093\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010\u0094\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010\u0095\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010\u0096\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0011\u0010\u0097\u0001\u001a\u0004\u0018\u00010\u0017HÆ\u0003¢\u0006\u0002\u0010XJ\f\u0010\u0098\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\n\u0010\u0099\u0001\u001a\u00020$HÆ\u0003J\n\u0010\u009a\u0001\u001a\u00020&HÆ\u0003J\n\u0010\u009b\u0001\u001a\u00020(HÆ\u0003J\u0010\u0010\u009c\u0001\u001a\b\u0012\u0004\u0012\u00020*0\u000bHÆ\u0003J\u0010\u0010\u009d\u0001\u001a\b\u0012\u0004\u0012\u00020,0\u000bHÆ\u0003J\u0010\u0010\u009e\u0001\u001a\b\u0012\u0004\u0012\u00020.0\u000bHÆ\u0003J\n\u0010\u009f\u0001\u001a\u000200HÆ\u0003J\n\u0010 \u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010¡\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010¢\u0001\u001a\u00020$HÆ\u0003J\u0016\u0010£\u0001\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u000105HÆ\u0003J\n\u0010¤\u0001\u001a\u000207HÆ\u0003Jë\u0003\u0010¥\u0001\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\u000e\b\u0002\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000b2\u000e\b\u0002\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00030\u000b2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0011\u001a\u00020\u00032\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00172\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u00172\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\u00172\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010#\u001a\u00020$2\b\b\u0002\u0010%\u001a\u00020&2\b\b\u0002\u0010'\u001a\u00020(2\u000e\b\u0002\u0010)\u001a\b\u0012\u0004\u0012\u00020*0\u000b2\u000e\b\u0002\u0010+\u001a\b\u0012\u0004\u0012\u00020,0\u000b2\u000e\b\u0002\u0010-\u001a\b\u0012\u0004\u0012\u00020.0\u000b2\b\b\u0002\u0010/\u001a\u0002002\b\b\u0002\u00101\u001a\u00020\u00032\b\b\u0002\u00102\u001a\u00020\u00032\b\b\u0002\u00103\u001a\u00020$2\u0014\b\u0002\u00104\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0001052\b\b\u0002\u00106\u001a\u000207HÆ\u0001¢\u0006\u0006\b¦\u0001\u0010§\u0001J\u0015\u0010¨\u0001\u001a\u00020$2\t\u0010©\u0001\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\n\u0010ª\u0001\u001a\u00020?HÖ\u0001J\n\u0010«\u0001\u001a\u00020\u0003HÖ\u0001J-\u0010¬\u0001\u001a\u00030\u00ad\u00012\u0007\u0010®\u0001\u001a\u00020\u00002\b\u0010¯\u0001\u001a\u00030°\u00012\b\u0010±\u0001\u001a\u00030²\u0001H\u0001¢\u0006\u0003\b³\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\bD\u0010ER\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\bF\u0010ER\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\bG\u0010ER\u0013\u0010\u0006\u001a\u00020\u0007¢\u0006\n\n\u0002\u0010I\u001a\u0004\bH\u0010ER\u0013\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\b\n\u0000\u001a\u0004\bJ\u0010KR\u0017\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000b¢\u0006\b\n\u0000\u001a\u0004\bL\u0010MR\u0017\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00030\u000b¢\u0006\b\n\u0000\u001a\u0004\bN\u0010MR\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\bO\u0010ER\u0013\u0010\u000f\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\bP\u0010ER\u0013\u0010\u0010\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\bQ\u0010ER\u0011\u0010\u0011\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\bR\u0010ER\u0013\u0010\u0012\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\bS\u0010ER\u0013\u0010\u0013\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\bT\u0010ER\u0013\u0010\u0014\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\bU\u0010ER\u0013\u0010\u0015\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\bV\u0010ER\u0015\u0010\u0016\u001a\u0004\u0018\u00010\u0017¢\u0006\n\n\u0002\u0010Y\u001a\u0004\bW\u0010XR\u0013\u0010\u0018\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\bZ\u0010ER\u0013\u0010\u0019\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b[\u0010ER\u0013\u0010\u001a\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\\\u0010ER\u0015\u0010\u001b\u001a\u0004\u0018\u00010\u0017¢\u0006\n\n\u0002\u0010Y\u001a\u0004\b]\u0010XR\u0013\u0010\u001c\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b^\u0010ER\u0013\u0010\u001d\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b_\u0010ER\u0013\u0010\u001e\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b`\u0010ER\u0013\u0010\u001f\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\ba\u0010ER\u0013\u0010 \u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\bb\u0010ER\u0015\u0010!\u001a\u0004\u0018\u00010\u0017¢\u0006\n\n\u0002\u0010Y\u001a\u0004\bc\u0010XR\u0013\u0010\"\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\bd\u0010ER\u0011\u0010#\u001a\u00020$¢\u0006\b\n\u0000\u001a\u0004\b#\u0010eR\u0011\u0010%\u001a\u00020&¢\u0006\b\n\u0000\u001a\u0004\bf\u0010gR\u0011\u0010'\u001a\u00020(¢\u0006\b\n\u0000\u001a\u0004\bh\u0010iR\u0017\u0010)\u001a\b\u0012\u0004\u0012\u00020*0\u000b¢\u0006\b\n\u0000\u001a\u0004\bj\u0010MR\u0017\u0010+\u001a\b\u0012\u0004\u0012\u00020,0\u000b¢\u0006\b\n\u0000\u001a\u0004\bk\u0010MR\u0017\u0010-\u001a\b\u0012\u0004\u0012\u00020.0\u000b¢\u0006\b\n\u0000\u001a\u0004\bl\u0010MR\u0011\u0010/\u001a\u000200¢\u0006\b\n\u0000\u001a\u0004\bm\u0010nR\u0011\u00101\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\bo\u0010ER\u0011\u00102\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\bp\u0010ER\u0011\u00103\u001a\u00020$¢\u0006\b\n\u0000\u001a\u0004\b3\u0010eR(\u00104\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0001058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\bq\u0010r\u001a\u0004\bs\u0010tR\u0011\u00106\u001a\u000207¢\u0006\b\n\u0000\u001a\u0004\bu\u0010v¨\u0006¶\u0001"}, d2 = {"Lcom/superwall/sdk/paywall/presentation/PaywallInfo;", "", "databaseId", "", NotificationsService.IDENTIFIER_KEY, "name", ImagesContract.URL, "Lcom/superwall/sdk/models/paywall/PaywallURL;", "experiment", "Lcom/superwall/sdk/models/triggers/Experiment;", "products", "", "Lcom/superwall/sdk/models/product/ProductItem;", "productIds", "presentedByEventWithName", "presentedByEventWithId", "presentedByEventAt", "presentedBy", "presentationSourceType", "responseLoadStartTime", "responseLoadCompleteTime", "responseLoadFailTime", "responseLoadDuration", "", "webViewLoadStartTime", "webViewLoadCompleteTime", "webViewLoadFailTime", "webViewLoadDuration", "productsLoadStartTime", "productsLoadCompleteTime", "productsLoadFailTime", "shimmerLoadStartTime", "shimmerLoadCompleteTime", "productsLoadDuration", "paywalljsVersion", "isFreeTrialAvailable", "", "featureGatingBehavior", "Lcom/superwall/sdk/models/config/FeatureGatingBehavior;", "closeReason", "Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;", "localNotifications", "Lcom/superwall/sdk/models/paywall/LocalNotification;", "computedPropertyRequests", "Lcom/superwall/sdk/models/config/ComputedPropertyRequest;", "surveys", "Lcom/superwall/sdk/config/models/Survey;", "presentation", "Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;", "buildId", "cacheKey", "isScrollEnabled", "state", "", "customerInfo", "Lcom/superwall/sdk/models/customer/CustomerInfo;", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/models/triggers/Experiment;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;ZLcom/superwall/sdk/models/config/FeatureGatingBehavior;Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Lcom/superwall/sdk/models/customer/CustomerInfo;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "eventData", "Lcom/superwall/sdk/models/events/EventData;", "Ljava/util/Date;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/superwall/sdk/models/events/EventData;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Lcom/superwall/sdk/models/triggers/Experiment;Ljava/lang/String;ZLjava/lang/String;Lcom/superwall/sdk/models/config/FeatureGatingBehavior;Ljava/util/List;Ljava/util/List;Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;Ljava/util/List;Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Lcom/superwall/sdk/models/customer/CustomerInfo;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "seen0", "", "seen1", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/models/triggers/Experiment;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;ZLcom/superwall/sdk/models/config/FeatureGatingBehavior;Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Lcom/superwall/sdk/models/customer/CustomerInfo;Lkotlinx/serialization/internal/SerializationConstructorMarker;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "getDatabaseId", "()Ljava/lang/String;", "getIdentifier", "getName", "getUrl-24UBhI0", "Ljava/lang/String;", "getExperiment", "()Lcom/superwall/sdk/models/triggers/Experiment;", "getProducts", "()Ljava/util/List;", "getProductIds", "getPresentedByEventWithName", "getPresentedByEventWithId", "getPresentedByEventAt", "getPresentedBy", "getPresentationSourceType", "getResponseLoadStartTime", "getResponseLoadCompleteTime", "getResponseLoadFailTime", "getResponseLoadDuration", "()Ljava/lang/Double;", "Ljava/lang/Double;", "getWebViewLoadStartTime", "getWebViewLoadCompleteTime", "getWebViewLoadFailTime", "getWebViewLoadDuration", "getProductsLoadStartTime", "getProductsLoadCompleteTime", "getProductsLoadFailTime", "getShimmerLoadStartTime", "getShimmerLoadCompleteTime", "getProductsLoadDuration", "getPaywalljsVersion", "()Z", "getFeatureGatingBehavior", "()Lcom/superwall/sdk/models/config/FeatureGatingBehavior;", "getCloseReason", "()Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;", "getLocalNotifications", "getComputedPropertyRequests", "getSurveys", "getPresentation", "()Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;", "getBuildId", "getCacheKey", "getState$annotations", "()V", "getState", "()Ljava/util/Map;", "getCustomerInfo", "()Lcom/superwall/sdk/models/customer/CustomerInfo;", "eventParams", "product", "Lcom/superwall/sdk/store/abstractions/product/StoreProductType;", "otherParams", "audienceFilterParams", "", "component1", "component2", "component3", "component4", "component4-24UBhI0", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "component18", "component19", "component20", "component21", "component22", "component23", "component24", "component25", "component26", "component27", "component28", "component29", "component30", "component31", "component32", "component33", "component34", "component35", "component36", "component37", "component38", "component39", "copy", "copy-zhR-ERg", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/superwall/sdk/models/triggers/Experiment;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;ZLcom/superwall/sdk/models/config/FeatureGatingBehavior;Lcom/superwall/sdk/paywall/presentation/PaywallCloseReason;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/superwall/sdk/models/paywall/PaywallPresentationInfo;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Lcom/superwall/sdk/models/customer/CustomerInfo;)Lcom/superwall/sdk/paywall/presentation/PaywallInfo;", "equals", "other", "hashCode", "toString", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$superwall_release", "Companion", "$serializer", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
@Serializable
public final /* data */ class PaywallInfo {
    private final String buildId;
    private final String cacheKey;
    private final PaywallCloseReason closeReason;
    private final List<ComputedPropertyRequest> computedPropertyRequests;
    private final CustomerInfo customerInfo;
    private final String databaseId;
    private final Experiment experiment;
    private final FeatureGatingBehavior featureGatingBehavior;
    private final String identifier;
    private final boolean isFreeTrialAvailable;
    private final boolean isScrollEnabled;
    private final List<LocalNotification> localNotifications;
    private final String name;
    private final String paywalljsVersion;
    private final PaywallPresentationInfo presentation;
    private final String presentationSourceType;
    private final String presentedBy;
    private final String presentedByEventAt;
    private final String presentedByEventWithId;
    private final String presentedByEventWithName;
    private final List<String> productIds;
    private final List<ProductItem> products;
    private final String productsLoadCompleteTime;
    private final Double productsLoadDuration;
    private final String productsLoadFailTime;
    private final String productsLoadStartTime;
    private final String responseLoadCompleteTime;
    private final Double responseLoadDuration;
    private final String responseLoadFailTime;
    private final String responseLoadStartTime;
    private final String shimmerLoadCompleteTime;
    private final String shimmerLoadStartTime;
    private final Map<String, Object> state;
    private final List<Survey> surveys;
    private final String url;
    private final String webViewLoadCompleteTime;
    private final Double webViewLoadDuration;
    private final String webViewLoadFailTime;
    private final String webViewLoadStartTime;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final KSerializer<Object>[] $childSerializers = {null, null, null, null, null, new ArrayListSerializer(ProductItemSerializer.INSTANCE), new ArrayListSerializer(StringSerializer.INSTANCE), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, PaywallCloseReason.INSTANCE.serializer(), new ArrayListSerializer(LocalNotification$$serializer.INSTANCE), new ArrayListSerializer(ComputedPropertyRequest$$serializer.INSTANCE), new ArrayListSerializer(Survey$$serializer.INSTANCE), null, null, null, null, null, null};
    private static final Json json = JsonKt.Json$default(null, new Function1() { // from class: com.superwall.sdk.paywall.presentation.PaywallInfo$$ExternalSyntheticLambda1
        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            return PaywallInfo.json$lambda$26((JsonBuilder) obj);
        }
    }, 1, null);

    public /* synthetic */ PaywallInfo(int i, int i2, String str, String str2, String str3, String str4, Experiment experiment, List list, List list2, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, Double d, String str13, String str14, String str15, Double d2, String str16, String str17, String str18, String str19, String str20, Double d3, String str21, boolean z, FeatureGatingBehavior featureGatingBehavior, PaywallCloseReason paywallCloseReason, List list3, List list4, List list5, PaywallPresentationInfo paywallPresentationInfo, String str22, String str23, boolean z2, Map map, CustomerInfo customerInfo, SerializationConstructorMarker serializationConstructorMarker, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, i2, str, str2, str3, str4, experiment, list, list2, str5, str6, str7, str8, str9, str10, str11, str12, d, str13, str14, str15, d2, str16, str17, str18, str19, str20, d3, str21, z, featureGatingBehavior, paywallCloseReason, list3, list4, list5, paywallPresentationInfo, str22, str23, z2, map, customerInfo, serializationConstructorMarker);
    }

    public /* synthetic */ PaywallInfo(String str, String str2, String str3, String str4, Experiment experiment, List list, List list2, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, Double d, String str13, String str14, String str15, Double d2, String str16, String str17, String str18, String str19, String str20, Double d3, String str21, boolean z, FeatureGatingBehavior featureGatingBehavior, PaywallCloseReason paywallCloseReason, List list3, List list4, List list5, PaywallPresentationInfo paywallPresentationInfo, String str22, String str23, boolean z2, Map map, CustomerInfo customerInfo, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, str4, experiment, list, list2, str5, str6, str7, str8, str9, str10, str11, str12, d, str13, str14, str15, d2, str16, str17, str18, str19, str20, d3, str21, z, featureGatingBehavior, paywallCloseReason, list3, list4, list5, paywallPresentationInfo, str22, str23, z2, map, customerInfo);
    }

    public /* synthetic */ PaywallInfo(String str, String str2, String str3, String str4, List list, List list2, EventData eventData, Date date, Date date2, Date date3, Date date4, Date date5, Date date6, Date date7, Date date8, Date date9, Date date10, Date date11, Experiment experiment, String str5, boolean z, String str6, FeatureGatingBehavior featureGatingBehavior, List list3, List list4, PaywallCloseReason paywallCloseReason, List list5, PaywallPresentationInfo paywallPresentationInfo, String str7, String str8, boolean z2, Map map, CustomerInfo customerInfo, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, str4, list, list2, eventData, date, date2, date3, date4, date5, date6, date7, date8, date9, date10, date11, experiment, str5, z, str6, featureGatingBehavior, list3, list4, paywallCloseReason, list5, paywallPresentationInfo, str7, str8, z2, map, customerInfo);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: copy-zhR-ERg$default, reason: not valid java name */
    public static /* synthetic */ PaywallInfo m10698copyzhRERg$default(PaywallInfo paywallInfo, String str, String str2, String str3, String str4, Experiment experiment, List list, List list2, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, Double d, String str13, String str14, String str15, Double d2, String str16, String str17, String str18, String str19, String str20, Double d3, String str21, boolean z, FeatureGatingBehavior featureGatingBehavior, PaywallCloseReason paywallCloseReason, List list3, List list4, List list5, PaywallPresentationInfo paywallPresentationInfo, String str22, String str23, boolean z2, Map map, CustomerInfo customerInfo, int i, int i2, Object obj) {
        CustomerInfo customerInfo2;
        Map map2;
        String str24 = (i & 1) != 0 ? paywallInfo.databaseId : str;
        String str25 = (i & 2) != 0 ? paywallInfo.identifier : str2;
        String str26 = (i & 4) != 0 ? paywallInfo.name : str3;
        String str27 = (i & 8) != 0 ? paywallInfo.url : str4;
        Experiment experiment2 = (i & 16) != 0 ? paywallInfo.experiment : experiment;
        List list6 = (i & 32) != 0 ? paywallInfo.products : list;
        List list7 = (i & 64) != 0 ? paywallInfo.productIds : list2;
        String str28 = (i & 128) != 0 ? paywallInfo.presentedByEventWithName : str5;
        String str29 = (i & 256) != 0 ? paywallInfo.presentedByEventWithId : str6;
        String str30 = (i & 512) != 0 ? paywallInfo.presentedByEventAt : str7;
        String str31 = (i & 1024) != 0 ? paywallInfo.presentedBy : str8;
        String str32 = (i & 2048) != 0 ? paywallInfo.presentationSourceType : str9;
        String str33 = (i & 4096) != 0 ? paywallInfo.responseLoadStartTime : str10;
        String str34 = (i & 8192) != 0 ? paywallInfo.responseLoadCompleteTime : str11;
        String str35 = str24;
        String str36 = (i & 16384) != 0 ? paywallInfo.responseLoadFailTime : str12;
        Double d4 = (i & 32768) != 0 ? paywallInfo.responseLoadDuration : d;
        String str37 = (i & 65536) != 0 ? paywallInfo.webViewLoadStartTime : str13;
        String str38 = (i & 131072) != 0 ? paywallInfo.webViewLoadCompleteTime : str14;
        String str39 = (i & 262144) != 0 ? paywallInfo.webViewLoadFailTime : str15;
        Double d5 = (i & 524288) != 0 ? paywallInfo.webViewLoadDuration : d2;
        String str40 = (i & 1048576) != 0 ? paywallInfo.productsLoadStartTime : str16;
        String str41 = (i & 2097152) != 0 ? paywallInfo.productsLoadCompleteTime : str17;
        String str42 = (i & 4194304) != 0 ? paywallInfo.productsLoadFailTime : str18;
        String str43 = (i & 8388608) != 0 ? paywallInfo.shimmerLoadStartTime : str19;
        String str44 = (i & 16777216) != 0 ? paywallInfo.shimmerLoadCompleteTime : str20;
        Double d6 = (i & 33554432) != 0 ? paywallInfo.productsLoadDuration : d3;
        String str45 = (i & 67108864) != 0 ? paywallInfo.paywalljsVersion : str21;
        boolean z3 = (i & C.BUFFER_FLAG_FIRST_SAMPLE) != 0 ? paywallInfo.isFreeTrialAvailable : z;
        FeatureGatingBehavior featureGatingBehavior2 = (i & 268435456) != 0 ? paywallInfo.featureGatingBehavior : featureGatingBehavior;
        PaywallCloseReason paywallCloseReason2 = (i & C.BUFFER_FLAG_LAST_SAMPLE) != 0 ? paywallInfo.closeReason : paywallCloseReason;
        List list8 = (i & 1073741824) != 0 ? paywallInfo.localNotifications : list3;
        List list9 = (i & Integer.MIN_VALUE) != 0 ? paywallInfo.computedPropertyRequests : list4;
        List list10 = (i2 & 1) != 0 ? paywallInfo.surveys : list5;
        PaywallPresentationInfo paywallPresentationInfo2 = (i2 & 2) != 0 ? paywallInfo.presentation : paywallPresentationInfo;
        String str46 = (i2 & 4) != 0 ? paywallInfo.buildId : str22;
        String str47 = (i2 & 8) != 0 ? paywallInfo.cacheKey : str23;
        boolean z4 = (i2 & 16) != 0 ? paywallInfo.isScrollEnabled : z2;
        Map map3 = (i2 & 32) != 0 ? paywallInfo.state : map;
        if ((i2 & 64) != 0) {
            map2 = map3;
            customerInfo2 = paywallInfo.customerInfo;
        } else {
            customerInfo2 = customerInfo;
            map2 = map3;
        }
        return paywallInfo.m10700copyzhRERg(str35, str25, str26, str27, experiment2, list6, list7, str28, str29, str30, str31, str32, str33, str34, str36, d4, str37, str38, str39, d5, str40, str41, str42, str43, str44, d6, str45, z3, featureGatingBehavior2, paywallCloseReason2, list8, list9, list10, paywallPresentationInfo2, str46, str47, z4, map2, customerInfo2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean eventParams$lambda$18(Object obj) {
        return obj == null;
    }

    @Serializable(with = AnyMapSerializer.class)
    public static /* synthetic */ void getState$annotations() {
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getDatabaseId() {
        return this.databaseId;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final String getPresentedByEventAt() {
        return this.presentedByEventAt;
    }

    /* JADX INFO: renamed from: component11, reason: from getter */
    public final String getPresentedBy() {
        return this.presentedBy;
    }

    /* JADX INFO: renamed from: component12, reason: from getter */
    public final String getPresentationSourceType() {
        return this.presentationSourceType;
    }

    /* JADX INFO: renamed from: component13, reason: from getter */
    public final String getResponseLoadStartTime() {
        return this.responseLoadStartTime;
    }

    /* JADX INFO: renamed from: component14, reason: from getter */
    public final String getResponseLoadCompleteTime() {
        return this.responseLoadCompleteTime;
    }

    /* JADX INFO: renamed from: component15, reason: from getter */
    public final String getResponseLoadFailTime() {
        return this.responseLoadFailTime;
    }

    /* JADX INFO: renamed from: component16, reason: from getter */
    public final Double getResponseLoadDuration() {
        return this.responseLoadDuration;
    }

    /* JADX INFO: renamed from: component17, reason: from getter */
    public final String getWebViewLoadStartTime() {
        return this.webViewLoadStartTime;
    }

    /* JADX INFO: renamed from: component18, reason: from getter */
    public final String getWebViewLoadCompleteTime() {
        return this.webViewLoadCompleteTime;
    }

    /* JADX INFO: renamed from: component19, reason: from getter */
    public final String getWebViewLoadFailTime() {
        return this.webViewLoadFailTime;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getIdentifier() {
        return this.identifier;
    }

    /* JADX INFO: renamed from: component20, reason: from getter */
    public final Double getWebViewLoadDuration() {
        return this.webViewLoadDuration;
    }

    /* JADX INFO: renamed from: component21, reason: from getter */
    public final String getProductsLoadStartTime() {
        return this.productsLoadStartTime;
    }

    /* JADX INFO: renamed from: component22, reason: from getter */
    public final String getProductsLoadCompleteTime() {
        return this.productsLoadCompleteTime;
    }

    /* JADX INFO: renamed from: component23, reason: from getter */
    public final String getProductsLoadFailTime() {
        return this.productsLoadFailTime;
    }

    /* JADX INFO: renamed from: component24, reason: from getter */
    public final String getShimmerLoadStartTime() {
        return this.shimmerLoadStartTime;
    }

    /* JADX INFO: renamed from: component25, reason: from getter */
    public final String getShimmerLoadCompleteTime() {
        return this.shimmerLoadCompleteTime;
    }

    /* JADX INFO: renamed from: component26, reason: from getter */
    public final Double getProductsLoadDuration() {
        return this.productsLoadDuration;
    }

    /* JADX INFO: renamed from: component27, reason: from getter */
    public final String getPaywalljsVersion() {
        return this.paywalljsVersion;
    }

    /* JADX INFO: renamed from: component28, reason: from getter */
    public final boolean getIsFreeTrialAvailable() {
        return this.isFreeTrialAvailable;
    }

    /* JADX INFO: renamed from: component29, reason: from getter */
    public final FeatureGatingBehavior getFeatureGatingBehavior() {
        return this.featureGatingBehavior;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getName() {
        return this.name;
    }

    /* JADX INFO: renamed from: component30, reason: from getter */
    public final PaywallCloseReason getCloseReason() {
        return this.closeReason;
    }

    public final List<LocalNotification> component31() {
        return this.localNotifications;
    }

    public final List<ComputedPropertyRequest> component32() {
        return this.computedPropertyRequests;
    }

    public final List<Survey> component33() {
        return this.surveys;
    }

    /* JADX INFO: renamed from: component34, reason: from getter */
    public final PaywallPresentationInfo getPresentation() {
        return this.presentation;
    }

    /* JADX INFO: renamed from: component35, reason: from getter */
    public final String getBuildId() {
        return this.buildId;
    }

    /* JADX INFO: renamed from: component36, reason: from getter */
    public final String getCacheKey() {
        return this.cacheKey;
    }

    /* JADX INFO: renamed from: component37, reason: from getter */
    public final boolean getIsScrollEnabled() {
        return this.isScrollEnabled;
    }

    public final Map<String, Object> component38() {
        return this.state;
    }

    /* JADX INFO: renamed from: component39, reason: from getter */
    public final CustomerInfo getCustomerInfo() {
        return this.customerInfo;
    }

    /* JADX INFO: renamed from: component4-24UBhI0, reason: not valid java name and from getter */
    public final String getUrl() {
        return this.url;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final Experiment getExperiment() {
        return this.experiment;
    }

    public final List<ProductItem> component6() {
        return this.products;
    }

    public final List<String> component7() {
        return this.productIds;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final String getPresentedByEventWithName() {
        return this.presentedByEventWithName;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final String getPresentedByEventWithId() {
        return this.presentedByEventWithId;
    }

    /* JADX INFO: renamed from: copy-zhR-ERg, reason: not valid java name */
    public final PaywallInfo m10700copyzhRERg(String databaseId, String identifier, String name, String url, Experiment experiment, List<ProductItem> products, List<String> productIds, String presentedByEventWithName, String presentedByEventWithId, String presentedByEventAt, String presentedBy, String presentationSourceType, String responseLoadStartTime, String responseLoadCompleteTime, String responseLoadFailTime, Double responseLoadDuration, String webViewLoadStartTime, String webViewLoadCompleteTime, String webViewLoadFailTime, Double webViewLoadDuration, String productsLoadStartTime, String productsLoadCompleteTime, String productsLoadFailTime, String shimmerLoadStartTime, String shimmerLoadCompleteTime, Double productsLoadDuration, String paywalljsVersion, boolean isFreeTrialAvailable, FeatureGatingBehavior featureGatingBehavior, PaywallCloseReason closeReason, List<LocalNotification> localNotifications, List<ComputedPropertyRequest> computedPropertyRequests, List<Survey> surveys, PaywallPresentationInfo presentation, String buildId, String cacheKey, boolean isScrollEnabled, Map<String, ? extends Object> state, CustomerInfo customerInfo) {
        Intrinsics.checkNotNullParameter(databaseId, "databaseId");
        Intrinsics.checkNotNullParameter(identifier, "identifier");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(products, "products");
        Intrinsics.checkNotNullParameter(productIds, "productIds");
        Intrinsics.checkNotNullParameter(presentedBy, "presentedBy");
        Intrinsics.checkNotNullParameter(featureGatingBehavior, "featureGatingBehavior");
        Intrinsics.checkNotNullParameter(closeReason, "closeReason");
        Intrinsics.checkNotNullParameter(localNotifications, "localNotifications");
        Intrinsics.checkNotNullParameter(computedPropertyRequests, "computedPropertyRequests");
        Intrinsics.checkNotNullParameter(surveys, "surveys");
        Intrinsics.checkNotNullParameter(presentation, "presentation");
        Intrinsics.checkNotNullParameter(buildId, "buildId");
        Intrinsics.checkNotNullParameter(cacheKey, "cacheKey");
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(customerInfo, "customerInfo");
        return new PaywallInfo(databaseId, identifier, name, url, experiment, products, productIds, presentedByEventWithName, presentedByEventWithId, presentedByEventAt, presentedBy, presentationSourceType, responseLoadStartTime, responseLoadCompleteTime, responseLoadFailTime, responseLoadDuration, webViewLoadStartTime, webViewLoadCompleteTime, webViewLoadFailTime, webViewLoadDuration, productsLoadStartTime, productsLoadCompleteTime, productsLoadFailTime, shimmerLoadStartTime, shimmerLoadCompleteTime, productsLoadDuration, paywalljsVersion, isFreeTrialAvailable, featureGatingBehavior, closeReason, localNotifications, computedPropertyRequests, surveys, presentation, buildId, cacheKey, isScrollEnabled, state, customerInfo, null);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PaywallInfo)) {
            return false;
        }
        PaywallInfo paywallInfo = (PaywallInfo) other;
        return Intrinsics.areEqual(this.databaseId, paywallInfo.databaseId) && Intrinsics.areEqual(this.identifier, paywallInfo.identifier) && Intrinsics.areEqual(this.name, paywallInfo.name) && PaywallURL.m10665equalsimpl0(this.url, paywallInfo.url) && Intrinsics.areEqual(this.experiment, paywallInfo.experiment) && Intrinsics.areEqual(this.products, paywallInfo.products) && Intrinsics.areEqual(this.productIds, paywallInfo.productIds) && Intrinsics.areEqual(this.presentedByEventWithName, paywallInfo.presentedByEventWithName) && Intrinsics.areEqual(this.presentedByEventWithId, paywallInfo.presentedByEventWithId) && Intrinsics.areEqual(this.presentedByEventAt, paywallInfo.presentedByEventAt) && Intrinsics.areEqual(this.presentedBy, paywallInfo.presentedBy) && Intrinsics.areEqual(this.presentationSourceType, paywallInfo.presentationSourceType) && Intrinsics.areEqual(this.responseLoadStartTime, paywallInfo.responseLoadStartTime) && Intrinsics.areEqual(this.responseLoadCompleteTime, paywallInfo.responseLoadCompleteTime) && Intrinsics.areEqual(this.responseLoadFailTime, paywallInfo.responseLoadFailTime) && Intrinsics.areEqual((Object) this.responseLoadDuration, (Object) paywallInfo.responseLoadDuration) && Intrinsics.areEqual(this.webViewLoadStartTime, paywallInfo.webViewLoadStartTime) && Intrinsics.areEqual(this.webViewLoadCompleteTime, paywallInfo.webViewLoadCompleteTime) && Intrinsics.areEqual(this.webViewLoadFailTime, paywallInfo.webViewLoadFailTime) && Intrinsics.areEqual((Object) this.webViewLoadDuration, (Object) paywallInfo.webViewLoadDuration) && Intrinsics.areEqual(this.productsLoadStartTime, paywallInfo.productsLoadStartTime) && Intrinsics.areEqual(this.productsLoadCompleteTime, paywallInfo.productsLoadCompleteTime) && Intrinsics.areEqual(this.productsLoadFailTime, paywallInfo.productsLoadFailTime) && Intrinsics.areEqual(this.shimmerLoadStartTime, paywallInfo.shimmerLoadStartTime) && Intrinsics.areEqual(this.shimmerLoadCompleteTime, paywallInfo.shimmerLoadCompleteTime) && Intrinsics.areEqual((Object) this.productsLoadDuration, (Object) paywallInfo.productsLoadDuration) && Intrinsics.areEqual(this.paywalljsVersion, paywallInfo.paywalljsVersion) && this.isFreeTrialAvailable == paywallInfo.isFreeTrialAvailable && Intrinsics.areEqual(this.featureGatingBehavior, paywallInfo.featureGatingBehavior) && Intrinsics.areEqual(this.closeReason, paywallInfo.closeReason) && Intrinsics.areEqual(this.localNotifications, paywallInfo.localNotifications) && Intrinsics.areEqual(this.computedPropertyRequests, paywallInfo.computedPropertyRequests) && Intrinsics.areEqual(this.surveys, paywallInfo.surveys) && Intrinsics.areEqual(this.presentation, paywallInfo.presentation) && Intrinsics.areEqual(this.buildId, paywallInfo.buildId) && Intrinsics.areEqual(this.cacheKey, paywallInfo.cacheKey) && this.isScrollEnabled == paywallInfo.isScrollEnabled && Intrinsics.areEqual(this.state, paywallInfo.state) && Intrinsics.areEqual(this.customerInfo, paywallInfo.customerInfo);
    }

    public int hashCode() {
        int iHashCode = ((((((this.databaseId.hashCode() * 31) + this.identifier.hashCode()) * 31) + this.name.hashCode()) * 31) + PaywallURL.m10666hashCodeimpl(this.url)) * 31;
        Experiment experiment = this.experiment;
        int iHashCode2 = (((((iHashCode + (experiment == null ? 0 : experiment.hashCode())) * 31) + this.products.hashCode()) * 31) + this.productIds.hashCode()) * 31;
        String str = this.presentedByEventWithName;
        int iHashCode3 = (iHashCode2 + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.presentedByEventWithId;
        int iHashCode4 = (iHashCode3 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.presentedByEventAt;
        int iHashCode5 = (((iHashCode4 + (str3 == null ? 0 : str3.hashCode())) * 31) + this.presentedBy.hashCode()) * 31;
        String str4 = this.presentationSourceType;
        int iHashCode6 = (iHashCode5 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.responseLoadStartTime;
        int iHashCode7 = (iHashCode6 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.responseLoadCompleteTime;
        int iHashCode8 = (iHashCode7 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.responseLoadFailTime;
        int iHashCode9 = (iHashCode8 + (str7 == null ? 0 : str7.hashCode())) * 31;
        Double d = this.responseLoadDuration;
        int iHashCode10 = (iHashCode9 + (d == null ? 0 : d.hashCode())) * 31;
        String str8 = this.webViewLoadStartTime;
        int iHashCode11 = (iHashCode10 + (str8 == null ? 0 : str8.hashCode())) * 31;
        String str9 = this.webViewLoadCompleteTime;
        int iHashCode12 = (iHashCode11 + (str9 == null ? 0 : str9.hashCode())) * 31;
        String str10 = this.webViewLoadFailTime;
        int iHashCode13 = (iHashCode12 + (str10 == null ? 0 : str10.hashCode())) * 31;
        Double d2 = this.webViewLoadDuration;
        int iHashCode14 = (iHashCode13 + (d2 == null ? 0 : d2.hashCode())) * 31;
        String str11 = this.productsLoadStartTime;
        int iHashCode15 = (iHashCode14 + (str11 == null ? 0 : str11.hashCode())) * 31;
        String str12 = this.productsLoadCompleteTime;
        int iHashCode16 = (iHashCode15 + (str12 == null ? 0 : str12.hashCode())) * 31;
        String str13 = this.productsLoadFailTime;
        int iHashCode17 = (iHashCode16 + (str13 == null ? 0 : str13.hashCode())) * 31;
        String str14 = this.shimmerLoadStartTime;
        int iHashCode18 = (iHashCode17 + (str14 == null ? 0 : str14.hashCode())) * 31;
        String str15 = this.shimmerLoadCompleteTime;
        int iHashCode19 = (iHashCode18 + (str15 == null ? 0 : str15.hashCode())) * 31;
        Double d3 = this.productsLoadDuration;
        int iHashCode20 = (iHashCode19 + (d3 == null ? 0 : d3.hashCode())) * 31;
        String str16 = this.paywalljsVersion;
        return ((((((((((((((((((((((((iHashCode20 + (str16 != null ? str16.hashCode() : 0)) * 31) + Boolean.hashCode(this.isFreeTrialAvailable)) * 31) + this.featureGatingBehavior.hashCode()) * 31) + this.closeReason.hashCode()) * 31) + this.localNotifications.hashCode()) * 31) + this.computedPropertyRequests.hashCode()) * 31) + this.surveys.hashCode()) * 31) + this.presentation.hashCode()) * 31) + this.buildId.hashCode()) * 31) + this.cacheKey.hashCode()) * 31) + Boolean.hashCode(this.isScrollEnabled)) * 31) + this.state.hashCode()) * 31) + this.customerInfo.hashCode();
    }

    public String toString() {
        return "PaywallInfo(databaseId=" + this.databaseId + ", identifier=" + this.identifier + ", name=" + this.name + ", url=" + PaywallURL.m10667toStringimpl(this.url) + ", experiment=" + this.experiment + ", products=" + this.products + ", productIds=" + this.productIds + ", presentedByEventWithName=" + this.presentedByEventWithName + ", presentedByEventWithId=" + this.presentedByEventWithId + ", presentedByEventAt=" + this.presentedByEventAt + ", presentedBy=" + this.presentedBy + ", presentationSourceType=" + this.presentationSourceType + ", responseLoadStartTime=" + this.responseLoadStartTime + ", responseLoadCompleteTime=" + this.responseLoadCompleteTime + ", responseLoadFailTime=" + this.responseLoadFailTime + ", responseLoadDuration=" + this.responseLoadDuration + ", webViewLoadStartTime=" + this.webViewLoadStartTime + ", webViewLoadCompleteTime=" + this.webViewLoadCompleteTime + ", webViewLoadFailTime=" + this.webViewLoadFailTime + ", webViewLoadDuration=" + this.webViewLoadDuration + ", productsLoadStartTime=" + this.productsLoadStartTime + ", productsLoadCompleteTime=" + this.productsLoadCompleteTime + ", productsLoadFailTime=" + this.productsLoadFailTime + ", shimmerLoadStartTime=" + this.shimmerLoadStartTime + ", shimmerLoadCompleteTime=" + this.shimmerLoadCompleteTime + ", productsLoadDuration=" + this.productsLoadDuration + ", paywalljsVersion=" + this.paywalljsVersion + ", isFreeTrialAvailable=" + this.isFreeTrialAvailable + ", featureGatingBehavior=" + this.featureGatingBehavior + ", closeReason=" + this.closeReason + ", localNotifications=" + this.localNotifications + ", computedPropertyRequests=" + this.computedPropertyRequests + ", surveys=" + this.surveys + ", presentation=" + this.presentation + ", buildId=" + this.buildId + ", cacheKey=" + this.cacheKey + ", isScrollEnabled=" + this.isScrollEnabled + ", state=" + this.state + ", customerInfo=" + this.customerInfo + ")";
    }

    private /* synthetic */ PaywallInfo(int i, int i2, String str, String str2, String str3, String str4, Experiment experiment, List list, List list2, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, Double d, String str13, String str14, String str15, Double d2, String str16, String str17, String str18, String str19, String str20, Double d3, String str21, boolean z, FeatureGatingBehavior featureGatingBehavior, PaywallCloseReason paywallCloseReason, List list3, List list4, List list5, PaywallPresentationInfo paywallPresentationInfo, String str22, String str23, boolean z2, Map map, CustomerInfo customerInfo, SerializationConstructorMarker serializationConstructorMarker) {
        if ((31 != (i2 & 31)) | (-1 != i)) {
            PluginExceptionsKt.throwArrayMissingFieldException(new int[]{i, i2}, new int[]{-1, 31}, PaywallInfo$$serializer.INSTANCE.getDescriptor());
        }
        this.databaseId = str;
        this.identifier = str2;
        this.name = str3;
        this.url = str4;
        this.experiment = experiment;
        this.products = list;
        this.productIds = list2;
        this.presentedByEventWithName = str5;
        this.presentedByEventWithId = str6;
        this.presentedByEventAt = str7;
        this.presentedBy = str8;
        this.presentationSourceType = str9;
        this.responseLoadStartTime = str10;
        this.responseLoadCompleteTime = str11;
        this.responseLoadFailTime = str12;
        this.responseLoadDuration = d;
        this.webViewLoadStartTime = str13;
        this.webViewLoadCompleteTime = str14;
        this.webViewLoadFailTime = str15;
        this.webViewLoadDuration = d2;
        this.productsLoadStartTime = str16;
        this.productsLoadCompleteTime = str17;
        this.productsLoadFailTime = str18;
        this.shimmerLoadStartTime = str19;
        this.shimmerLoadCompleteTime = str20;
        this.productsLoadDuration = d3;
        this.paywalljsVersion = str21;
        this.isFreeTrialAvailable = z;
        this.featureGatingBehavior = featureGatingBehavior;
        this.closeReason = paywallCloseReason;
        this.localNotifications = list3;
        this.computedPropertyRequests = list4;
        this.surveys = list5;
        this.presentation = paywallPresentationInfo;
        this.buildId = str22;
        this.cacheKey = str23;
        this.isScrollEnabled = z2;
        this.state = (i2 & 32) == 0 ? MapsKt.emptyMap() : map;
        this.customerInfo = (i2 & 64) == 0 ? CustomerInfo.INSTANCE.empty() : customerInfo;
    }

    @JvmStatic
    public static final /* synthetic */ void write$Self$superwall_release(PaywallInfo self, CompositeEncoder output, SerialDescriptor serialDesc) {
        KSerializer<Object>[] kSerializerArr = $childSerializers;
        output.encodeStringElement(serialDesc, 0, self.databaseId);
        output.encodeStringElement(serialDesc, 1, self.identifier);
        output.encodeStringElement(serialDesc, 2, self.name);
        output.encodeSerializableElement(serialDesc, 3, PaywallURL$$serializer.INSTANCE, PaywallURL.m10662boximpl(self.url));
        output.encodeNullableSerializableElement(serialDesc, 4, Experiment$$serializer.INSTANCE, self.experiment);
        output.encodeSerializableElement(serialDesc, 5, kSerializerArr[5], self.products);
        output.encodeSerializableElement(serialDesc, 6, kSerializerArr[6], self.productIds);
        output.encodeNullableSerializableElement(serialDesc, 7, StringSerializer.INSTANCE, self.presentedByEventWithName);
        output.encodeNullableSerializableElement(serialDesc, 8, StringSerializer.INSTANCE, self.presentedByEventWithId);
        output.encodeNullableSerializableElement(serialDesc, 9, StringSerializer.INSTANCE, self.presentedByEventAt);
        output.encodeStringElement(serialDesc, 10, self.presentedBy);
        output.encodeNullableSerializableElement(serialDesc, 11, StringSerializer.INSTANCE, self.presentationSourceType);
        output.encodeNullableSerializableElement(serialDesc, 12, StringSerializer.INSTANCE, self.responseLoadStartTime);
        output.encodeNullableSerializableElement(serialDesc, 13, StringSerializer.INSTANCE, self.responseLoadCompleteTime);
        output.encodeNullableSerializableElement(serialDesc, 14, StringSerializer.INSTANCE, self.responseLoadFailTime);
        output.encodeNullableSerializableElement(serialDesc, 15, DoubleSerializer.INSTANCE, self.responseLoadDuration);
        output.encodeNullableSerializableElement(serialDesc, 16, StringSerializer.INSTANCE, self.webViewLoadStartTime);
        output.encodeNullableSerializableElement(serialDesc, 17, StringSerializer.INSTANCE, self.webViewLoadCompleteTime);
        output.encodeNullableSerializableElement(serialDesc, 18, StringSerializer.INSTANCE, self.webViewLoadFailTime);
        output.encodeNullableSerializableElement(serialDesc, 19, DoubleSerializer.INSTANCE, self.webViewLoadDuration);
        output.encodeNullableSerializableElement(serialDesc, 20, StringSerializer.INSTANCE, self.productsLoadStartTime);
        output.encodeNullableSerializableElement(serialDesc, 21, StringSerializer.INSTANCE, self.productsLoadCompleteTime);
        output.encodeNullableSerializableElement(serialDesc, 22, StringSerializer.INSTANCE, self.productsLoadFailTime);
        output.encodeNullableSerializableElement(serialDesc, 23, StringSerializer.INSTANCE, self.shimmerLoadStartTime);
        output.encodeNullableSerializableElement(serialDesc, 24, StringSerializer.INSTANCE, self.shimmerLoadCompleteTime);
        output.encodeNullableSerializableElement(serialDesc, 25, DoubleSerializer.INSTANCE, self.productsLoadDuration);
        output.encodeNullableSerializableElement(serialDesc, 26, StringSerializer.INSTANCE, self.paywalljsVersion);
        output.encodeBooleanElement(serialDesc, 27, self.isFreeTrialAvailable);
        output.encodeSerializableElement(serialDesc, 28, FeatureGatingBehaviorSerializer.INSTANCE, self.featureGatingBehavior);
        output.encodeSerializableElement(serialDesc, 29, kSerializerArr[29], self.closeReason);
        output.encodeSerializableElement(serialDesc, 30, kSerializerArr[30], self.localNotifications);
        output.encodeSerializableElement(serialDesc, 31, kSerializerArr[31], self.computedPropertyRequests);
        output.encodeSerializableElement(serialDesc, 32, kSerializerArr[32], self.surveys);
        output.encodeSerializableElement(serialDesc, 33, PaywallPresentationInfo$$serializer.INSTANCE, self.presentation);
        output.encodeStringElement(serialDesc, 34, self.buildId);
        output.encodeStringElement(serialDesc, 35, self.cacheKey);
        output.encodeBooleanElement(serialDesc, 36, self.isScrollEnabled);
        if (output.shouldEncodeElementDefault(serialDesc, 37) || !Intrinsics.areEqual(self.state, MapsKt.emptyMap())) {
            output.encodeSerializableElement(serialDesc, 37, AnyMapSerializer.INSTANCE, self.state);
        }
        if (!output.shouldEncodeElementDefault(serialDesc, 38) && Intrinsics.areEqual(self.customerInfo, CustomerInfo.INSTANCE.empty())) {
            return;
        }
        output.encodeSerializableElement(serialDesc, 38, CustomerInfo$$serializer.INSTANCE, self.customerInfo);
    }

    private PaywallInfo(String databaseId, String identifier, String name, String url, Experiment experiment, List<ProductItem> products, List<String> productIds, String str, String str2, String str3, String presentedBy, String str4, String str5, String str6, String str7, Double d, String str8, String str9, String str10, Double d2, String str11, String str12, String str13, String str14, String str15, Double d3, String str16, boolean z, FeatureGatingBehavior featureGatingBehavior, PaywallCloseReason closeReason, List<LocalNotification> localNotifications, List<ComputedPropertyRequest> computedPropertyRequests, List<Survey> surveys, PaywallPresentationInfo presentation, String buildId, String cacheKey, boolean z2, Map<String, ? extends Object> state, CustomerInfo customerInfo) {
        Intrinsics.checkNotNullParameter(databaseId, "databaseId");
        Intrinsics.checkNotNullParameter(identifier, "identifier");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(products, "products");
        Intrinsics.checkNotNullParameter(productIds, "productIds");
        Intrinsics.checkNotNullParameter(presentedBy, "presentedBy");
        Intrinsics.checkNotNullParameter(featureGatingBehavior, "featureGatingBehavior");
        Intrinsics.checkNotNullParameter(closeReason, "closeReason");
        Intrinsics.checkNotNullParameter(localNotifications, "localNotifications");
        Intrinsics.checkNotNullParameter(computedPropertyRequests, "computedPropertyRequests");
        Intrinsics.checkNotNullParameter(surveys, "surveys");
        Intrinsics.checkNotNullParameter(presentation, "presentation");
        Intrinsics.checkNotNullParameter(buildId, "buildId");
        Intrinsics.checkNotNullParameter(cacheKey, "cacheKey");
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(customerInfo, "customerInfo");
        this.databaseId = databaseId;
        this.identifier = identifier;
        this.name = name;
        this.url = url;
        this.experiment = experiment;
        this.products = products;
        this.productIds = productIds;
        this.presentedByEventWithName = str;
        this.presentedByEventWithId = str2;
        this.presentedByEventAt = str3;
        this.presentedBy = presentedBy;
        this.presentationSourceType = str4;
        this.responseLoadStartTime = str5;
        this.responseLoadCompleteTime = str6;
        this.responseLoadFailTime = str7;
        this.responseLoadDuration = d;
        this.webViewLoadStartTime = str8;
        this.webViewLoadCompleteTime = str9;
        this.webViewLoadFailTime = str10;
        this.webViewLoadDuration = d2;
        this.productsLoadStartTime = str11;
        this.productsLoadCompleteTime = str12;
        this.productsLoadFailTime = str13;
        this.shimmerLoadStartTime = str14;
        this.shimmerLoadCompleteTime = str15;
        this.productsLoadDuration = d3;
        this.paywalljsVersion = str16;
        this.isFreeTrialAvailable = z;
        this.featureGatingBehavior = featureGatingBehavior;
        this.closeReason = closeReason;
        this.localNotifications = localNotifications;
        this.computedPropertyRequests = computedPropertyRequests;
        this.surveys = surveys;
        this.presentation = presentation;
        this.buildId = buildId;
        this.cacheKey = cacheKey;
        this.isScrollEnabled = z2;
        this.state = state;
        this.customerInfo = customerInfo;
    }

    public final String getDatabaseId() {
        return this.databaseId;
    }

    public final String getIdentifier() {
        return this.identifier;
    }

    public final String getName() {
        return this.name;
    }

    /* JADX INFO: renamed from: getUrl-24UBhI0, reason: not valid java name */
    public final String m10701getUrl24UBhI0() {
        return this.url;
    }

    public final Experiment getExperiment() {
        return this.experiment;
    }

    public final List<ProductItem> getProducts() {
        return this.products;
    }

    public final List<String> getProductIds() {
        return this.productIds;
    }

    public final String getPresentedByEventWithName() {
        return this.presentedByEventWithName;
    }

    public final String getPresentedByEventWithId() {
        return this.presentedByEventWithId;
    }

    public final String getPresentedByEventAt() {
        return this.presentedByEventAt;
    }

    public final String getPresentedBy() {
        return this.presentedBy;
    }

    public final String getPresentationSourceType() {
        return this.presentationSourceType;
    }

    public final String getResponseLoadStartTime() {
        return this.responseLoadStartTime;
    }

    public final String getResponseLoadCompleteTime() {
        return this.responseLoadCompleteTime;
    }

    public final String getResponseLoadFailTime() {
        return this.responseLoadFailTime;
    }

    public final Double getResponseLoadDuration() {
        return this.responseLoadDuration;
    }

    public final String getWebViewLoadStartTime() {
        return this.webViewLoadStartTime;
    }

    public final String getWebViewLoadCompleteTime() {
        return this.webViewLoadCompleteTime;
    }

    public final String getWebViewLoadFailTime() {
        return this.webViewLoadFailTime;
    }

    public final Double getWebViewLoadDuration() {
        return this.webViewLoadDuration;
    }

    public final String getProductsLoadStartTime() {
        return this.productsLoadStartTime;
    }

    public final String getProductsLoadCompleteTime() {
        return this.productsLoadCompleteTime;
    }

    public final String getProductsLoadFailTime() {
        return this.productsLoadFailTime;
    }

    public final String getShimmerLoadStartTime() {
        return this.shimmerLoadStartTime;
    }

    public final String getShimmerLoadCompleteTime() {
        return this.shimmerLoadCompleteTime;
    }

    public final Double getProductsLoadDuration() {
        return this.productsLoadDuration;
    }

    public final String getPaywalljsVersion() {
        return this.paywalljsVersion;
    }

    public final boolean isFreeTrialAvailable() {
        return this.isFreeTrialAvailable;
    }

    public final FeatureGatingBehavior getFeatureGatingBehavior() {
        return this.featureGatingBehavior;
    }

    public final PaywallCloseReason getCloseReason() {
        return this.closeReason;
    }

    public final List<LocalNotification> getLocalNotifications() {
        return this.localNotifications;
    }

    public final List<ComputedPropertyRequest> getComputedPropertyRequests() {
        return this.computedPropertyRequests;
    }

    public final List<Survey> getSurveys() {
        return this.surveys;
    }

    public final PaywallPresentationInfo getPresentation() {
        return this.presentation;
    }

    public final String getBuildId() {
        return this.buildId;
    }

    public final String getCacheKey() {
        return this.cacheKey;
    }

    public final boolean isScrollEnabled() {
        return this.isScrollEnabled;
    }

    public final Map<String, Object> getState() {
        return this.state;
    }

    public /* synthetic */ PaywallInfo(String str, String str2, String str3, String str4, Experiment experiment, List list, List list2, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, Double d, String str13, String str14, String str15, Double d2, String str16, String str17, String str18, String str19, String str20, Double d3, String str21, boolean z, FeatureGatingBehavior featureGatingBehavior, PaywallCloseReason paywallCloseReason, List list3, List list4, List list5, PaywallPresentationInfo paywallPresentationInfo, String str22, String str23, boolean z2, Map map, CustomerInfo customerInfo, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, str4, experiment, list, list2, str5, str6, str7, str8, str9, str10, str11, str12, d, str13, str14, str15, d2, str16, str17, str18, str19, str20, d3, str21, z, featureGatingBehavior, paywallCloseReason, list3, list4, list5, paywallPresentationInfo, str22, str23, z2, (i2 & 32) != 0 ? MapsKt.emptyMap() : map, (i2 & 64) != 0 ? CustomerInfo.INSTANCE.empty() : customerInfo, null);
    }

    public final CustomerInfo getCustomerInfo() {
        return this.customerInfo;
    }

    public /* synthetic */ PaywallInfo(String str, String str2, String str3, String str4, List list, List list2, EventData eventData, Date date, Date date2, Date date3, Date date4, Date date5, Date date6, Date date7, Date date8, Date date9, Date date10, Date date11, Experiment experiment, String str5, boolean z, String str6, FeatureGatingBehavior featureGatingBehavior, List list3, List list4, PaywallCloseReason paywallCloseReason, List list5, PaywallPresentationInfo paywallPresentationInfo, String str7, String str8, boolean z2, Map map, CustomerInfo customerInfo, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, str4, list, list2, eventData, date, date2, date3, date4, date5, date6, date7, date8, date9, date10, date11, (i & 262144) != 0 ? null : experiment, (i & 524288) != 0 ? null : str5, z, (i & 2097152) != 0 ? null : str6, (i & 4194304) != 0 ? FeatureGatingBehavior.NonGated.INSTANCE : featureGatingBehavior, list3, list4, paywallCloseReason, list5, paywallPresentationInfo, str7, str8, z2, (i & Integer.MIN_VALUE) != 0 ? MapsKt.emptyMap() : map, (i2 & 1) != 0 ? CustomerInfo.INSTANCE.empty() : customerInfo, null);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    private PaywallInfo(String databaseId, String identifier, String name, String url, List<ProductItem> products, List<String> productIds, EventData eventData, Date date, Date date2, Date date3, Date date4, Date date5, Date date6, Date date7, Date date8, Date date9, Date date10, Date date11, Experiment experiment, String str, boolean z, String str2, FeatureGatingBehavior featureGatingBehavior, List<LocalNotification> localNotifications, List<ComputedPropertyRequest> computedPropertyRequests, PaywallCloseReason closeReason, List<Survey> surveys, PaywallPresentationInfo presentation, String buildId, String cacheKey, boolean z2, Map<String, ? extends Object> state, CustomerInfo customerInfo) {
        String str3;
        Double d;
        Double d2;
        Double d3;
        String str4;
        String str5;
        Double dValueOf;
        String str6;
        String str7;
        String str8;
        Double dValueOf2;
        String str9;
        String str10;
        String str11;
        Double dValueOf3;
        String str12;
        String str13;
        String str14;
        String id;
        Date createdAt;
        Intrinsics.checkNotNullParameter(databaseId, "databaseId");
        Intrinsics.checkNotNullParameter(identifier, "identifier");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(products, "products");
        Intrinsics.checkNotNullParameter(productIds, "productIds");
        Intrinsics.checkNotNullParameter(featureGatingBehavior, "featureGatingBehavior");
        Intrinsics.checkNotNullParameter(localNotifications, "localNotifications");
        Intrinsics.checkNotNullParameter(computedPropertyRequests, "computedPropertyRequests");
        Intrinsics.checkNotNullParameter(closeReason, "closeReason");
        Intrinsics.checkNotNullParameter(surveys, "surveys");
        Intrinsics.checkNotNullParameter(presentation, "presentation");
        Intrinsics.checkNotNullParameter(buildId, "buildId");
        Intrinsics.checkNotNullParameter(cacheKey, "cacheKey");
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(customerInfo, "customerInfo");
        String name2 = eventData != null ? eventData.getName() : null;
        String string = (eventData == null || (createdAt = eventData.getCreatedAt()) == null) ? null : createdAt.toString();
        if (eventData == null || (id = eventData.getId()) == null) {
            str3 = null;
        } else {
            String lowerCase = id.toLowerCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
            str3 = lowerCase;
        }
        String str15 = eventData != null ? NotificationCompat.CATEGORY_EVENT : "programmatically";
        String str16 = "";
        String str17 = (date == null || (str14 = DateUtilsKt.getDateFormatterUtil().format(date)) == null) ? "" : str14;
        String str18 = (date == null || (str13 = DateUtilsKt.getDateFormatterUtil().format(date)) == null) ? "" : str13;
        String str19 = (date3 == null || (str12 = DateUtilsKt.getDateFormatterUtil().format(date3)) == null) ? "" : str12;
        if (date != null) {
            if (date2 != null) {
                long j = 1000;
                dValueOf3 = Double.valueOf((date2.getTime() / j) - (date.getTime() / j));
            } else {
                dValueOf3 = null;
            }
            d = dValueOf3;
        } else {
            str16 = "";
            d = null;
        }
        String str20 = (date4 == null || (str11 = DateUtilsKt.getDateFormatterUtil().format(date4)) == null) ? str16 : str11;
        String str21 = (date5 == null || (str10 = DateUtilsKt.getDateFormatterUtil().format(date5)) == null) ? str16 : str10;
        String str22 = (date6 == null || (str9 = DateUtilsKt.getDateFormatterUtil().format(date6)) == null) ? str16 : str9;
        if (date4 != null) {
            if (date5 != null) {
                long j2 = 1000;
                dValueOf2 = Double.valueOf((date5.getTime() / j2) - (date4.getTime() / j2));
            } else {
                dValueOf2 = null;
            }
            d2 = dValueOf2;
        } else {
            d2 = null;
        }
        String str23 = (date7 == null || (str8 = DateUtilsKt.getDateFormatterUtil().format(date7)) == null) ? str16 : str8;
        String str24 = (date9 == null || (str7 = DateUtilsKt.getDateFormatterUtil().format(date9)) == null) ? str16 : str7;
        String str25 = (date8 == null || (str6 = DateUtilsKt.getDateFormatterUtil().format(date8)) == null) ? str16 : str6;
        if (date7 != null) {
            if (date9 != null) {
                long j3 = 1000;
                dValueOf = Double.valueOf((date9.getTime() / j3) - (date7.getTime() / j3));
            } else {
                dValueOf = null;
            }
            d3 = dValueOf;
        } else {
            d3 = null;
        }
        this(databaseId, identifier, name, url, experiment, products, productIds, name2, str3, string, str15, str2, str17, str18, str19, d, str20, str21, str22, d2, str23, str24, str25, (date4 == null || (str5 = DateUtilsKt.getDateFormatterUtil().format(date4)) == null) ? str16 : str5, (date4 == null || (str4 = DateUtilsKt.getDateFormatterUtil().format(date4)) == null) ? str16 : str4, d3, str, z, featureGatingBehavior, closeReason, localNotifications, computedPropertyRequests, surveys, presentation, buildId, cacheKey, z2, state, customerInfo, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Map eventParams$default(PaywallInfo paywallInfo, StoreProductType storeProductType, Map map, int i, Object obj) {
        if ((i & 1) != 0) {
            storeProductType = null;
        }
        if ((i & 2) != 0) {
            map = null;
        }
        return paywallInfo.eventParams(storeProductType, map);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Map<String, Object> eventParams(StoreProductType product, Map<String, ? extends Object> otherParams) {
        Object obj;
        Experiment.Variant variant;
        Map<String, Object> mapAudienceFilterParams = audienceFilterParams();
        Pair[] pairArr = new Pair[22];
        Object obj2 = TuplesKt.to("paywalljs_version", this.paywalljsVersion);
        pairArr[0] = obj2 != null ? (java.io.Serializable) obj2 : (java.io.Serializable) "";
        pairArr[1] = TuplesKt.to("paywall_identifier", this.identifier);
        pairArr[2] = TuplesKt.to("paywall_url", PaywallURL.m10667toStringimpl(this.url));
        pairArr[3] = TuplesKt.to("presented_by_event_id", this.presentedByEventWithId);
        pairArr[4] = TuplesKt.to("presented_by_event_timestamp", this.presentedByEventAt);
        pairArr[5] = TuplesKt.to("presentation_source_type", this.presentationSourceType);
        pairArr[6] = TuplesKt.to("paywall_response_load_start_time", this.responseLoadStartTime);
        pairArr[7] = TuplesKt.to("paywall_response_load_complete_time", this.responseLoadCompleteTime);
        pairArr[8] = TuplesKt.to("paywall_response_load_duration", this.responseLoadDuration);
        pairArr[9] = TuplesKt.to("paywall_webview_load_start_time", this.webViewLoadStartTime);
        pairArr[10] = TuplesKt.to("paywall_webview_load_complete_time", this.webViewLoadCompleteTime);
        pairArr[11] = TuplesKt.to("paywall_webview_load_fail_time", this.webViewLoadFailTime);
        pairArr[12] = TuplesKt.to("paywall_webview_load_duration", this.webViewLoadDuration);
        pairArr[13] = TuplesKt.to("paywall_products_load_start_time", this.productsLoadStartTime);
        pairArr[14] = TuplesKt.to("paywall_products_load_complete_time", this.productsLoadCompleteTime);
        pairArr[15] = TuplesKt.to("paywall_products_load_fail_time", this.productsLoadFailTime);
        pairArr[16] = TuplesKt.to("paywall_products_load_duration", this.productsLoadDuration);
        pairArr[17] = TuplesKt.to("trigger_session_id", "");
        Experiment experiment = this.experiment;
        pairArr[18] = TuplesKt.to("experiment_id", experiment != null ? experiment.getId() : null);
        Experiment experiment2 = this.experiment;
        pairArr[19] = TuplesKt.to("variant_id", (experiment2 == null || (variant = experiment2.getVariant()) == null) ? null : variant.getId());
        pairArr[20] = TuplesKt.to("is_scroll_enabled", Boolean.valueOf(this.isScrollEnabled));
        pairArr[21] = TuplesKt.to("state", this.state);
        Map mapMutableMapOf = MapsKt.mutableMapOf(pairArr);
        Map<String, Object> params = this.customerInfo.toParams();
        if (!params.isEmpty()) {
            mapMutableMapOf.put("customer_info", params);
        }
        CollectionsKt.removeAll(mapMutableMapOf.values(), new Function1() { // from class: com.superwall.sdk.paywall.presentation.PaywallInfo$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj3) {
                return Boolean.valueOf(PaywallInfo.eventParams$lambda$18(obj3));
            }
        });
        Intrinsics.checkNotNull(mapMutableMapOf, "null cannot be cast to non-null type kotlin.collections.MutableMap<kotlin.String, kotlin.Any>");
        mapAudienceFilterParams.putAll(TypeIntrinsics.asMutableMap(mapMutableMapOf));
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (String str : mapAudienceFilterParams.keySet()) {
            if (StringsKt.contains$default((CharSequence) str, (CharSequence) "_load_", false, 2, (Object) null) && (obj = mapAudienceFilterParams.get(str)) != null) {
                linkedHashMap.put(str, obj);
            }
        }
        Logger.debug$default(Logger.INSTANCE, LogLevel.debug, LogScope.paywallEvents, "Paywall loading timestamps", linkedHashMap, null, 16, null);
        if (product != null) {
            mapAudienceFilterParams.put("product_id", product.getFullIdentifier());
            for (String str2 : product.getAttributes().keySet()) {
                String str3 = product.getAttributes().get(str2);
                if (str3 != null) {
                    mapAudienceFilterParams.put("product_" + String_Helpers_ktKt.camelCaseToSnakeCase(str2), str3);
                }
            }
        }
        if (otherParams != null) {
            for (String str4 : otherParams.keySet()) {
                Object obj3 = otherParams.get(str4);
                if (obj3 != null) {
                    mapAudienceFilterParams.put(str4, obj3);
                }
            }
        }
        return mapAudienceFilterParams;
    }

    public final Map<String, Object> audienceFilterParams() {
        String strEncodeToString = json.encodeToString(FeatureGatingBehavior.INSTANCE.serializer(), this.featureGatingBehavior);
        Pair[] pairArr = new Pair[7];
        int i = 0;
        pairArr[0] = TuplesKt.to("paywall_id", this.databaseId);
        pairArr[1] = TuplesKt.to("paywall_name", this.name);
        String str = this.presentedByEventWithName;
        if (str == null) {
            str = "";
        }
        pairArr[2] = TuplesKt.to("presented_by_event_name", str);
        pairArr[3] = TuplesKt.to("paywall_product_ids", CollectionsKt.joinToString$default(this.productIds, ",", null, null, 0, null, null, 62, null));
        pairArr[4] = TuplesKt.to("is_free_trial_available", Boolean.valueOf(this.isFreeTrialAvailable));
        pairArr[5] = TuplesKt.to("feature_gating", strEncodeToString);
        pairArr[6] = TuplesKt.to("presented_by", this.presentedBy);
        Map mapMutableMapOf = MapsKt.mutableMapOf(pairArr);
        mapMutableMapOf.put("primary_product_id", "");
        mapMutableMapOf.put("secondary_product_id", "");
        mapMutableMapOf.put("tertiary_product_id", "");
        for (Object obj : this.products) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt.throwIndexOverflow();
            }
            ProductItem productItem = (ProductItem) obj;
            if (i == 0) {
                mapMutableMapOf.put("primary_product_id", productItem.getFullProductId());
            } else if (i == 1) {
                mapMutableMapOf.put("secondary_product_id", productItem.getFullProductId());
            } else if (i == 2) {
                mapMutableMapOf.put("tertiary_product_id", productItem.getFullProductId());
            }
            mapMutableMapOf.put(productItem.getName() + "_product_id", productItem.getFullProductId());
            i = i2;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry entry : mapMutableMapOf.entrySet()) {
            if (entry.getValue() != null) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        return TypeIntrinsics.asMutableMap(linkedHashMap);
    }

    /* JADX INFO: compiled from: PaywallInfo.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0006\u0010\u0006\u001a\u00020\u0007J\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\tR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lcom/superwall/sdk/paywall/presentation/PaywallInfo$Companion;", "", "<init>", "()V", "json", "Lkotlinx/serialization/json/Json;", "empty", "Lcom/superwall/sdk/paywall/presentation/PaywallInfo;", "serializer", "Lkotlinx/serialization/KSerializer;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final KSerializer<PaywallInfo> serializer() {
            return PaywallInfo$$serializer.INSTANCE;
        }

        public final PaywallInfo empty() {
            String strM10663constructorimpl = PaywallURL.m10663constructorimpl("");
            List listEmptyList = CollectionsKt.emptyList();
            List listEmptyList2 = CollectionsKt.emptyList();
            FeatureGatingBehavior.NonGated nonGated = FeatureGatingBehavior.NonGated.INSTANCE;
            return new PaywallInfo("", "", "", strM10663constructorimpl, (Experiment) null, listEmptyList, listEmptyList2, (String) null, (String) null, (String) null, "", (String) null, (String) null, (String) null, (String) null, (Double) null, (String) null, (String) null, (String) null, (Double) null, (String) null, (String) null, (String) null, (String) null, (String) null, (Double) null, (String) null, false, (FeatureGatingBehavior) nonGated, (PaywallCloseReason) PaywallCloseReason.None.INSTANCE, CollectionsKt.emptyList(), CollectionsKt.emptyList(), CollectionsKt.emptyList(), new PaywallPresentationInfo(PaywallPresentationStyle.None.INSTANCE, 0L), "", "", true, (Map) null, (CustomerInfo) null, 0, 96, (DefaultConstructorMarker) null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit json$lambda$26(JsonBuilder Json) {
        Intrinsics.checkNotNullParameter(Json, "$this$Json");
        return Unit.INSTANCE;
    }
}
