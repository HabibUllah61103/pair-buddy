package com.superwall.sdk.debug.localizations;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.facebook.react.uimanager.ViewProps;
import com.superwall.sdk.R;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: LocalizationAdapter.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0015B)\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t0\u0007¢\u0006\u0004\b\n\u0010\u000bJ\u0018\u0010\f\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0018\u0010\u0011\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u0010H\u0016J\b\u0010\u0014\u001a\u00020\u0010H\u0016R\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t0\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/superwall/sdk/debug/localizations/LocaleAdapter;", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Lcom/superwall/sdk/debug/localizations/LocaleAdapter$LocaleViewHolder;", "localizations", "", "Lcom/superwall/sdk/debug/localizations/LocalizationOption;", "onLocaleSelected", "Lkotlin/Function1;", "", "", "<init>", "(Ljava/util/List;Lkotlin/jvm/functions/Function1;)V", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "viewType", "", "onBindViewHolder", "holder", ViewProps.POSITION, "getItemCount", "LocaleViewHolder", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class LocaleAdapter extends RecyclerView.Adapter<LocaleViewHolder> {
    private final List<LocalizationOption> localizations;
    private final Function1<String, Unit> onLocaleSelected;

    /* JADX WARN: Multi-variable type inference failed */
    public LocaleAdapter(List<LocalizationOption> localizations, Function1<? super String, Unit> onLocaleSelected) {
        Intrinsics.checkNotNullParameter(localizations, "localizations");
        Intrinsics.checkNotNullParameter(onLocaleSelected, "onLocaleSelected");
        this.localizations = localizations;
        this.onLocaleSelected = onLocaleSelected;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public LocaleViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        View viewInflate = LayoutInflater.from(parent.getContext()).inflate(R.layout.item_locale, parent, false);
        Intrinsics.checkNotNull(viewInflate);
        return new LocaleViewHolder(viewInflate);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(LocaleViewHolder holder, int position) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        holder.bind(this.localizations.get(position), this.onLocaleSelected);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.localizations.size();
    }

    /* JADX INFO: compiled from: LocalizationAdapter.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\"\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\n0\u000eR\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lcom/superwall/sdk/debug/localizations/LocaleAdapter$LocaleViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "itemView", "Landroid/view/View;", "<init>", "(Landroid/view/View;)V", "languageTextView", "Landroid/widget/TextView;", "countryTextView", "bind", "", "localizationOption", "Lcom/superwall/sdk/debug/localizations/LocalizationOption;", "onLocaleSelected", "Lkotlin/Function1;", "", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class LocaleViewHolder extends RecyclerView.ViewHolder {
        private final TextView countryTextView;
        private final TextView languageTextView;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public LocaleViewHolder(View itemView) {
            super(itemView);
            Intrinsics.checkNotNullParameter(itemView, "itemView");
            View viewFindViewById = itemView.findViewById(R.id.language_text_view);
            Intrinsics.checkNotNullExpressionValue(viewFindViewById, "findViewById(...)");
            this.languageTextView = (TextView) viewFindViewById;
            View viewFindViewById2 = itemView.findViewById(R.id.country_text_view);
            Intrinsics.checkNotNullExpressionValue(viewFindViewById2, "findViewById(...)");
            this.countryTextView = (TextView) viewFindViewById2;
        }

        public final void bind(final LocalizationOption localizationOption, final Function1<? super String, Unit> onLocaleSelected) {
            Intrinsics.checkNotNullParameter(localizationOption, "localizationOption");
            Intrinsics.checkNotNullParameter(onLocaleSelected, "onLocaleSelected");
            this.languageTextView.setText(localizationOption.getDescription());
            this.countryTextView.setText(localizationOption.getLocale());
            this.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.superwall.sdk.debug.localizations.LocaleAdapter$LocaleViewHolder$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    LocaleAdapter.LocaleViewHolder.bind$lambda$0(onLocaleSelected, localizationOption, view);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void bind$lambda$0(Function1 function1, LocalizationOption localizationOption, View view) {
            function1.invoke(localizationOption.getLocale());
        }
    }
}
