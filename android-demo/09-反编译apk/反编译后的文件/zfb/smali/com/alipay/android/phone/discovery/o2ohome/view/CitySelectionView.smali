.class public Lcom/alipay/android/phone/discovery/o2ohome/view/CitySelectionView;
.super Landroid/widget/LinearLayout;
.source "CitySelectionView.java"


# instance fields
.field private final cityTextView:Lcom/alipay/mobile/commonui/widget/APTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 20
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/android/phone/discovery/o2ohome/R$layout;->home_city_selection:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 21
    sget v0, Lcom/alipay/android/phone/discovery/o2ohome/R$id;->city:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/discovery/o2ohome/view/CitySelectionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CitySelectionView;->cityTextView:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 22
    return-void
.end method


# virtual methods
.method public setClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CitySelectionView;->cityTextView:Lcom/alipay/mobile/commonui/widget/APTextView;

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CitySelectionView;->cityTextView:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CitySelectionView;->cityTextView:Lcom/alipay/mobile/commonui/widget/APTextView;

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CitySelectionView;->cityTextView:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    :cond_0
    return-void
.end method
