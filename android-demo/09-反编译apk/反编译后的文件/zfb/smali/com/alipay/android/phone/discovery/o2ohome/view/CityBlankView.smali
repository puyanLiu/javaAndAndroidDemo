.class public Lcom/alipay/android/phone/discovery/o2ohome/view/CityBlankView;
.super Landroid/widget/LinearLayout;
.source "CityBlankView.java"


# instance fields
.field private final imgClose:Landroid/widget/ImageView;

.field private final textCity:Lcom/alipay/mobile/commonui/widget/APTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 23
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/android/phone/discovery/o2ohome/R$layout;->view_locating_citynotopen:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 24
    sget v0, Lcom/alipay/android/phone/discovery/o2ohome/R$id;->image_close_remind:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/discovery/o2ohome/view/CityBlankView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CityBlankView;->imgClose:Landroid/widget/ImageView;

    .line 25
    sget v0, Lcom/alipay/android/phone/discovery/o2ohome/R$id;->text_city_notify:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/discovery/o2ohome/view/CityBlankView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CityBlankView;->textCity:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 27
    new-instance v0, Lcom/alipay/android/phone/discovery/o2ohome/view/CityBlankView$1;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/discovery/o2ohome/view/CityBlankView$1;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/view/CityBlankView;)V

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/discovery/o2ohome/view/CityBlankView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CityBlankView;->imgClose:Landroid/widget/ImageView;

    new-instance v1, Lcom/alipay/android/phone/discovery/o2ohome/view/CityBlankView$2;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/discovery/o2ohome/view/CityBlankView$2;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/view/CityBlankView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    return-void
.end method


# virtual methods
.method public hideView()V
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CityBlankView;->textCity:Lcom/alipay/mobile/commonui/widget/APTextView;

    if-eqz v0, :cond_0

    .line 49
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/discovery/o2ohome/view/CityBlankView;->setVisibility(I)V

    .line 50
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CityBlankView;->imgClose:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 52
    :cond_0
    return-void
.end method

.method public showView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 55
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CityBlankView;->textCity:Lcom/alipay/mobile/commonui/widget/APTextView;

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/alipay/android/phone/discovery/o2ohome/view/CityBlankView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/android/phone/discovery/o2ohome/R$drawable;->location_not_open:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 58
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CityBlankView;->imgClose:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 59
    invoke-virtual {p0, v3}, Lcom/alipay/android/phone/discovery/o2ohome/view/CityBlankView;->setVisibility(I)V

    .line 61
    :cond_0
    return-void
.end method
