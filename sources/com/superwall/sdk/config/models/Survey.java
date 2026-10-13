package com.superwall.sdk.config.models;

import androidx.core.app.FrameMetricsAggregator;
import com.superwall.sdk.storage.LocalStorage;
import com.superwall.sdk.storage.SurveyAssignmentKey;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.ArrayListSerializer;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: compiled from: Survey.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 B2\u00020\u0001:\u0002ABBU\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u000f¢\u0006\u0004\b\u0011\u0010\u0012Bu\b\u0010\u0012\u0006\u0010\u0013\u001a\u00020\u0014\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\u000e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\b\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\u0006\u0010\f\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016¢\u0006\u0004\b\u0011\u0010\u0017J\u000e\u0010&\u001a\u00020\u000f2\u0006\u0010'\u001a\u00020\u000fJ\u000e\u0010(\u001a\u00020\u000f2\u0006\u0010)\u001a\u00020*J\t\u0010+\u001a\u00020\u0003HÆ\u0003J\t\u0010,\u001a\u00020\u0003HÆ\u0003J\t\u0010-\u001a\u00020\u0003HÆ\u0003J\t\u0010.\u001a\u00020\u0003HÆ\u0003J\u000f\u0010/\u001a\b\u0012\u0004\u0012\u00020\t0\bHÆ\u0003J\t\u00100\u001a\u00020\u000bHÆ\u0003J\t\u00101\u001a\u00020\rHÆ\u0003J\t\u00102\u001a\u00020\u000fHÆ\u0003J\t\u00103\u001a\u00020\u000fHÆ\u0003Ji\u00104\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\u000e\b\u0002\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b2\b\b\u0002\u0010\n\u001a\u00020\u000b2\b\b\u0002\u0010\f\u001a\u00020\r2\b\b\u0002\u0010\u000e\u001a\u00020\u000f2\b\b\u0002\u0010\u0010\u001a\u00020\u000fHÆ\u0001J\u0013\u00105\u001a\u00020\u000f2\b\u00106\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u00107\u001a\u00020\u0014HÖ\u0001J\t\u00108\u001a\u00020\u0003HÖ\u0001J%\u00109\u001a\u00020:2\u0006\u0010;\u001a\u00020\u00002\u0006\u0010<\u001a\u00020=2\u0006\u0010>\u001a\u00020?H\u0001¢\u0006\u0002\b@R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u0019R\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u0019R\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u0019R\u0017\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001eR\u0011\u0010\n\u001a\u00020\u000b¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010 R\u0011\u0010\f\u001a\u00020\r¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\"R\u0011\u0010\u000e\u001a\u00020\u000f¢\u0006\b\n\u0000\u001a\u0004\b#\u0010$R\u0011\u0010\u0010\u001a\u00020\u000f¢\u0006\b\n\u0000\u001a\u0004\b%\u0010$¨\u0006C"}, d2 = {"Lcom/superwall/sdk/config/models/Survey;", "", "id", "", "assignmentKey", "title", "message", "options", "", "Lcom/superwall/sdk/config/models/SurveyOption;", "presentationCondition", "Lcom/superwall/sdk/config/models/SurveyShowCondition;", "presentationProbability", "", "includeOtherOption", "", "includeCloseOption", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/superwall/sdk/config/models/SurveyShowCondition;DZZ)V", "seen0", "", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/superwall/sdk/config/models/SurveyShowCondition;DZZLkotlinx/serialization/internal/SerializationConstructorMarker;)V", "getId", "()Ljava/lang/String;", "getAssignmentKey", "getTitle", "getMessage", "getOptions", "()Ljava/util/List;", "getPresentationCondition", "()Lcom/superwall/sdk/config/models/SurveyShowCondition;", "getPresentationProbability", "()D", "getIncludeOtherOption", "()Z", "getIncludeCloseOption", "shouldAssignHoldout", "isDebuggerLaunched", "hasSeenSurvey", "storage", "Lcom/superwall/sdk/storage/LocalStorage;", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "equals", "other", "hashCode", "toString", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$superwall_release", "$serializer", "Companion", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
@Serializable
public final /* data */ class Survey {
    private final String assignmentKey;
    private final String id;
    private final boolean includeCloseOption;
    private final boolean includeOtherOption;
    private final String message;
    private final List<SurveyOption> options;
    private final SurveyShowCondition presentationCondition;
    private final double presentationProbability;
    private final String title;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final KSerializer<Object>[] $childSerializers = {null, null, null, null, new ArrayListSerializer(SurveyOption$$serializer.INSTANCE), null, null, null, null};

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Survey copy$default(Survey survey, String str, String str2, String str3, String str4, List list, SurveyShowCondition surveyShowCondition, double d, boolean z, boolean z2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = survey.id;
        }
        if ((i & 2) != 0) {
            str2 = survey.assignmentKey;
        }
        if ((i & 4) != 0) {
            str3 = survey.title;
        }
        if ((i & 8) != 0) {
            str4 = survey.message;
        }
        if ((i & 16) != 0) {
            list = survey.options;
        }
        if ((i & 32) != 0) {
            surveyShowCondition = survey.presentationCondition;
        }
        if ((i & 64) != 0) {
            d = survey.presentationProbability;
        }
        if ((i & 128) != 0) {
            z = survey.includeOtherOption;
        }
        if ((i & 256) != 0) {
            z2 = survey.includeCloseOption;
        }
        double d2 = d;
        List list2 = list;
        SurveyShowCondition surveyShowCondition2 = surveyShowCondition;
        String str5 = str3;
        String str6 = str4;
        return survey.copy(str, str2, str5, str6, list2, surveyShowCondition2, d2, z, z2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getId() {
        return this.id;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getAssignmentKey() {
        return this.assignmentKey;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getTitle() {
        return this.title;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getMessage() {
        return this.message;
    }

    public final List<SurveyOption> component5() {
        return this.options;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final SurveyShowCondition getPresentationCondition() {
        return this.presentationCondition;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final double getPresentationProbability() {
        return this.presentationProbability;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final boolean getIncludeOtherOption() {
        return this.includeOtherOption;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final boolean getIncludeCloseOption() {
        return this.includeCloseOption;
    }

    public final Survey copy(String id, String assignmentKey, String title, String message, List<SurveyOption> options, SurveyShowCondition presentationCondition, double presentationProbability, boolean includeOtherOption, boolean includeCloseOption) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(assignmentKey, "assignmentKey");
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(options, "options");
        Intrinsics.checkNotNullParameter(presentationCondition, "presentationCondition");
        return new Survey(id, assignmentKey, title, message, options, presentationCondition, presentationProbability, includeOtherOption, includeCloseOption);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Survey)) {
            return false;
        }
        Survey survey = (Survey) other;
        return Intrinsics.areEqual(this.id, survey.id) && Intrinsics.areEqual(this.assignmentKey, survey.assignmentKey) && Intrinsics.areEqual(this.title, survey.title) && Intrinsics.areEqual(this.message, survey.message) && Intrinsics.areEqual(this.options, survey.options) && this.presentationCondition == survey.presentationCondition && Double.compare(this.presentationProbability, survey.presentationProbability) == 0 && this.includeOtherOption == survey.includeOtherOption && this.includeCloseOption == survey.includeCloseOption;
    }

    public int hashCode() {
        return (((((((((((((((this.id.hashCode() * 31) + this.assignmentKey.hashCode()) * 31) + this.title.hashCode()) * 31) + this.message.hashCode()) * 31) + this.options.hashCode()) * 31) + this.presentationCondition.hashCode()) * 31) + Double.hashCode(this.presentationProbability)) * 31) + Boolean.hashCode(this.includeOtherOption)) * 31) + Boolean.hashCode(this.includeCloseOption);
    }

    public String toString() {
        return "Survey(id=" + this.id + ", assignmentKey=" + this.assignmentKey + ", title=" + this.title + ", message=" + this.message + ", options=" + this.options + ", presentationCondition=" + this.presentationCondition + ", presentationProbability=" + this.presentationProbability + ", includeOtherOption=" + this.includeOtherOption + ", includeCloseOption=" + this.includeCloseOption + ")";
    }

    /* JADX INFO: compiled from: Survey.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¨\u0006\u0007"}, d2 = {"Lcom/superwall/sdk/config/models/Survey$Companion;", "", "<init>", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/superwall/sdk/config/models/Survey;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final KSerializer<Survey> serializer() {
            return Survey$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ Survey(int i, String str, String str2, String str3, String str4, List list, SurveyShowCondition surveyShowCondition, double d, boolean z, boolean z2, SerializationConstructorMarker serializationConstructorMarker) {
        if (511 != (i & FrameMetricsAggregator.EVERY_DURATION)) {
            PluginExceptionsKt.throwMissingFieldException(i, FrameMetricsAggregator.EVERY_DURATION, Survey$$serializer.INSTANCE.getDescriptor());
        }
        this.id = str;
        this.assignmentKey = str2;
        this.title = str3;
        this.message = str4;
        this.options = list;
        this.presentationCondition = surveyShowCondition;
        this.presentationProbability = d;
        this.includeOtherOption = z;
        this.includeCloseOption = z2;
    }

    @JvmStatic
    public static final /* synthetic */ void write$Self$superwall_release(Survey self, CompositeEncoder output, SerialDescriptor serialDesc) {
        KSerializer<Object>[] kSerializerArr = $childSerializers;
        output.encodeStringElement(serialDesc, 0, self.id);
        output.encodeStringElement(serialDesc, 1, self.assignmentKey);
        output.encodeStringElement(serialDesc, 2, self.title);
        output.encodeStringElement(serialDesc, 3, self.message);
        output.encodeSerializableElement(serialDesc, 4, kSerializerArr[4], self.options);
        output.encodeSerializableElement(serialDesc, 5, SurveyShowConditionSerializer.INSTANCE, self.presentationCondition);
        output.encodeDoubleElement(serialDesc, 6, self.presentationProbability);
        output.encodeBooleanElement(serialDesc, 7, self.includeOtherOption);
        output.encodeBooleanElement(serialDesc, 8, self.includeCloseOption);
    }

    public Survey(String id, String assignmentKey, String title, String message, List<SurveyOption> options, SurveyShowCondition presentationCondition, double d, boolean z, boolean z2) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(assignmentKey, "assignmentKey");
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(options, "options");
        Intrinsics.checkNotNullParameter(presentationCondition, "presentationCondition");
        this.id = id;
        this.assignmentKey = assignmentKey;
        this.title = title;
        this.message = message;
        this.options = options;
        this.presentationCondition = presentationCondition;
        this.presentationProbability = d;
        this.includeOtherOption = z;
        this.includeCloseOption = z2;
    }

    public final String getId() {
        return this.id;
    }

    public final String getAssignmentKey() {
        return this.assignmentKey;
    }

    public final String getTitle() {
        return this.title;
    }

    public final String getMessage() {
        return this.message;
    }

    public final List<SurveyOption> getOptions() {
        return this.options;
    }

    public final SurveyShowCondition getPresentationCondition() {
        return this.presentationCondition;
    }

    public final double getPresentationProbability() {
        return this.presentationProbability;
    }

    public final boolean getIncludeOtherOption() {
        return this.includeOtherOption;
    }

    public final boolean getIncludeCloseOption() {
        return this.includeCloseOption;
    }

    public final boolean shouldAssignHoldout(boolean isDebuggerLaunched) {
        if (isDebuggerLaunched) {
            return false;
        }
        return this.presentationProbability == 0.0d || Math.random() >= this.presentationProbability;
    }

    public final boolean hasSeenSurvey(LocalStorage storage) {
        Intrinsics.checkNotNullParameter(storage, "storage");
        String str = (String) storage.read(SurveyAssignmentKey.INSTANCE);
        if (str == null) {
            return false;
        }
        return Intrinsics.areEqual(str, this.assignmentKey);
    }
}
